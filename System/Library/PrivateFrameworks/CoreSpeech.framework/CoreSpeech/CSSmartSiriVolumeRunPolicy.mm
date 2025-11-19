@interface CSSmartSiriVolumeRunPolicy
- (CSSmartSiriVolumeRunPolicy)init;
- (void)_subscribeEventMonitors;
@end

@implementation CSSmartSiriVolumeRunPolicy

- (void)_subscribeEventMonitors
{
  v3 = +[CSSiriEnabledMonitor sharedInstance];
  [(CSSmartSiriVolumeRunPolicy *)self subscribeEventMonitor:v3];
}

- (CSSmartSiriVolumeRunPolicy)init
{
  v6.receiver = self;
  v6.super_class = CSSmartSiriVolumeRunPolicy;
  v2 = [(CSSmartSiriVolumeRunPolicy *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSmartSiriVolumeRunPolicy queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(CSSmartSiriVolumeRunPolicy *)v2 _addSmartSiriVolumeEnabledConditions];
    [(CSSmartSiriVolumeRunPolicy *)v2 _subscribeEventMonitors];
  }

  return v2;
}

@end