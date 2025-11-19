@interface CAMNonDestructiveCropEnabledCommand
- (CAMNonDestructiveCropEnabledCommand)initWithCoder:(id)a3;
- (CAMNonDestructiveCropEnabledCommand)initWithNonDestructiveCropEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMNonDestructiveCropEnabledCommand

- (CAMNonDestructiveCropEnabledCommand)initWithNonDestructiveCropEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMNonDestructiveCropEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMNonDestructiveCropEnabledCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMNonDestructiveCropEnabledKey"];

  return [(CAMNonDestructiveCropEnabledCommand *)self initWithNonDestructiveCropEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMNonDestructiveCropEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMNonDestructiveCropEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMNonDestructiveCropEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMNonDestructiveCropEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMNonDestructiveCropEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v6 = [v4 currentVideoDevice];
  v5 = [v4 currentVideoDeviceFormat];

  if ([v5 isNonDestructiveCropSupported])
  {
    [v6 setNonDestructiveCropEnabled:{-[CAMNonDestructiveCropEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end