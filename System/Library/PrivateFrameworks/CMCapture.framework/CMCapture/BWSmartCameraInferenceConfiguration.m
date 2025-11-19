@interface BWSmartCameraInferenceConfiguration
- (void)dealloc;
@end

@implementation BWSmartCameraInferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSmartCameraInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end