@interface DNDSMutableBypassSettingsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setImmediateBypassCNGroupIdentifier:(id)identifier;
- (void)setImmediateBypassEventSourceType:(id)type;
- (void)setRepeatEventSourceBehaviorEnabledSetting:(id)setting;
@end

@implementation DNDSMutableBypassSettingsRecord

- (void)setImmediateBypassEventSourceType:(id)type
{
  v4 = [type copy];
  immediateBypassEventSourceType = self->super._immediateBypassEventSourceType;
  self->super._immediateBypassEventSourceType = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassEventSourceType);
}

- (void)setImmediateBypassCNGroupIdentifier:(id)identifier
{
  v4 = [identifier copy];
  immediateBypassCNGroupIdentifier = self->super._immediateBypassCNGroupIdentifier;
  self->super._immediateBypassCNGroupIdentifier = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassCNGroupIdentifier);
}

- (void)setRepeatEventSourceBehaviorEnabledSetting:(id)setting
{
  v4 = [setting copy];
  repeatEventSourceBehaviorEnabledSetting = self->super._repeatEventSourceBehaviorEnabledSetting;
  self->super._repeatEventSourceBehaviorEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, repeatEventSourceBehaviorEnabledSetting);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSBypassSettingsRecord alloc];

  return [(DNDSBypassSettingsRecord *)v4 _initWithRecord:self];
}

@end