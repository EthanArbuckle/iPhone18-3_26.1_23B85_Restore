@interface CAMSampleBufferVideoFormatOutputCommand
- (CAMSampleBufferVideoFormatOutputCommand)initWithCoder:(id)a3;
- (CAMSampleBufferVideoFormatOutputCommand)initWithSampleBufferVideoFormat:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSampleBufferVideoFormatOutputCommand

- (CAMSampleBufferVideoFormatOutputCommand)initWithSampleBufferVideoFormat:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__videoFormat = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMSampleBufferVideoFormatOutputCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__videoFormat = [v4 decodeIntegerForKey:@"CAMSampleBufferVideoFormat"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMSampleBufferVideoFormatOutputCommand _videoFormat](self forKey:{"_videoFormat", v5.receiver, v5.super_class), @"CAMSampleBufferVideoFormat"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMSampleBufferVideoFormatOutputCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMSampleBufferVideoFormatOutputCommand *)self _videoFormat];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v9 = [a3 currentEffectsPreviewOutput];
  v4 = [(CAMSampleBufferVideoFormatOutputCommand *)self _videoFormat];
  if (v4 == 1)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E6966130], 0}];

    [v9 setVideoSettings:v8];
    [v9 setAlwaysDiscardsLateVideoFrames:1];
  }

  else
  {
    v5 = v9;
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = [v9 setVideoSettings:0];
  }

  v5 = v9;
LABEL_6:

  MEMORY[0x1EEE66BB8](v4, v5);
}

@end