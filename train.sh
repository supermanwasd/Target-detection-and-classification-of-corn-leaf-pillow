import os
file_list = os.listdir('object_detection/protos/')
proto_list = [file for file in file_list if '.proto' in file]
print('object_detection/proto文件夹中共有%d个proto文件' %len(proto_list))
for proto in proto_list:
    execute_command = 'protoc object_detection/protos/%s --python_out=.' %proto
    os.popen(execute_command)
file_list = os.listdir('object_detection/protos/')
py_list = [file for file in file_list if '.py' in file]
print('通过protoc命令产生的py文件共有%d个' %(len(py_list) - 1))


python object_detection/legacy/train.py --pipeline_config_path=training/ssdlite_mobilenet_v2_coco.config --model_dir=training --alsologtostderr


python object_detection/legacy/train.py --pipeline_config_path=D:/tensorflow/my_train/models/ssd_mobilenet_v1_pets.config 
--train_dir=D:/tensorflow/my_train/models/train –alsologtostderr


python object_detection/model_main.py --pipeline_config_path=training/ssdlite_mobilenet_v2_coco.config --model_dir=training --alsologtostderr
