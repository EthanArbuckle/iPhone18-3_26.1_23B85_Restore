@interface NUANFRenderingConfigurationProvider
- (NUANFRenderingConfigurationProvider)initWithAppConfigurationManager:(id)manager;
- (SXRenderingConfiguration)configuration;
@end

@implementation NUANFRenderingConfigurationProvider

- (NUANFRenderingConfigurationProvider)initWithAppConfigurationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = NUANFRenderingConfigurationProvider;
  v6 = [(NUANFRenderingConfigurationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, manager);
  }

  return v7;
}

- (SXRenderingConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    possiblyUnfetchedAppConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfigurationManager possiblyUnfetchedAppConfiguration];
    anfRenderingConfiguration = [possiblyUnfetchedAppConfiguration anfRenderingConfiguration];

    v12 = 0;
    v6 = [MEMORY[0x277CBEAC0] fc_dictionaryFromJSON:anfRenderingConfiguration error:&v12];
    v7 = v12;
    if (!v7 && v6)
    {
      v8 = objc_alloc(MEMORY[0x277D550D8]);
      v9 = [v8 initWithJSONObject:v6 andVersion:*MEMORY[0x277D55118]];
      v10 = self->_configuration;
      self->_configuration = v9;
    }

    configuration = self->_configuration;
  }

  return configuration;
}

@end