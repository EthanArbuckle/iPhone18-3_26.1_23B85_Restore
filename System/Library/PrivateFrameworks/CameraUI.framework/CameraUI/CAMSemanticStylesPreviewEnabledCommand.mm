@interface CAMSemanticStylesPreviewEnabledCommand
- (CAMSemanticStylesPreviewEnabledCommand)initWithCoder:(id)coder;
- (CAMSemanticStylesPreviewEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSemanticStylesPreviewEnabledCommand

- (CAMSemanticStylesPreviewEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMSemanticStylesPreviewEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMSemanticStylesPreviewEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMSemanticStylesPreviewEnabledKey"];

  return [(CAMSemanticStylesPreviewEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMSemanticStylesPreviewEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMSemanticStylesPreviewEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMSemanticStylesPreviewEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMSemanticStylesPreviewEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMSemanticStylesPreviewEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoPreviewLayer = [context currentVideoPreviewLayer];
  if ([currentVideoPreviewLayer isSemanticStyleRenderingSupported])
  {
    [currentVideoPreviewLayer setSemanticStyleRenderingEnabled:{-[CAMSemanticStylesPreviewEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end