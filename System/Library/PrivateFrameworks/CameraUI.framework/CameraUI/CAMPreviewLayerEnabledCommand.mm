@interface CAMPreviewLayerEnabledCommand
- (CAMPreviewLayerEnabledCommand)initWithCoder:(id)coder;
- (CAMPreviewLayerEnabledCommand)initWithPreviewLayerEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreviewLayerEnabledCommand

- (CAMPreviewLayerEnabledCommand)initWithPreviewLayerEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMPreviewLayerEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMPreviewLayerEnabledCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPreviewLayerEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMPreviewLayerEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPreviewLayerEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMPreviewLayerEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPreviewLayerEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPreviewLayerEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPreviewLayerEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMPreviewLayerEnabledCommand *)self _isEnabled];
  currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];

  connection = [currentVideoPreviewLayer connection];
  v7 = connection;
  if (connection && _isEnabled != [connection isEnabled])
  {
    [v7 setEnabled:_isEnabled];
  }
}

@end