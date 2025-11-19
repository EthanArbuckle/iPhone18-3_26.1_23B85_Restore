@interface CAMUltraHighResolutionZeroShutterLagEnabledCommand
- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithCoder:(id)a3;
- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMUltraHighResolutionZeroShutterLagEnabledCommand

- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_enabled = a3;
  }

  return result;
}

- (CAMUltraHighResolutionZeroShutterLagEnabledCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMUltraHighResolutionZeroShutterLagEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMUltraHighResolutionZeroShutterLagEnabledCommand *)self isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [v4 isUltraHighResolutionZeroShutterLagSupportEnabled];
    v5 = v6;
    if (v4)
    {
      v4 = [v6 setUltraHighResolutionZeroShutterLagEnabled:{-[CAMUltraHighResolutionZeroShutterLagEnabledCommand isEnabled](self, "isEnabled")}];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

@end