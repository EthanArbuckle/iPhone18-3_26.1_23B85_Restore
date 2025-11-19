@interface CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand
- (CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand)initWithCoder:(id)a3;
- (CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand)initWithPortraitEffectsMatteDeliveryEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand

- (CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand)initWithPortraitEffectsMatteDeliveryEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMStillImagePortraitEffectsMatteDeliveryEnabledKey"];

  return [(CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand *)self initWithPortraitEffectsMatteDeliveryEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMStillImagePortraitEffectsMatteDeliveryEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  if ([v4 isPortraitEffectsMatteDeliverySupported])
  {
    [v4 setPortraitEffectsMatteDeliveryEnabled:{-[CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end