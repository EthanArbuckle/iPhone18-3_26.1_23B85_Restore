@interface CSFVoiceTriggerEventInfoSelfLoggerEmbedded
+ (id)_convertToFirstPassChannelSelectionScores:(id)scores;
+ (id)_convertToSELFVTEI:(id)i;
+ (id)_getStartedMessageWithFirstPassInfo:(id)info;
+ (id)sanitizeEventInfoForLogging:(id)logging;
+ (int)_convertJarvisTriggerModeString:(id)string;
+ (int)_convertPowerState:(unsigned int)state;
+ (int)_convertToFirstPassSource:(id)source;
+ (int)_convertToMatchResult:(unsigned int)result;
+ (int)_convertToSELFRejectedReason:(unint64_t)reason;
+ (int)_convertToTwoShotPromptType:(int64_t)type;
+ (void)_emitTwoShotClientEventWithTwoShotTransitionContext:(id)context withMHUUID:(id)d;
+ (void)_emitVTClientEventWithVTContext:(id)context withMHUUID:(id)d;
- (CSFVoiceTriggerEventInfoSelfLoggerEmbedded)init;
- (void)logCancelledEventWithMHUUID:(id)d;
- (void)logRejectEventWithVTEI:(id)i withMHUUID:(id)d withSecondPassResult:(unint64_t)result;
- (void)logSiriLaunchCompletedWithVoiceTriggerEventInfo:(id)info;
- (void)logSiriLaunchStartedWithVoiceTriggerEventInfo:(id)info;
- (void)logStartEventWithFirstPassStartedInfo:(id)info withMHUUID:(id)d;
- (void)logTriggerEventWithVTEI:(id)i withMHUUID:(id)d;
- (void)logTwoShotDetectedWithMHUUID:(id)d;
- (void)logTwoShotStartEventWithPromptType:(unsigned int)type withMHUUID:(id)d;
@end

@implementation CSFVoiceTriggerEventInfoSelfLoggerEmbedded

- (void)logSiriLaunchCompletedWithVoiceTriggerEventInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:@"selfLoggingMHUUID"];
  if (v3)
  {
    v11 = v3;
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
    v5 = objc_alloc_init(MEMORY[0x1E69CEF00]);
    v6 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v4];
    [v5 setMhId:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69CEF20]);
    [v7 setExists:1];
    v8 = objc_alloc_init(MEMORY[0x1E69CEF18]);
    [v8 setEnded:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
    [v9 setEventMetadata:v5];
    [v9 setSiriLaunchRequestContext:v8];
    mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
    [mEMORY[0x1E69CE1F0] emitMessage:v9];

    v3 = v11;
  }
}

- (void)logSiriLaunchStartedWithVoiceTriggerEventInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:@"selfLoggingMHUUID"];
  if (v3)
  {
    v11 = v3;
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
    v5 = objc_alloc_init(MEMORY[0x1E69CEF00]);
    v6 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v4];
    [v5 setMhId:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69CEF28]);
    [v7 setExists:1];
    v8 = objc_alloc_init(MEMORY[0x1E69CEF18]);
    [v8 setStartedOrChanged:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
    [v9 setEventMetadata:v5];
    [v9 setSiriLaunchRequestContext:v8];
    mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
    [mEMORY[0x1E69CE1F0] emitMessage:v9];

    v3 = v11;
  }
}

- (void)logTriggerEventWithVTEI:(id)i withMHUUID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  iCopy = i;
  dCopy = d;
  if (dCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEF68]);
    v8 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFVTEI:iCopy];
    [v7 setVoiceTriggerEventInfo:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v9 setEnded:v7];
    [v9 setHasEnded:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v9 withMHUUID:dCopy];
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSFVoiceTriggerEventInfoSelfLoggerEmbedded logTriggerEventWithVTEI:withMHUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Skip SELF emitting since MHId is nil", &v12, 0xCu);
    }

    v7 = +[CSDiagnosticReporter sharedInstance];
    [v7 submitSELFIssueReport:@"mhVoiceTriggerContextMhIdMissing"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)logCancelledEventWithMHUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CEF50]);
    v5 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v5 setCancelled:v4];
    [v5 setHasCancelled:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v5 withMHUUID:dCopy];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSFVoiceTriggerEventInfoSelfLoggerEmbedded logCancelledEventWithMHUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Skip SELF emitting since MHId is nil", &v8, 0xCu);
    }

    v4 = +[CSDiagnosticReporter sharedInstance];
    [v4 submitSELFIssueReport:@"mhVoiceTriggerContextMhIdMissing"];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logRejectEventWithVTEI:(id)i withMHUUID:(id)d withSecondPassResult:(unint64_t)result
{
  v17 = *MEMORY[0x1E69E9840];
  iCopy = i;
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69CEF58]);
    v10 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded sanitizeEventInfoForLogging:iCopy];
    v11 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFVTEI:v10];
    [v9 setVoiceTriggerEventInfo:v11];
    [v9 setReason:{+[CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFRejectedReason:](CSFVoiceTriggerEventInfoSelfLoggerEmbedded, "_convertToSELFRejectedReason:", result)}];
    v12 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v12 setFailed:v9];
    [v12 setHasFailed:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v12 withMHUUID:dCopy];
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSFVoiceTriggerEventInfoSelfLoggerEmbedded logRejectEventWithVTEI:withMHUUID:withSecondPassResult:]";
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Skip SELF emitting since MHId is nil", &v15, 0xCu);
    }

    v9 = +[CSDiagnosticReporter sharedInstance];
    [v9 submitSELFIssueReport:@"mhVoiceTriggerContextMhIdMissing"];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)logStartEventWithFirstPassStartedInfo:(id)info withMHUUID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    v7 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded sanitizeEventInfoForLogging:infoCopy];
    v8 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _getStartedMessageWithFirstPassInfo:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v9 setStartedOrChanged:v8];
    [v9 setHasStartedOrChanged:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v9 withMHUUID:dCopy];
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSFVoiceTriggerEventInfoSelfLoggerEmbedded logStartEventWithFirstPassStartedInfo:withMHUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Skip SELF emitting since MHId is nil", &v12, 0xCu);
    }

    v7 = +[CSDiagnosticReporter sharedInstance];
    [v7 submitSELFIssueReport:@"mhVoiceTriggerContextMhIdMissing"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)logTwoShotStartEventWithPromptType:(unsigned int)type withMHUUID:(id)d
{
  v5 = MEMORY[0x1E69CEEF0];
  dCopy = d;
  v8 = objc_alloc_init(v5);
  [v8 setPromptType:{+[CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToTwoShotPromptType:](CSFVoiceTriggerEventInfoSelfLoggerEmbedded, "_convertToTwoShotPromptType:", type)}];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEE0]);
  [v7 setStartedOrChanged:v8];
  [v7 setHasStartedOrChanged:1];
  [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitTwoShotClientEventWithTwoShotTransitionContext:v7 withMHUUID:dCopy];
}

- (void)logTwoShotDetectedWithMHUUID:(id)d
{
  v3 = MEMORY[0x1E69CEF70];
  dCopy = d;
  v9 = objc_alloc_init(v3);
  [v9 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v6 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v7 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v6 setMhId:v7];
  [v5 setEventMetadata:v6];
  [v5 setVoiceTriggerTwoShotDetected:v9];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v5];
}

- (CSFVoiceTriggerEventInfoSelfLoggerEmbedded)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFVoiceTriggerEventInfoSelfLoggerEmbedded;
    self = [(CSFVoiceTriggerEventInfoSelfLoggerEmbedded *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (void)_emitVTClientEventWithVTContext:(id)context withMHUUID:(id)d
{
  v5 = MEMORY[0x1E69CEEF8];
  dCopy = d;
  contextCopy = context;
  v11 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v8 setMhId:v9];
  [v11 setEventMetadata:v8];
  [v11 setVoiceTriggerContext:contextCopy];

  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v11];
}

+ (void)_emitTwoShotClientEventWithTwoShotTransitionContext:(id)context withMHUUID:(id)d
{
  v5 = MEMORY[0x1E69CEEF8];
  dCopy = d;
  contextCopy = context;
  v11 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v8 setMhId:v9];
  [v11 setEventMetadata:v8];
  [v11 setAssistantDaemonAudioTwoShotTransitionContext:contextCopy];

  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v11];
}

+ (id)_getStartedMessageWithFirstPassInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF60]);
  if (infoCopy)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"firstPassDetectedChannel"];
    [v5 setFirstPassDetectedChannel:{objc_msgSend(v6, "intValue")}];

    v7 = [infoCopy objectForKeyedSubscript:@"firstPassScore"];
    [v7 floatValue];
    [v5 setFirstPassScore:?];

    v8 = [infoCopy objectForKeyedSubscript:@"firstPassOnsetChannel"];
    [v5 setFirstPassOnsetChannel:{objc_msgSend(v8, "intValue")}];

    v9 = [infoCopy objectForKeyedSubscript:@"firstPassOnsetScore"];
    [v9 floatValue];
    [v5 setFirstPassOnsetScore:?];

    v10 = [infoCopy objectForKeyedSubscript:@"firstPassChannelSelectionScores"];
    v11 = [self _convertToFirstPassChannelSelectionScores:v10];

    [v5 setChannelSelectionScores:v11];
    v12 = [infoCopy objectForKeyedSubscript:@"firstPassChannelSelectionDelaySeconds"];
    [v12 floatValue];
    [v5 setFirstPassChannelSelectionDelayNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v13 = [infoCopy objectForKeyedSubscript:@"firstPassMasterChannelScoreBoost"];
    [v13 floatValue];
    [v5 setFirstPassPrimaryChannelScoreBoost:?];

    v14 = [infoCopy objectForKeyedSubscript:@"firstPassStartSampleCount"];
    [v5 setFirstPassStartSampleCount:{objc_msgSend(v14, "intValue")}];

    v15 = [infoCopy objectForKeyedSubscript:@"firstPassEndSampleCount"];
    [v5 setFirstPassEndSampleCount:{objc_msgSend(v15, "intValue")}];

    v16 = [infoCopy objectForKeyedSubscript:@"firstPassFireSampleCount"];
    [v5 setFirstPassFireSampleCount:{objc_msgSend(v16, "intValue")}];

    v17 = [infoCopy objectForKeyedSubscript:@"firstPassTriggerSource"];
    [v5 setFirstPassTriggerSource:{objc_msgSend(self, "_convertToFirstPassSource:", v17)}];

    v18 = [infoCopy objectForKeyedSubscript:@"earlyDetectFiredTime"];
    [v18 floatValue];
    [v5 setEarlyDetectFiredTime:?];

    v19 = [infoCopy objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
    intValue = [v19 intValue];
    v21 = [infoCopy objectForKeyedSubscript:@"earlyDetectFiredTime"];
    [v21 floatValue];
    [v5 setEarlyDetectFiredTimeOffsetInNs:{intValue - +[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v22 = [infoCopy objectForKey:@"firstPassInfoGeneratedTime"];

    if (v22)
    {
      v23 = [infoCopy objectForKeyedSubscript:@"firstPassInfoGeneratedTime"];
      [v5 setFirstPassInfoDispatchTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", objc_msgSend(v23, "unsignedLongLongValue"))}];

      v24 = [infoCopy objectForKeyedSubscript:@"firstPassInfoProcessedTime"];
      [v5 setFirstPassInfoReceptionTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", objc_msgSend(v24, "unsignedLongLongValue"))}];
    }
  }

  return v5;
}

+ (id)_convertToFirstPassChannelSelectionScores:(id)scores
{
  v20 = *MEMORY[0x1E69E9840];
  scoresCopy = scores;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = scoresCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x1E69CED58]);
        [v11 setChannelString:{v10, v15}];
        v12 = [v5 objectForKey:v10];
        [v12 floatValue];
        [v11 setFirstPassScore:?];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int)_convertToTwoShotPromptType:(int64_t)type
{
  if (type < 3)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)_convertToFirstPassSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"ApplicationProcessor"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"ApplicationProcessorWithRingtone"] & 1) != 0 || (objc_msgSend(sourceCopy, "isEqualToString:", @"ApplicationProcessorWithConnectedCall"))
  {
    v4 = 9;
  }

  else if ([sourceCopy isEqualToString:@"BuiltInAlwaysOnProcessor"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"Hearst"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"Jarvis"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"Remora"])
  {
    v4 = 8;
  }

  else if ([sourceCopy isEqualToString:@"HearstAP"])
  {
    v4 = 7;
  }

  else if ([sourceCopy isEqualToString:@"Watch"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"Darwin"])
  {
    v4 = 10;
  }

  else
  {
    v4 = [sourceCopy isEqualToString:@"Default"];
  }

  return v4;
}

+ (int)_convertToSELFRejectedReason:(unint64_t)reason
{
  if (reason > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_1DDB1FAE8[reason];
  }
}

+ (int)_convertToMatchResult:(unsigned int)result
{
  if (result < 4)
  {
    return result + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)_convertJarvisTriggerModeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"VoiceActivityDetection"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"VoiceTriggerDetection"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)_convertPowerState:(unsigned int)state
{
  if (state < 4)
  {
    return state + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)_convertToSELFVTEI:(id)i
{
  iCopy = i;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF40]);
  v6 = [iCopy objectForKeyedSubscript:@"secondPassAnalyerStartSampleCount"];
  [v5 setSecondPassAnalyerStartSampleCount:{objc_msgSend(v6, "intValue")}];

  v7 = [iCopy objectForKeyedSubscript:@"secondPassAnalyerEndSampleCount"];
  [v5 setSecondPassAnalyerEndSampleCount:{objc_msgSend(v7, "intValue")}];

  v8 = [iCopy objectForKeyedSubscript:@"satScore"];
  [v8 floatValue];
  [v5 setSatScore:?];

  v9 = [iCopy objectForKeyedSubscript:@"satNumTrainingUtts"];
  [v5 setSatNumTrainingUtterances:{objc_msgSend(v9, "intValue")}];

  v10 = [iCopy objectForKeyedSubscript:@"satThreshold"];
  [v10 floatValue];
  [v5 setSatThreshold:?];

  v11 = [iCopy objectForKeyedSubscript:@"satTriggered"];
  [v5 setSatTriggered:{objc_msgSend(v11, "BOOLValue")}];

  v12 = [iCopy objectForKeyedSubscript:@"tdSpeakerRecognizerScore"];
  [v12 floatValue];
  [v5 setTdSpeakerRecognizerScore:?];

  v13 = [iCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
  [v13 floatValue];
  [v5 setTdSpeakerRecognizerCombinedScore:?];

  v14 = [iCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];
  [v14 floatValue];
  [v5 setTdSpeakerRecognizerCombinedThreshold:?];

  v15 = [iCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinationWeight"];
  [v15 floatValue];
  [v5 setTdSpeakerRecognizerCombinationWeight:?];

  v16 = [iCopy objectForKeyedSubscript:@"biometricClue"];
  [v5 setBiometricClue:{objc_msgSend(self, "_convertToMatchResult:", objc_msgSend(v16, "intValue"))}];

  v17 = [iCopy objectForKeyedSubscript:@"satBeingTrained"];
  [v5 setSatBeingTrained:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [iCopy objectForKeyedSubscript:@"lastConsecutivePHSRejects"];
  [v5 setLastConsecutivePHSRejects:{objc_msgSend(v18, "intValue")}];

  v19 = [iCopy objectForKeyedSubscript:@"deltaTimeFromlastPHSReject"];
  [v19 floatValue];
  [v5 setDeltaTimeInNsFromlastPHSReject:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v20 = [iCopy objectForKeyedSubscript:@"triggerExplicitSatScore"];
  [v20 floatValue];
  [v5 setTriggerExplicitSatScore:?];

  v21 = [iCopy objectForKeyedSubscript:@"triggerExplicitTDSRSatScore"];
  [v21 floatValue];
  [v5 setTriggerExplicitTDSRSatScore:?];

  v22 = [iCopy objectForKeyedSubscript:@"shadowMicScore"];
  [v22 floatValue];
  [v5 setShadowMicScore:?];

  v23 = [iCopy objectForKeyedSubscript:@"shadowMicScoreThresholdForVAD"];
  [v23 floatValue];
  [v5 setShadowMicScoreThresholdForVAD:?];

  v24 = [iCopy objectForKeyedSubscript:@"remoteMicVADScore"];
  [v24 floatValue];
  [v5 setRemoteMicVADScore:?];

  v25 = [iCopy objectForKeyedSubscript:@"remoteMicVADThreshold"];
  [v25 floatValue];
  [v5 setRemoteMicVADThreshold:?];

  v26 = [iCopy objectForKeyedSubscript:@"remoteMicVADMyriadThreshold"];
  [v26 floatValue];
  [v5 setRemoteMicVADMyriadThreshold:?];

  v27 = [iCopy objectForKeyedSubscript:@"firstPassJarvisTriggerMode"];
  [v5 setEnhancedCarplayTriggerMode:{objc_msgSend(self, "_convertJarvisTriggerModeString:", v27)}];

  v28 = [iCopy objectForKeyedSubscript:@"triggerStartSampleCount"];
  [v5 setTriggerStartSampleCount:{objc_msgSend(v28, "intValue")}];

  v29 = [iCopy objectForKeyedSubscript:@"clientStartSampleCount"];
  [v5 setClientStartSampleCount:{objc_msgSend(v29, "intValue")}];

  v30 = [iCopy objectForKeyedSubscript:@"triggerEndSampleCount"];
  [v5 setTriggerEndSampleCount:{objc_msgSend(v30, "intValue")}];

  v31 = [iCopy objectForKeyedSubscript:@"triggerFireSampleCount"];
  [v5 setTriggerFireSampleCount:{objc_msgSend(v31, "intValue")}];

  v32 = [iCopy objectForKeyedSubscript:@"triggerStartSeconds"];
  [v32 floatValue];
  [v5 setTriggerStartNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v33 = [iCopy objectForKeyedSubscript:@"triggerEndSeconds"];
  [v33 floatValue];
  [v5 setTriggerEndNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v34 = [iCopy objectForKeyedSubscript:@"triggerFireSeconds"];
  [v34 floatValue];
  [v5 setTriggerFireNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v35 = [iCopy objectForKeyedSubscript:@"extraSamplesAtStart"];
  [v5 setExtraSamplesAtStart:{objc_msgSend(v35, "intValue")}];

  v36 = [iCopy objectForKeyedSubscript:@"analyzerPrependingSamples"];
  [v5 setAnalyzerPrependingSamples:{objc_msgSend(v36, "intValue")}];

  v37 = [iCopy objectForKeyedSubscript:@"analyzerTrailingSamples"];
  [v5 setAnalyzerTrailingSamples:{objc_msgSend(v37, "intValue")}];

  v38 = [iCopy objectForKeyedSubscript:@"isTriggerEvent"];
  [v5 setIsTriggerEvent:{objc_msgSend(v38, "BOOLValue")}];

  v39 = [iCopy objectForKeyedSubscript:@"totalSampleCount"];
  [v5 setTotalSampleCount:{objc_msgSend(v39, "intValue")}];

  v40 = [iCopy objectForKeyedSubscript:@"triggerScore"];
  [v40 floatValue];
  [v5 setTriggerScore:?];

  v41 = [iCopy objectForKeyedSubscript:@"isMaximized"];
  [v5 setIsMaximized:{objc_msgSend(v41, "BOOLValue")}];

  v42 = [iCopy objectForKeyedSubscript:@"effectiveThreshold"];
  [v42 floatValue];
  [v5 setEffectiveThreshold:?];

  v43 = [iCopy objectForKeyedSubscript:@"recognizerScore"];
  [v43 floatValue];
  [v5 setRecognizerScore:?];

  v44 = [iCopy objectForKeyedSubscript:@"recognizerThresholdOffset"];
  [v44 floatValue];
  [v5 setRecognizerThresholdOffset:?];

  v45 = [iCopy objectForKeyedSubscript:@"recognizerWaitTime"];
  [v45 floatValue];
  [v5 setRecognizerWaitTimeInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v46 = [iCopy objectForKeyedSubscript:@"recognizerScaleFactor"];
  [v46 floatValue];
  [v5 setRecognizerScaleFactor:?];

  v47 = [iCopy objectForKeyedSubscript:@"threshold"];
  [v47 floatValue];
  [v5 setThreshold:?];

  v48 = [iCopy objectForKeyedSubscript:@"triggeredPhrase"];
  [v5 setTriggerPhrase:v48];

  v49 = mach_absolute_time();
  v50 = [iCopy objectForKeyedSubscript:@"triggerStartMachTime"];
  v51 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v50 unsignedLongLongValue]);

  v52 = [iCopy objectForKeyedSubscript:@"triggerEndMachTime"];
  v53 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v52 unsignedLongLongValue]);

  v54 = [iCopy objectForKeyedSubscript:@"triggerFireMachTime"];
  v55 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v54 unsignedLongLongValue]);

  v56 = [iCopy objectForKey:@"displayWakeMachTime"];

  if (v56)
  {
    selfCopy = self;
    v57 = [iCopy objectForKey:@"extraSamplesAtStart"];

    v58 = v51;
    if (v57)
    {
      v59 = [iCopy objectForKeyedSubscript:@"extraSamplesAtStart"];
      intValue = [v59 intValue];

      +[CSConfig inputRecordingSampleRate];
      v58 = v51 - [CSFTimeUtils convertSampleCountToNs:intValue sampleRate:?];
    }

    v61 = [iCopy objectForKeyedSubscript:@"displayWakeMachTime"];
    v62 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v61 unsignedLongLongValue]);

    [v5 setIsHSJSTriggerFromAlwaysOnMicBuffer:v58 > v62];
    [v5 setDisplayWakeTimeOffsetInNs:v62];
    self = selfCopy;
  }

  [v5 setTriggerStartTimeOffsetInNs:v51];
  [v5 setTriggerEndTimeOffsetInNs:v53];
  [v5 setTriggerFireTimeOffsetInNs:v55];
  v63 = [iCopy objectForKeyedSubscript:@"triggerStartTime"];
  [v63 doubleValue];
  [v5 setTriggerStartTime:?];

  v64 = [iCopy objectForKeyedSubscript:@"triggerEndTime"];
  [v64 doubleValue];
  [v5 setTriggerEndTime:?];

  v65 = [iCopy objectForKeyedSubscript:@"triggerFiredTime"];
  [v65 doubleValue];
  [v5 setTriggerFiredTime:?];

  v66 = [iCopy objectForKeyedSubscript:@"hardwareSamplerate"];
  [v5 setHardwareSamplerate:{objc_msgSend(v66, "intValue")}];

  v67 = [iCopy objectForKeyedSubscript:@"isContinuous"];
  [v5 setIsContinuous:{objc_msgSend(v67, "BOOLValue")}];

  v68 = [iCopy objectForKeyedSubscript:@"triggerDuration"];
  [v68 floatValue];
  *&v69 = [CSFTimeUtils secondsToNs:?];
  [v5 setTriggerDurationInNs:v69];

  v70 = [iCopy objectForKeyedSubscript:@"totalSamplesAtTriggerStart"];
  [v5 setTotalSamplesAtTriggerStart:{objc_msgSend(v70, "intValue")}];

  v71 = [iCopy objectForKeyedSubscript:@"totalSamplesAtTriggerEnd"];
  [v5 setTotalSamplesAtTriggerEnd:{objc_msgSend(v71, "intValue")}];

  v72 = [iCopy objectForKeyedSubscript:@"totalSamplesAtEndOfCapture"];
  [v5 setTotalSamplesAtEndOfCapture:{objc_msgSend(v72, "intValue")}];

  v73 = [iCopy objectForKeyedSubscript:@"configVersion"];
  [v5 setConfigVersion:v73];

  v74 = [iCopy objectForKeyedSubscript:@"configPath"];
  [v5 setConfigPath:v74];

  v75 = [iCopy objectForKeyedSubscript:@"isSecondChance"];
  [v5 setIsSecondChance:{objc_msgSend(v75, "BOOLValue")}];

  v76 = [iCopy objectForKeyedSubscript:@"deviceHandHeld"];
  [v5 setDeviceHandheld:{objc_msgSend(v76, "BOOLValue")}];

  v77 = [iCopy objectForKeyedSubscript:@"activeChannel"];
  [v5 setActiveChannel:{objc_msgSend(v77, "intValue")}];

  v78 = [iCopy objectForKeyedSubscript:@"twoShotAudibleFeedbackDelay"];
  [v78 floatValue];
  [v5 setTwoShotAudibleFeedbackDelayInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v79 = [iCopy objectForKeyedSubscript:@"cumulativeUptime"];
  [v79 floatValue];
  [v5 setCumulativeUptimeInSec:?];

  v80 = [iCopy objectForKeyedSubscript:@"cumulativeDowntime"];
  [v80 floatValue];
  [v5 setCumulativeDowntimeInSec:?];

  v81 = [iCopy objectForKeyedSubscript:@"hostPowerStateAtTrigger"];
  [v5 setHostPowerStateAtTrigger:{objc_msgSend(self, "_convertPowerState:", objc_msgSend(v81, "intValue"))}];

  v82 = [iCopy objectForKeyedSubscript:@"isMediaPlaying"];
  [v5 setIsMediaPlaying:{objc_msgSend(v82, "BOOLValue")}];

  v83 = [iCopy objectForKeyedSubscript:@"mediaVolume"];
  [v83 floatValue];
  [v5 setMediaVolume:?];

  v84 = objc_alloc(MEMORY[0x1E696AFB0]);
  v85 = [iCopy objectForKeyedSubscript:@"audioProviderUUID"];
  v86 = [v84 initWithUUIDString:v85];

  v87 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v86];
  [v5 setAudioProviderUUID:v87];

  v88 = [iCopy objectForKeyedSubscript:@"onBatteryPower"];
  [v5 setOnBatteryPower:{objc_msgSend(v88, "BOOLValue")}];

  v89 = [iCopy objectForKeyedSubscript:@"didWakeAP"];
  [v5 setDidWakeAP:{objc_msgSend(v89, "BOOLValue")}];

  v90 = [iCopy objectForKeyedSubscript:@"uptime"];
  [v90 floatValue];
  [v5 setUptimeInSec:?];

  v91 = [iCopy objectForKeyedSubscript:@"downtime"];
  [v91 floatValue];
  [v5 setDowntimeInSec:?];

  v92 = [iCopy objectForKeyedSubscript:@"lastConsecutiveVTRejects"];
  [v5 setLastConsecutiveVTRejects:{objc_msgSend(v92, "intValue")}];

  v93 = [iCopy objectForKeyedSubscript:@"captureFilePath"];
  [v5 setCaptureFilePath:v93];

  v94 = [iCopy objectForKeyedSubscript:@"configDataHash"];
  [v5 setConfigDataHash:v94];

  v95 = [iCopy objectForKeyedSubscript:@"siriIsActiveOrOtherAssertion"];
  [v5 setSiriIsActiveOrOtherAssertion:{objc_msgSend(v95, "BOOLValue")}];

  v96 = [iCopy objectForKeyedSubscript:@"DarwinVoiceTriggeredWhenHostInSleep"];
  [v5 setIsWakeFromSleep:{objc_msgSend(v96, "BOOLValue")}];

  v97 = [iCopy objectForKey:@"secondPassAssetQueryStartTime"];
  [v5 setSecondPassAssetQueryStartTimeInNs:{objc_msgSend(v97, "unsignedLongLongValue")}];

  v98 = [iCopy objectForKey:@"secondPassAssetQueryCompleteTime"];
  [v5 setSecondPassAssetQueryCompleteTimeInNs:{objc_msgSend(v98, "unsignedLongLongValue")}];

  v99 = [iCopy objectForKey:@"secondPassAssetLoadStartTime"];
  [v5 setSecondPassAssetLoadStartTimeInNs:{objc_msgSend(v99, "unsignedLongLongValue")}];

  v100 = [iCopy objectForKey:@"secondPassAssetLoadCompleteTime"];
  [v5 setSecondPassAssetLoadCompleteTimeInNs:{objc_msgSend(v100, "unsignedLongLongValue")}];

  v101 = [iCopy objectForKey:@"secondPassAudioStreamStartTime"];
  [v5 setSecondPassAudioStreamStartTimeInNs:{objc_msgSend(v101, "unsignedLongLongValue")}];

  v102 = [iCopy objectForKey:@"secondPassAudioStreamReadyTime"];
  [v5 setSecondPassAudioStreamReadyTimeInNs:{objc_msgSend(v102, "unsignedLongLongValue")}];

  v103 = [iCopy objectForKey:@"secondPassFirstAudioPacketReceptionTime"];
  [v5 setSecondPassFirstAudioPacketReceptionTimeInNs:{objc_msgSend(v103, "unsignedLongLongValue")}];

  v104 = [iCopy objectForKey:@"secondPassLastAudioPacketReceptionTime"];
  [v5 setSecondPassLastAudioPacketReceptionTimeInNs:{objc_msgSend(v104, "unsignedLongLongValue")}];

  v105 = [iCopy objectForKey:@"secondPassCheckerModelKeywordDetectionStartTime"];
  [v5 setSecondPassCheckerModelKeywordDetectionStartTimeInNs:{objc_msgSend(v105, "unsignedLongLongValue")}];

  v106 = [iCopy objectForKey:@"secondPassCheckerModelKeywordDetectionEndTime"];
  [v5 setSecondPassCheckerModelKeywordDetectionEndTimeInNs:{objc_msgSend(v106, "unsignedLongLongValue")}];

  return v5;
}

+ (id)sanitizeEventInfoForLogging:(id)logging
{
  v21[4] = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  if (loggingCopy)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0xBFF0000000000000;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = MEMORY[0x1E695DFD8];
    v21[0] = @"triggerStartTime";
    v21[1] = @"triggerEndTime";
    v21[2] = @"earlyDetectFiredTime";
    v21[3] = @"triggerFiredTime";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v8 = [v6 setWithArray:v7];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__CSFVoiceTriggerEventInfoSelfLoggerEmbedded_sanitizeEventInfoForLogging___block_invoke;
    v15[3] = &unk_1E865BAA8;
    v9 = v8;
    v16 = v9;
    v18 = v20;
    v10 = dictionary;
    v17 = v10;
    selfCopy = self;
    [loggingCopy enumerateKeysAndObjectsUsingBlock:v15];
    v11 = v17;
    v12 = v10;

    _Block_object_dispose(v20, 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __74__CSFVoiceTriggerEventInfoSelfLoggerEmbedded_sanitizeEventInfoForLogging___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v15] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    v8 = *(*(*(a1 + 48) + 8) + 24);
    if (v8 < 0.0)
    {
      [v6 doubleValue];
      *(*(*(a1 + 48) + 8) + 24) = v9 + -10.0;
      v8 = *(*(*(a1 + 48) + 8) + 24);
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x1E696AD98];
    v12 = *(a1 + 56);
    [v7 doubleValue];
    [v12 _round:2 withPlaces:v13 - v8];
    v14 = [v11 numberWithDouble:?];
    [v10 setObject:v14 forKey:v15];
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKey:v15];
  }
}

@end