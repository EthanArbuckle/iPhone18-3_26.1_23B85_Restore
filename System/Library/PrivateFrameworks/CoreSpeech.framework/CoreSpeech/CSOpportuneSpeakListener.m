@interface CSOpportuneSpeakListener
- (BOOL)_popRemoteVADSignal;
- (BOOL)_shouldReportBoron;
- (CSOpportuneSpeakListener)init;
- (CSOpportuneSpeakListenerDelegate)delegate;
- (void)_startRequestWithCompletion:(id)a3;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)spgEndpointAnalyzer:(id)a3 hasSilenceScoreEstimate:(double)a4 clientProcessedAudioTimeMS:(float)a5;
- (void)startListenWithOption:(id)a3 completion:(id)a4;
- (void)stopListenWithStateReset:(BOOL)a3 completion:(id)a4;
@end

@implementation CSOpportuneSpeakListener

- (CSOpportuneSpeakListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)spgEndpointAnalyzer:(id)a3 hasSilenceScoreEstimate:(double)a4 clientProcessedAudioTimeMS:(float)a5
{
  v8 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  alignBufferQueue = self->_alignBufferQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074F6C;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &v32;
  block[6] = &v28;
  dispatch_sync(alignBufferQueue, block);
  if (*(v33 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 opportuneSpeakListener:self hasRemoteVADAvailable:*(v29 + 24)];
    }
  }

  +[CSConfig inputRecordingSampleRate];
  v14 = [(CSAudioTimeConverter *)self->_audioTimeConverter hostTimeFromSampleCount:((v13 / 1000.0) * a5)];
  v15 = +[CSFPreferences sharedPreferences];
  v16 = [v15 opportuneSpeakListenerBypassEnabled];
  v17 = a4 <= 0.150000006;

  v18 = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  v20 = objc_loadWeakRetained(&self->_delegate);
  v22 = v20;
  if (v19)
  {
    *&v21 = v14;
    [v20 opportuneSpeakListener:self hasVADAvailable:v17 | v16 withHostTime:v21];
  }

  else
  {
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }

    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 opportuneSpeakListener:self hasVADAvailable:v17 | v16];
  }

LABEL_9:
  v24 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(v29 + 24);
    v26 = *(v33 + 24);
    *buf = 136315906;
    v37 = "[CSOpportuneSpeakListener spgEndpointAnalyzer:hasSilenceScoreEstimate:clientProcessedAudioTimeMS:]";
    v38 = 1026;
    v39 = v25;
    v40 = 1026;
    v41 = v26;
    v42 = 2050;
    v43 = a4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s boronScore : %{public}d, reportBoron : %{public}d, slienceScore : %{public}lf", buf, 0x22u);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

- (BOOL)_shouldReportBoron
{
  remoteVADAlignCount = self->_remoteVADAlignCount;
  self->_remoteVADAlignCount = remoteVADAlignCount + 1;
  return remoteVADAlignCount & ([(CSAudioRecordContext *)self->_latestContext type]!= 19);
}

- (BOOL)_popRemoteVADSignal
{
  v3 = [(NSMutableArray *)self->_remoteVADAlignBuffer count];
  if (v3)
  {
    v4 = [(NSMutableArray *)self->_remoteVADAlignBuffer objectAtIndex:0];
    v5 = [v4 BOOLValue];

    [(NSMutableArray *)self->_remoteVADAlignBuffer removeObjectAtIndex:0];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  v6 = [v5 numSamples];
  audioTimeConverter = self->_audioTimeConverter;
  v8 = v6 + self->_runningSampleCount;
  self->_runningSampleCount = v8;
  -[CSAudioTimeConverter processSampleCount:hostTime:](audioTimeConverter, "processSampleCount:hostTime:", v8, [v5 hostTime]);
  spgEndpointAnalyzer = self->_spgEndpointAnalyzer;
  v10 = [v5 dataForChannel:{+[CSConfig channelForProcessedInput](CSConfig, "channelForProcessedInput")}];
  -[CSSPGEndpointAnalyzer addAudio:numSamples:](spgEndpointAnalyzer, "addAudio:numSamples:", v10, [v5 numSamples]);

  v11 = [v5 remoteVAD];

  if (v11)
  {
    v12 = [v5 remoteVAD];
    v13 = [v12 bytes];

    v14 = [v5 remoteVAD];
    v15 = [v14 length];

    if (v15 >= 1)
    {
      v16 = 0;
      do
      {
        v17 = v13[v16];
        v18 = +[CSFPreferences sharedPreferences];
        v19 = [v18 opportuneSpeakListenerBypassEnabled];

        if (v17)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        alignBufferQueue = self->_alignBufferQueue;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000753B8;
        v32[3] = &unk_100253BF8;
        v32[4] = self;
        v33 = v20;
        dispatch_async(alignBufferQueue, v32);
        ++v16;
        v22 = [v5 remoteVAD];
        v23 = [v22 length];
      }

      while (v16 < v23);
    }

    if (self->_audioFileWriter)
    {
      +[CSConfig remoteVADDuration];
      v25 = v24;
      +[CSConfig inputRecordingSampleRate];
      v27 = (v25 * v26);
      LODWORD(v28) = 1176256512;
      v29 = [v5 dataWithRemoteVADWithScaleFactor:v27 numAudioSamplesPerRemoteVAD:v28];
      v30 = v29;
      if (v29)
      {
        -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v29 bytes], objc_msgSend(v5, "numSamples"));
      }

      else
      {
        v31 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v35 = "[CSOpportuneSpeakListener audioStreamProvider:audioBufferAvailable:]";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Audio coming from DoAP should contains RemoteVAD", buf, 0xCu);
        }
      }
    }
  }
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  [(CSSPGEndpointAnalyzer *)self->_spgEndpointAnalyzer stop:a3];
  [(CSOpportuneSpeakListener *)self setAudioStream:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 opportuneSpeakListener:self didStopUnexpectedly:1];
  }

  audioFileWriter = self->_audioFileWriter;

  [(CSPlainAudioFileWriter *)audioFileWriter endAudio];
}

- (void)stopListenWithStateReset:(BOOL)a3 completion:(id)a4
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000756DC;
  v18[3] = &unk_100253270;
  v18[4] = self;
  v5 = a4;
  v19 = v5;
  v6 = objc_retainBlock(v18);
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CSOpportuneSpeakListener stopListenWithStateReset:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Request stop CSOpportuneSpeakListener", buf, 0xCu);
  }

  v8 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:10 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:3.0];
  v9 = [(CSOpportuneSpeakListener *)self audioStream];
  v10 = [v9 streamProvider];
  v11 = [v10 holdAudioStreamWithDescription:@"Hold CSOSL stream for potential weak stream" option:v8];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v11;

  v13 = [(CSOpportuneSpeakListener *)self audioStream];

  if (v13)
  {
    v14 = [(CSOpportuneSpeakListener *)self audioStream];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100075810;
    v16[3] = &unk_100253270;
    v16[4] = self;
    v17 = v6;
    [v14 stopAudioStreamWithOption:0 completion:v16];
  }

  else
  {
    v15 = [NSError errorWithDomain:CSErrorDomain code:1003 userInfo:0];
    (v6[2])(v6, 0, v15);
  }
}

- (void)_startRequestWithCompletion:(id)a3
{
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100075C60;
  v26[3] = &unk_100253220;
  v4 = a3;
  v27 = v4;
  v5 = objc_retainBlock(v26);
  if (self->_audioStreamProvider)
  {
    v6 = [CSAudioStreamRequest defaultRequestWithContext:self->_latestContext];
    [v6 setRequiresHistoricalBuffer:1];
    [v6 setClientIdentity:9];
    audioStreamProvider = self->_audioStreamProvider;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v25 = 0;
    v10 = [(CSAudioStreamProviding *)audioStreamProvider audioStreamWithRequest:v6 streamName:v9 error:&v25];
    v11 = v25;

    if (v10)
    {
      [(CSOpportuneSpeakListener *)self setAudioStream:v10];
      [v10 setDelegate:self];
      [(CSSPGEndpointAnalyzer *)self->_spgEndpointAnalyzer start];
      if ([(CSSPGEndpointAnalyzer *)self->_spgEndpointAnalyzer getFrameDurationMs]>= 1)
      {
        +[CSConfig remoteVADDuration];
        self->_remoteVADSPGRatio = ((v12 * 1000.0) / [(CSSPGEndpointAnalyzer *)self->_spgEndpointAnalyzer getFrameDurationMs]);
        v13 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          +[CSConfig remoteVADDuration];
          v16 = (v15 * 1000.0);
          v17 = [(CSSPGEndpointAnalyzer *)self->_spgEndpointAnalyzer getFrameDurationMs];
          remoteVADSPGRatio = self->_remoteVADSPGRatio;
          *buf = 136315906;
          v29 = "[CSOpportuneSpeakListener _startRequestWithCompletion:]";
          v30 = 1026;
          *v31 = v16;
          *&v31[4] = 1026;
          *&v31[6] = v17;
          v32 = 1026;
          v33 = remoteVADSPGRatio;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s remoteVADDuration = %{public}d, spgDuration = %{public}d, _remoteVADSPGRatio = %{public}d", buf, 0x1Eu);
        }
      }

      v19 = +[CSAudioStartStreamOption noAlertOption];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100075D80;
      v23[3] = &unk_100253270;
      v23[4] = self;
      v24 = v5;
      [v10 startAudioStreamWithOption:v19 completion:v23];
    }

    else
    {
      v20 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = [v11 localizedDescription];
        *buf = 136315394;
        v29 = "[CSOpportuneSpeakListener _startRequestWithCompletion:]";
        v30 = 2114;
        *v31 = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s AudioStreamRequest has failed : %{public}@", buf, 0x16u);
      }

      (v5[2])(v5, 0, v11);
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:CSErrorDomain code:1004 userInfo:0];
    (v5[2])(v5, 0, v11);
  }
}

- (void)startListenWithOption:(id)a3 completion:(id)a4
{
  v6 = a3;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10007626C;
  v32[3] = &unk_100253220;
  v7 = a4;
  v33 = v7;
  v8 = objc_retainBlock(v32);
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v6 deviceId];
    *buf = 136315394;
    v35 = "[CSOpportuneSpeakListener startListenWithOption:completion:]";
    v36 = 2114;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Start Listening request with deviceId : %{public}@", buf, 0x16u);
  }

  v12 = +[AFPreferences sharedPreferences];
  v13 = [v12 opportuneSpeakingFileLoggingIsEnabled];

  if (v13)
  {
    +[CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedWithRemoteVADASBD];
    +[CSFAudioStreamBasicDescriptionFactory lpcmInterleavedWithRemoteVADASBD];
    v14 = [CSAudioFileManager createAudioFileWriterForOpportuneSpeakListenerWithInputFormat:buf outputFormat:v31];
  }

  else
  {
    v14 = 0;
  }

  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = v14;

  v16 = [v6 deviceId];

  if (v16)
  {
    v17 = +[CSOpportuneSpeakListenerDeviceManager sharedManager];
    v18 = [v6 deviceId];
    [v17 setDeviceId:v18];

    v19 = [v6 deviceId];
    v20 = [CSAudioRecordContext contextForHearstVoiceTriggerWithDeviceId:v19];
    latestContext = self->_latestContext;
    self->_latestContext = v20;
  }

  else
  {
    if ([v6 opportuneSpeakListeningType])
    {
      if ([v6 opportuneSpeakListeningType] != 1)
      {
        goto LABEL_14;
      }

      v22 = +[CSAudioRecordContext contextForOpportuneSpeakerListenerWithCall];
    }

    else
    {
      v22 = +[CSAudioRecordContext contextForOpportuneSpeakerListener];
    }

    v19 = self->_latestContext;
    self->_latestContext = v22;
  }

LABEL_14:
  alignBufferQueue = self->_alignBufferQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076284;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(alignBufferQueue, block);
  v24 = [[CSXPCClient alloc] initWithType:1];
  [(CSXPCClient *)v24 connect];
  v25 = self->_latestContext;
  v29 = 0;
  v26 = [(CSXPCClient *)v24 prepareAudioProviderWithContext:v25 clientType:2 error:&v29];
  v27 = v29;
  if (v26)
  {
    objc_storeStrong(&self->_audioStreamProvider, v24);
    objc_storeStrong(&self->_audioSessionProvider, v24);
    if (self->_audioStreamProvider)
    {
      [(CSOpportuneSpeakListener *)self _startRequestWithCompletion:v8];
    }

    else
    {
      v28 = [NSError errorWithDomain:CSErrorDomain code:1004 userInfo:0];
      (v8[2])(v8, 0, v28);
    }
  }

  else
  {
    (v8[2])(v8, 0, v27);
  }
}

- (CSOpportuneSpeakListener)init
{
  v13.receiver = self;
  v13.super_class = CSOpportuneSpeakListener;
  v2 = [(CSOpportuneSpeakListener *)&v13 init];
  if (v2)
  {
    if (!+[CSUtils supportOpportuneSpeakListener])
    {
      v11 = 0;
      goto LABEL_6;
    }

    v3 = dispatch_queue_create("RemoteVAD Align Queue", 0);
    alignBufferQueue = v2->_alignBufferQueue;
    v2->_alignBufferQueue = v3;

    v5 = [[CSSPGEndpointAnalyzer alloc] initWithAnalyzeMode];
    spgEndpointAnalyzer = v2->_spgEndpointAnalyzer;
    v2->_spgEndpointAnalyzer = v5;

    [(CSSPGEndpointAnalyzer *)v2->_spgEndpointAnalyzer setDelegate:v2];
    v7 = +[NSMutableArray array];
    remoteVADAlignBuffer = v2->_remoteVADAlignBuffer;
    v2->_remoteVADAlignBuffer = v7;

    v2->_remoteVADAlignCount = 0;
    v2->_runningSampleCount = 0;
    v9 = objc_alloc_init(CSAudioTimeConverter);
    audioTimeConverter = v2->_audioTimeConverter;
    v2->_audioTimeConverter = v9;
  }

  v11 = v2;
LABEL_6:

  return v11;
}

@end