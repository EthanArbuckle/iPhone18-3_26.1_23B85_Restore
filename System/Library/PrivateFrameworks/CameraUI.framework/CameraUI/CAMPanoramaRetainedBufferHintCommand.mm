@interface CAMPanoramaRetainedBufferHintCommand
- (CAMPanoramaRetainedBufferHintCommand)initWithCoder:(id)coder;
- (CAMPanoramaRetainedBufferHintCommand)initWithPanoramaRetainedBufferHintEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPanoramaRetainedBufferHintCommand

- (CAMPanoramaRetainedBufferHintCommand)initWithPanoramaRetainedBufferHintEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaRetainedBufferHintCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaRetainedBufferHintCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPanoramaRetainedBufferHintCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMPanoramaRetainedBufferHintCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaRetainedBufferHintCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMPanoramaRetainedBufferHintCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMPanoramaRetainedBufferHintCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaRetainedBufferHintCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPanoramaRetainedBufferHintCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _isEnabled = [(CAMPanoramaRetainedBufferHintCommand *)self _isEnabled];
  currentPanoramaOutput = [contextCopy currentPanoramaOutput];
  v6 = [currentPanoramaOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v6 isVideoRetainedBufferCountHintSupported])
  {
    currentPanoramaConfiguration = [contextCopy currentPanoramaConfiguration];
    v8 = currentPanoramaConfiguration;
    if (_isEnabled)
    {
      ringBufferSize = [currentPanoramaConfiguration ringBufferSize];
    }

    else
    {
      ringBufferSize = 0;
    }

    [v6 setVideoRetainedBufferCountHint:ringBufferSize];
  }
}

@end