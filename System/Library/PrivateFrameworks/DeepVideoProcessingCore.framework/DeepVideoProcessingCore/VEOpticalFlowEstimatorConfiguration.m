@interface VEOpticalFlowEstimatorConfiguration
- (VEOpticalFlowEstimatorConfiguration)init;
@end

@implementation VEOpticalFlowEstimatorConfiguration

- (VEOpticalFlowEstimatorConfiguration)init
{
  v6.receiver = self;
  v6.super_class = VEOpticalFlowEstimatorConfiguration;
  v2 = [(VEOpticalFlowEstimatorConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_revision = 2;
    v2->_outputPixelFormat = 843264104;
    v4 = v2;
  }

  return v3;
}

@end