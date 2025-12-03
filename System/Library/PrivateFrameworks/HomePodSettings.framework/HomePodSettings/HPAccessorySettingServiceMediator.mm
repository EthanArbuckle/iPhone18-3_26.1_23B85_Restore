@interface HPAccessorySettingServiceMediator
- (HPAccessorySettingServiceMediator)initWithInterface:(id)interface;
- (HPSAccessorySettingService)settingsInterface;
- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path;
@end

@implementation HPAccessorySettingServiceMediator

- (HPAccessorySettingServiceMediator)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v8.receiver = self;
  v8.super_class = HPAccessorySettingServiceMediator;
  v5 = [(HPAccessorySettingServiceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, interfaceCopy);
  }

  return v6;
}

- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path
{
  pathCopy = path;
  settingCopy = setting;
  settingsInterface = [(HPAccessorySettingServiceMediator *)self settingsInterface];
  [settingsInterface notifyDidUpdateSetting:settingCopy forKeyPath:pathCopy];
}

- (HPSAccessorySettingService)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end