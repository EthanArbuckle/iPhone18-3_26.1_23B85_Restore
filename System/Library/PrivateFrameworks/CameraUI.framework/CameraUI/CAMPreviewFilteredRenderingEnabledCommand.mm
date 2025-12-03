@interface CAMPreviewFilteredRenderingEnabledCommand
- (CAMPreviewFilteredRenderingEnabledCommand)initWithCoder:(id)coder;
- (CAMPreviewFilteredRenderingEnabledCommand)initWithFilteredRenderingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreviewFilteredRenderingEnabledCommand

- (CAMPreviewFilteredRenderingEnabledCommand)initWithFilteredRenderingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMPreviewFilteredRenderingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMPreviewFilteredRenderingEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMPreviewFilteredRenderingEnabledKey"];

  return [(CAMPreviewFilteredRenderingEnabledCommand *)self initWithFilteredRenderingEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPreviewFilteredRenderingEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMPreviewFilteredRenderingEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPreviewFilteredRenderingEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPreviewFilteredRenderingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPreviewFilteredRenderingEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMPreviewFilteredRenderingEnabledCommand *)self _isEnabled];
  currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];

  [currentVideoPreviewLayer setFilterRenderingEnabled:_isEnabled];
}

@end