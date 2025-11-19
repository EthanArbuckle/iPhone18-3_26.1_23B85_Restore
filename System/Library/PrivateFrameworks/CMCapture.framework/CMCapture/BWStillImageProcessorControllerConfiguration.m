@interface BWStillImageProcessorControllerConfiguration
- (void)dealloc;
- (void)setPostponeProcessorSetup:(BOOL)a3;
@end

@implementation BWStillImageProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (void)setPostponeProcessorSetup:(BOOL)a3
{
  if (self->_postponeProcessorSetup != a3)
  {
    if (a3 && ![(BWStillImageProcessorControllerConfiguration *)self postponedProcessorSetupSupported])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not supported - use -postponedProcessorSetupSupported." userInfo:0]);
    }

    self->_postponeProcessorSetup = a3;
  }
}

@end