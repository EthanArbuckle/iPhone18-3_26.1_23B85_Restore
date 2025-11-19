@interface MBAssetDecrypterFactory
+ (id)assetDecrypterWithTracker:(id)a3 device:(id)a4 error:(id *)a5;
@end

@implementation MBAssetDecrypterFactory

+ (id)assetDecrypterWithTracker:(id)a3 device:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("+[MBAssetDecrypterFactory assetDecrypterWithTracker:device:error:]", "MBAssetDecrypter.m", 27, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("+[MBAssetDecrypterFactory assetDecrypterWithTracker:device:error:]", "MBAssetDecrypter.m", 28, "device");
  }

  v9 = [[_AssetDecrypter alloc] _initWithTracker:v6 device:v7];

  return v9;
}

@end