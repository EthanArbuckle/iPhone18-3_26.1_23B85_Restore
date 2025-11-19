@interface _DKPlatform
+ (id)deviceUUID;
@end

@implementation _DKPlatform

+ (id)deviceUUID
{
  if (deviceUUID_onceToken != -1)
  {
    +[_DKPlatform deviceUUID];
  }

  v3 = deviceUUID_deviceUUID_0;

  return v3;
}

@end