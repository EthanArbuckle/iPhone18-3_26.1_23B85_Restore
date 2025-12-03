@interface CSEndpointDelayReporter
- (CSEndpointDelayReporter)initWithRequestMHUUID:(id)d turnIdentifier:(id)identifier withMedocEnabled:(BOOL)enabled;
- (unint64_t)estimatedUserSpeakingEndedHostTime;
- (unint64_t)estimatedUserSpeakingStartedHostTime;
- (void)_emitEndpointDelayMessage:(double)message epdModel:(double)model speakingStart:(double)start speakingEnd:(double)end epdV2:(double)v2;
- (void)_reportUserSpeakingContext;
- (void)instrumentEndpointSignpostsForServerEndpointWithEndTime:(double)time leadingSilence:(double)silence trailingSilence:(double)trailingSilence stopRecordingMachContinuousTime:(unint64_t)continuousTime skippedSamplesTimeInSec:(double)sec firstAudioSampleSensorHostTime:(unint64_t)hostTime;
- (void)reportEndpointDelayIfNeed;
- (void)reset;
- (void)setSpeechRecognizedContext:(id)context withEndpointerMetrics:(id)metrics;
- (void)setSpeechRecognizedContext:(id)context withEndpointerMetrics:(id)metrics withTrpId:(id)id;
@end

@implementation CSEndpointDelayReporter

- (void)_reportUserSpeakingContext
{
  if (self->_turnIdentifier || self->_requestMHUUID)
  {
    if (self->_userSpeakingStartedHostTime)
    {
      if (self->_curTRPId && self->_isMedocEnabled)
      {
        v3 = objc_alloc_init(MHSchemaMHUserSpeakingContext);
        v4 = objc_alloc_init(MHSchemaMHUserSpeakingStarted);
        [v4 setExists:1];
        [v3 setStartedOrChanged:v4];
        v5 = [[NSUUID alloc] initWithUUIDString:self->_curTRPId];
        v6 = [[SISchemaUUID alloc] initWithNSUUID:v5];
        [v3 setTrpId:v6];

        v7 = objc_alloc_init(MHSchemaMHClientEvent);
        v8 = objc_alloc_init(MHSchemaMHClientEventMetadata);
        v9 = [SISchemaUUID alloc];
        v10 = [[NSUUID alloc] initWithUUIDString:self->_requestMHUUID];
        v11 = [v9 initWithNSUUID:v10];
        [v8 setMhId:v11];

        [v7 setEventMetadata:v8];
        [v7 setUserSpeakingContext:v3];
        v12 = +[AssistantSiriAnalytics sharedStream];
        [v12 emitMessage:v7 timestamp:self->_userSpeakingStartedHostTime];
      }

      else
      {
        v3 = objc_alloc_init(SISchemaUEIUserSpeakingContext);
        v4 = objc_alloc_init(SISchemaUEIUserSpeakingStarted);
        [v4 setExists:1];
        [v3 setStartedOrChanged:v4];
        v5 = +[AFAnalytics sharedAnalytics];
        [v5 logInstrumentation:v3 machAbsoluteTime:self->_userSpeakingStartedHostTime turnIdentifier:self->_turnIdentifier];
      }

      v13 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        curTRPId = self->_curTRPId;
        v29 = 136315394;
        v30 = "[CSEndpointDelayReporter _reportUserSpeakingContext]";
        v31 = 2112;
        v32 = curTRPId;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s logInstrumentation for speakingStarted, trpId: %@", &v29, 0x16u);
      }
    }

    v15 = self->_curTRPId;
    if (self->_userSpeakingEndedHostTime)
    {
      if (v15 && self->_isMedocEnabled)
      {
        v16 = objc_alloc_init(MHSchemaMHUserSpeakingContext);
        v17 = objc_alloc_init(MHSchemaMHUserSpeakingEnded);
        [v17 setExists:1];
        [v16 setEnded:v17];
        v18 = [[NSUUID alloc] initWithUUIDString:self->_curTRPId];
        v19 = [[SISchemaUUID alloc] initWithNSUUID:v18];
        [v16 setTrpId:v19];

        v20 = objc_alloc_init(MHSchemaMHClientEvent);
        v21 = objc_alloc_init(MHSchemaMHClientEventMetadata);
        v22 = [SISchemaUUID alloc];
        v23 = [[NSUUID alloc] initWithUUIDString:self->_requestMHUUID];
        v24 = [v22 initWithNSUUID:v23];
        [v21 setMhId:v24];

        [v20 setEventMetadata:v21];
        [v20 setUserSpeakingContext:v16];
        v25 = +[AssistantSiriAnalytics sharedStream];
        [v25 emitMessage:v20 timestamp:self->_userSpeakingEndedHostTime];
      }

      else
      {
        v16 = objc_alloc_init(SISchemaUEIUserSpeakingContext);
        v17 = objc_alloc_init(SISchemaUEIUserSpeakingEnded);
        [v17 setExists:1];
        [v16 setEnded:v17];
        v18 = +[AFAnalytics sharedAnalytics];
        [v18 logInstrumentation:v16 machAbsoluteTime:self->_userSpeakingEndedHostTime turnIdentifier:self->_turnIdentifier];
      }

      v26 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_curTRPId;
        v29 = 136315394;
        v30 = "[CSEndpointDelayReporter _reportUserSpeakingContext]";
        v31 = 2112;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s logInstrumentation for speakingEnded, trpId: %@", &v29, 0x16u);
      }
    }

    else if (v15 && self->_isMedocEnabled)
    {
      v28 = +[CSDiagnosticReporter sharedInstance];
      [v28 submitSELFIssueReport:kCSDiagnosticReporterMHUserSpeakingContextEndedMissingWithMedocEnabled];
    }
  }
}

- (void)_emitEndpointDelayMessage:(double)message epdModel:(double)model speakingStart:(double)start speakingEnd:(double)end epdV2:(double)v2
{
  v13 = objc_alloc_init(MHSchemaMHEndpointDelayContext);
  [v13 setEndpointDelayInNs:message];
  [v13 setEndpointModelDelayInNs:model];
  [v13 setSpeakingStartInNs:start];
  [v13 setSpeakingEndInNs:end];
  if (v2 != 0.0)
  {
    [v13 setEndpointDelayInNsV2:v2];
  }

  v14 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:self->_requestMHUUID];
  [v14 setEndpointDelayContext:v13];
  v15 = +[AssistantSiriAnalytics sharedStream];
  [v15 emitMessage:v14];

  if (message >= 3.0e10)
  {
    v16 = +[CSDiagnosticReporter sharedInstance];
    v17 = kCSDiagnosticReporterEndpointDelayTooHigh;
    v20 = @"EPD";
    v18 = [NSNumber numberWithDouble:message];
    v21 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v16 submitEndpointerIssueReport:v17 withContext:v19];
  }
}

- (void)instrumentEndpointSignpostsForServerEndpointWithEndTime:(double)time leadingSilence:(double)silence trailingSilence:(double)trailingSilence stopRecordingMachContinuousTime:(unint64_t)continuousTime skippedSamplesTimeInSec:(double)sec firstAudioSampleSensorHostTime:(unint64_t)hostTime
{
  CSMachAbsoluteTimeToMachContinuousTime();
  CSMachAbsoluteTimeAddTimeInterval();
  v14 = time - trailingSilence;
  v15 = CSMachAbsoluteTimeAddTimeInterval();
  if (continuousTime >= v15)
  {
    CSMachAbsoluteTimeGetTimeInterval();
    *&v19 = v19;
    v20 = [CSFTimeUtils secondsToNs:v19];
    *&v21 = trailingSilence;
    v22 = [CSFTimeUtils millisecondsToNs:v21];
    *&v23 = silence;
    v24 = [CSFTimeUtils millisecondsToNs:v23];
    *&v25 = v14;
    [(CSEndpointDelayReporter *)self _emitEndpointDelayMessage:v20 epdModel:v22 speakingStart:v24 speakingEnd:[CSFTimeUtils epdV2:"millisecondsToNs:" millisecondsToNs:v25], 0.0];
    v26 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      requestMHUUID = self->_requestMHUUID;
      v31 = 136316418;
      continuousTimeCopy = "[CSEndpointDelayReporter instrumentEndpointSignpostsForServerEndpointWithEndTime:leadingSilence:trailingSilence:stopRecordingMachContinuousTime:skippedSamplesTimeInSec:firstAudioSampleSensorHostTime:]";
      v33 = 2112;
      v34 = *&requestMHUUID;
      v35 = 2050;
      v36 = v20 / 1000000.0;
      v37 = 2050;
      v38 = v22 / 1000000.0;
      v39 = 2050;
      v40 = (v20 - v22) / 1000000.0;
      v41 = 2050;
      secCopy = sec;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Submitted SEP to SELF for MH ID: %@ - EPD (ms): %{public}f, EPD_Model (ms): %{public}f, EPD_Latency (ms): %{public}f, Skipped Samples (sec): %{public}f", &v31, 0x3Eu);
    }

    self->_userSpeakingStartedHostTime = CSMachAbsoluteTimeAddTimeInterval();
    self->_userSpeakingEndedHostTime = CSMachAbsoluteTimeAddTimeInterval();
    [(CSEndpointDelayReporter *)self _reportUserSpeakingContext];
    v28 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v29 = CSLogContextFacilityCoreSpeech;
    v30 = v29;
    if (v28 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v17 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v29))
      {
        v31 = 134349570;
        continuousTimeCopy = v15;
        v33 = 2080;
        v34 = COERCE_DOUBLE("SiriX");
        v35 = 2080;
        v36 = COERCE_DOUBLE("enableTelemetry=YES");
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "EndpointDelay", "%{public, signpost.description:begin_time}llu, %s %s", &v31, 0x20u);
      }

      v17 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v17))
      {
        v31 = 134349570;
        continuousTimeCopy = continuousTime;
        v33 = 2080;
        v34 = COERCE_DOUBLE("SiriX");
        v35 = 2080;
        v36 = COERCE_DOUBLE("enableTelemetry=YES");
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v28, "EndpointDelay", "%{public, signpost.description:end_time}llu, %s %s", &v31, 0x20u);
      }
    }
  }

  else
  {
    v16 = CSLogCategoryEP;
    if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = v16;
    CSMachAbsoluteTimeGetTimeInterval();
    v31 = 136315650;
    continuousTimeCopy = "[CSEndpointDelayReporter instrumentEndpointSignpostsForServerEndpointWithEndTime:leadingSilence:trailingSilence:stopRecordingMachContinuousTime:skippedSamplesTimeInSec:firstAudioSampleSensorHostTime:]";
    v33 = 2050;
    v34 = time / 1000.0;
    v35 = 2050;
    v36 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Server End Time - %{public}f, Host Recording Time - %{public}f", &v31, 0x20u);
  }
}

- (void)reportEndpointDelayIfNeed
{
  if (self->_didReportEndpointDelay)
  {
    goto LABEL_19;
  }

  stopRecordingHostTime = self->_stopRecordingHostTime;
  if (!stopRecordingHostTime)
  {
LABEL_15:
    v24 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      userSpeakingEndedHostTime = self->_userSpeakingEndedHostTime;
      userSpeakingEndedTimeInMs = self->_userSpeakingEndedTimeInMs;
      endpointTimeInMs = self->_endpointTimeInMs;
      *buf = 136316162;
      v57 = "[CSEndpointDelayReporter reportEndpointDelayIfNeed]";
      v58 = 2050;
      v59 = stopRecordingHostTime;
      v60 = 2050;
      v61 = userSpeakingEndedHostTime;
      v62 = 2050;
      v63 = userSpeakingEndedTimeInMs;
      v64 = 2050;
      v65 = endpointTimeInMs;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Not reporting EPD due to unexpected zero or negative component values: _stopRecordingHostTime: %{public}llu, _userSpeakingEndedHostTime: %{public}llu, _userSpeakingEndedTimeInMs: %{public}f, _endpointTimeInMs: %{public}f", buf, 0x34u);
      stopRecordingHostTime = self->_stopRecordingHostTime;
    }

    v25 = [NSNumber numberWithUnsignedLongLong:stopRecordingHostTime, @"stopRecordingHostTime"];
    v53[0] = v25;
    v52[1] = @"userSpeakingEndedHostTime";
    v26 = [NSNumber numberWithUnsignedLongLong:self->_userSpeakingEndedHostTime];
    v53[1] = v26;
    v52[2] = @"userSpeakingEndedTimeInMs";
    v27 = [NSNumber numberWithDouble:self->_userSpeakingEndedTimeInMs];
    v53[2] = v27;
    v52[3] = @"endpointTimeInMs";
    v28 = [NSNumber numberWithDouble:self->_endpointTimeInMs];
    v53[3] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];

    v30 = &kCSDiagnosticReporterEndpointDelayComponentsNegative;
    goto LABEL_18;
  }

  v4 = self->_userSpeakingEndedHostTime;
  if (!v4 || self->_userSpeakingEndedTimeInMs <= 0.0 || self->_endpointTimeInMs <= 0.0)
  {
    if (self->_endpointTimeInMs >= 0.0 && self->_userSpeakingEndedTimeInMs >= 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  self->_didReportEndpointDelay = 1;
  [CSFTimeUtils hostTimeToTimeInterval:stopRecordingHostTime - v4];
  v6 = v5 * 1000.0;
  v7 = self->_endpointTimeInMs - self->_userSpeakingEndedTimeInMs;
  v8 = v5 * 1000.0 - v7;
  audioDeliveryHostTimeDelta = self->_audioDeliveryHostTimeDelta;
  v10 = self->_stopRecordingHostTime - self->_endpointHostTime;
  CSMachAbsoluteTimeGetTimeInterval();
  v12 = v11 * 1000.0;
  v13 = v7 + v11 * 1000.0;
  v14 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v57 = "[CSEndpointDelayReporter reportEndpointDelayIfNeed]";
    v58 = 2050;
    v59 = *&v6;
    v60 = 2050;
    v61 = *&v7;
    v62 = 2050;
    v63 = v8;
    v64 = 2050;
    v65 = v7 + v12;
    v66 = 2050;
    v67 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KeyLog - %s EPD (ms): %{public}f, EPD_Model (ms): %{public}f, EPD_Latency (ms): %{public}f, EPD_V2 (ms): %{public}f, EPD_Latency_V2 (ms): %{public}f", buf, 0x3Eu);
  }

  v15 = mach_continuous_time();
  v16 = mach_absolute_time();
  v17 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
  v18 = CSLogContextFacilityCoreSpeech;
  v19 = v18;
  if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v22 = CSLogContextFacilityCoreSpeech;
  }

  else
  {
    v20 = v15 - v16;
    if (os_signpost_enabled(v18))
    {
      v21 = (self->_userSpeakingEndedHostTime + v20);
      *buf = 134349570;
      v57 = v21;
      v58 = 2080;
      v59 = "SiriX";
      v60 = 2080;
      v61 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "EndpointDelay", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
    }

    v22 = CSLogContextFacilityCoreSpeech;
    if (os_signpost_enabled(v22))
    {
      v23 = (self->_stopRecordingHostTime + v20);
      *buf = 134349570;
      v57 = v23;
      v58 = 2080;
      v59 = "SiriX";
      v60 = 2080;
      v61 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v17, "EndpointDelay", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
    }
  }

  *&v37 = v6;
  v38 = [CSFTimeUtils millisecondsToNs:v37];
  *&v39 = v7;
  v40 = [CSFTimeUtils millisecondsToNs:v39];
  userSpeakingStartedTimeInMs = self->_userSpeakingStartedTimeInMs;
  *&userSpeakingStartedTimeInMs = userSpeakingStartedTimeInMs;
  v42 = [CSFTimeUtils millisecondsToNs:userSpeakingStartedTimeInMs];
  v43 = self->_userSpeakingEndedTimeInMs;
  *&v43 = v43;
  v44 = [CSFTimeUtils millisecondsToNs:v43];
  *&v45 = v13;
  [(CSEndpointDelayReporter *)self _emitEndpointDelayMessage:v38 epdModel:v40 speakingStart:v42 speakingEnd:v44 epdV2:[CSFTimeUtils millisecondsToNs:v45]];
  v46 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    requestMHUUID = self->_requestMHUUID;
    *buf = 136315394;
    v57 = "[CSEndpointDelayReporter reportEndpointDelayIfNeed]";
    v58 = 2112;
    v59 = requestMHUUID;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointDelayContextEvent to SELF for MH ID: %@", buf, 0x16u);
  }

  if (v6 < 0.0 || v7 < 0.0 || v8 < 0.0)
  {
    v48 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v57 = "[CSEndpointDelayReporter reportEndpointDelayIfNeed]";
      v58 = 2048;
      v59 = *&v6;
      v60 = 2048;
      v61 = *&v7;
      v62 = 2048;
      v63 = v8;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s One or more EPD values are negative: EPD: %f, EPD_Model: %f, EPD_Latency: %f", buf, 0x2Au);
    }

    v54[0] = @"EPD";
    v25 = [NSNumber numberWithDouble:v6];
    v55[0] = v25;
    v54[1] = @"EPD_Model";
    v26 = [NSNumber numberWithDouble:v7];
    v55[1] = v26;
    v54[2] = @"EPD_Latency";
    v27 = [NSNumber numberWithDouble:v8];
    v55[2] = v27;
    v29 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
    v30 = &kCSDiagnosticReporterEndpointDelayValuesNegative;
LABEL_18:

    v31 = +[CSDiagnosticReporter sharedInstance];
    [v31 submitEndpointerIssueReport:*v30 withContext:v29];
  }

LABEL_19:
  v32 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_endpointTimeInMs;
    v34 = self->_userSpeakingEndedTimeInMs;
    v35 = self->_userSpeakingEndedHostTime;
    v36 = *&self->_stopRecordingHostTime;
    *buf = 136316162;
    v57 = "[CSEndpointDelayReporter reportEndpointDelayIfNeed]";
    v58 = 2050;
    v59 = *&v33;
    v60 = 2050;
    v61 = *&v34;
    v62 = 2050;
    v63 = *&v35;
    v64 = 2050;
    v65 = v36;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s endpointTimeInMs %{public}f, userSpeakingEndedTime: %{public}f, _userSpeakingEndedMachAbsTime: %{public}llu, stopRecordingMachAbsTime: %{public}llu", buf, 0x34u);
  }
}

- (void)setSpeechRecognizedContext:(id)context withEndpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (context)
  {
    contextCopy = context;
    v8 = [contextCopy objectForKey:@"leadingSilence"];
    v9 = [contextCopy objectForKey:@"trailingSilence"];
    v10 = [contextCopy objectForKey:@"endTime"];

    if (v8 && v9 && v10)
    {
      [v8 doubleValue];
      self->_userSpeakingStartedTimeInMs = v11;
      [v10 doubleValue];
      v13 = v12;
      [v9 doubleValue];
      self->_userSpeakingEndedTimeInMs = v13 - v14;
      self->_endpointBufferHostTime = [metricsCopy endpointBufferHostTime];
      self->_endpointHostTime = [metricsCopy endpointHostTime];
      self->_audioDeliveryHostTimeDelta = [metricsCopy audioDeliveryHostTimeDelta];
      [metricsCopy totalAudioRecorded];
      self->_endpointTimeInMs = v15;
      self->_userSpeakingStartedHostTime = [(CSEndpointDelayReporter *)self estimatedUserSpeakingStartedHostTime];
      estimatedUserSpeakingEndedHostTime = [(CSEndpointDelayReporter *)self estimatedUserSpeakingEndedHostTime];
      self->_userSpeakingEndedHostTime = estimatedUserSpeakingEndedHostTime;
      v17 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        userSpeakingStartedTimeInMs = self->_userSpeakingStartedTimeInMs;
        userSpeakingEndedTimeInMs = self->_userSpeakingEndedTimeInMs;
        stopRecordingHostTime = self->_stopRecordingHostTime;
        endpointBufferHostTime = self->_endpointBufferHostTime;
        endpointHostTime = self->_endpointHostTime;
        audioDeliveryHostTimeDelta = self->_audioDeliveryHostTimeDelta;
        userSpeakingStartedHostTime = self->_userSpeakingStartedHostTime;
        v25 = 136317186;
        v26 = "[CSEndpointDelayReporter setSpeechRecognizedContext:withEndpointerMetrics:]";
        v27 = 2050;
        v28 = userSpeakingStartedTimeInMs;
        v29 = 2050;
        v30 = userSpeakingEndedTimeInMs;
        v31 = 2050;
        v32 = userSpeakingStartedHostTime;
        v33 = 2050;
        v34 = estimatedUserSpeakingEndedHostTime;
        v35 = 2050;
        v36 = stopRecordingHostTime;
        v37 = 2050;
        v38 = endpointBufferHostTime;
        v39 = 2050;
        v40 = endpointHostTime;
        v41 = 2050;
        v42 = audioDeliveryHostTimeDelta;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s _userSpeakingStartedTimeInMs %{public}f, _userSpeakingEndedTimeInMs: %{public}f, _userSpeakingStartedHostTime: %{public}llu, _userSpeakingEndedHostTime: %{public}llu, _stopRecordingHostTime: %{public}llu, _endpointBufferHostTime: %{public}llu, _endpointHostTime: %{public}llu, _audioDeliveryHostTimeDelta: %{public}llu", &v25, 0x5Cu);
      }

      [(CSEndpointDelayReporter *)self _reportUserSpeakingContext];
    }
  }
}

- (void)setSpeechRecognizedContext:(id)context withEndpointerMetrics:(id)metrics withTrpId:(id)id
{
  objc_storeStrong(&self->_curTRPId, id);
  metricsCopy = metrics;
  contextCopy = context;
  [(CSEndpointDelayReporter *)self setSpeechRecognizedContext:contextCopy withEndpointerMetrics:metricsCopy];
}

- (unint64_t)estimatedUserSpeakingEndedHostTime
{
  endpointTimeInMs = self->_endpointTimeInMs;
  if (endpointTimeInMs <= 0.0 || !self->_endpointBufferHostTime || ((v4 = self->_userSpeakingEndedTimeInMs, v4 > 0.0) ? (v5 = endpointTimeInMs <= v4) : (v5 = 1), v5))
  {
    v6 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      userSpeakingEndedTimeInMs = self->_userSpeakingEndedTimeInMs;
      endpointBufferHostTime = self->_endpointBufferHostTime;
      v10 = 136315906;
      v11 = "[CSEndpointDelayReporter estimatedUserSpeakingEndedHostTime]";
      v12 = 2050;
      v13 = endpointTimeInMs;
      v14 = 2050;
      v15 = endpointBufferHostTime;
      v16 = 2050;
      v17 = userSpeakingEndedTimeInMs;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unable to accurately estimate userSpeakingEndedHostTime. _endpointTimeInMs: %{public}f, _endpointBufferHostTime: %{public}llu, _userSpeakingEndedTimeInMs: %{public}f", &v10, 0x2Au);
    }

    return 0;
  }

  else
  {

    return CSMachAbsoluteTimeSubtractTimeInterval();
  }
}

- (unint64_t)estimatedUserSpeakingStartedHostTime
{
  endpointTimeInMs = self->_endpointTimeInMs;
  if (endpointTimeInMs > 0.0 && self->_endpointBufferHostTime && endpointTimeInMs > self->_userSpeakingStartedTimeInMs)
  {

    return CSMachAbsoluteTimeSubtractTimeInterval();
  }

  else
  {
    v5 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      endpointBufferHostTime = self->_endpointBufferHostTime;
      userSpeakingStartedTimeInMs = self->_userSpeakingStartedTimeInMs;
      v8 = 136315906;
      v9 = "[CSEndpointDelayReporter estimatedUserSpeakingStartedHostTime]";
      v10 = 2050;
      v11 = endpointTimeInMs;
      v12 = 2050;
      v13 = endpointBufferHostTime;
      v14 = 2050;
      v15 = userSpeakingStartedTimeInMs;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unable to accurately estimate userSpeakingStartedHostTime. _endpointTimeInMs: %{public}f, _endpointBufferHostTime: %{public}llu, _userSpeakingStartedTimeInMs: %{public}f", &v8, 0x2Au);
    }

    return 0;
  }
}

- (void)reset
{
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSEndpointDelayReporter reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  self->_didReportEndpointDelay = 0;
  *&self->_endpointTimeInMs = 0u;
  *&self->_userSpeakingEndedTimeInMs = 0u;
  *&self->_endpointHostTime = 0u;
  *&self->_userSpeakingStartedHostTime = 0u;
  self->_stopRecordingHostTime = 0;
  curTRPId = self->_curTRPId;
  self->_curTRPId = 0;
}

- (CSEndpointDelayReporter)initWithRequestMHUUID:(id)d turnIdentifier:(id)identifier withMedocEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dCopy = d;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CSEndpointDelayReporter;
  v10 = [(CSEndpointDelayReporter *)&v19 init];
  if (v10)
  {
    v11 = [dCopy copy];
    requestMHUUID = v10->_requestMHUUID;
    v10->_requestMHUUID = v11;

    v13 = [identifierCopy copy];
    turnIdentifier = v10->_turnIdentifier;
    v10->_turnIdentifier = v13;

    v10->_isMedocEnabled = enabledCopy;
    v15 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v10->_requestMHUUID;
      v17 = v10->_turnIdentifier;
      *buf = 136315906;
      v21 = "[CSEndpointDelayReporter initWithRequestMHUUID:turnIdentifier:withMedocEnabled:]";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 1024;
      v27 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s _requestMHUUID: %@, _turnIdentifier: %@ _medocEnabled: %d", buf, 0x26u);
    }

    [(CSEndpointDelayReporter *)v10 reset];
  }

  return v10;
}

@end