@interface CAMPrimaryConstituentDeviceSwitchingBehaviorCommand
+ (int64_t)_avCaptureBehaviorForBehavior:(int64_t)a3;
- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithBehavior:(int64_t)a3 restrictedSwitchingConditions:(unint64_t)a4;
- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPrimaryConstituentDeviceSwitchingBehaviorCommand

- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithBehavior:(int64_t)a3 restrictedSwitchingConditions:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    v6->__behavior = a3;
    v6->__restrictedSwitchingConditions = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMPrimaryConstituentDeviceSwitchingBehaviorCommand *)self _behavior];
  v4[4] = [(CAMPrimaryConstituentDeviceSwitchingBehaviorCommand *)self _restrictedSwitchingConditions];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v6 = [a3 currentVideoDevice];
  v4 = [v6 constituentDevices];
  if ([v4 count] >= 2)
  {
    v5 = [objc_opt_class() _avCaptureBehaviorForBehavior:{-[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand _behavior](self, "_behavior")}];
    [v6 setPrimaryConstituentDeviceSwitchingBehavior:v5 restrictedSwitchingBehaviorConditions:{objc_msgSend(objc_opt_class(), "_avCaptureRestrictionsConditionsForConditions:", -[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand _restrictedSwitchingConditions](self, "_restrictedSwitchingConditions"))}];
  }
}

+ (int64_t)_avCaptureBehaviorForBehavior:(int64_t)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

@end