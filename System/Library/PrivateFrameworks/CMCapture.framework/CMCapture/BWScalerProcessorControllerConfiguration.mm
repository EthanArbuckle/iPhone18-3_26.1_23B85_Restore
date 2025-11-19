@interface BWScalerProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWScalerProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWScalerProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end