@interface DNDSMutableModeConfigurationTriggersRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTriggers:(id)a3;
@end

@implementation DNDSMutableModeConfigurationTriggersRecord

- (void)setTriggers:(id)a3
{
  v4 = [a3 copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  MEMORY[0x2821F96F8](v4, triggers);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSModeConfigurationTriggersRecord allocWithZone:a3];
  v5 = [(DNDSModeConfigurationTriggersRecord *)self triggers];
  v6 = [(DNDSModeConfigurationTriggersRecord *)v4 initWithTriggers:v5];

  return v6;
}

@end