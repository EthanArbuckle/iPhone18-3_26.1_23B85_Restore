@interface DNDSMutableBehaviorSettingsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setInterruptionBehaviorSetting:(id)a3;
@end

@implementation DNDSMutableBehaviorSettingsRecord

- (void)setInterruptionBehaviorSetting:(id)a3
{
  v4 = [a3 copy];
  interruptionBehaviorSetting = self->super._interruptionBehaviorSetting;
  self->super._interruptionBehaviorSetting = v4;

  MEMORY[0x2821F96F8](v4, interruptionBehaviorSetting);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSBehaviorSettingsRecord alloc];

  return [(DNDSBehaviorSettingsRecord *)v4 _initWithRecord:self];
}

@end