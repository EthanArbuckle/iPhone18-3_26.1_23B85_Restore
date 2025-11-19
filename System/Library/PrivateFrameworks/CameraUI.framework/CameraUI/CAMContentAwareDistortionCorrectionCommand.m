@interface CAMContentAwareDistortionCorrectionCommand
- (CAMContentAwareDistortionCorrectionCommand)initWithCoder:(id)a3;
- (CAMContentAwareDistortionCorrectionCommand)initWithContentAwareDistortionCorrectionEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMContentAwareDistortionCorrectionCommand

- (CAMContentAwareDistortionCorrectionCommand)initWithContentAwareDistortionCorrectionEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMContentAwareDistortionCorrectionCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMContentAwareDistortionCorrectionCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMContentAwareDistortionCorrectionKey"];

  return [(CAMContentAwareDistortionCorrectionCommand *)self initWithContentAwareDistortionCorrectionEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMContentAwareDistortionCorrectionCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMContentAwareDistortionCorrectionCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMContentAwareDistortionCorrectionKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMContentAwareDistortionCorrectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMContentAwareDistortionCorrectionCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 isContentAwareDistortionCorrectionSupported])
  {
    [v4 setContentAwareDistortionCorrectionEnabled:{-[CAMContentAwareDistortionCorrectionCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end