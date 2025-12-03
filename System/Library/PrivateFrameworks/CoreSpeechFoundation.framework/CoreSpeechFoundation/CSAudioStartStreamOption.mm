@interface CSAudioStartStreamOption
+ (id)noAlertOption;
+ (int64_t)avvcAlertOverrideType:(int64_t)type;
- (CSAudioStartStreamOption)initWithXPCObject:(id)object;
- (NSString)localizedDescription;
- (OS_xpc_object)xpcObject;
- (id)avvcAlertBehavior;
- (id)avvcStartRecordSettingsWithAudioStreamHandleId:(unint64_t)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initTandemWithOption:(id)option;
- (id)initTandemWithTandemAttachConfig:(id)config primaryStreamOption:(id)option;
- (int64_t)_alertBehaviorTypeFromAVVCOverrideType:(int64_t)type;
- (void)adjustStartRecordingHostTime:(unint64_t)time;
- (void)setAVVCAlertBehavior:(id)behavior;
@end

@implementation CSAudioStartStreamOption

- (NSString)localizedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (self->_requestHistoricalAudioDataWithHostTime)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"[requestHistoricalAudioDataWithHostTime = %@]", v5];
  if (self->_requestHistoricalAudioDataSampleCount)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"[requestHistoricalAudioDataSampleCount = %@]", v6];
  if (self->_useOpportunisticZLL)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 appendFormat:@"[useOpportunisticZLL = %@]", v7];
  [v4 appendFormat:@"[startRecordingHostTime = %llu]", self->_startRecordingHostTime];
  [v4 appendFormat:@"[startRecordingSampleCount = %llu]", self->_startRecordingSampleCount];
  [v4 appendFormat:@"[alertBehavior = %ld %ld %ld]", self->_startAlertBehavior, self->_stopAlertBehavior, self->_errorAlertBehavior];
  if (self->_skipAlertBehavior)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v4 appendFormat:@"[skipAlertBehavior = %@]", v8];
  if (self->_requireSingleChannelLookup)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@"[requireSingleChannelLookup = %@]", v9];
  [v4 appendFormat:@"[selectedChannel = %u]", self->_selectedChannel];
  [v4 appendFormat:@"[estimatedStartHostTime = %llu", self->_estimatedStartHostTime];
  [v4 appendFormat:@"[disableEndpointer = %d]", self->_disableEndpointer];
  [v4 appendFormat:@"[disableLocalSpeechRecognizer = %d]", self->_disableLocalSpeechRecognizer];
  [v4 appendFormat:@"[disablePrewarmLocalSpeechRecognizer = %d]", self->_disablePrewarmLocalAsrAtStartRecording];
  [v4 appendFormat:@"[disableBoostForDoAP = %d]", self->_disableBoostForDoAP];
  [v4 appendFormat:@"[allowRecordWhileBeep = %d]", self->_allowRecordWhileBeep];
  if (self->_disableRCSelection)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v4 appendFormat:@"[disableRCSelection = %@]", v10];
  if (self->_potentiallyNeedsCarPlayLatencyCorrection)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v4 appendFormat:@"[potentiallyNeedsCarPlayLatencyCorrection = %@]", v11];
  if (self->_enforceAutomaticEndpointing)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v4 appendFormat:@"[enforceAutomaticEndpointing = %@]", v12];

  return v4;
}

+ (id)noAlertOption
{
  v2 = objc_alloc_init(CSAudioStartStreamOption);
  [(CSAudioStartStreamOption *)v2 setSkipAlertBehavior:1];

  return v2;
}

- (id)avvcAlertBehavior
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [CSAudioStartStreamOption avvcAlertOverrideType:[(CSAudioStartStreamOption *)self startAlertBehavior]];
  v5 = [CSAudioStartStreamOption avvcAlertOverrideType:[(CSAudioStartStreamOption *)self stopAlertBehavior]];
  v6 = [CSAudioStartStreamOption avvcAlertOverrideType:[(CSAudioStartStreamOption *)self errorAlertBehavior]];
  if ([(CSAudioStartStreamOption *)self startAlertBehavior]!= -1)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    [dictionary setObject:v7 forKey:&unk_1F5916898];
  }

  if ([(CSAudioStartStreamOption *)self stopAlertBehavior]!= -1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [dictionary setObject:v8 forKey:&unk_1F59168B0];
  }

  if ([(CSAudioStartStreamOption *)self errorAlertBehavior]!= -1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    [dictionary setObject:v9 forKey:&unk_1F59168C8];
  }

  return dictionary;
}

- (void)adjustStartRecordingHostTime:(unint64_t)time
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6958498] hostTimeForSeconds:10.0];
  if (v5 >= time)
  {
    timeCopy = time;
  }

  else
  {
    timeCopy = v5;
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[CSAudioStartStreamOption(AVVC) adjustStartRecordingHostTime:]";
      v16 = 2050;
      timeCopy2 = time;
      v18 = 2050;
      v19 = timeCopy;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s received hostTimeAdjustment of %{public}llu, instead using max of %{public}llu.", &v14, 0x20u);
    }

    v8 = +[CSDiagnosticReporter sharedInstance];
    [v8 submitAudioIssueReport:@"audioStartStreamOptionStartHostTimeAdjustmentExceededMax"];
  }

  startRecordingHostTime = [(CSAudioStartStreamOption *)self startRecordingHostTime];
  if (!startRecordingHostTime)
  {
    startRecordingHostTime = mach_absolute_time();
  }

  [(CSAudioStartStreamOption *)self setStartRecordingHostTime:startRecordingHostTime + timeCopy];
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    startRecordingHostTime2 = [(CSAudioStartStreamOption *)self startRecordingHostTime];
    v14 = 136315650;
    v15 = "[CSAudioStartStreamOption(AVVC) adjustStartRecordingHostTime:]";
    v16 = 2050;
    timeCopy2 = startRecordingHostTime;
    v18 = 2050;
    v19 = startRecordingHostTime2;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Start Recording Host Time: adjustment %{public}llu -> %{public}llu", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (int64_t)_alertBehaviorTypeFromAVVCOverrideType:(int64_t)type
{
  if (type >= 5)
  {
    return -1;
  }

  else
  {
    return type;
  }
}

- (void)setAVVCAlertBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v14 = behaviorCopy;
  if (behaviorCopy)
  {
    v5 = [behaviorCopy objectForKeyedSubscript:&unk_1F5916898];

    if (v5)
    {
      v6 = [v14 objectForKeyedSubscript:&unk_1F5916898];
      v7 = -[CSAudioStartStreamOption _alertBehaviorTypeFromAVVCOverrideType:](self, "_alertBehaviorTypeFromAVVCOverrideType:", [v6 unsignedIntegerValue]);
    }

    else
    {
      v7 = -1;
    }

    [(CSAudioStartStreamOption *)self setStartAlertBehavior:v7];
    v9 = [v14 objectForKeyedSubscript:&unk_1F59168B0];

    if (v9)
    {
      v10 = [v14 objectForKeyedSubscript:&unk_1F59168B0];
      v11 = -[CSAudioStartStreamOption _alertBehaviorTypeFromAVVCOverrideType:](self, "_alertBehaviorTypeFromAVVCOverrideType:", [v10 unsignedIntegerValue]);
    }

    else
    {
      v11 = -1;
    }

    [(CSAudioStartStreamOption *)self setStopAlertBehavior:v11];
    v12 = [v14 objectForKeyedSubscript:&unk_1F59168C8];

    if (v12)
    {
      v13 = [v14 objectForKeyedSubscript:&unk_1F59168C8];
      v8 = -[CSAudioStartStreamOption _alertBehaviorTypeFromAVVCOverrideType:](self, "_alertBehaviorTypeFromAVVCOverrideType:", [v13 unsignedIntegerValue]);
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
    [(CSAudioStartStreamOption *)self setStartAlertBehavior:-1];
    [(CSAudioStartStreamOption *)self setStopAlertBehavior:-1];
  }

  [(CSAudioStartStreamOption *)self setErrorAlertBehavior:v8];
}

- (id)avvcStartRecordSettingsWithAudioStreamHandleId:(unint64_t)id
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E6958570]) initWithStreamID:id atStartHostTime:{-[CSAudioStartStreamOption startRecordingHostTime](self, "startRecordingHostTime")}];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v17 = 136315394;
    v18 = "[CSAudioStartStreamOption(AVVC) avvcStartRecordSettingsWithAudioStreamHandleId:]";
    v19 = 2050;
    startRecordingHostTime = [(CSAudioStartStreamOption *)self startRecordingHostTime];
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Start Recording Host Time = %{public}llu", &v17, 0x16u);
  }

  avvcAlertBehavior = [(CSAudioStartStreamOption *)self avvcAlertBehavior];
  v8 = avvcAlertBehavior;
  if (avvcAlertBehavior)
  {
    v9 = [avvcAlertBehavior objectForKeyedSubscript:&unk_1F5916898];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:&unk_1F5916898];
      [v4 setStartAlert:{objc_msgSend(v10, "unsignedIntegerValue")}];
    }

    v11 = [v8 objectForKeyedSubscript:&unk_1F59168B0];

    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:&unk_1F59168B0];
      [v4 setStopAlert:{objc_msgSend(v12, "unsignedIntegerValue")}];
    }

    v13 = [v8 objectForKeyedSubscript:&unk_1F59168C8];

    if (v13)
    {
      v14 = [v8 objectForKeyedSubscript:&unk_1F59168C8];
      [v4 setStopOnErrorAlert:{objc_msgSend(v14, "unsignedIntegerValue")}];
    }
  }

  [v4 setSkipAlert:{-[CSAudioStartStreamOption skipAlertBehavior](self, "skipAlertBehavior")}];

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int64_t)avvcAlertOverrideType:(int64_t)type
{
  if ((type - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSAudioStartStreamOption);
  [(CSAudioStartStreamOption *)v4 setRequestHistoricalAudioDataWithHostTime:self->_requestHistoricalAudioDataWithHostTime];
  [(CSAudioStartStreamOption *)v4 setRequestHistoricalAudioDataSampleCount:self->_requestHistoricalAudioDataSampleCount];
  [(CSAudioStartStreamOption *)v4 setStartRecordingHostTime:self->_startRecordingHostTime];
  [(CSAudioStartStreamOption *)v4 setStartRecordingSampleCount:self->_startRecordingSampleCount];
  [(CSAudioStartStreamOption *)v4 setUseOpportunisticZLL:self->_useOpportunisticZLL];
  [(CSAudioStartStreamOption *)v4 setStartAlertBehavior:self->_startAlertBehavior];
  [(CSAudioStartStreamOption *)v4 setStopAlertBehavior:self->_stopAlertBehavior];
  [(CSAudioStartStreamOption *)v4 setErrorAlertBehavior:self->_errorAlertBehavior];
  [(CSAudioStartStreamOption *)v4 setSkipAlertBehavior:self->_skipAlertBehavior];
  [(CSAudioStartStreamOption *)v4 setRequireSingleChannelLookup:self->_requireSingleChannelLookup];
  [(CSAudioStartStreamOption *)v4 setSelectedChannel:self->_selectedChannel];
  [(CSAudioStartStreamOption *)v4 setDisableEndpointer:self->_disableEndpointer];
  [(CSAudioStartStreamOption *)v4 setDisableLocalSpeechRecognizer:self->_disableLocalSpeechRecognizer];
  [(CSAudioStartStreamOption *)v4 setDisablePrewarmLocalAsrAtStartRecording:self->_disablePrewarmLocalAsrAtStartRecording];
  [(CSAudioStartStreamOption *)v4 setRequestMHUUID:self->_requestMHUUID];
  [(CSAudioStartStreamOption *)v4 setSiriSessionUUID:self->_siriSessionUUID];
  [(CSAudioStartStreamOption *)v4 setDisableBoostForDoAP:self->_disableBoostForDoAP];
  [(CSAudioStartStreamOption *)v4 setAllowRecordWhileBeep:self->_allowRecordWhileBeep];
  [(CSAudioStartStreamOption *)v4 setDisableRCSelection:self->_disableRCSelection];
  [(CSAudioStartStreamOption *)v4 setPotentiallyNeedsCarPlayLatencyCorrection:self->_potentiallyNeedsCarPlayLatencyCorrection];
  [(CSAudioStartStreamOption *)v4 setEnforceAutomaticEndpointing:self->_enforceAutomaticEndpointing];
  return v4;
}

- (OS_xpc_object)xpcObject
{
  keys[19] = *MEMORY[0x1E69E9840];
  keys[0] = "requestHistoricalAudioDataWithHostTime";
  keys[1] = "requestHistoricalAudioDataSampleCount";
  keys[2] = "startRecordingHostTime";
  keys[3] = "startRecordingSampleCount";
  keys[4] = "useOpportunisticZLL";
  keys[5] = "startAlertBehavior";
  keys[6] = "stopAlertBehavior";
  keys[7] = "errorAlertBehavior";
  keys[8] = "skipAlertBehavior";
  keys[9] = "requireSingleChannelLookup";
  keys[10] = "selectedChannel";
  keys[11] = "estimatedStartHostTime";
  keys[12] = "disableEndpointer";
  keys[13] = "disableLocalSpeechRecognizer";
  keys[14] = "disablePrewarmLocalSpeechRecognizer";
  keys[15] = "disableBoostForDoAP";
  keys[16] = "allowRecordWhileBeep";
  keys[17] = "disableRCSelection";
  keys[18] = "potentiallyNeedsCarPlayLatencyCorrection";
  v9 = xpc_BOOL_create(self->_requestHistoricalAudioDataWithHostTime);
  v10 = xpc_BOOL_create(self->_requestHistoricalAudioDataSampleCount);
  v11 = xpc_uint64_create(self->_startRecordingHostTime);
  v12 = xpc_uint64_create(self->_startRecordingSampleCount);
  v13 = xpc_BOOL_create(self->_useOpportunisticZLL);
  v14 = xpc_int64_create(self->_startAlertBehavior);
  v15 = xpc_int64_create(self->_stopAlertBehavior);
  v16 = xpc_int64_create(self->_errorAlertBehavior);
  v17 = xpc_BOOL_create(self->_skipAlertBehavior);
  v18 = xpc_BOOL_create(self->_requireSingleChannelLookup);
  v19 = xpc_uint64_create(self->_selectedChannel);
  v20 = xpc_uint64_create(self->_estimatedStartHostTime);
  v21 = xpc_BOOL_create(self->_disableEndpointer);
  v22 = xpc_BOOL_create(self->_disableLocalSpeechRecognizer);
  v23 = xpc_BOOL_create(self->_disablePrewarmLocalAsrAtStartRecording);
  v24 = xpc_BOOL_create(self->_disableBoostForDoAP);
  v25 = xpc_BOOL_create(self->_allowRecordWhileBeep);
  v26 = xpc_BOOL_create(self->_disableRCSelection);
  v27 = xpc_BOOL_create(self->_potentiallyNeedsCarPlayLatencyCorrection);
  v28 = xpc_BOOL_create(self->_enforceAutomaticEndpointing);
  v3 = xpc_dictionary_create(keys, &v9, 0x13uLL);
  requestMHUUID = self->_requestMHUUID;
  if (requestMHUUID)
  {
    xpc_dictionary_set_string(v3, "requestMHUUID", [(NSString *)requestMHUUID UTF8String:v9]);
  }

  siriSessionUUID = self->_siriSessionUUID;
  if (siriSessionUUID)
  {
    xpc_dictionary_set_string(v3, "siriSessionUUID", [(NSString *)siriSessionUUID UTF8String]);
  }

  for (i = 152; i != -8; i -= 8)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSAudioStartStreamOption)initWithXPCObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = CSAudioStartStreamOption;
  v5 = [(CSAudioStartStreamOption *)&v13 init];
  if (v5)
  {
    v5->_requestHistoricalAudioDataWithHostTime = xpc_dictionary_get_BOOL(objectCopy, "requestHistoricalAudioDataWithHostTime");
    v5->_requestHistoricalAudioDataSampleCount = xpc_dictionary_get_BOOL(objectCopy, "requestHistoricalAudioDataSampleCount");
    v5->_startRecordingHostTime = xpc_dictionary_get_uint64(objectCopy, "startRecordingHostTime");
    v5->_startRecordingSampleCount = xpc_dictionary_get_uint64(objectCopy, "startRecordingSampleCount");
    v5->_useOpportunisticZLL = xpc_dictionary_get_BOOL(objectCopy, "useOpportunisticZLL");
    v5->_startAlertBehavior = xpc_dictionary_get_int64(objectCopy, "startAlertBehavior");
    v5->_stopAlertBehavior = xpc_dictionary_get_int64(objectCopy, "stopAlertBehavior");
    v5->_errorAlertBehavior = xpc_dictionary_get_int64(objectCopy, "errorAlertBehavior");
    v5->_skipAlertBehavior = xpc_dictionary_get_BOOL(objectCopy, "skipAlertBehavior");
    v5->_requireSingleChannelLookup = xpc_dictionary_get_BOOL(objectCopy, "requireSingleChannelLookup");
    v5->_selectedChannel = xpc_dictionary_get_uint64(objectCopy, "selectedChannel");
    v5->_estimatedStartHostTime = xpc_dictionary_get_uint64(objectCopy, "estimatedStartHostTime");
    v5->_disableEndpointer = xpc_dictionary_get_BOOL(objectCopy, "disableEndpointer");
    v5->_disableLocalSpeechRecognizer = xpc_dictionary_get_BOOL(objectCopy, "disableLocalSpeechRecognizer");
    v5->_disablePrewarmLocalAsrAtStartRecording = xpc_dictionary_get_BOOL(objectCopy, "disablePrewarmLocalSpeechRecognizer");
    v5->_disableBoostForDoAP = xpc_dictionary_get_BOOL(objectCopy, "disableBoostForDoAP");
    v5->_allowRecordWhileBeep = xpc_dictionary_get_BOOL(objectCopy, "allowRecordWhileBeep");
    v5->_disableRCSelection = xpc_dictionary_get_BOOL(objectCopy, "disableRCSelection");
    v5->_potentiallyNeedsCarPlayLatencyCorrection = xpc_dictionary_get_BOOL(objectCopy, "potentiallyNeedsCarPlayLatencyCorrection");
    v5->_enforceAutomaticEndpointing = xpc_dictionary_get_BOOL(objectCopy, "enforceAutomaticEndpointing");
    string = xpc_dictionary_get_string(objectCopy, "requestMHUUID");
    if (string)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      requestMHUUID = v5->_requestMHUUID;
      v5->_requestMHUUID = v7;
    }

    v9 = xpc_dictionary_get_string(objectCopy, "siriSessionUUID");
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      siriSessionUUID = v5->_siriSessionUUID;
      v5->_siriSessionUUID = v10;
    }
  }

  return v5;
}

- (id)initTandemWithTandemAttachConfig:(id)config primaryStreamOption:(id)option
{
  optionCopy = option;
  configCopy = config;
  v8 = [[CSAudioStartStreamOption alloc] initTandemWithOption:optionCopy];

  allowMultiChannel = [configCopy allowMultiChannel];
  if (allowMultiChannel)
  {
    [v8 setRequireSingleChannelLookup:0];
  }

  return v8;
}

- (id)initTandemWithOption:(id)option
{
  optionCopy = option;
  v5 = +[CSAudioStartStreamOption noAlertOption];
  [v5 setRequestHistoricalAudioDataSampleCount:{objc_msgSend(optionCopy, "requestHistoricalAudioDataSampleCount")}];
  [v5 setRequestHistoricalAudioDataWithHostTime:{objc_msgSend(optionCopy, "requestHistoricalAudioDataWithHostTime")}];
  [v5 setStartRecordingHostTime:{objc_msgSend(optionCopy, "startRecordingHostTime")}];
  [v5 setStartRecordingSampleCount:{objc_msgSend(optionCopy, "startRecordingSampleCount")}];
  [v5 setUseOpportunisticZLL:{objc_msgSend(optionCopy, "useOpportunisticZLL")}];
  [v5 setRequireSingleChannelLookup:{objc_msgSend(optionCopy, "requireSingleChannelLookup")}];
  [v5 setSelectedChannel:{objc_msgSend(optionCopy, "selectedChannel")}];
  disableBoostForDoAP = [optionCopy disableBoostForDoAP];

  [v5 setDisableBoostForDoAP:disableBoostForDoAP];
  return v5;
}

@end