@interface CAMUltraHighResolutionZeroShutterLagEnabledCommand
- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithCoder:(id)coder;
- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMUltraHighResolutionZeroShutterLagEnabledCommand

- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMUltraHighResolutionZeroShutterLagEnabledCommand *)self isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  v5 = currentStillImageOutput;
  if (currentStillImageOutput)
  {
    v6 = currentStillImageOutput;
    currentStillImageOutput = [currentStillImageOutput isUltraHighResolutionZeroShutterLagSupportEnabled];
    v5 = v6;
    if (currentStillImageOutput)
    {
      currentStillImageOutput = [v6 setUltraHighResolutionZeroShutterLagEnabled:{-[CAMUltraHighResolutionZeroShutterLagEnabledCommand isEnabled](self, "isEnabled")}];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](currentStillImageOutput, v5);
}

@end