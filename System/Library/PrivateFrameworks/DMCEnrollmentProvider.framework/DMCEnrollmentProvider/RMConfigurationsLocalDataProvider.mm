@interface RMConfigurationsLocalDataProvider
- (RMConfigurationsLocalDataProvider)initWithRMUIConfigurationInterface:(id)interface;
- (id)pluginSectionViewModels;
- (id)pluginViewModels;
- (id)profileViewModels;
- (void)setConfigurationActivated:(BOOL)activated forViewModel:(id)model completionHandler:(id)handler;
@end

@implementation RMConfigurationsLocalDataProvider

- (RMConfigurationsLocalDataProvider)initWithRMUIConfigurationInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = RMConfigurationsLocalDataProvider;
  v6 = [(RMConfigurationsLocalDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rmuiConfigInterface, interface);
  }

  return v7;
}

- (id)profileViewModels
{
  rmuiConfigInterface = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  profileViewModels = [rmuiConfigInterface profileViewModels];

  return profileViewModels;
}

- (id)pluginSectionViewModels
{
  rmuiConfigInterface = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  pluginSectionViewModels = [rmuiConfigInterface pluginSectionViewModels];

  return pluginSectionViewModels;
}

- (id)pluginViewModels
{
  rmuiConfigInterface = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  pluginViewModels = [rmuiConfigInterface pluginViewModels];

  return pluginViewModels;
}

- (void)setConfigurationActivated:(BOOL)activated forViewModel:(id)model completionHandler:(id)handler
{
  activatedCopy = activated;
  handlerCopy = handler;
  modelCopy = model;
  rmuiConfigInterface = [(RMConfigurationsLocalDataProvider *)self rmuiConfigInterface];
  [rmuiConfigInterface setConfigurationActivated:activatedCopy forViewModel:modelCopy completionHandler:handlerCopy];
}

@end