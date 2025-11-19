@interface CSRemoteAssetManagerFactory
+ (id)remoteAssetManager;
@end

@implementation CSRemoteAssetManagerFactory

+ (id)remoteAssetManager
{
  if (+[CSUtils isExclaveHardware](CSUtils, "isExclaveHardware") && +[CSUtils isDarwinOS])
  {
    v2 = off_1E8659A20;
  }

  else
  {
    v2 = off_1E8659A18;
  }

  v3 = [(__objc2_class *)*v2 sharedManager];

  return v3;
}

@end