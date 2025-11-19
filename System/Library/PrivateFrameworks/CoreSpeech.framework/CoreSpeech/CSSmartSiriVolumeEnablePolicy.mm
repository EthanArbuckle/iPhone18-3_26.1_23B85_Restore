@interface CSSmartSiriVolumeEnablePolicy
- (CSSmartSiriVolumeEnablePolicy)init;
- (void)_subscribeEventMonitors;
@end

@implementation CSSmartSiriVolumeEnablePolicy

- (void)_subscribeEventMonitors
{
  v3 = +[CSAudioSessionMonitor sharedInstance];
  [(CSSmartSiriVolumeEnablePolicy *)self subscribeEventMonitor:v3];
}

- (CSSmartSiriVolumeEnablePolicy)init
{
  v6.receiver = self;
  v6.super_class = CSSmartSiriVolumeEnablePolicy;
  v2 = [(CSSmartSiriVolumeEnablePolicy *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSmartSiriVolumeEnablePolicy queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(CSSmartSiriVolumeEnablePolicy *)v2 _addSmartSiriVolumeEnabledConditions];
    [(CSSmartSiriVolumeEnablePolicy *)v2 _subscribeEventMonitors];
  }

  return v2;
}

@end