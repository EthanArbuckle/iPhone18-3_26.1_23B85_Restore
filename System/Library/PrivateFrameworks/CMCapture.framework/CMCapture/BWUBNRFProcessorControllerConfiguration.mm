@interface BWUBNRFProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWUBNRFProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBNRFProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end