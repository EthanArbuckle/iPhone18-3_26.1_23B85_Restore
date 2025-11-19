@interface CSIntuitiveConvAudioCaptureMonitor
+ (CSIntuitiveConvAudioCaptureMonitor)sharedInstance;
- (CSIntuitiveConvAudioCaptureMonitor)init;
- (void)notifyDidStartAudioCaptureSuccessfully:(BOOL)a3 eventUUID:(id)a4;
- (void)notifyDidStopAudioCaptureWithOption:(id)a3 eventUUID:(id)a4 error:(id)a5;
- (void)notifyFetchedAudioStream:(id)a3 successfully:(BOOL)a4;
- (void)notifyWillStartAudioCaptureWithContext:(id)a3 option:(id)a4;
- (void)notifyWillStopAudioCaptureWithReason:(unint64_t)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSIntuitiveConvAudioCaptureMonitor

- (void)notifyDidStopAudioCaptureWithOption:(id)a3 eventUUID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v10 localizedDescription];
    *buf = 136315394;
    v19 = "[CSIntuitiveConvAudioCaptureMonitor notifyDidStopAudioCaptureWithOption:eventUUID:error:]";
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s error: %{public}@", buf, 0x16u);
  }

  if ([v10 code] != 961)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BA610;
    block[3] = &unk_100253680;
    block[4] = self;
    v16 = v8;
    v17 = v9;
    dispatch_async(queue, block);
  }
}

- (void)notifyWillStopAudioCaptureWithReason:(unint64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSIntuitiveConvAudioCaptureMonitor notifyWillStopAudioCaptureWithReason:]";
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s reason : %u", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BA850;
  v7[3] = &unk_100253C98;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(queue, v7);
}

- (void)notifyDidStartAudioCaptureSuccessfully:(BOOL)a3 eventUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[CSIntuitiveConvAudioCaptureMonitor notifyDidStartAudioCaptureSuccessfully:eventUUID:]";
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s flag : %d", buf, 0x12u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAAB0;
  block[3] = &unk_100253900;
  v12 = v4;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)notifyWillStartAudioCaptureWithContext:(id)a3 option:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 description];
    v11 = [v7 localizedDescription];
    *buf = 136315650;
    v19 = "[CSIntuitiveConvAudioCaptureMonitor notifyWillStartAudioCaptureWithContext:option:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s context : %@, option : %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAD78;
  block[3] = &unk_100253680;
  block[4] = self;
  v16 = v7;
  v17 = v6;
  v13 = v6;
  v14 = v7;
  dispatch_async(queue, block);
}

- (void)notifyFetchedAudioStream:(id)a3 successfully:(BOOL)a4
{
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 name];
    *buf = 136315394;
    v16 = "[CSIntuitiveConvAudioCaptureMonitor notifyFetchedAudioStream:successfully:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s audioStream : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB01C;
  block[3] = &unk_100253900;
  block[4] = self;
  v13 = v6;
  v14 = a4;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BB1DC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BB2C8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSIntuitiveConvAudioCaptureMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSIntuitiveConvAudioCaptureMonitor;
  v2 = [(CSIntuitiveConvAudioCaptureMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSIntuitiveConvAudioCaptureMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

+ (CSIntuitiveConvAudioCaptureMonitor)sharedInstance
{
  if (qword_10029E260 != -1)
  {
    dispatch_once(&qword_10029E260, &stru_100250900);
  }

  v3 = qword_10029E258;

  return v3;
}

@end