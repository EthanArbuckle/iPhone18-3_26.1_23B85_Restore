@interface DVTDeviceGlobalStatusIndicatorFactory
+ (id)deviceStatusIndicatorWithConfiguration:(id)configuration stoppedByUserBlock:(id)block;
@end

@implementation DVTDeviceGlobalStatusIndicatorFactory

+ (id)deviceStatusIndicatorWithConfiguration:(id)configuration stoppedByUserBlock:(id)block
{
  blockCopy = block;
  configurationCopy = configuration;
  v7 = [[DVTiOSDeviceGlobalStatusIndicator alloc] initWithConfiguration:configurationCopy stoppedByUserBlock:blockCopy];

  return v7;
}

@end