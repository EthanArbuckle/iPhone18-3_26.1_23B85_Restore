@interface CCUIMainViewControllerFactory
- (CCUIMainViewControllerFactory)init;
- (id)mainViewControllerWithSystemAgent:(id)agent sensorActivityDataProvider:(id)provider displayLayoutMonitorConfiguration:(id)configuration;
@end

@implementation CCUIMainViewControllerFactory

- (CCUIMainViewControllerFactory)init
{
  v8.receiver = self;
  v8.super_class = CCUIMainViewControllerFactory;
  v2 = [(CCUIMainViewControllerFactory *)&v8 init];
  if (v2)
  {
    mEMORY[0x277CFC860] = [MEMORY[0x277CFC860] sharedInstance];
    repository = v2->_repository;
    v2->_repository = mEMORY[0x277CFC860];

    v5 = objc_alloc_init(_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider);
    gameModeActivityDataProvider = v2->_gameModeActivityDataProvider;
    v2->_gameModeActivityDataProvider = v5;
  }

  return v2;
}

- (id)mainViewControllerWithSystemAgent:(id)agent sensorActivityDataProvider:(id)provider displayLayoutMonitorConfiguration:(id)configuration
{
  configurationCopy = configuration;
  providerCopy = provider;
  agentCopy = agent;
  v11 = [[CCUIDisplayLayoutContextProvider alloc] initWithDisplayLayoutMonitorConfiguration:configurationCopy];

  v12 = [[CCUIModuleInstanceManager alloc] initWithModuleRepository:self->_repository systemAgent:agentCopy displayLayoutContextProvider:v11];
  v13 = [CCUIMainViewController alloc];
  v14 = objc_alloc_init(CCUIModuleSettingsManager);
  v15 = objc_alloc_init(_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider);
  v16 = +[CCUIMainViewController _presentationProviderForDevice];
  v17 = [(CCUIMainViewController *)v13 initWithSystemAgent:agentCopy moduleInstanceManager:v12 moduleSettingsManager:v14 sensorActivityDataProvider:providerCopy gameModeActivityDataProvider:v15 presentationProvider:v16];

  return v17;
}

@end