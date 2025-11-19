@interface CUKalmanConfiguration
+ (id)bluetoothRSSIConfiguration;
+ (id)defaultConfiguration;
- (CUKalmanConfiguration)initWithParamR:(double)a3 paramQ:(double)a4 paramA:(double)a5 paramB:(double)a6 paramC:(double)a7;
@end

@implementation CUKalmanConfiguration

- (CUKalmanConfiguration)initWithParamR:(double)a3 paramQ:(double)a4 paramA:(double)a5 paramB:(double)a6 paramC:(double)a7
{
  v16.receiver = self;
  v16.super_class = CUKalmanConfiguration;
  v12 = [(CUKalmanConfiguration *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_paramR = a3;
    v12->_paramQ = a4;
    v12->_paramA = a5;
    v12->_paramB = a6;
    v12->_paramC = a7;
    v14 = v12;
  }

  return v13;
}

+ (id)defaultConfiguration
{
  v2 = [[CUKalmanConfiguration alloc] initWithParamR:1.0 paramQ:1.0 paramA:1.0 paramB:0.0 paramC:1.0];

  return v2;
}

+ (id)bluetoothRSSIConfiguration
{
  if (bluetoothRSSIConfiguration_sOnce != -1)
  {
    dispatch_once(&bluetoothRSSIConfiguration_sOnce, &__block_literal_global_3590);
  }

  v3 = bluetoothRSSIConfiguration_sConfig;

  return v3;
}

uint64_t __51__CUKalmanConfiguration_bluetoothRSSIConfiguration__block_invoke()
{
  v0 = [[CUKalmanConfiguration alloc] initWithParamR:0.008 paramQ:6.0 paramA:1.0 paramB:0.0 paramC:1.0];
  v1 = bluetoothRSSIConfiguration_sConfig;
  bluetoothRSSIConfiguration_sConfig = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end