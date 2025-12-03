@interface CSIntuitiveConvAudioCaptureMonitor
+ (CSIntuitiveConvAudioCaptureMonitor)sharedInstance;
- (CSIntuitiveConvAudioCaptureMonitor)init;
- (void)notifyDidStartAudioCaptureSuccessfully:(BOOL)successfully eventUUID:(id)d;
- (void)notifyDidStopAudioCaptureWithOption:(id)option eventUUID:(id)d error:(id)error;
- (void)notifyFetchedAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)notifyWillStartAudioCaptureWithContext:(id)context option:(id)option;
- (void)notifyWillStopAudioCaptureWithReason:(unint64_t)reason;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSIntuitiveConvAudioCaptureMonitor

- (void)notifyDidStopAudioCaptureWithOption:(id)option eventUUID:(id)d error:(id)error
{
  optionCopy = option;
  dCopy = d;
  errorCopy = error;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    localizedDescription = [errorCopy localizedDescription];
    *buf = 136315394;
    v19 = "[CSIntuitiveConvAudioCaptureMonitor notifyDidStopAudioCaptureWithOption:eventUUID:error:]";
    v20 = 2114;
    v21 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s error: %{public}@", buf, 0x16u);
  }

  if ([errorCopy code] != 961)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BA610;
    block[3] = &unk_100253680;
    block[4] = self;
    v16 = optionCopy;
    v17 = dCopy;
    dispatch_async(queue, block);
  }
}

- (void)notifyWillStopAudioCaptureWithReason:(unint64_t)reason
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSIntuitiveConvAudioCaptureMonitor notifyWillStopAudioCaptureWithReason:]";
    v10 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s reason : %u", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BA850;
  v7[3] = &unk_100253C98;
  v7[4] = self;
  v7[5] = reason;
  dispatch_async(queue, v7);
}

- (void)notifyDidStartAudioCaptureSuccessfully:(BOOL)successfully eventUUID:(id)d
{
  successfullyCopy = successfully;
  dCopy = d;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[CSIntuitiveConvAudioCaptureMonitor notifyDidStartAudioCaptureSuccessfully:eventUUID:]";
    v15 = 1024;
    v16 = successfullyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s flag : %d", buf, 0x12u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAAB0;
  block[3] = &unk_100253900;
  v12 = successfullyCopy;
  block[4] = self;
  v11 = dCopy;
  v9 = dCopy;
  dispatch_async(queue, block);
}

- (void)notifyWillStartAudioCaptureWithContext:(id)context option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [contextCopy description];
    localizedDescription = [optionCopy localizedDescription];
    *buf = 136315650;
    v19 = "[CSIntuitiveConvAudioCaptureMonitor notifyWillStartAudioCaptureWithContext:option:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s context : %@, option : %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAD78;
  block[3] = &unk_100253680;
  block[4] = self;
  v16 = optionCopy;
  v17 = contextCopy;
  v13 = contextCopy;
  v14 = optionCopy;
  dispatch_async(queue, block);
}

- (void)notifyFetchedAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    name = [streamCopy name];
    *buf = 136315394;
    v16 = "[CSIntuitiveConvAudioCaptureMonitor notifyFetchedAudioStream:successfully:]";
    v17 = 2112;
    v18 = name;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s audioStream : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB01C;
  block[3] = &unk_100253900;
  block[4] = self;
  v13 = streamCopy;
  successfullyCopy = successfully;
  v11 = streamCopy;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BB1DC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BB2C8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
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