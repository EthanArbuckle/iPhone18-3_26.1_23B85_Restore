@interface CAMPortraitAutoSuggestEnabledCommand
- (CAMPortraitAutoSuggestEnabledCommand)initWithPortraitAutoSuggestEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPortraitAutoSuggestEnabledCommand

- (CAMPortraitAutoSuggestEnabledCommand)initWithPortraitAutoSuggestEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMPortraitAutoSuggestEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPortraitAutoSuggestEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPortraitAutoSuggestEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMPortraitAutoSuggestEnabledCommand *)self _isEnabled];
  currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];

  if ([currentVideoPreviewLayer isPortraitAutoSuggestSupported])
  {
    [currentVideoPreviewLayer setPortraitAutoSuggestEnabled:_isEnabled];
  }
}

@end