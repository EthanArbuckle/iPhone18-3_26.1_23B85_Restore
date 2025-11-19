@interface CSSmartSiriVolumeEnablePolicyHomePod
- (void)_addSmartSiriVolumeEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSSmartSiriVolumeEnablePolicyHomePod

- (void)_addSmartSiriVolumeEnabledConditions
{
  v3.receiver = self;
  v3.super_class = CSSmartSiriVolumeEnablePolicyHomePod;
  [(CSSmartSiriVolumeEnablePolicy *)&v3 _addSmartSiriVolumeEnabledConditions];
  [(CSSmartSiriVolumeEnablePolicyHomePod *)self addConditions:&stru_10024FC78];
}

- (void)_subscribeEventMonitors
{
  v4.receiver = self;
  v4.super_class = CSSmartSiriVolumeEnablePolicyHomePod;
  [(CSSmartSiriVolumeEnablePolicy *)&v4 _subscribeEventMonitors];
  v3 = +[CSHomePodSettingsMonitor sharedInstance];
  [(CSSmartSiriVolumeEnablePolicyHomePod *)self subscribeEventMonitor:v3];
}

@end