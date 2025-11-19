@interface BWLearnedNRProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWLearnedNRProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end