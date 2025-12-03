@interface DNDSMutableConfigurationsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfiguration:(id)configuration forModeIdentifier:(id)identifier;
- (void)setModeConfigurations:(id)configurations;
@end

@implementation DNDSMutableConfigurationsRecord

- (void)setModeConfigurations:(id)configurations
{
  v4 = [configurations copy];
  modeConfigurations = self->super._modeConfigurations;
  self->super._modeConfigurations = v4;

  MEMORY[0x2821F96F8](v4, modeConfigurations);
}

- (void)setConfiguration:(id)configuration forModeIdentifier:(id)identifier
{
  modeConfigurations = self->super._modeConfigurations;
  identifierCopy = identifier;
  makeRecord = [configuration makeRecord];
  [(NSMutableDictionary *)modeConfigurations setObject:makeRecord forKey:identifierCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSConfigurationsRecord alloc];

  return [(DNDSConfigurationsRecord *)v4 _initWithRecord:self];
}

@end