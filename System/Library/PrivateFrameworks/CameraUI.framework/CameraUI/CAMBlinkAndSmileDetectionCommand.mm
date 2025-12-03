@interface CAMBlinkAndSmileDetectionCommand
- (CAMBlinkAndSmileDetectionCommand)initWithBlinkDetection:(BOOL)detection smileDetection:(BOOL)smileDetection;
- (CAMBlinkAndSmileDetectionCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMBlinkAndSmileDetectionCommand

- (CAMBlinkAndSmileDetectionCommand)initWithBlinkDetection:(BOOL)detection smileDetection:(BOOL)smileDetection
{
  v10.receiver = self;
  v10.super_class = CAMBlinkAndSmileDetectionCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__blinkDetectionEnabled = detection;
    v6->__smileDetectionEnabled = smileDetection;
    v8 = v6;
  }

  return v7;
}

- (CAMBlinkAndSmileDetectionCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMBlinkAndSmileDetectionCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__blinkDetectionEnabled = [coderCopy decodeBoolForKey:@"CAMBlinkAndSmileDetectionCommandBlinkEnabled"];
    v5->__smileDetectionEnabled = [coderCopy decodeBoolForKey:@"CAMBlinkAndSmileDetectionCommandSmileEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMBlinkAndSmileDetectionCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMBlinkAndSmileDetectionCommand _isBlinkDetectionEnabled](self forKey:{"_isBlinkDetectionEnabled", v5.receiver, v5.super_class), @"CAMBlinkAndSmileDetectionCommandBlinkEnabled"}];
  [coderCopy encodeBool:-[CAMBlinkAndSmileDetectionCommand _isSmileDetectionEnabled](self forKey:{"_isSmileDetectionEnabled"), @"CAMBlinkAndSmileDetectionCommandSmileEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMBlinkAndSmileDetectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMBlinkAndSmileDetectionCommand *)self _isBlinkDetectionEnabled];
  v4[25] = [(CAMBlinkAndSmileDetectionCommand *)self _isSmileDetectionEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  if ([currentVideoDevice isEyeDetectionSupported] && objc_msgSend(currentVideoDevice, "isEyeClosedDetectionSupported"))
  {
    _isBlinkDetectionEnabled = [(CAMBlinkAndSmileDetectionCommand *)self _isBlinkDetectionEnabled];
    [currentVideoDevice setEyeDetectionEnabled:_isBlinkDetectionEnabled];
    [currentVideoDevice setEyeClosedDetectionEnabled:_isBlinkDetectionEnabled];
  }

  if ([currentVideoDevice isSmileDetectionSupported])
  {
    [currentVideoDevice setSmileDetectionEnabled:{-[CAMBlinkAndSmileDetectionCommand _isSmileDetectionEnabled](self, "_isSmileDetectionEnabled")}];
  }
}

@end