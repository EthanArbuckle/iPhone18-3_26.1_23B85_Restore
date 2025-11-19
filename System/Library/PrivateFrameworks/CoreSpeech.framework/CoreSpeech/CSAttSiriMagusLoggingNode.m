@interface CSAttSiriMagusLoggingNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriMagusLoggingNode)initWithAttSiriController:(id)a3;
- (id)_createAudioLogPathByFileName:(id)a3;
- (id)_createJsonLogPathBySignalType:(id)a3;
- (id)_timeStampString;
- (void)_clearAudioFileWriterIfNeed;
- (void)_handleMagusStopLogging;
- (void)_logAttentionSignals;
- (void)_logFaceLandmarks;
- (void)_logGazeDetection;
- (void)_logGazeInstaneousSignals;
- (void)_logMetadata;
- (void)_logMotionSignals;
- (void)_logVisualSpeechEstimationSignals;
- (void)_logVisualSpeechQuerySignals;
- (void)_renameAudioFileNameWithRequestMHUUID;
- (void)_setupLogDirectory;
- (void)_startAudioLogging;
- (void)_writeAudioChunk:(id)a3;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4;
- (void)attSiriNode:(id)a3 didUpdateAttentionState:(unint64_t)a4;
- (void)attSiriNode:(id)a3 didUpdateMotionSignal:(id)a4;
- (void)attSiriNode:(id)a3 didUpdateVisualSpeechProbability:(double)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6;
- (void)attSiriNode:(id)a3 hadVisualSpeechSignals:(BOOL)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6;
- (void)gazeInInterval:(BOOL)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5;
- (void)gazePointUpdate:(CGPoint)a3 areaOfInterest:(CGRect)a4 gazeState:(BOOL)a5 atTime:(unint64_t)a6;
- (void)setAudioRecordContext:(id)a3;
- (void)setMhId:(id)a3;
- (void)start;
- (void)stop;
- (void)visualSpeechLandmarkUpdate:(id)a3 time:(unint64_t)a4;
@end

@implementation CSAttSiriMagusLoggingNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_logVisualSpeechQuerySignals
{
  visualSpeechQuery = self->_visualSpeechQuery;
  if (visualSpeechQuery && [(NSMutableArray *)visualSpeechQuery count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"visualSpeechQuerySignal"];
    v5 = self->_visualSpeechQuery;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_visualSpeechQuery;
      self->_visualSpeechQuery = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logVisualSpeechQuerySignals]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize _visualSpeechQuery data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_logVisualSpeechEstimationSignals
{
  visualSpeechEstimationSignals = self->_visualSpeechEstimationSignals;
  if (visualSpeechEstimationSignals && [(NSMutableArray *)visualSpeechEstimationSignals count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"visualSpeechEstimationSignal"];
    v5 = self->_visualSpeechEstimationSignals;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_visualSpeechEstimationSignals;
      self->_visualSpeechEstimationSignals = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logVisualSpeechEstimationSignals]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize _visualSpeechEstimationSignals data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)attSiriNode:(id)a3 hadVisualSpeechSignals:(BOOL)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6
{
  v8 = a4;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v15 = "[CSAttSiriMagusLoggingNode attSiriNode:hadVisualSpeechSignals:startTime:endTime:]";
    v16 = 2048;
    v17 = a5;
    v18 = 2048;
    v19 = a6;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s startTs:%llu endTs:%llu hadSignal:%u", buf, 0x26u);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008E434;
  v12[3] = &unk_10024FF78;
  v12[5] = a5;
  v12[6] = a6;
  v13 = v8;
  v12[4] = self;
  dispatch_async(queue, v12);
}

- (void)attSiriNode:(id)a3 didUpdateVisualSpeechProbability:(double)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6
{
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v14 = "[CSAttSiriMagusLoggingNode attSiriNode:didUpdateVisualSpeechProbability:startTime:endTime:]";
    v15 = 2048;
    v16 = a5;
    v17 = 2048;
    v18 = a6;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s startTs:%llu endTs:%llu probability:%f", buf, 0x2Au);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008E6B8;
  v12[3] = &unk_10024FFA0;
  v12[5] = a5;
  v12[6] = a6;
  *&v12[7] = a4;
  v12[4] = self;
  dispatch_async(queue, v12);
}

- (void)_logAttentionSignals
{
  attentionSignals = self->_attentionSignals;
  if (attentionSignals && [(NSMutableArray *)attentionSignals count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"attentionSignal"];
    v5 = self->_attentionSignals;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_attentionSignals;
      self->_attentionSignals = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logAttentionSignals]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize attention data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)attSiriNode:(id)a3 didUpdateAttentionState:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E9FC;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_logFaceLandmarks
{
  visualSpeechFaceLandmarks = self->_visualSpeechFaceLandmarks;
  if (visualSpeechFaceLandmarks && [(NSMutableArray *)visualSpeechFaceLandmarks count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"visualSpeechFaceLandmarks"];
    v5 = self->_visualSpeechFaceLandmarks;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_visualSpeechFaceLandmarks;
      self->_visualSpeechFaceLandmarks = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logFaceLandmarks]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize visual speech faceLandmarks data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_logGazeDetection
{
  gazeStateSignals = self->_gazeStateSignals;
  if (gazeStateSignals && [(NSMutableArray *)gazeStateSignals count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"gazeStateLogs"];
    v5 = self->_gazeStateSignals;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_gazeStateSignals;
      self->_gazeStateSignals = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logGazeDetection]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize gaze state data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_logGazeInstaneousSignals
{
  gazeEstimationSignals = self->_gazeEstimationSignals;
  if (gazeEstimationSignals && [(NSMutableArray *)gazeEstimationSignals count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"gazeEstimationLogs"];
    v5 = self->_gazeEstimationSignals;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_gazeEstimationSignals;
      self->_gazeEstimationSignals = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logGazeInstaneousSignals]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize gaze estimation data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (id)_timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (void)_logMetadata
{
  audioRecordContext = self->_audioRecordContext;
  if (audioRecordContext)
  {
    v4 = [(CSAudioRecordContext *)audioRecordContext type];
  }

  else
  {
    v4 = 0;
  }

  v24 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"metadata"];
  v31[0] = @"audioRecordType";
  v5 = [CSAudioRecordContext recordTypeString:v4];
  startTimestampString = self->_startTimestampString;
  stopTimestampString = self->_stopTimestampString;
  v32[0] = v5;
  v32[1] = startTimestampString;
  v31[1] = @"startTimestamp";
  v31[2] = @"stopTimestamp";
  v32[2] = stopTimestampString;
  v31[3] = @"startMachAbsTime";
  v8 = [NSNumber numberWithUnsignedLongLong:self->_startMachAbsTime];
  v32[3] = v8;
  v31[4] = @"stopMachAbsTime";
  v9 = [NSNumber numberWithUnsignedLongLong:self->_stopMachAbsTime];
  v32[4] = v9;
  v31[5] = @"startSampleCount";
  v10 = [NSNumber numberWithUnsignedLongLong:self->_startSampleCount];
  v32[5] = v10;
  v31[6] = @"stopSampleCount";
  v11 = [NSNumber numberWithUnsignedLongLong:self->_stopSampleCount];
  v32[6] = v11;
  v31[7] = @"activationStartSampleCount";
  v12 = [NSNumber numberWithUnsignedLongLong:self->_activationStartSampleCount];
  v32[7] = v12;
  v31[8] = @"productType";
  v13 = +[CSUtils deviceProductType];
  v32[8] = v13;
  v31[9] = @"productVersion";
  v14 = +[CSUtils deviceProductVersion];
  v32[9] = v14;
  v31[10] = @"buildVersion";
  v15 = +[CSUtils deviceBuildVersion];
  v32[10] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:11];

  v26 = 0;
  v17 = [NSJSONSerialization dataWithJSONObject:v16 options:1 error:&v26];
  v18 = v26;
  v19 = v18;
  if (!v17 || v18)
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = [v19 localizedDescription];
      *buf = 136315394;
      v28 = "[CSAttSiriMagusLoggingNode _logMetadata]";
      v29 = 2114;
      v30 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to serialize metadata data with err: %{public}@", buf, 0x16u);
    }

    v20 = v24;
  }

  else
  {
    v25 = 0;
    v20 = v24;
    [v17 writeToFile:v24 options:0 error:&v25];
    v19 = v25;
  }
}

- (void)_logMotionSignals
{
  motionSignals = self->_motionSignals;
  if (motionSignals && [(NSMutableArray *)motionSignals count])
  {
    v4 = [(CSAttSiriMagusLoggingNode *)self _createJsonLogPathBySignalType:@"motion"];
    v5 = self->_motionSignals;
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = 0;
      [v6 writeToFile:v4 options:0 error:&v14];
      v9 = v14;
      v13 = self->_motionSignals;
      self->_motionSignals = 0;
    }

    else
    {
      v9 = v7;
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 136315394;
        v17 = "[CSAttSiriMagusLoggingNode _logMotionSignals]";
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize motion data with err: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_clearAudioFileWriterIfNeed
{
  audioFileWriter = self->_audioFileWriter;
  if (audioFileWriter)
  {
    [(CSAudioFileWriter *)audioFileWriter endAudio];
    v4 = self->_audioFileWriter;
    self->_audioFileWriter = 0;

    [(CSAttSiriMagusLoggingNode *)self _renameAudioFileNameWithRequestMHUUID];
    previousLoggedSampleCount = self->_previousLoggedSampleCount;
    self->_stopSampleCount = previousLoggedSampleCount;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSAttSiriMagusLoggingNode _clearAudioFileWriterIfNeed]";
      v9 = 2050;
      v10 = previousLoggedSampleCount;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s audio logging end sample count %{public}llu", &v7, 0x16u);
    }
  }
}

- (void)_renameAudioFileNameWithRequestMHUUID
{
  mhId = self->_mhId;
  if (!mhId)
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];
    v6 = self->_mhId;
    self->_mhId = v5;

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_mhId;
      *buf = 136315394;
      v20 = "[CSAttSiriMagusLoggingNode _renameAudioFileNameWithRequestMHUUID]";
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Generated requestMHUUID for magus: %@", buf, 0x16u);
    }

    mhId = self->_mhId;
  }

  v9 = mhId;
  v10 = +[NSFileManager defaultManager];
  v11 = [(CSAttSiriMagusLoggingNode *)self _createAudioLogPathByFileName:self->_startTimestampString];
  v12 = [(CSAttSiriMagusLoggingNode *)self _createAudioLogPathByFileName:v9];
  v18 = 0;
  [v10 moveItemAtPath:v11 toPath:v12 error:&v18];
  v13 = v18;

  if (v13)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [(CSAttSiriMagusLoggingNode *)self _createAudioLogPathByFileName:v9];
      v17 = [v13 localizedDescription];
      *buf = 136315650;
      v20 = "[CSAttSiriMagusLoggingNode _renameAudioFileNameWithRequestMHUUID]";
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Couldn't rename to new path %{public}@ %{public}@", buf, 0x20u);
    }
  }
}

- (void)_writeAudioChunk:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  if ((CSIsHorseman() & 1) == 0 && +[CSConfig inputRecordingIsFloat])
  {
    v6 = [v4 data];
    v7 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v6];

    v5 = v7;
  }

  -[CSAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v5 bytes], objc_msgSend(v4, "numSamples"));
  if (!self->_previousLoggedSampleCount)
  {
    v8 = [v4 startSampleCount];
    self->_startSampleCount = v8;
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAttSiriMagusLoggingNode _writeAudioChunk:]";
      v13 = 2050;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s audio logging start sample count %{public}llu", &v11, 0x16u);
    }
  }

  v10 = [v4 startSampleCount];
  self->_previousLoggedSampleCount = v10 + [v4 numSamples];
}

- (void)_startAudioLogging
{
  [(CSAttSiriMagusLoggingNode *)self _clearAudioFileWriterIfNeed];
  v3 = [CSPlainAudioFileWriter alloc];
  v4 = [(CSAttSiriMagusLoggingNode *)self _createAudioLogPathByFileName:self->_startTimestampString];
  v5 = [NSURL URLWithString:v4];
  v6 = [v3 initWithURL:v5];
  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = v6;

  self->_previousLoggedSampleCount = 0;
}

- (void)_handleMagusStopLogging
{
  v3 = [(CSAttSiriMagusLoggingNode *)self _timeStampString];
  stopTimestampString = self->_stopTimestampString;
  self->_stopTimestampString = v3;

  self->_stopMachAbsTime = mach_absolute_time();
  [(CSAttSiriMagusLoggingNode *)self _stopAudioLogging];
  [(CSAttSiriMagusLoggingNode *)self _logMotionSignals];
  [(CSAttSiriMagusLoggingNode *)self _logMetadata];
  [(CSAttSiriMagusLoggingNode *)self _logGazeInstaneousSignals];
  [(CSAttSiriMagusLoggingNode *)self _logGazeDetection];
  [(CSAttSiriMagusLoggingNode *)self _logAttentionSignals];
  [(CSAttSiriMagusLoggingNode *)self _logVisualSpeechEstimationSignals];
  [(CSAttSiriMagusLoggingNode *)self _logVisualSpeechQuerySignals];
  [(CSAttSiriMagusLoggingNode *)self _logFaceLandmarks];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    mhId = self->_mhId;
    v7 = 136315394;
    v8 = "[CSAttSiriMagusLoggingNode _handleMagusStopLogging]";
    v9 = 2112;
    v10 = mhId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Using MHId %@ for logging", &v7, 0x16u);
  }
}

- (id)_createJsonLogPathBySignalType:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-%@.json", self->_mhId, a3];
  v5 = [(NSString *)self->_magusLogDirectory stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_createAudioLogPathByFileName:(id)a3
{
  magusLogDirectory = self->_magusLogDirectory;
  v4 = [NSString stringWithFormat:@"%@-vad.wav", a3];
  v5 = [(NSString *)magusLogDirectory stringByAppendingPathComponent:v4];

  return v5;
}

- (void)_setupLogDirectory
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[CSFPreferences sharedPreferences];
  v5 = [v4 mhLogDirectory];
  magusLogDirectory = self->_magusLogDirectory;
  self->_magusLogDirectory = v5;

  if ([v3 fileExistsAtPath:self->_magusLogDirectory])
  {
    v7 = 0;
  }

  else
  {
    v8 = self->_magusLogDirectory;
    v15 = 0;
    v9 = [v3 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
    v7 = v15;
    if ((v9 & 1) == 0)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_magusLogDirectory;
        v13 = v10;
        v14 = [v7 localizedDescription];
        *buf = 136315650;
        v17 = "[CSAttSiriMagusLoggingNode _setupLogDirectory]";
        v18 = 2114;
        v19 = v12;
        v20 = 2114;
        v21 = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Couldn't create magus logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v11 = self->_magusLogDirectory;
      self->_magusLogDirectory = @"/tmp";
    }
  }
}

- (void)visualSpeechLandmarkUpdate:(id)a3 time:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008FF24;
    block[3] = &unk_1002533C8;
    v13 = a4;
    v11 = v6;
    v12 = self;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CSAttSiriMagusLoggingNode visualSpeechLandmarkUpdate:time:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s faceLandmarks are nil!", buf, 0xCu);
    }
  }
}

- (void)gazeInInterval:(BOOL)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009006C;
  v6[3] = &unk_10024FF78;
  v7 = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[4] = self;
  dispatch_async(queue, v6);
}

- (void)gazePointUpdate:(CGPoint)a3 areaOfInterest:(CGRect)a4 gazeState:(BOOL)a5 atTime:(unint64_t)a6
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090268;
  v7[3] = &unk_10024FF50;
  v10 = a5;
  v8 = a3;
  v9 = a4;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)attSiriNode:(id)a3 didUpdateMotionSignal:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000905A4;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009064C;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090910;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setAudioRecordContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000909B4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090A6C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090BAC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAttSiriMagusLoggingNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSAttSiriMagusLoggingNode initWithAttSiriController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = CSAttSiriMagusLoggingNode;
  v6 = [(CSAttSiriMagusLoggingNode *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("CSAttSiriMagusLoggingNode queue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_isReady = 0;
    requiredNodes = v6->_requiredNodes;
    v6->_type = 17;
    v6->_requiredNodes = &off_10025ED08;

    objc_storeWeak(&v6->_attSiriController, v4);
    v6->_didStop = 1;
    [(CSAttSiriMagusLoggingNode *)v6 _setupLogDirectory];
  }

  return v6;
}

@end