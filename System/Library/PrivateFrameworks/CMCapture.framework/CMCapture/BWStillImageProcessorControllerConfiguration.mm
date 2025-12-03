@interface BWStillImageProcessorControllerConfiguration
- (void)dealloc;
- (void)setPostponeProcessorSetup:(BOOL)setup;
@end

@implementation BWStillImageProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (void)setPostponeProcessorSetup:(BOOL)setup
{
  if (self->_postponeProcessorSetup != setup)
  {
    if (setup && ![(BWStillImageProcessorControllerConfiguration *)self postponedProcessorSetupSupported])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not supported - use -postponedProcessorSetupSupported." userInfo:0]);
    }

    self->_postponeProcessorSetup = setup;
  }
}

@end