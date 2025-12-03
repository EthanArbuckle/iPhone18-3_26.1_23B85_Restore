@interface CSRawAudioInjectionProvider
- (BOOL)activateAudioSessionWithReason:(unint64_t)reason streamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)isRecordingWithRecordDeviceIndicator:(id)indicator;
- (BOOL)playRecordStartingAlertAndResetEndpointerFromStream:(unint64_t)stream withAlertOverride:(int64_t)override;
- (BOOL)prepareAudioStreamRecord:(id)record recordDeviceIndicator:(id)indicator error:(id *)error;
- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)setCurrentContext:(id)context streamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)startAudioStreamWithOption:(id)option recordDeviceIndicator:(id)indicator error:(id *)error;
- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)indicator error:(id *)error;
- (CSRawAudioInjectionProvider)init;
- (void)_readAudioBufferAndFeed;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)setContext:(id)context completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSRawAudioInjectionProvider

- (BOOL)playRecordStartingAlertAndResetEndpointerFromStream:(unint64_t)stream withAlertOverride:(int64_t)override
{
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSRawAudioInjectionProvider playRecordStartingAlertAndResetEndpointerFromStream:withAlertOverride:]";
    v9 = 2048;
    overrideCopy = override;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s playing start recording alert with override: %lu", &v7, 0x16u);
  }

  return 1;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)reason streamHandleId:(unint64_t)id error:(id *)error
{
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSRawAudioInjectionProvider activateAudioSessionWithReason:streamHandleId:error:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Calling activate audio session", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)id error:(id *)error
{
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSRawAudioInjectionProvider prewarmAudioSessionWithStreamHandleId:error:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Calling prewarm", &v6, 0xCu);
  }

  return 1;
}

- (BOOL)isRecordingWithRecordDeviceIndicator:(id)indicator
{
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSRawAudioInjectionProvider isRecordingWithRecordDeviceIndicator:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Calling isRecording", &v5, 0xCu);
  }

  return 0;
}

- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)indicator error:(id *)error
{
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSRawAudioInjectionProvider stopAudioStreamWithRecordDeviceIndicator:error:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Calling stop audio stream", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E57D0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (void)_readAudioBufferAndFeed
{
  v3 = [NSMutableData dataWithLength:1280];
  if (fread([v3 bytes], 1uLL, 0x500uLL, self->_fp) <= 0x4FF)
  {
    fseek(self->_fp, 44, 0);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          LODWORD(v10) = 1;
          [v9 audioRecorderBufferAvailable:self audioStreamHandleId:1 buffer:v3 remoteVAD:0 atTime:mach_absolute_time() arrivalTimestampToAudioRecorder:0 numberOfChannels:v10];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)startAudioStreamWithOption:(id)option recordDeviceIndicator:(id)indicator error:(id *)error
{
  optionCopy = option;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSRawAudioInjectionProvider startAudioStreamWithOption:recordDeviceIndicator:error:]";
    v13 = 2112;
    v14 = optionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Calling start audio stream : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5BCC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);

  return 1;
}

- (BOOL)prepareAudioStreamRecord:(id)record recordDeviceIndicator:(id)indicator error:(id *)error
{
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSRawAudioInjectionProvider prepareAudioStreamRecord:recordDeviceIndicator:error:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Calling prepare", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)setCurrentContext:(id)context streamHandleId:(unint64_t)id error:(id *)error
{
  contextCopy = context;
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSRawAudioInjectionProvider setCurrentContext:streamHandleId:error:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Calling StreamId for : %@", &v8, 0x16u);
  }

  return 1;
}

- (void)setContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSRawAudioInjectionProvider setContext:completion:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Calling StreamId for : %@", &v8, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 2, 0);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E61A4;
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
  v7[2] = sub_1000E6258;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSRawAudioInjectionProvider dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc CSRawAudioInjectionProvider", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSRawAudioInjectionProvider;
  [(CSRawAudioInjectionProvider *)&v4 dealloc];
}

- (CSRawAudioInjectionProvider)init
{
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSRawAudioInjectionProvider init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Initializing CSRawAudioInjectionProvider", &v10, 0xCu);
  }

  if (self)
  {
    v4 = dispatch_queue_create("CSRawAudioInjectionProvider", 0);
    queue = self->_queue;
    self->_queue = v4;

    v6 = +[NSHashTable weakObjectsHashTable];
    observers = self->_observers;
    self->_observers = v6;
  }

  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSRawAudioInjectionProvider init]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Done initializing CSRawAudioInjectionProvider", &v10, 0xCu);
  }

  return self;
}

@end