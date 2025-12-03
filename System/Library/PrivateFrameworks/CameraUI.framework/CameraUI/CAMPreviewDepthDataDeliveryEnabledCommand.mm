@interface CAMPreviewDepthDataDeliveryEnabledCommand
- (CAMPreviewDepthDataDeliveryEnabledCommand)initWithCoder:(id)coder;
- (CAMPreviewDepthDataDeliveryEnabledCommand)initWithDepthDataDeliveryEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreviewDepthDataDeliveryEnabledCommand

- (CAMPreviewDepthDataDeliveryEnabledCommand)initWithDepthDataDeliveryEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMPreviewDepthDataDeliveryEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMPreviewDepthDataDeliveryEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMPreviewDepthDataDeliveryEnabledKey"];

  return [(CAMPreviewDepthDataDeliveryEnabledCommand *)self initWithDepthDataDeliveryEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPreviewDepthDataDeliveryEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMPreviewDepthDataDeliveryEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPreviewDepthDataDeliveryEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPreviewDepthDataDeliveryEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPreviewDepthDataDeliveryEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMPreviewDepthDataDeliveryEnabledCommand *)self _isEnabled];
  currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];

  if ([currentVideoPreviewLayer isDepthDataDeliverySupported])
  {
    [currentVideoPreviewLayer setDepthDataDeliveryEnabled:_isEnabled];
  }
}

@end