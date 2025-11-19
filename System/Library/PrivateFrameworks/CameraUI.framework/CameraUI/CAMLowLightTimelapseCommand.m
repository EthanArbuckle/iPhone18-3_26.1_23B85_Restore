@interface CAMLowLightTimelapseCommand
- (CAMLowLightTimelapseCommand)initWithCoder:(id)a3;
- (CAMLowLightTimelapseCommand)initWithTimelapseLowLightCompensationEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMLowLightTimelapseCommand

- (CAMLowLightTimelapseCommand)initWithTimelapseLowLightCompensationEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMLowLightTimelapseCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMLowLightTimelapseCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMLowLightTimelapseCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMLowLightTimelapseCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMLowLightTimelapseCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMLowLightTimelapseCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMLowLightTimelapseCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMLowLightTimelapseCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMLowLightTimelapseCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoDevice];
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, 1, 15);
  if ([(CAMLowLightTimelapseCommand *)self _isEnabled])
  {
    memset(&v7, 0, sizeof(v7));
    if (v4)
    {
      [v4 activeVideoMaxFrameDuration];
    }

    time1 = v7;
    v5 = v8;
    if (CMTimeCompare(&time1, &v5) < 0)
    {
      time1 = v8;
      [v4 setActiveVideoMaxFrameDuration:&time1];
    }
  }
}

@end