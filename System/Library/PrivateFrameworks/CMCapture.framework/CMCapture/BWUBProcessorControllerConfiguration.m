@interface BWUBProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWUBProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end