@interface RMConfigurationsLocalDataProvider
- (RMConfigurationsLocalDataProvider)initWithRMUIConfigurationInterface:(id)a3;
- (id)pluginSectionViewModels;
- (id)pluginViewModels;
- (id)profileViewModels;
- (void)setConfigurationActivated:(BOOL)a3 forViewModel:(id)a4 completionHandler:(id)a5;
@end

@implementation RMConfigurationsLocalDataProvider

- (RMConfigurationsLocalDataProvider)initWithRMUIConfigurationInterface:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMConfigurationsLocalDataProvider;
  v6 = [(RMConfigurationsLocalDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rmuiConfigInterface, a3);
  }

  return v7;
}

- (id)profileViewModels
{
  v2 = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  v3 = [v2 profileViewModels];

  return v3;
}

- (id)pluginSectionViewModels
{
  v2 = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  v3 = [v2 pluginSectionViewModels];

  return v3;
}

- (id)pluginViewModels
{
  v2 = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  v3 = [v2 pluginViewModels];

  return v3;
}

- (void)setConfigurationActivated:(BOOL)a3 forViewModel:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  [v10 setConfigurationActivated:v6 forViewModel:v9 completionHandler:v8];
}

@end