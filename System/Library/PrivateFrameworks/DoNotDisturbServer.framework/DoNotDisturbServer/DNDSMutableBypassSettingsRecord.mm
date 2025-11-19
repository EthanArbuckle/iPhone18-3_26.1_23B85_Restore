@interface DNDSMutableBypassSettingsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setImmediateBypassCNGroupIdentifier:(id)a3;
- (void)setImmediateBypassEventSourceType:(id)a3;
- (void)setRepeatEventSourceBehaviorEnabledSetting:(id)a3;
@end

@implementation DNDSMutableBypassSettingsRecord

- (void)setImmediateBypassEventSourceType:(id)a3
{
  v4 = [a3 copy];
  immediateBypassEventSourceType = self->super._immediateBypassEventSourceType;
  self->super._immediateBypassEventSourceType = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassEventSourceType);
}

- (void)setImmediateBypassCNGroupIdentifier:(id)a3
{
  v4 = [a3 copy];
  immediateBypassCNGroupIdentifier = self->super._immediateBypassCNGroupIdentifier;
  self->super._immediateBypassCNGroupIdentifier = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassCNGroupIdentifier);
}

- (void)setRepeatEventSourceBehaviorEnabledSetting:(id)a3
{
  v4 = [a3 copy];
  repeatEventSourceBehaviorEnabledSetting = self->super._repeatEventSourceBehaviorEnabledSetting;
  self->super._repeatEventSourceBehaviorEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, repeatEventSourceBehaviorEnabledSetting);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSBypassSettingsRecord alloc];

  return [(DNDSBypassSettingsRecord *)v4 _initWithRecord:self];
}

@end