@interface CSAttSiriAudioMetricsNode
- (AudioStreamBasicDescription)_defaultASBD;
- (CSAttSiriAudioMetricsNode)init;
- (CSAttSiriAudioMetricsNode)initWithAttSiriController:(id)a3;
- (CSAttSiriController)attSiriController;
- (void)_handleDidStop;
- (void)_setupAdamMetricsManagerIfNeeded;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5;
- (void)attSiriAudioSrcNodeDidStop:(id)a3;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4;
- (void)setupWithStreamProviding:(id)a3;
@end

@implementation CSAttSiriAudioMetricsNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (AudioStreamBasicDescription)_defaultASBD
{
  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  if (+[CSConfig inputRecordingIsFloat])
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmFloatASBD];
  }

  else
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  }
}

- (void)_handleDidStop
{
  adamMetricsManager = self->_adamMetricsManager;
  if (adamMetricsManager)
  {
    [(CSAdamSpeechMetricsManager *)adamMetricsManager stopAndDispose];
    v4 = self->_adamMetricsManager;
    self->_adamMetricsManager = 0;
  }

  audioBuffer = self->_audioBuffer;
  if (audioBuffer)
  {
    self->_audioBuffer = 0;
  }

  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;
  }
}

- (void)_setupAdamMetricsManagerIfNeeded
{
  if (!self->_adamMetricsManager && self->_shouldUseADAM)
  {
    v3 = objc_alloc_init(CSAdamSpeechMetricsManager);
    adamMetricsManager = self->_adamMetricsManager;
    self->_adamMetricsManager = v3;

    v5 = self->_adamMetricsManager;
    if (v5)
    {
      [(CSAdamSpeechMetricsManager *)v5 updateWithNewReporterID];
      v6 = self->_adamMetricsManager;
      [(CSAttSiriAudioMetricsNode *)self _defaultASBD];
      [(CSAdamSpeechMetricsManager *)v6 setAudioIssueDetectorFormat:&v19 numFrames:self->_numFramesPerBuffer];
      v7 = [CSAudioCircularBuffer alloc];
      +[CSConfig inputRecordingDurationInSecs];
      v9 = v8;
      +[CSConfig inputRecordingSampleRate];
      LODWORD(v11) = v10;
      LODWORD(v12) = v9;
      v13 = [v7 initWithNumChannels:1 recordingDuration:v12 samplingRate:v11];
      audioBuffer = self->_audioBuffer;
      self->_audioBuffer = v13;

      v15 = [[CSOSTransaction alloc] initWithDescription:@"AttSiri Audio Metrics"];
      transaction = self->_transaction;
      self->_transaction = v15;

      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[CSAttSiriAudioMetricsNode _setupAdamMetricsManagerIfNeeded]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Done", &v19, 0xCu);
      }
    }

    else
    {
      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[CSAttSiriAudioMetricsNode _setupAdamMetricsManagerIfNeeded]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s fail to init CSAdamSpeechMetricsManager", &v19, 0xCu);
      }
    }
  }
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073AA0;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeDidStop:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073CEC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriAudioSrcNodeDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073D68;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setupWithStreamProviding:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073E08;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAttSiriAudioMetricsNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriAudioMetricsNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriAudioMetricsNode)init
{
  v10.receiver = self;
  v10.super_class = CSAttSiriAudioMetricsNode;
  v2 = [(CSAttSiriAudioMetricsNode *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
    v4 = dispatch_queue_create("CSAttSiriAudioMetricsNode Queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    +[CSConfig inputRecordingBufferDuration];
    v7 = v6;
    +[CSConfig inputRecordingSampleRate];
    v2->_numFramesPerBuffer = (v7 * v8);
    v2->_lastForwardedSampleCount = 0;
    v2->_shouldUseADAM = 0;
  }

  return v2;
}

@end