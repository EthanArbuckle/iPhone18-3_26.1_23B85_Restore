@interface CAMPreviewLayerZoomPIPEnabledCommand
- (CAMPreviewLayerZoomPIPEnabledCommand)initWithCoder:(id)a3;
- (CAMPreviewLayerZoomPIPEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPreviewLayerZoomPIPEnabledCommand

- (CAMPreviewLayerZoomPIPEnabledCommand)initWithEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_enabled = a3;
  }

  return result;
}

- (CAMPreviewLayerZoomPIPEnabledCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPreviewLayerZoomPIPEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMPreviewLayerZoomPIPEnabledCommand *)self isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoPreviewLayer];
  if ([v4 isZoomPictureInPictureOverlaySupported])
  {
    [v4 setZoomPictureInPictureOverlayEnabled:{-[CAMPreviewLayerZoomPIPEnabledCommand isEnabled](self, "isEnabled")}];
  }
}

@end