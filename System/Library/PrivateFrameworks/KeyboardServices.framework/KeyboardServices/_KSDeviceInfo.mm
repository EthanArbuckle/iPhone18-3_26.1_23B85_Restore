@interface _KSDeviceInfo
+ (id)ksDecviceWithName:(id)name swVersion:(id)version model:(id)model modelDisplayName:(id)displayName;
+ (id)ksDecviceWithiCloudDeviceInfo:(id)info;
+ (id)ksDeviceWithName:(id)name swVersion:(id)version;
@end

@implementation _KSDeviceInfo

+ (id)ksDecviceWithiCloudDeviceInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(_KSDeviceInfo);
  v5 = [infoCopy objectForKeyedSubscript:@"name"];
  [(_KSDeviceInfo *)v4 setName:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"swVersion"];
  [(_KSDeviceInfo *)v4 setSwVersion:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"model"];
  [(_KSDeviceInfo *)v4 setModel:v7];

  v8 = [infoCopy objectForKeyedSubscript:@"modelDisplayName"];

  [(_KSDeviceInfo *)v4 setModelDisplayName:v8];

  return v4;
}

+ (id)ksDecviceWithName:(id)name swVersion:(id)version model:(id)model modelDisplayName:(id)displayName
{
  displayNameCopy = displayName;
  versionCopy = version;
  nameCopy = name;
  v11 = objc_alloc_init(_KSDeviceInfo);
  [(_KSDeviceInfo *)v11 setName:nameCopy];

  [(_KSDeviceInfo *)v11 setSwVersion:versionCopy];
  [(_KSDeviceInfo *)v11 setModel:displayNameCopy];
  [(_KSDeviceInfo *)v11 setModelDisplayName:displayNameCopy];

  return v11;
}

+ (id)ksDeviceWithName:(id)name swVersion:(id)version
{
  versionCopy = version;
  nameCopy = name;
  v7 = objc_alloc_init(_KSDeviceInfo);
  [(_KSDeviceInfo *)v7 setName:nameCopy];

  [(_KSDeviceInfo *)v7 setSwVersion:versionCopy];

  return v7;
}

@end