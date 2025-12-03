@interface CAMPrimaryConstituentDeviceSwitchingBehaviorCommand
+ (int64_t)_avCaptureBehaviorForBehavior:(int64_t)behavior;
- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithBehavior:(int64_t)behavior restrictedSwitchingConditions:(unint64_t)conditions;
- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPrimaryConstituentDeviceSwitchingBehaviorCommand

- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithBehavior:(int64_t)behavior restrictedSwitchingConditions:(unint64_t)conditions
{
  v10.receiver = self;
  v10.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    v6->__behavior = behavior;
    v6->__restrictedSwitchingConditions = conditions;
    v8 = v6;
  }

  return v7;
}

- (CAMPrimaryConstituentDeviceSwitchingBehaviorCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPrimaryConstituentDeviceSwitchingBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMPrimaryConstituentDeviceSwitchingBehaviorCommand *)self _behavior];
  v4[4] = [(CAMPrimaryConstituentDeviceSwitchingBehaviorCommand *)self _restrictedSwitchingConditions];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  constituentDevices = [currentVideoDevice constituentDevices];
  if ([constituentDevices count] >= 2)
  {
    v5 = [objc_opt_class() _avCaptureBehaviorForBehavior:{-[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand _behavior](self, "_behavior")}];
    [currentVideoDevice setPrimaryConstituentDeviceSwitchingBehavior:v5 restrictedSwitchingBehaviorConditions:{objc_msgSend(objc_opt_class(), "_avCaptureRestrictionsConditionsForConditions:", -[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand _restrictedSwitchingConditions](self, "_restrictedSwitchingConditions"))}];
  }
}

+ (int64_t)_avCaptureBehaviorForBehavior:(int64_t)behavior
{
  if (behavior < 3)
  {
    return behavior + 1;
  }

  else
  {
    return 0;
  }
}

@end