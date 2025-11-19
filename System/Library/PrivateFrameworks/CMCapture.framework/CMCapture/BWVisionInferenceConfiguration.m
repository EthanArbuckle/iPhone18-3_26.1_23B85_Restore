@interface BWVisionInferenceConfiguration
- (void)dealloc;
@end

@implementation BWVisionInferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVisionInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end