@interface CSAudioInjectionEngineFactory
+ (id)engineWithDevice:(id)device streamHandleId:(unint64_t)id;
@end

@implementation CSAudioInjectionEngineFactory

+ (id)engineWithDevice:(id)device streamHandleId:(unint64_t)id
{
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  isBundleDevice = [deviceCopy isBundleDevice];

  if (isBundleDevice)
  {
    v8 = off_10024CB88;
  }

  else if ((deviceType - 1) > 7)
  {
    v8 = off_10024CB98;
  }

  else
  {
    v8 = (&off_100253408)[(deviceType - 1)];
  }

  v9 = [objc_alloc(*v8) initWithStreamHandleId:id];

  return v9;
}

@end