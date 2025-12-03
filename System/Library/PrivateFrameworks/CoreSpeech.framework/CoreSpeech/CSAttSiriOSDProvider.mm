@interface CSAttSiriOSDProvider
- (CSAttSiriOSDProvider)init;
- (CSAttSiriOSDProviderDelegate)delegate;
- (unint64_t)_getSampleCountByProcessedAudioInMs:(double)ms;
- (void)_processBoron:(id)boron;
- (void)_resetBoron;
- (void)addAudio:(id)audio;
- (void)getSampleCountByProcessedAudioInMs:(double)ms completion:(id)completion;
- (void)getStartSpeechInfoForProcessedAudio:(double)audio prependedAudio:(double)prependedAudio speechDetectionSamples:(unint64_t)samples completion:(id)completion;
- (void)osdAnalyzer:(id)analyzer didUpdateOSDFeatures:(id)features;
- (void)start:(BOOL)start useOwnVoiceVAD:(BOOL)d completion:(id)completion;
- (void)stop;
- (void)stopAnalysisAndReset;
@end

@implementation CSAttSiriOSDProvider

- (CSAttSiriOSDProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)osdAnalyzer:(id)analyzer didUpdateOSDFeatures:(id)features
{
  featuresCopy = features;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000788A8;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = featuresCopy;
  v7 = featuresCopy;
  dispatch_async(queue, v8);
}

- (void)_processBoron:(id)boron
{
  boronCopy = boron;
  remoteVAD = [boronCopy remoteVAD];
  bytes = [remoteVAD bytes];

  remoteVAD2 = [boronCopy remoteVAD];
  v7 = [remoteVAD2 length];

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      currentBoronCount = self->_currentBoronCount;
      if (bytes[v8])
      {
        v10 = (currentBoronCount + 1);
        if (v10 >= 5)
        {
          LOWORD(v10) = 5;
        }

        self->_currentBoronCount = v10;
        startSampleCount = [boronCopy startSampleCount];
      }

      else
      {
        v12 = currentBoronCount - 1;
        self->_currentBoronCount = v12;
        if ((v12 & 0x8000) == 0)
        {
          goto LABEL_9;
        }

        self->_currentBoronCount = 0;
        startSampleCount = -1;
      }

      self->_latestBoronActiveSampleCount = startSampleCount;
LABEL_9:
      ++v8;
      remoteVAD3 = [boronCopy remoteVAD];
      v14 = [remoteVAD3 length];
    }

    while (v8 < v14);
  }
}

- (void)addAudio:(id)audio
{
  audioCopy = audio;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100078B64;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = audioCopy;
  v6 = audioCopy;
  dispatch_async(queue, v7);
}

- (unint64_t)_getSampleCountByProcessedAudioInMs:(double)ms
{
  firstAudioStartSampleCount = self->_firstAudioStartSampleCount;
  v4 = ms / 1000.0;
  +[CSConfig inputRecordingSampleRate];
  return (firstAudioStartSampleCount + v4 * v5);
}

- (void)getStartSpeechInfoForProcessedAudio:(double)audio prependedAudio:(double)prependedAudio speechDetectionSamples:(unint64_t)samples completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078F50;
  block[3] = &unk_10024FCE8;
  audioCopy = audio;
  prependedAudioCopy = prependedAudio;
  samplesCopy = samples;
  block[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_async(queue, block);
}

- (void)getSampleCountByProcessedAudioInMs:(double)ms completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079080;
  block[3] = &unk_100251038;
  msCopy = ms;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)stopAnalysisAndReset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079150;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007929C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resetBoron
{
  self->_deviceHasBoronEnabled = 0;
  self->_currentBoronCount = 0;
  self->_latestBoronActiveSampleCount = -1;
}

- (void)start:(BOOL)start useOwnVoiceVAD:(BOOL)d completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007951C;
  v14[3] = &unk_100253220;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = objc_retainBlock(v14);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100079638;
  v11[3] = &unk_10024FCC0;
  startCopy = start;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (CSAttSiriOSDProvider)init
{
  v9.receiver = self;
  v9.super_class = CSAttSiriOSDProvider;
  v2 = [(CSAttSiriOSDProvider *)&v9 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSAttSiriOSDProvider Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [CSUtils getSerialQueue:@"CSAttSiriOSDProvider OsdAnalyzer Queue" qualityOfService:33];
    osdAnalyzerQueue = v2->_osdAnalyzerQueue;
    v2->_osdAnalyzerQueue = v5;

    v2->_streamingCount = 0;
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSAttSiriOSDProvider init]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  return v2;
}

@end