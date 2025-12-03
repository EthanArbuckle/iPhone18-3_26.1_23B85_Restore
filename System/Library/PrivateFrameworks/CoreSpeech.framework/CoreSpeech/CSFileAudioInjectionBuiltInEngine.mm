@interface CSFileAudioInjectionBuiltInEngine
- (BOOL)alwaysOnVoiceTriggerEnabled;
- (BOOL)attachDevice:(id)device withOutError:(id *)error;
- (BOOL)injectAudio:(id)audio;
- (BOOL)injectAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error;
- (BOOL)stopAudioStreamWithOutError:(id *)error;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionBuiltInEngine)initWithStreamHandleId:(unint64_t)id;
- (int64_t)getBestSampleCountWithOption:(id)option;
- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer;
- (void)dealloc;
- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)stop;
@end

@implementation CSFileAudioInjectionBuiltInEngine

- (CSAudioInjectionDevice)connectedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_connectedDevice);

  return WeakRetained;
}

- (CSAudioInjectionEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2CC8;
  block[3] = &unk_100252C40;
  v16 = bufferCopy;
  selfCopy = self;
  timeCopy = time;
  idCopy = id;
  loadedBufferCopy = loadedBuffer;
  v14 = bufferCopy;
  dispatch_async(queue, block);
}

- (BOOL)stopAudioStreamWithOutError:(id *)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3408;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error
{
  optionCopy = option;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C3574;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = optionCopy;
  v7 = optionCopy;
  dispatch_async(queue, v9);

  return 1;
}

- (int64_t)getBestSampleCountWithOption:(id)option
{
  optionCopy = option;
  self->_lastForwardedSampleCount = [(CSAudioCircularBuffer *)self->_circularBuffer sampleCount];
  if ([optionCopy requestHistoricalAudioDataWithHostTime])
  {
    v5 = 10000000000;
    v20 = optionCopy;
    startRecordingHostTime = [optionCopy startRecordingHostTime];
    lastForwardedSampleCount = [(CSAudioCircularBuffer *)self->_circularBuffer sampleCount];
    if ([(NSMutableArray *)self->_hostTimeBuffer count]< 1)
    {
      v15 = 10000000000;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->_hostTimeBuffer objectAtIndex:v8];
        v10 = [v9 objectForKeyedSubscript:@"SampleCount"];
        unsignedIntValue = [v10 unsignedIntValue];

        v12 = [v9 objectForKeyedSubscript:@"HostTime"];
        unsignedLongLongValue = [v12 unsignedLongLongValue];
        v14 = unsignedLongLongValue - startRecordingHostTime;
        if (unsignedLongLongValue - startRecordingHostTime >= v5)
        {
          v14 = v5;
        }

        if (unsignedLongLongValue >= startRecordingHostTime)
        {
          v15 = v14;
        }

        else
        {
          v15 = v5;
        }

        if (unsignedLongLongValue - startRecordingHostTime <= v5 && unsignedLongLongValue >= startRecordingHostTime)
        {
          lastForwardedSampleCount = unsignedIntValue;
        }

        ++v8;
        v5 = v15;
      }

      while (v8 < [(NSMutableArray *)self->_hostTimeBuffer count]);
    }

    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      uuid = self->_uuid;
      *buf = 136315906;
      v22 = "[CSFileAudioInjectionBuiltInEngine getBestSampleCountWithOption:]";
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = lastForwardedSampleCount;
      v27 = 2112;
      v28 = uuid;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Looking up audio diff:%llu sampleCount:%llu %@", buf, 0x2Au);
    }

    optionCopy = v20;
  }

  else
  {
    lastForwardedSampleCount = self->_lastForwardedSampleCount;
  }

  return lastForwardedSampleCount;
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C3930;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)injectAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = CSFileAudioInjectionBuiltInEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:audio withScaleFactor:started playbackStarted:completion completion:?];
}

- (BOOL)injectAudio:(id)audio
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionBuiltInEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:audio];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3A38;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3B44;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v7 = "[CSFileAudioInjectionBuiltInEngine dealloc]";
    v8 = 2112;
    v9 = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc CSAudioInjectionEngine : %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionBuiltInEngine;
  [(CSFileAudioInjectionEngine *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionBuiltInEngine;
  delegateCopy = delegate;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (BOOL)attachDevice:(id)device withOutError:(id *)error
{
  deviceCopy = device;
  [(CSFileAudioInjectionBuiltInEngine *)self setConnectedDevice:deviceCopy];
  enableAlwaysOnVoiceTrigger = [deviceCopy enableAlwaysOnVoiceTrigger];

  v7 = enableAlwaysOnVoiceTrigger && [(CSFileAudioInjectionBuiltInEngine *)self isAlwaysOnVoiceTriggerAvailable];
  [(CSFileAudioInjectionBuiltInEngine *)self setAlwaysOnVoiceTriggerEnabled:v7];
  return 1;
}

- (BOOL)alwaysOnVoiceTriggerEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C4208;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)enabled
{
  if (CSHasAOP())
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C42B8;
    v6[3] = &unk_100253BF8;
    v6[4] = self;
    enabledCopy = enabled;
    dispatch_async(queue, v6);
  }
}

- (CSFileAudioInjectionBuiltInEngine)initWithStreamHandleId:(unint64_t)id
{
  v22.receiver = self;
  v22.super_class = CSFileAudioInjectionBuiltInEngine;
  v3 = [(CSFileAudioInjectionEngine *)&v22 initWithStreamHandleId:id];
  if (v3)
  {
    v4 = dispatch_queue_create("CSFileAudioInjectionBuiltInEngine", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v3->_voiceTriggerEnabled = 0;
    v6 = [CSAudioCircularBuffer alloc];
    v7 = +[CSConfig inputRecordingNumberOfChannels];
    +[CSConfig inputRecordingSampleRate];
    v9 = v8;
    v10 = +[CSAudioTimeConverterPool sharedInstance];
    v11 = [v10 converterForAudioStreamId:1];
    LODWORD(v12) = 3.0;
    LODWORD(v13) = v9;
    v14 = [v6 initWithNumChannels:v7 recordingDuration:v11 samplingRate:v12 audioTimeConverter:v13];
    circularBuffer = v3->_circularBuffer;
    v3->_circularBuffer = v14;

    v16 = +[NSUUID UUID];
    uuid = v3->_uuid;
    v3->_uuid = v16;

    v18 = +[NSMutableArray array];
    hostTimeBuffer = v3->_hostTimeBuffer;
    v3->_hostTimeBuffer = v18;

    userIntentOptions = v3->_userIntentOptions;
    v3->_userIntentOptions = 0;
  }

  return v3;
}

@end