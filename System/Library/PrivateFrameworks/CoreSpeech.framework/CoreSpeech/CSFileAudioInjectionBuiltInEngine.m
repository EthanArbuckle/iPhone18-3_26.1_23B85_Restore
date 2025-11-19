@interface CSFileAudioInjectionBuiltInEngine
- (BOOL)alwaysOnVoiceTriggerEnabled;
- (BOOL)attachDevice:(id)a3 withOutError:(id *)a4;
- (BOOL)injectAudio:(id)a3;
- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4;
- (BOOL)stopAudioStreamWithOutError:(id *)a3;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionBuiltInEngine)initWithStreamHandleId:(unint64_t)a3;
- (int64_t)getBestSampleCountWithOption:(id)a3;
- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8;
- (void)dealloc;
- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
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

- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8
{
  v12 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2CC8;
  block[3] = &unk_100252C40;
  v16 = v12;
  v17 = self;
  v18 = a7;
  v19 = a4;
  v20 = a8;
  v14 = v12;
  dispatch_async(queue, block);
}

- (BOOL)stopAudioStreamWithOutError:(id *)a3
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

- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4
{
  v5 = a3;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C3574;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

- (int64_t)getBestSampleCountWithOption:(id)a3
{
  v4 = a3;
  self->_lastForwardedSampleCount = [(CSAudioCircularBuffer *)self->_circularBuffer sampleCount];
  if ([v4 requestHistoricalAudioDataWithHostTime])
  {
    v5 = 10000000000;
    v20 = v4;
    v6 = [v4 startRecordingHostTime];
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
        v11 = [v10 unsignedIntValue];

        v12 = [v9 objectForKeyedSubscript:@"HostTime"];
        v13 = [v12 unsignedLongLongValue];
        v14 = v13 - v6;
        if (v13 - v6 >= v5)
        {
          v14 = v5;
        }

        if (v13 >= v6)
        {
          v15 = v14;
        }

        else
        {
          v15 = v5;
        }

        if (v13 - v6 <= v5 && v13 >= v6)
        {
          lastForwardedSampleCount = v11;
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

    v4 = v20;
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

- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6
{
  v7.receiver = self;
  v7.super_class = CSFileAudioInjectionBuiltInEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:a3 withScaleFactor:a5 playbackStarted:a6 completion:?];
}

- (BOOL)injectAudio:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionBuiltInEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:a3];
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

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionBuiltInEngine;
  v4 = a3;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, v4);
}

- (BOOL)attachDevice:(id)a3 withOutError:(id *)a4
{
  v5 = a3;
  [(CSFileAudioInjectionBuiltInEngine *)self setConnectedDevice:v5];
  v6 = [v5 enableAlwaysOnVoiceTrigger];

  v7 = v6 && [(CSFileAudioInjectionBuiltInEngine *)self isAlwaysOnVoiceTriggerAvailable];
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

- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)a3
{
  if (CSHasAOP())
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C42B8;
    v6[3] = &unk_100253BF8;
    v6[4] = self;
    v7 = a3;
    dispatch_async(queue, v6);
  }
}

- (CSFileAudioInjectionBuiltInEngine)initWithStreamHandleId:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = CSFileAudioInjectionBuiltInEngine;
  v3 = [(CSFileAudioInjectionEngine *)&v22 initWithStreamHandleId:a3];
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