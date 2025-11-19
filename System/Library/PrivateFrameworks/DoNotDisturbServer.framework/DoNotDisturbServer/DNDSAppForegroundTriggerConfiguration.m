@interface DNDSAppForegroundTriggerConfiguration
- (DNDSAppForegroundTriggerConfiguration)init;
- (void)addTriggerForModeWithIdentifier:(id)a3 onForegroundOfApp:(id)a4;
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

- (void)addTriggerForModeWithIdentifier:(id)a3 onForegroundOfApp:(id)a4
{
  bundleIDToModeIdentifierTriggers = self->_bundleIDToModeIdentifierTriggers;
  v7 = a4;
  v8 = a3;
  v11 = [(NSDictionary *)bundleIDToModeIdentifierTriggers mutableCopy];
  [v11 setObject:v8 forKeyedSubscript:v7];

  v9 = [v11 copy];
  v10 = self->_bundleIDToModeIdentifierTriggers;
  self->_bundleIDToModeIdentifierTriggers = v9;
}

@end