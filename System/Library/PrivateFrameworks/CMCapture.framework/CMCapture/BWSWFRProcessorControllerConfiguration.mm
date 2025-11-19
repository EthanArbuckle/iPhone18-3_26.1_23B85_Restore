@interface BWSWFRProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWSWFRProcessorControllerConfiguration

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWSWFRProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v2 dealloc];
}

@end