@interface DNDSMutableSettingsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBehaviorSettings:(id)a3;
- (void)setConfigurations:(id)a3;
- (void)setPhoneCallBypassSettings:(id)a3;
- (void)setScheduleSettings:(id)a3;
@end

@implementation DNDSMutableSettingsRecord

- (void)setBehaviorSettings:(id)a3
{
  v4 = [a3 copy];
  behaviorSettings = self->super._behaviorSettings;
  self->super._behaviorSettings = v4;

  MEMORY[0x2821F96F8](v4, behaviorSettings);
}

- (void)setPhoneCallBypassSettings:(id)a3
{
  v4 = [a3 copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8](v4, phoneCallBypassSettings);
}

- (void)setScheduleSettings:(id)a3
{
  v4 = [a3 copy];
  scheduleSettings = self->super._scheduleSettings;
  self->super._scheduleSettings = v4;

  MEMORY[0x2821F96F8](v4, scheduleSettings);
}

- (void)setConfigurations:(id)a3
{
  v4 = [a3 copy];
  configurations = self->super._configurations;
  self->super._configurations = v4;

  MEMORY[0x2821F96F8](v4, configurations);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSSettingsRecord alloc];

  return [(DNDSSettingsRecord *)v4 _initWithRecord:self];
}

@end