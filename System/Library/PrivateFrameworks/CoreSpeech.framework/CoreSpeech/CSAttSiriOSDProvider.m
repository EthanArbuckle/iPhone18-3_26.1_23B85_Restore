@interface CSAttSiriOSDProvider
- (CSAttSiriOSDProvider)init;
- (CSAttSiriOSDProviderDelegate)delegate;
- (unint64_t)_getSampleCountByProcessedAudioInMs:(double)a3;
- (void)_processBoron:(id)a3;
- (void)_resetBoron;
- (void)addAudio:(id)a3;
- (void)getSampleCountByProcessedAudioInMs:(double)a3 completion:(id)a4;
- (void)getStartSpeechInfoForProcessedAudio:(double)a3 prependedAudio:(double)a4 speechDetectionSamples:(unint64_t)a5 completion:(id)a6;
- (void)osdAnalyzer:(id)a3 didUpdateOSDFeatures:(id)a4;
- (void)start:(BOOL)a3 useOwnVoiceVAD:(BOOL)a4 completion:(id)a5;
- (void)stop;
- (void)stopAnalysisAndReset;
@end

@implementation CSAttSiriOSDProvider

- (CSAttSiriOSDProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)osdAnalyzer:(id)a3 didUpdateOSDFeatures:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000788A8;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_processBoron:(id)a3
{
  v15 = a3;
  v4 = [v15 remoteVAD];
  v5 = [v4 bytes];

  v6 = [v15 remoteVAD];
  v7 = [v6 length];

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      currentBoronCount = self->_currentBoronCount;
      if (v5[v8])
      {
        v10 = (currentBoronCount + 1);
        if (v10 >= 5)
        {
          LOWORD(v10) = 5;
        }

        self->_currentBoronCount = v10;
        v11 = [v15 startSampleCount];
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
        v11 = -1;
      }

      self->_latestBoronActiveSampleCount = v11;
LABEL_9:
      ++v8;
      v13 = [v15 remoteVAD];
      v14 = [v13 length];
    }

    while (v8 < v14);
  }
}

- (void)addAudio:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100078B64;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (unint64_t)_getSampleCountByProcessedAudioInMs:(double)a3
{
  firstAudioStartSampleCount = self->_firstAudioStartSampleCount;
  v4 = a3 / 1000.0;
  +[CSConfig inputRecordingSampleRate];
  return (firstAudioStartSampleCount + v4 * v5);
}

- (void)getStartSpeechInfoForProcessedAudio:(double)a3 prependedAudio:(double)a4 speechDetectionSamples:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078F50;
  block[3] = &unk_10024FCE8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, block);
}

- (void)getSampleCountByProcessedAudioInMs:(double)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079080;
  block[3] = &unk_100251038;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

- (void)start:(BOOL)a3 useOwnVoiceVAD:(BOOL)a4 completion:(id)a5
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007951C;
  v14[3] = &unk_100253220;
  v15 = a5;
  v7 = v15;
  v8 = objc_retainBlock(v14);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100079638;
  v11[3] = &unk_10024FCC0;
  v13 = a3;
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