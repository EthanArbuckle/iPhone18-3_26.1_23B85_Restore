@interface CSOpportuneSpeakEventMonitor
+ (id)sharedInstance;
- (BOOL)isStreaming;
- (CSAudioRecordContext)audioRecordContext;
- (CSOpportuneSpeakEventMonitor)init;
- (NSString)audioProviderUUID;
- (void)_notifyStopOpportuneSpeakImmediately;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)opportuneSpeakBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context audioProviderUUID:(id)d successfully:(BOOL)successfully option:(id)option;
@end

@implementation CSOpportuneSpeakEventMonitor

- (void)_notifyStopOpportuneSpeakImmediately
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ECD4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)opportuneSpeakBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context audioProviderUUID:(id)d successfully:(BOOL)successfully option:(id)option
{
  contextCopy = context;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004EEC0;
  v15[3] = &unk_100252420;
  successfullyCopy = successfully;
  v15[4] = self;
  v16 = dCopy;
  v17 = contextCopy;
  v13 = contextCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (CSAudioRecordContext)audioRecordContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004F12C;
  v10 = sub_10004F13C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004F144;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)audioProviderUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004F12C;
  v10 = sub_10004F13C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004F290;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isStreaming
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004F430;
  v7[3] = &unk_100253BD0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_async_and_wait(queue, v7);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v9 + 24);
    *buf = 136315394;
    v13 = "[CSOpportuneSpeakEventMonitor isStreaming]";
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetching CommandControl Listening State: %d", buf, 0x12u);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)_stopMonitoring
{
  v3 = +[CSOpportuneSpeakBehaviorMonitor sharedInstance];
  [v3 unregisterObserver:self];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F4F0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = +[CSOpportuneSpeakBehaviorMonitor sharedInstance];
  [v4 registerObserver:self];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F5A8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSOpportuneSpeakEventMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSOpportuneSpeakEventMonitor;
  v2 = [(CSOpportuneSpeakEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOpportuneSpeakEventMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_isOpportuneSpeakListening = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E0A0 != -1)
  {
    dispatch_once(&qword_10029E0A0, &stru_10024F2B0);
  }

  v3 = qword_10029E098;

  return v3;
}

@end