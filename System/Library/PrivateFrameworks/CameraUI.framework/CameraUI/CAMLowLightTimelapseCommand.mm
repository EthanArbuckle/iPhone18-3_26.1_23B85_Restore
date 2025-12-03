@interface CAMLowLightTimelapseCommand
- (CAMLowLightTimelapseCommand)initWithCoder:(id)coder;
- (CAMLowLightTimelapseCommand)initWithTimelapseLowLightCompensationEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMLowLightTimelapseCommand

- (CAMLowLightTimelapseCommand)initWithTimelapseLowLightCompensationEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMLowLightTimelapseCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMLowLightTimelapseCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMLowLightTimelapseCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMLowLightTimelapseCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMLowLightTimelapseCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMLowLightTimelapseCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMLowLightTimelapseCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMLowLightTimelapseCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMLowLightTimelapseCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, 1, 15);
  if ([(CAMLowLightTimelapseCommand *)self _isEnabled])
  {
    memset(&v7, 0, sizeof(v7));
    if (currentVideoDevice)
    {
      [currentVideoDevice activeVideoMaxFrameDuration];
    }

    time1 = v7;
    v5 = v8;
    if (CMTimeCompare(&time1, &v5) < 0)
    {
      time1 = v8;
      [currentVideoDevice setActiveVideoMaxFrameDuration:&time1];
    }
  }
}

@end