@interface BWNRFProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWNRFProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNRFProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end