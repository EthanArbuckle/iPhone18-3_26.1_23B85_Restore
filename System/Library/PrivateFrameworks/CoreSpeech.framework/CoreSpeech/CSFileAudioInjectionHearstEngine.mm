@interface CSFileAudioInjectionHearstEngine
- (BOOL)alwaysOnVoiceTriggerEnabled;
- (BOOL)attachDevice:(id)device withOutError:(id *)error;
- (BOOL)injectAudio:(id)audio;
- (BOOL)injectAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error;
- (BOOL)stopAudioStreamWithOutError:(id *)error;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionHearstEngine)initWithStreamHandleId:(unint64_t)id;
- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer;
- (void)dealloc;
- (void)setAlwaysOnVoiceTriggerEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)stop;
@end

@implementation CSFileAudioInjectionHearstEngine

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
  block[2] = sub_100118DC8;
  block[3] = &unk_100252C40;
  v16 = bufferCopy;
  selfCopy = self;
  idCopy = id;
  timeCopy = time;
  loadedBufferCopy = loadedBuffer;
  v14 = bufferCopy;
  dispatch_async(queue, block);
}

- (BOOL)stopAudioStreamWithOutError:(id *)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001191BC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119314;
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
  v5[2] = sub_1001194FC;
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
  v7.super_class = CSFileAudioInjectionHearstEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:audio withScaleFactor:started playbackStarted:completion completion:?];
}

- (BOOL)injectAudio:(id)audio
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionHearstEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:audio];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119604;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001196FC;
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
    v7 = "[CSFileAudioInjectionHearstEngine dealloc]";
    v8 = 2112;
    v9 = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc CSAudioInjectionEngine : %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionHearstEngine;
  [(CSFileAudioInjectionEngine *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionHearstEngine;
  delegateCopy = delegate;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (BOOL)attachDevice:(id)device withOutError:(id *)error
{
  deviceCopy = device;
  [(CSFileAudioInjectionHearstEngine *)self setConnectedDevice:deviceCopy];
  enableAlwaysOnVoiceTrigger = [deviceCopy enableAlwaysOnVoiceTrigger];

  v7 = enableAlwaysOnVoiceTrigger && [(CSFileAudioInjectionHearstEngine *)self isAlwaysOnVoiceTriggerAvailable];
  [(CSFileAudioInjectionHearstEngine *)self setAlwaysOnVoiceTriggerEnabled:v7];
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
  v5[2] = sub_100119B50;
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
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100119BEC;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v4);
}

- (CSFileAudioInjectionHearstEngine)initWithStreamHandleId:(unint64_t)id
{
  v20.receiver = self;
  v20.super_class = CSFileAudioInjectionHearstEngine;
  v4 = [(CSFileAudioInjectionEngine *)&v20 initWithStreamHandleId:?];
  if (v4)
  {
    v5 = dispatch_queue_create("CSFileAudioInjectionHearstEngine", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->_voiceTriggerEnabled = 0;
    v7 = [CSAudioCircularBuffer alloc];
    v8 = +[CSConfig inputRecordingNumberOfChannels];
    +[CSConfig inputRecordingSampleRate];
    v10 = v9;
    v11 = +[CSAudioTimeConverterPool sharedInstance];
    v12 = [v11 converterForAudioStreamId:id];
    LODWORD(v13) = 3.0;
    LODWORD(v14) = v10;
    v15 = [v7 initWithNumChannels:v8 recordingDuration:v12 samplingRate:v13 audioTimeConverter:v14];
    circularBuffer = v4->_circularBuffer;
    v4->_circularBuffer = v15;

    v17 = +[NSUUID UUID];
    uuid = v4->_uuid;
    v4->_uuid = v17;
  }

  return v4;
}

@end