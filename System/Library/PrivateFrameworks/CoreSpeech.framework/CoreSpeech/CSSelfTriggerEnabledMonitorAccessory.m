@interface CSSelfTriggerEnabledMonitorAccessory
+ (id)sharedInstance;
- (CSSelfTriggerEnabledMonitorAccessory)init;
- (void)_didReceiveSelfTriggerChanged:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSelfTriggerEnabledMonitorAccessory

- (void)_didReceiveSelfTriggerChanged:(BOOL)a3
{
  self->_enabled = a3;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10011B4C0;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  v4 = a3;
  [(CSSelfTriggerEnabledMonitorAccessory *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSSelfTriggerEnabledMonitorAccessory _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : SelfTrigger switch", &v3, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = +[CSFPreferences sharedPreferences];
  self->_enabled = [v4 isSelfTriggerEnabledAccessory];

  [(CSSelfTriggerEnabledMonitorAccessory *)self _didReceiveSelfTriggerChanged:self->_enabled];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_enabled)
    {
      v6 = @"Enabled";
    }

    else
    {
      v6 = @"Disabled";
    }

    v7 = 136315394;
    v8 = "[CSSelfTriggerEnabledMonitorAccessory _startMonitoringWithQueue:]";
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : SelfTrigger switch, SelfTrigger is %{public}@", &v7, 0x16u);
  }
}

- (CSSelfTriggerEnabledMonitorAccessory)init
{
  v3.receiver = self;
  v3.super_class = CSSelfTriggerEnabledMonitorAccessory;
  result = [(CSSelfTriggerEnabledMonitorAccessory *)&v3 init];
  if (result)
  {
    result->_enabled = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029E418 != -1)
  {
    dispatch_once(&qword_10029E418, &stru_100251E10);
  }

  v3 = qword_10029E410;

  return v3;
}

@end