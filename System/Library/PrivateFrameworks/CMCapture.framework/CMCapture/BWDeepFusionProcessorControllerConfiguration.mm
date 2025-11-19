@interface BWDeepFusionProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWDeepFusionProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeepFusionProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end