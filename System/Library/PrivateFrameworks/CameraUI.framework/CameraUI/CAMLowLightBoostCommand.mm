@interface CAMLowLightBoostCommand
- (CAMLowLightBoostCommand)initWithCoder:(id)coder;
- (CAMLowLightBoostCommand)initWithLowLightBoostEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMLowLightBoostCommand

- (CAMLowLightBoostCommand)initWithLowLightBoostEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMLowLightBoostCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMLowLightBoostCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMLowLightBoostCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMLowLightBoostCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMLowLightBoostCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMLowLightBoostCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMLowLightBoostCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMLowLightBoostCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMLowLightBoostCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  _isEnabled = [(CAMLowLightBoostCommand *)self _isEnabled];
  if ([currentVideoDevice isLowLightBoostSupported])
  {
    [currentVideoDevice setAutomaticallyEnablesLowLightBoostWhenAvailable:_isEnabled];
  }
}

@end