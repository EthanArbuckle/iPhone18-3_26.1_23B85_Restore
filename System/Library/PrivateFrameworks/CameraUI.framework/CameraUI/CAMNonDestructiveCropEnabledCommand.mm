@interface CAMNonDestructiveCropEnabledCommand
- (CAMNonDestructiveCropEnabledCommand)initWithCoder:(id)coder;
- (CAMNonDestructiveCropEnabledCommand)initWithNonDestructiveCropEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMNonDestructiveCropEnabledCommand

- (CAMNonDestructiveCropEnabledCommand)initWithNonDestructiveCropEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMNonDestructiveCropEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMNonDestructiveCropEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMNonDestructiveCropEnabledKey"];

  return [(CAMNonDestructiveCropEnabledCommand *)self initWithNonDestructiveCropEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMNonDestructiveCropEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMNonDestructiveCropEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMNonDestructiveCropEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMNonDestructiveCropEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMNonDestructiveCropEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  if ([currentVideoDeviceFormat isNonDestructiveCropSupported])
  {
    [currentVideoDevice setNonDestructiveCropEnabled:{-[CAMNonDestructiveCropEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end