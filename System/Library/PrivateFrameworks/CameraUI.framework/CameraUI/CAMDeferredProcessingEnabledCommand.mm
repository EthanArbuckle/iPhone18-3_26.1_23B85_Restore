@interface CAMDeferredProcessingEnabledCommand
- (CAMDeferredProcessingEnabledCommand)initWithCoder:(id)coder;
- (CAMDeferredProcessingEnabledCommand)initWithDeferredProcessingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMDeferredProcessingEnabledCommand

- (CAMDeferredProcessingEnabledCommand)initWithDeferredProcessingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMDeferredProcessingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMDeferredProcessingEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMDeferredProcessingEnabledKey"];

  return [(CAMDeferredProcessingEnabledCommand *)self initWithDeferredProcessingEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMDeferredProcessingEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMDeferredProcessingEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMDeferredProcessingEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMDeferredProcessingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMDeferredProcessingEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  if ([currentStillImageOutput isDeferredProcessingSupported])
  {
    [currentStillImageOutput setDeferredProcessingEnabled:{-[CAMDeferredProcessingEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end