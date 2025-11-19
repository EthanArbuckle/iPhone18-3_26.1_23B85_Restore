@interface DVTDeviceGlobalStatusIndicatorFactory
+ (id)deviceStatusIndicatorWithConfiguration:(id)a3 stoppedByUserBlock:(id)a4;
@end

@implementation DVTDeviceGlobalStatusIndicatorFactory

+ (id)deviceStatusIndicatorWithConfiguration:(id)a3 stoppedByUserBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DVTiOSDeviceGlobalStatusIndicator alloc] initWithConfiguration:v6 stoppedByUserBlock:v5];

  return v7;
}

@end