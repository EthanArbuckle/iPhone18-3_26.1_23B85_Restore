@interface BWHumanPoseInferenceConfiguration
- (BWHumanPoseInferenceConfiguration)initWithTargetAspectRatio:(int)a3;
@end

@implementation BWHumanPoseInferenceConfiguration

- (BWHumanPoseInferenceConfiguration)initWithTargetAspectRatio:(int)a3
{
  v5.receiver = self;
  v5.super_class = BWHumanPoseInferenceConfiguration;
  result = [(BWInferenceConfiguration *)&v5 initWithInferenceType:151];
  if (result)
  {
    result->_targetAspectRatio = a3;
  }

  return result;
}

@end