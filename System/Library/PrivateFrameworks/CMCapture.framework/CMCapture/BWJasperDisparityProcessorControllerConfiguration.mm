@interface BWJasperDisparityProcessorControllerConfiguration
- (void)dealloc;
@end

@implementation BWJasperDisparityProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWJasperDisparityProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end