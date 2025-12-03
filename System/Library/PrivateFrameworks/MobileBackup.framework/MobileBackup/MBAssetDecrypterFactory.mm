@interface MBAssetDecrypterFactory
+ (id)assetDecrypterWithTracker:(id)tracker device:(id)device error:(id *)error;
@end

@implementation MBAssetDecrypterFactory

+ (id)assetDecrypterWithTracker:(id)tracker device:(id)device error:(id *)error
{
  trackerCopy = tracker;
  deviceCopy = device;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBAssetDecrypterFactory assetDecrypterWithTracker:device:error:]", "MBAssetDecrypter.m", 27, "tracker");
  }

  v8 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBAssetDecrypterFactory assetDecrypterWithTracker:device:error:]", "MBAssetDecrypter.m", 28, "device");
  }

  v9 = [[_AssetDecrypter alloc] _initWithTracker:trackerCopy device:deviceCopy];

  return v9;
}

@end