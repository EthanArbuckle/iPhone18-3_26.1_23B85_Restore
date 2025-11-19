@interface CAMPanoramaRetainedBufferHintCommand
- (CAMPanoramaRetainedBufferHintCommand)initWithCoder:(id)a3;
- (CAMPanoramaRetainedBufferHintCommand)initWithPanoramaRetainedBufferHintEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPanoramaRetainedBufferHintCommand

- (CAMPanoramaRetainedBufferHintCommand)initWithPanoramaRetainedBufferHintEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaRetainedBufferHintCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaRetainedBufferHintCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPanoramaRetainedBufferHintCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMPanoramaRetainedBufferHintCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaRetainedBufferHintCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMPanoramaRetainedBufferHintCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPanoramaRetainedBufferHintCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaRetainedBufferHintCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMPanoramaRetainedBufferHintCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v10 = a3;
  v4 = [(CAMPanoramaRetainedBufferHintCommand *)self _isEnabled];
  v5 = [v10 currentPanoramaOutput];
  v6 = [v5 connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v6 isVideoRetainedBufferCountHintSupported])
  {
    v7 = [v10 currentPanoramaConfiguration];
    v8 = v7;
    if (v4)
    {
      v9 = [v7 ringBufferSize];
    }

    else
    {
      v9 = 0;
    }

    [v6 setVideoRetainedBufferCountHint:v9];
  }
}

@end