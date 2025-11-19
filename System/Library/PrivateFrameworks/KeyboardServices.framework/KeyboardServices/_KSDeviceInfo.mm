@interface _KSDeviceInfo
+ (id)ksDecviceWithName:(id)a3 swVersion:(id)a4 model:(id)a5 modelDisplayName:(id)a6;
+ (id)ksDecviceWithiCloudDeviceInfo:(id)a3;
+ (id)ksDeviceWithName:(id)a3 swVersion:(id)a4;
@end

@implementation _KSDeviceInfo

+ (id)ksDecviceWithiCloudDeviceInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_KSDeviceInfo);
  v5 = [v3 objectForKeyedSubscript:@"name"];
  [(_KSDeviceInfo *)v4 setName:v5];

  v6 = [v3 objectForKeyedSubscript:@"swVersion"];
  [(_KSDeviceInfo *)v4 setSwVersion:v6];

  v7 = [v3 objectForKeyedSubscript:@"model"];
  [(_KSDeviceInfo *)v4 setModel:v7];

  v8 = [v3 objectForKeyedSubscript:@"modelDisplayName"];

  [(_KSDeviceInfo *)v4 setModelDisplayName:v8];

  return v4;
}

+ (id)ksDecviceWithName:(id)a3 swVersion:(id)a4 model:(id)a5 modelDisplayName:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_KSDeviceInfo);
  [(_KSDeviceInfo *)v11 setName:v10];

  [(_KSDeviceInfo *)v11 setSwVersion:v9];
  [(_KSDeviceInfo *)v11 setModel:v8];
  [(_KSDeviceInfo *)v11 setModelDisplayName:v8];

  return v11;
}

+ (id)ksDeviceWithName:(id)a3 swVersion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_KSDeviceInfo);
  [(_KSDeviceInfo *)v7 setName:v6];

  [(_KSDeviceInfo *)v7 setSwVersion:v5];

  return v7;
}

@end