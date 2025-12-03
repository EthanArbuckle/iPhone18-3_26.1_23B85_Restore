@interface CAMContentAwareDistortionCorrectionCommand
- (CAMContentAwareDistortionCorrectionCommand)initWithCoder:(id)coder;
- (CAMContentAwareDistortionCorrectionCommand)initWithContentAwareDistortionCorrectionEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMContentAwareDistortionCorrectionCommand

- (CAMContentAwareDistortionCorrectionCommand)initWithContentAwareDistortionCorrectionEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMContentAwareDistortionCorrectionCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMContentAwareDistortionCorrectionCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMContentAwareDistortionCorrectionKey"];

  return [(CAMContentAwareDistortionCorrectionCommand *)self initWithContentAwareDistortionCorrectionEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMContentAwareDistortionCorrectionCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMContentAwareDistortionCorrectionCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMContentAwareDistortionCorrectionKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMContentAwareDistortionCorrectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMContentAwareDistortionCorrectionCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [currentStillImageOutput isContentAwareDistortionCorrectionSupported])
  {
    [currentStillImageOutput setContentAwareDistortionCorrectionEnabled:{-[CAMContentAwareDistortionCorrectionCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end