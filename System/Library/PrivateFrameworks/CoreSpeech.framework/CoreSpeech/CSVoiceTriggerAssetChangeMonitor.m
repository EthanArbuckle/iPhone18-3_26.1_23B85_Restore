@interface CSVoiceTriggerAssetChangeMonitor
+ (id)sharedMonitor;
- (CSVoiceTriggerAssetChangeDelegate)delegate;
- (CSVoiceTriggerAssetChangeMonitor)init;
- (void)startMonitoring;
@end

@implementation CSVoiceTriggerAssetChangeMonitor

- (CSVoiceTriggerAssetChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startMonitoring
{
  objc_initWeak(&location, self);
  p_notifyToken = &self->_notifyToken;
  if (self->_notifyToken == -1)
  {
    queue = self->_queue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003D12C;
    v5[3] = &unk_100250A30;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch("com.apple.corespeech.voicetriggerassetchange", p_notifyToken, queue, v5);
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

- (CSVoiceTriggerAssetChangeMonitor)init
{
  v7.receiver = self;
  v7.super_class = CSVoiceTriggerAssetChangeMonitor;
  v2 = [(CSVoiceTriggerAssetChangeMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    v4 = dispatch_queue_create("VoiceTrigger Asset Change Monitor", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (id)sharedMonitor
{
  if (qword_10029E048 != -1)
  {
    dispatch_once(&qword_10029E048, &stru_10024EF28);
  }

  v3 = qword_10029E050;

  return v3;
}

@end