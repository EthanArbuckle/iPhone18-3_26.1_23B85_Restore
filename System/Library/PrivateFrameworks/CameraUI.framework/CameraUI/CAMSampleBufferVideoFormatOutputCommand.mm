@interface CAMSampleBufferVideoFormatOutputCommand
- (CAMSampleBufferVideoFormatOutputCommand)initWithCoder:(id)coder;
- (CAMSampleBufferVideoFormatOutputCommand)initWithSampleBufferVideoFormat:(int64_t)format;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSampleBufferVideoFormatOutputCommand

- (CAMSampleBufferVideoFormatOutputCommand)initWithSampleBufferVideoFormat:(int64_t)format
{
  v8.receiver = self;
  v8.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__videoFormat = format;
    v6 = v4;
  }

  return v5;
}

- (CAMSampleBufferVideoFormatOutputCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__videoFormat = [coderCopy decodeIntegerForKey:@"CAMSampleBufferVideoFormat"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMSampleBufferVideoFormatOutputCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMSampleBufferVideoFormatOutputCommand _videoFormat](self forKey:{"_videoFormat", v5.receiver, v5.super_class), @"CAMSampleBufferVideoFormat"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMSampleBufferVideoFormatOutputCommand *)self _videoFormat];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentEffectsPreviewOutput = [context currentEffectsPreviewOutput];
  _videoFormat = [(CAMSampleBufferVideoFormatOutputCommand *)self _videoFormat];
  if (_videoFormat == 1)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E6966130], 0}];

    [currentEffectsPreviewOutput setVideoSettings:v8];
    [currentEffectsPreviewOutput setAlwaysDiscardsLateVideoFrames:1];
  }

  else
  {
    v5 = currentEffectsPreviewOutput;
    if (_videoFormat)
    {
      goto LABEL_6;
    }

    _videoFormat = [currentEffectsPreviewOutput setVideoSettings:0];
  }

  v5 = currentEffectsPreviewOutput;
LABEL_6:

  MEMORY[0x1EEE66BB8](_videoFormat, v5);
}

@end