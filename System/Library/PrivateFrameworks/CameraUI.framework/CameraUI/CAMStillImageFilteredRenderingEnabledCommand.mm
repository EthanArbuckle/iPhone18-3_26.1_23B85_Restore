@interface CAMStillImageFilteredRenderingEnabledCommand
- (CAMStillImageFilteredRenderingEnabledCommand)initWithCoder:(id)coder;
- (CAMStillImageFilteredRenderingEnabledCommand)initWithFilteredRenderingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStillImageFilteredRenderingEnabledCommand

- (CAMStillImageFilteredRenderingEnabledCommand)initWithFilteredRenderingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMStillImageFilteredRenderingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMStillImageFilteredRenderingEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMStillImageFilteredRenderingEnabledKey"];

  return [(CAMStillImageFilteredRenderingEnabledCommand *)self initWithFilteredRenderingEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMStillImageFilteredRenderingEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMStillImageFilteredRenderingEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMStillImageFilteredRenderingEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMStillImageFilteredRenderingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMStillImageFilteredRenderingEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMStillImageFilteredRenderingEnabledCommand *)self _isEnabled];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  [currentStillImageOutput setFilterRenderingEnabled:_isEnabled];
}

@end