@interface DNDSMutableBehaviorSettingsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setInterruptionBehaviorSetting:(id)setting;
@end

@implementation DNDSMutableBehaviorSettingsRecord

- (void)setInterruptionBehaviorSetting:(id)setting
{
  v4 = [setting copy];
  interruptionBehaviorSetting = self->super._interruptionBehaviorSetting;
  self->super._interruptionBehaviorSetting = v4;

  MEMORY[0x2821F96F8](v4, interruptionBehaviorSetting);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSBehaviorSettingsRecord alloc];

  return [(DNDSBehaviorSettingsRecord *)v4 _initWithRecord:self];
}

@end