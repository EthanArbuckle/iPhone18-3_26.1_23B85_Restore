@interface CSFileAudioInjectionTvRemoteEngine
- (BOOL)injectAudio:(id)audio;
- (BOOL)injectAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error;
- (BOOL)stopAudioStreamWithOutError:(id *)error;
- (CSAudioInjectionDevice)connectedDevice;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionTvRemoteEngine)initWithStreamHandleId:(unint64_t)id;
- (void)audioConverterDidConvertPackets:(id)packets packets:(id)a4 durationInSec:(float)sec timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer;
- (void)audioEngineDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(unint64_t)reason;
- (void)setDelegate:(id)delegate;
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

- (void)audioConverterDidConvertPackets:(id)packets packets:(id)a4 durationInSec:(float)sec timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  v16 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_alloc_init(CSAudioChunkForTV);
    [v11 setPackets:v16];
    [v11 setTimeStamp:timestamp];
    [v11 setStreamHandleID:{-[CSFileAudioInjectionEngine audioStreamHandleId](self, "audioStreamHandleId")}];
    [v11 setNumChannels:1];
    v12 = +[CSFPreferences sharedPreferences];
    useSpeexForAudioInjection = [v12 useSpeexForAudioInjection];

    if (useSpeexForAudioInjection)
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

- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer
{
  encoder = self->_encoder;
  bufferCopy = buffer;
  [(CSAudioConverter *)encoder addSamples:bufferCopy timestamp:time arrivalTimestampToAudioRecorder:mach_absolute_time()];
}

- (void)audioEngineDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 audioEngineDidStopRecord:self audioStreamHandleId:id reason:reason];
  }
}

- (BOOL)stopAudioStreamWithOutError:(id *)error
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v4 stopAudioStreamWithOutError:0];
}

- (BOOL)startAudioStreamWithOption:(id)option withOutError:(id *)error
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v5 startAudioStreamWithOption:option withOutError:0];
}

- (BOOL)isRecording
{
  v3.receiver = self;
  v3.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v3 isRecording];
}

- (BOOL)injectAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v7 injectAudio:audio withScaleFactor:started playbackStarted:completion completion:?];
}

- (BOOL)injectAudio:(id)audio
{
  v4.receiver = self;
  v4.super_class = CSFileAudioInjectionTvRemoteEngine;
  return [(CSFileAudioInjectionEngine *)&v4 injectAudio:audio];
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

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionTvRemoteEngine;
  delegateCopy = delegate;
  [(CSFileAudioInjectionEngine *)&v5 setDelegate:self];
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (CSFileAudioInjectionTvRemoteEngine)initWithStreamHandleId:(unint64_t)id
{
  v13.receiver = self;
  v13.super_class = CSFileAudioInjectionTvRemoteEngine;
  v3 = [(CSFileAudioInjectionEngine *)&v13 initWithStreamHandleId:id];
  if (v3)
  {
    v4 = dispatch_queue_create("CSFileAudioInjectionTvRemoteEngine", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = +[CSFPreferences sharedPreferences];
    useSpeexForAudioInjection = [v6 useSpeexForAudioInjection];

    if (useSpeexForAudioInjection)
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