@interface BWLensSmudgeDetectionInferenceConfiguration
- (void)dealloc;
@end

@implementation BWLensSmudgeDetectionInferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLensSmudgeDetectionInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end