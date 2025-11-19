@interface MCUIBridgeRMConfigurationsDataProvider
- (MCUIBridgeRMConfigurationsDataProvider)initWithProfileIdentifier:(id)a3;
- (id)_rmConfigurationViewModels;
- (id)pluginSectionViewModels;
- (id)pluginViewModels;
- (id)profileViewModels;
@end

@implementation MCUIBridgeRMConfigurationsDataProvider

- (MCUIBridgeRMConfigurationsDataProvider)initWithProfileIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCUIBridgeRMConfigurationsDataProvider;
  v6 = [(MCUIBridgeRMConfigurationsDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileIdentifier, a3);
  }

  return v7;
}

- (id)profileViewModels
{
  v2 = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  v3 = [v2 profileViewModels];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)pluginSectionViewModels
{
  v2 = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  v3 = [v2 pluginSectionViewModels];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)pluginViewModels
{
  v2 = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  v3 = [v2 pluginViewModels];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)_rmConfigurationViewModels
{
  v3 = +[MCUIWatchManager shared];
  v4 = [v3 cachedRMConfigurationViewModelsForIdentifier:self->_profileIdentifier];

  return v4;
}

@end