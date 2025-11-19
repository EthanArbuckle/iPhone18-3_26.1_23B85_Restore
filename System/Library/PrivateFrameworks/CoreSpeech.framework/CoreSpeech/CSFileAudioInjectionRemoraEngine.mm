@interface CSFileAudioInjectionRemoraEngine
- (BOOL)alwaysOnVoiceTriggerEnabled;
- (BOOL)attachDevice:(id)a3 withOutError:(id *)a4;
- (BOOL)injectAudio:(id)a3;
- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4;
- (BOOL)stopAudioStreamWithOutError:(id *)a3;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionRemoraEngine)initWithStreamHandleId:(unint64_t)a3;
- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8;
- (void)dealloc;
- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CSFileAudioInjectionRemoraEngine

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
  block[2] = sub_100149C40;
  block[3] = &unk_100252C40;
  v16 = v12;
  v17 = self;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v14 = v12;
  dispatch_async(queue, block);
}

- (BOOL)stopAudioStreamWithOutError:(id *)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A034;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A18C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
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
  v5[2] = sub_10014A374;
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
  v7.super_class = CSFileAudioInjectionRemoraEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:a3 withScaleFactor:a5 playbackStarted:a6 completion:?];
}

- (BOOL)injectAudio:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionRemoraEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:a3];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A47C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A574;
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
    v7 = "[CSFileAudioInjectionRemoraEngine dealloc]";
    v8 = 2112;
    v9 = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc CSAudioInjectionEngineRemoraEngine : %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionRemoraEngine;
  [(CSFileAudioInjectionEngine *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionRemoraEngine;
  v4 = a3;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, v4);
}

- (BOOL)attachDevice:(id)a3 withOutError:(id *)a4
{
  v5 = a3;
  [(CSFileAudioInjectionRemoraEngine *)self setConnectedDevice:v5];
  v6 = [v5 enableAlwaysOnVoiceTrigger];

  v7 = v6 && [(CSFileAudioInjectionRemoraEngine *)self isAlwaysOnVoiceTriggerAvailable];
  [(CSFileAudioInjectionRemoraEngine *)self setAlwaysOnVoiceTriggerEnabled:v7];
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
  v5[2] = sub_10014A9C8;
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
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014AA64;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (CSFileAudioInjectionRemoraEngine)initWithStreamHandleId:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = CSFileAudioInjectionRemoraEngine;
  v4 = [(CSFileAudioInjectionEngine *)&v19 initWithStreamHandleId:?];
  if (v4)
  {
    v5 = dispatch_queue_create("CSFileAudioInjectionRemoraEngine", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->_voiceTriggerEnabled = 0;
    v7 = +[NSUUID UUID];
    uuid = v4->_uuid;
    v4->_uuid = v7;

    v9 = +[CSAudioTimeConverterPool sharedInstance];
    v10 = [v9 converterForAudioStreamId:a3];

    v11 = [CSAudioCircularBuffer alloc];
    v12 = +[CSConfig inputRecordingNumberOfChannels];
    +[CSConfig inputRecordingSampleRate];
    LODWORD(v14) = v13;
    LODWORD(v15) = 3.0;
    v16 = [v11 initWithNumChannels:v12 recordingDuration:v10 samplingRate:v15 audioTimeConverter:v14];
    circularBuffer = v4->_circularBuffer;
    v4->_circularBuffer = v16;
  }

  return v4;
}

@end