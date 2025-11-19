@interface CAMBlinkAndSmileDetectionCommand
- (CAMBlinkAndSmileDetectionCommand)initWithBlinkDetection:(BOOL)a3 smileDetection:(BOOL)a4;
- (CAMBlinkAndSmileDetectionCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMBlinkAndSmileDetectionCommand

- (CAMBlinkAndSmileDetectionCommand)initWithBlinkDetection:(BOOL)a3 smileDetection:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CAMBlinkAndSmileDetectionCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__blinkDetectionEnabled = a3;
    v6->__smileDetectionEnabled = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMBlinkAndSmileDetectionCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMBlinkAndSmileDetectionCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__blinkDetectionEnabled = [v4 decodeBoolForKey:@"CAMBlinkAndSmileDetectionCommandBlinkEnabled"];
    v5->__smileDetectionEnabled = [v4 decodeBoolForKey:@"CAMBlinkAndSmileDetectionCommandSmileEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMBlinkAndSmileDetectionCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMBlinkAndSmileDetectionCommand _isBlinkDetectionEnabled](self forKey:{"_isBlinkDetectionEnabled", v5.receiver, v5.super_class), @"CAMBlinkAndSmileDetectionCommandBlinkEnabled"}];
  [v4 encodeBool:-[CAMBlinkAndSmileDetectionCommand _isSmileDetectionEnabled](self forKey:{"_isSmileDetectionEnabled"), @"CAMBlinkAndSmileDetectionCommandSmileEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMBlinkAndSmileDetectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMBlinkAndSmileDetectionCommand *)self _isBlinkDetectionEnabled];
  v4[25] = [(CAMBlinkAndSmileDetectionCommand *)self _isSmileDetectionEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v5 = [a3 currentVideoDevice];
  if ([v5 isEyeDetectionSupported] && objc_msgSend(v5, "isEyeClosedDetectionSupported"))
  {
    v4 = [(CAMBlinkAndSmileDetectionCommand *)self _isBlinkDetectionEnabled];
    [v5 setEyeDetectionEnabled:v4];
    [v5 setEyeClosedDetectionEnabled:v4];
  }

  if ([v5 isSmileDetectionSupported])
  {
    [v5 setSmileDetectionEnabled:{-[CAMBlinkAndSmileDetectionCommand _isSmileDetectionEnabled](self, "_isSmileDetectionEnabled")}];
  }
}

@end