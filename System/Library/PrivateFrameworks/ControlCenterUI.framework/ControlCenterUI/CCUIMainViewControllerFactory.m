@interface CCUIMainViewControllerFactory
- (CCUIMainViewControllerFactory)init;
- (id)mainViewControllerWithSystemAgent:(id)a3 sensorActivityDataProvider:(id)a4 displayLayoutMonitorConfiguration:(id)a5;
@end

@implementation CCUIMainViewControllerFactory

- (CCUIMainViewControllerFactory)init
{
  v8.receiver = self;
  v8.super_class = CCUIMainViewControllerFactory;
  v2 = [(CCUIMainViewControllerFactory *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CFC860] sharedInstance];
    repository = v2->_repository;
    v2->_repository = v3;

    v5 = objc_alloc_init(_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider);
    gameModeActivityDataProvider = v2->_gameModeActivityDataProvider;
    v2->_gameModeActivityDataProvider = v5;
  }

  return v2;
}

- (id)mainViewControllerWithSystemAgent:(id)a3 sensorActivityDataProvider:(id)a4 displayLayoutMonitorConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CCUIDisplayLayoutContextProvider alloc] initWithDisplayLayoutMonitorConfiguration:v8];

  v12 = [[CCUIModuleInstanceManager alloc] initWithModuleRepository:self->_repository systemAgent:v10 displayLayoutContextProvider:v11];
  v13 = [CCUIMainViewController alloc];
  v14 = objc_alloc_init(CCUIModuleSettingsManager);
  v15 = objc_alloc_init(_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider);
  v16 = +[CCUIMainViewController _presentationProviderForDevice];
  v17 = [(CCUIMainViewController *)v13 initWithSystemAgent:v10 moduleInstanceManager:v12 moduleSettingsManager:v14 sensorActivityDataProvider:v9 gameModeActivityDataProvider:v15 presentationProvider:v16];

  return v17;
}

@end