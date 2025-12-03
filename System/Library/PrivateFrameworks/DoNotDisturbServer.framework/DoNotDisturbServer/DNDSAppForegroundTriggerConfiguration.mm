@interface DNDSAppForegroundTriggerConfiguration
- (DNDSAppForegroundTriggerConfiguration)init;
- (void)addTriggerForModeWithIdentifier:(id)identifier onForegroundOfApp:(id)app;
@end

@implementation DNDSAppForegroundTriggerConfiguration

- (DNDSAppForegroundTriggerConfiguration)init
{
  v6.receiver = self;
  v6.super_class = DNDSAppForegroundTriggerConfiguration;
  v2 = [(DNDSAppForegroundTriggerConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    bundleIDToModeIdentifierTriggers = v2->_bundleIDToModeIdentifierTriggers;
    v2->_bundleIDToModeIdentifierTriggers = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)addTriggerForModeWithIdentifier:(id)identifier onForegroundOfApp:(id)app
{
  bundleIDToModeIdentifierTriggers = self->_bundleIDToModeIdentifierTriggers;
  appCopy = app;
  identifierCopy = identifier;
  v11 = [(NSDictionary *)bundleIDToModeIdentifierTriggers mutableCopy];
  [v11 setObject:identifierCopy forKeyedSubscript:appCopy];

  v9 = [v11 copy];
  v10 = self->_bundleIDToModeIdentifierTriggers;
  self->_bundleIDToModeIdentifierTriggers = v9;
}

@end