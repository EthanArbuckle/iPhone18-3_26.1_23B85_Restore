@interface CAMPreviewLayerEnabledCommand
- (CAMPreviewLayerEnabledCommand)initWithCoder:(id)a3;
- (CAMPreviewLayerEnabledCommand)initWithPreviewLayerEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPreviewLayerEnabledCommand

- (CAMPreviewLayerEnabledCommand)initWithPreviewLayerEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMPreviewLayerEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMPreviewLayerEnabledCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPreviewLayerEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMPreviewLayerEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMPreviewLayerEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMPreviewLayerEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPreviewLayerEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPreviewLayerEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMPreviewLayerEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewLayerEnabledCommand *)self _isEnabled];
  v8 = [v4 currentVideoPreviewLayer];

  v6 = [v8 connection];
  v7 = v6;
  if (v6 && v5 != [v6 isEnabled])
  {
    [v7 setEnabled:v5];
  }
}

@end