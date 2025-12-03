@interface BWHumanPoseInferenceConfiguration
- (BWHumanPoseInferenceConfiguration)initWithTargetAspectRatio:(int)ratio;
@end

@implementation BWHumanPoseInferenceConfiguration

- (BWHumanPoseInferenceConfiguration)initWithTargetAspectRatio:(int)ratio
{
  v5.receiver = self;
  v5.super_class = BWHumanPoseInferenceConfiguration;
  result = [(BWInferenceConfiguration *)&v5 initWithInferenceType:151];
  if (result)
  {
    result->_targetAspectRatio = ratio;
  }

  return result;
}

@end