@interface CSFileAudioInjectionTvRemoteEngine
- (BOOL)injectAudio:(id)a3;
- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4;
- (BOOL)stopAudioStreamWithOutError:(id *)a3;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionTvRemoteEngine)initWithStreamHandleId:(unint64_t)a3;
- (void)audioConverterDidConvertPackets:(id)a3 packets:(id)a4 durationInSec:(float)a5 timestamp:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7;
- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8;
- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5;
- (void)setDelegate:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CSFileAudioInjectionTvRemoteEngine

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

- (void)audioConverterDidConvertPackets:(id)a3 packets:(id)a4 durationInSec:(float)a5 timestamp:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7
{
  v16 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_alloc_init(CSAudioChunkForTV);
    [v11 setPackets:v16];
    [v11 setTimeStamp:a6];
    [v11 setStreamHandleID:{-[CSFileAudioInjectionEngine audioStreamHandleId](self, "audioStreamHandleId")}];
    [v11 setNumChannels:1];
    v12 = +[CSFPreferences sharedPreferences];
    v13 = [v12 useSpeexForAudioInjection];

    if (v13)
    {
      v14 = 1936745848;
    }

    else
    {
      v14 = 1869641075;
    }

    [v11 setAudioFormat:v14];
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 audioEngineAudioChunkForTvAvailable:self audioChunk:v11];
  }
}

- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8
{
  encoder = self->_encoder;
  v10 = a5;
  [(CSAudioConverter *)encoder addSamples:v10 timestamp:a7 arrivalTimestampToAudioRecorder:mach_absolute_time()];
}

- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 audioEngineDidStopRecord:self audioStreamHandleId:a4 reason:a5];
  }
}

- (BOOL)stopAudioStreamWithOutError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v4 stopAudioStreamWithOutError:0];
}

- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v5 startAudioStreamWithOption:a3 withOutError:0];
}

- (BOOL)isRecording
{
  v3.receiver = self;
  v3.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v3 isRecording];
}

- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6
{
  v7.receiver = self;
  v7.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:a3 withScaleFactor:a5 playbackStarted:a6 completion:?];
}

- (BOOL)injectAudio:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:a3];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = CSFileAudioInjectionTvRemoteEngine;
  [(CSFileAudioInjectionEngine *)&v2 stop];
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = CSFileAudioInjectionTvRemoteEngine;
  [(CSFileAudioInjectionEngine *)&v2 start];
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionTvRemoteEngine;
  v4 = a3;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, v4);
}

- (CSFileAudioInjectionTvRemoteEngine)initWithStreamHandleId:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = CSFileAudioInjectionTvRemoteEngine;
  v3 = [(CSFileAudioInjectionEngine *)&v13 initWithStreamHandleId:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("CSFileAudioInjectionTvRemoteEngine", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = +[CSFPreferences sharedPreferences];
    v7 = [v6 useSpeexForAudioInjection];

    if (v7)
    {
      +[CSAudioConverter speexConverter];
    }

    else
    {
      +[CSAudioConverter opusConverter];
    }
    v8 = ;
    encoder = v3->_encoder;
    v3->_encoder = v8;

    [(CSAudioConverter *)v3->_encoder setDelegate:v3];
    v10 = +[NSUUID UUID];
    uuid = v3->_uuid;
    v3->_uuid = v10;
  }

  return v3;
}

@end