@interface CSAttendingAnnounceHandler
- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)a3;
- (CSAttendingAnnounceHandler)init;
- (LBAttendingStatesServiceDelegate)delegate;
- (void)attendingStoppedWithReason:(int64_t)a3;
- (void)speechStartDetectedWithEventInfo:(id)a3;
@end

@implementation CSAttendingAnnounceHandler

- (LBAttendingStatesServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldDuckTTSAtSpeechStartDetected:(int64_t)a3
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttendingAnnounceHandler _shouldDuckTTSAtSpeechStartDetected:]";
    v8 = 1026;
    v9 = a3 == 25;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s shouldDuckTTS: %{public}d", &v6, 0x12u);
  }

  return a3 == 25;
}

- (void)speechStartDetectedWithEventInfo:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttendingAnnounceHandler speechStartDetectedWithEventInfo:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100165844;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)attendingStoppedWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100165A70;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (CSAttendingAnnounceHandler)init
{
  v6.receiver = self;
  v6.super_class = CSAttendingAnnounceHandler;
  v2 = [(CSAttendingAnnounceHandler *)&v6 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSAttendingAnnounceHandler Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end