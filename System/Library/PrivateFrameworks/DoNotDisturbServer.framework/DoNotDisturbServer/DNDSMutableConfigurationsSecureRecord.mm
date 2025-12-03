@interface DNDSMutableConfigurationsSecureRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfiguration:(id)configuration forModeIdentifier:(id)identifier;
- (void)setModeConfigurations:(id)configurations;
@end

@implementation DNDSMutableConfigurationsSecureRecord

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
  makeSecureRecord = [configuration makeSecureRecord];
  [(NSMutableDictionary *)modeConfigurations setObject:makeSecureRecord forKey:identifierCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSConfigurationsSecureRecord alloc];

  return [(DNDSConfigurationsSecureRecord *)v4 _initWithRecord:self];
}

@end