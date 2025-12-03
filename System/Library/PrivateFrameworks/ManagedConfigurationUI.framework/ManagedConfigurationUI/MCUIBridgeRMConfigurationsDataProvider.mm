@interface MCUIBridgeRMConfigurationsDataProvider
- (MCUIBridgeRMConfigurationsDataProvider)initWithProfileIdentifier:(id)identifier;
- (id)_rmConfigurationViewModels;
- (id)pluginSectionViewModels;
- (id)pluginViewModels;
- (id)profileViewModels;
@end

@implementation MCUIBridgeRMConfigurationsDataProvider

- (MCUIBridgeRMConfigurationsDataProvider)initWithProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MCUIBridgeRMConfigurationsDataProvider;
  v6 = [(MCUIBridgeRMConfigurationsDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileIdentifier, identifier);
  }

  return v7;
}

- (id)profileViewModels
{
  _rmConfigurationViewModels = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  profileViewModels = [_rmConfigurationViewModels profileViewModels];
  v4 = profileViewModels;
  if (profileViewModels)
  {
    v5 = profileViewModels;
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
  _rmConfigurationViewModels = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  pluginSectionViewModels = [_rmConfigurationViewModels pluginSectionViewModels];
  v4 = pluginSectionViewModels;
  if (pluginSectionViewModels)
  {
    v5 = pluginSectionViewModels;
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
  _rmConfigurationViewModels = [(MCUIBridgeRMConfigurationsDataProvider *)self _rmConfigurationViewModels];
  pluginViewModels = [_rmConfigurationViewModels pluginViewModels];
  v4 = pluginViewModels;
  if (pluginViewModels)
  {
    v5 = pluginViewModels;
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