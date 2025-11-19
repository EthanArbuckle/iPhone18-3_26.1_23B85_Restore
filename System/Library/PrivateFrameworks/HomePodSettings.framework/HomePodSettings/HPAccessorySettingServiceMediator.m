@interface HPAccessorySettingServiceMediator
- (HPAccessorySettingServiceMediator)initWithInterface:(id)a3;
- (HPSAccessorySettingService)settingsInterface;
- (void)notifyDidUpdateSetting:(id)a3 forKeyPath:(id)a4;
@end

@implementation HPAccessorySettingServiceMediator

- (HPAccessorySettingServiceMediator)initWithInterface:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HPAccessorySettingServiceMediator;
  v5 = [(HPAccessorySettingServiceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, v4);
  }

  return v6;
}

- (void)notifyDidUpdateSetting:(id)a3 forKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HPAccessorySettingServiceMediator *)self settingsInterface];
  [v8 notifyDidUpdateSetting:v7 forKeyPath:v6];
}

- (HPSAccessorySettingService)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end