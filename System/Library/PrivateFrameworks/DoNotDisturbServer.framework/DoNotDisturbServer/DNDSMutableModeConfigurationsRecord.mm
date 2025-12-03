@interface DNDSMutableModeConfigurationsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfiguration:(id)configuration forModeIdentifier:(id)identifier;
- (void)setMode:(id)mode forModeIdentifier:(id)identifier;
- (void)setModeConfiguration:(id)configuration forModeIdentifier:(id)identifier;
- (void)setTriggers:(id)triggers forModeIdentifier:(id)identifier;
@end

@implementation DNDSMutableModeConfigurationsRecord

- (void)setModeConfiguration:(id)configuration forModeIdentifier:(id)identifier
{
  if (identifier)
  {
    [(NSMutableDictionary *)self->super._modeConfigurationsByModeIdentifier setObject:configuration forKeyedSubscript:?];
  }
}

- (void)setMode:(id)mode forModeIdentifier:(id)identifier
{
  modeCopy = mode;
  modeConfigurationsByModeIdentifier = self->super._modeConfigurationsByModeIdentifier;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifierCopy];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(DNDSMutableModeConfigurationRecord);
  }

  [(DNDSMutableModeConfigurationRecord *)v9 setMode:modeCopy];
  [(NSMutableDictionary *)self->super._modeConfigurationsByModeIdentifier setObject:v9 forKeyedSubscript:identifierCopy];
}

- (void)setConfiguration:(id)configuration forModeIdentifier:(id)identifier
{
  modeConfigurationsByModeIdentifier = self->super._modeConfigurationsByModeIdentifier;
  identifierCopy = identifier;
  configurationCopy = configuration;
  v9 = [(NSMutableDictionary *)modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifierCopy];
  v10 = [v9 mutableCopy];

  [v10 setConfiguration:configurationCopy];
  [(NSMutableDictionary *)self->super._modeConfigurationsByModeIdentifier setObject:v10 forKeyedSubscript:identifierCopy];
}

- (void)setTriggers:(id)triggers forModeIdentifier:(id)identifier
{
  modeConfigurationsByModeIdentifier = self->super._modeConfigurationsByModeIdentifier;
  identifierCopy = identifier;
  triggersCopy = triggers;
  v9 = [(NSMutableDictionary *)modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifierCopy];
  v10 = [v9 mutableCopy];

  [v10 setTriggers:triggersCopy];
  [(NSMutableDictionary *)self->super._modeConfigurationsByModeIdentifier setObject:v10 forKeyedSubscript:identifierCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSModeConfigurationsRecord allocWithZone:zone];
  allValues = [(NSMutableDictionary *)self->super._modeConfigurationsByModeIdentifier allValues];
  v6 = [(DNDSModeConfigurationsRecord *)v4 _initWithModeConfigurations:allValues];

  return v6;
}

@end