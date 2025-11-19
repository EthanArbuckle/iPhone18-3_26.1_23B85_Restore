@interface BWColorConstancyProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWColorConstancyProcessorControllerConfiguration

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWColorConstancyProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v2 dealloc];
}

@end