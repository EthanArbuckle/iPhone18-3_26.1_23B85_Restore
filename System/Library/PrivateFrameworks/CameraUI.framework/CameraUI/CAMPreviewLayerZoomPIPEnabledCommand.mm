@interface CAMPreviewLayerZoomPIPEnabledCommand
- (CAMPreviewLayerZoomPIPEnabledCommand)initWithCoder:(id)coder;
- (CAMPreviewLayerZoomPIPEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreviewLayerZoomPIPEnabledCommand

- (CAMPreviewLayerZoomPIPEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

- (CAMPreviewLayerZoomPIPEnabledCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPreviewLayerZoomPIPEnabledCommand *)self isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoPreviewLayer = [context currentVideoPreviewLayer];
  if ([currentVideoPreviewLayer isZoomPictureInPictureOverlaySupported])
  {
    [currentVideoPreviewLayer setZoomPictureInPictureOverlayEnabled:{-[CAMPreviewLayerZoomPIPEnabledCommand isEnabled](self, "isEnabled")}];
  }
}

@end