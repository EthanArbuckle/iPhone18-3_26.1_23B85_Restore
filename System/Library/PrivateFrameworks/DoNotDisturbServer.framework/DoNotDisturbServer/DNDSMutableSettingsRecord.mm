@interface DNDSMutableSettingsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBehaviorSettings:(id)settings;
- (void)setConfigurations:(id)configurations;
- (void)setPhoneCallBypassSettings:(id)settings;
- (void)setScheduleSettings:(id)settings;
@end

@implementation DNDSMutableSettingsRecord

- (void)setBehaviorSettings:(id)settings
{
  v4 = [settings copy];
  behaviorSettings = self->super._behaviorSettings;
  self->super._behaviorSettings = v4;

  MEMORY[0x2821F96F8](v4, behaviorSettings);
}

- (void)setPhoneCallBypassSettings:(id)settings
{
  v4 = [settings copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8](v4, phoneCallBypassSettings);
}

- (void)setScheduleSettings:(id)settings
{
  v4 = [settings copy];
  scheduleSettings = self->super._scheduleSettings;
  self->super._scheduleSettings = v4;

  MEMORY[0x2821F96F8](v4, scheduleSettings);
}

- (void)setConfigurations:(id)configurations
{
  v4 = [configurations copy];
  configurations = self->super._configurations;
  self->super._configurations = v4;

  MEMORY[0x2821F96F8](v4, configurations);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSSettingsRecord alloc];

  return [(DNDSSettingsRecord *)v4 _initWithRecord:self];
}

@end