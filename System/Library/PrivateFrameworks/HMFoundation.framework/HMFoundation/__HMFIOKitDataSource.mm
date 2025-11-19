@interface __HMFIOKitDataSource
- (int64_t)productClass;
@end

@implementation __HMFIOKitDataSource

- (int64_t)productClass
{
  v2 = __getPlatformInformationForKey(@"model");
  v3 = HMFProductClassFromString(v2);

  return v3;
}

@end