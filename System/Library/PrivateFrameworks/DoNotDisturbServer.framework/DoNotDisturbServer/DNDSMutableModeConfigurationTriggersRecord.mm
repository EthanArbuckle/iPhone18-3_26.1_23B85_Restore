@interface DNDSMutableModeConfigurationTriggersRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTriggers:(id)triggers;
@end

@implementation DNDSMutableModeConfigurationTriggersRecord

- (void)setTriggers:(id)triggers
{
  v4 = [triggers copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  MEMORY[0x2821F96F8](v4, triggers);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSModeConfigurationTriggersRecord allocWithZone:zone];
  triggers = [(DNDSModeConfigurationTriggersRecord *)self triggers];
  v6 = [(DNDSModeConfigurationTriggersRecord *)v4 initWithTriggers:triggers];

  return v6;
}

@end