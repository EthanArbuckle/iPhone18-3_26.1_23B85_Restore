@interface CODeviceClass
+ (int)deviceClass;
@end

@implementation CODeviceClass

+ (int)deviceClass
{
  if (deviceClass_onceToken != -1)
  {
    +[CODeviceClass deviceClass];
  }

  return deviceClass_result;
}

uint64_t __28__CODeviceClass_deviceClass__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceClass_result = result;
  return result;
}

@end