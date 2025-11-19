@interface FRCOpticalFlowEstimatorConfiguration
- (FRCOpticalFlowEstimatorConfiguration)init;
@end

@implementation FRCOpticalFlowEstimatorConfiguration

- (FRCOpticalFlowEstimatorConfiguration)init
{
  v6.receiver = self;
  v6.super_class = FRCOpticalFlowEstimatorConfiguration;
  v2 = [(FRCOpticalFlowEstimatorConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_revision = 1;
    v2->_outputPixelFormat = 1278226536;
    v4 = v2;
  }

  return v3;
}

@end