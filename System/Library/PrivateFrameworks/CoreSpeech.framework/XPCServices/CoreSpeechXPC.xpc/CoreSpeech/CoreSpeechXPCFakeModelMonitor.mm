@interface CoreSpeechXPCFakeModelMonitor
- (CoreSpeechXPCFakeModelMonitor)init;
- (void)_registerForFakeAssetRollNotification;
- (void)start;
- (void)stop;
@end

@implementation CoreSpeechXPCFakeModelMonitor

- (void)_registerForFakeAssetRollNotification
{
  if (CSIsInternalBuild() && self->_fakeAssetRollNotificationRegistrationToken == -1)
  {
    out_token = 0;
    objc_initWeak(&location, self);
    uTF8String = [@"com.apple.corespeech.fakeasset.rolling" UTF8String];
    queue = self->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001F84;
    handler[3] = &unk_10001C4E0;
    objc_copyWeak(&v8, &location);
    v5 = notify_register_dispatch(uTF8String, &out_token, queue, handler);
    if (v5)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        objc_destroyWeak(&v8);
        objc_destroyWeak(&location);
        return;
      }

      *buf = 136315650;
      v12 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]";
      v13 = 2112;
      v14 = @"com.apple.corespeech.fakeasset.rolling";
      v15 = 1024;
      v16 = v5;
    }

    else
    {
      if (out_token != -1)
      {
        self->_fakeAssetRollNotificationRegistrationToken = out_token;
        goto LABEL_11;
      }

      v6 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 136315650;
      v12 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]";
      v13 = 2112;
      v14 = @"com.apple.corespeech.fakeasset.rolling";
      v15 = 1024;
      v16 = 0;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Failed to register for notification %@ (status=%d)", buf, 0x1Cu);
    goto LABEL_11;
  }
}

- (void)stop
{
  fakeAssetRollNotificationRegistrationToken = self->_fakeAssetRollNotificationRegistrationToken;
  self->_fakeAssetRollNotificationRegistrationToken = -1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020D8;
  block[3] = &unk_10001C4B8;
  v5 = fakeAssetRollNotificationRegistrationToken;
  dispatch_sync(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002160;
  block[3] = &unk_10001C6F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CoreSpeechXPCFakeModelMonitor)init
{
  v6.receiver = self;
  v6.super_class = CoreSpeechXPCFakeModelMonitor;
  v2 = [(CoreSpeechXPCFakeModelMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(33, 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_fakeAssetRollNotificationRegistrationToken = -1;
  }

  return v2;
}

@end