@interface CSFVoiceTriggerEventInfoSelfLoggerEmbedded
+ (id)_convertToFirstPassChannelSelectionScores:(id)a3;
+ (id)_convertToSELFVTEI:(id)a3;
+ (id)_getStartedMessageWithFirstPassInfo:(id)a3;
+ (id)sanitizeEventInfoForLogging:(id)a3;
+ (int)_convertJarvisTriggerModeString:(id)a3;
+ (int)_convertPowerState:(unsigned int)a3;
+ (int)_convertToFirstPassSource:(id)a3;
+ (int)_convertToMatchResult:(unsigned int)a3;
+ (int)_convertToSELFRejectedReason:(unint64_t)a3;
+ (int)_convertToTwoShotPromptType:(int64_t)a3;
+ (void)_emitTwoShotClientEventWithTwoShotTransitionContext:(id)a3 withMHUUID:(id)a4;
+ (void)_emitVTClientEventWithVTContext:(id)a3 withMHUUID:(id)a4;
- (CSFVoiceTriggerEventInfoSelfLoggerEmbedded)init;
- (void)logCancelledEventWithMHUUID:(id)a3;
- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5;
- (void)logSiriLaunchCompletedWithVoiceTriggerEventInfo:(id)a3;
- (void)logSiriLaunchStartedWithVoiceTriggerEventInfo:(id)a3;
- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4;
- (void)logTriggerEventWithVTEI:(id)a3 withMHUUID:(id)a4;
- (void)logTwoShotDetectedWithMHUUID:(id)a3;
- (void)logTwoShotStartEventWithPromptType:(unsigned int)a3 withMHUUID:(id)a4;
@end

@implementation CSFVoiceTriggerEventInfoSelfLoggerEmbedded

- (void)logSiriLaunchCompletedWithVoiceTriggerEventInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"selfLoggingMHUUID"];
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
    v10 = [MEMORY[0x1E69CE1F0] sharedStream];
    [v10 emitMessage:v9];

    v3 = v11;
  }
}

- (void)logSiriLaunchStartedWithVoiceTriggerEventInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"selfLoggingMHUUID"];
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
    v10 = [MEMORY[0x1E69CE1F0] sharedStream];
    [v10 emitMessage:v9];

    v3 = v11;
  }
}

- (void)logTriggerEventWithVTEI:(id)a3 withMHUUID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEF68]);
    v8 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFVTEI:v5];
    [v7 setVoiceTriggerEventInfo:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v9 setEnded:v7];
    [v9 setHasEnded:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v9 withMHUUID:v6];
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

- (void)logCancelledEventWithMHUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CEF50]);
    v5 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v5 setCancelled:v4];
    [v5 setHasCancelled:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v5 withMHUUID:v3];
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

- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69CEF58]);
    v10 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded sanitizeEventInfoForLogging:v7];
    v11 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFVTEI:v10];
    [v9 setVoiceTriggerEventInfo:v11];
    [v9 setReason:{+[CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToSELFRejectedReason:](CSFVoiceTriggerEventInfoSelfLoggerEmbedded, "_convertToSELFRejectedReason:", a5)}];
    v12 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v12 setFailed:v9];
    [v12 setHasFailed:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v12 withMHUUID:v8];
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

- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded sanitizeEventInfoForLogging:v5];
    v8 = [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _getStartedMessageWithFirstPassInfo:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69CEF38]);
    [v9 setStartedOrChanged:v8];
    [v9 setHasStartedOrChanged:1];
    [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitVTClientEventWithVTContext:v9 withMHUUID:v6];
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

- (void)logTwoShotStartEventWithPromptType:(unsigned int)a3 withMHUUID:(id)a4
{
  v5 = MEMORY[0x1E69CEEF0];
  v6 = a4;
  v8 = objc_alloc_init(v5);
  [v8 setPromptType:{+[CSFVoiceTriggerEventInfoSelfLoggerEmbedded _convertToTwoShotPromptType:](CSFVoiceTriggerEventInfoSelfLoggerEmbedded, "_convertToTwoShotPromptType:", a3)}];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEE0]);
  [v7 setStartedOrChanged:v8];
  [v7 setHasStartedOrChanged:1];
  [CSFVoiceTriggerEventInfoSelfLoggerEmbedded _emitTwoShotClientEventWithTwoShotTransitionContext:v7 withMHUUID:v6];
}

- (void)logTwoShotDetectedWithMHUUID:(id)a3
{
  v3 = MEMORY[0x1E69CEF70];
  v4 = a3;
  v9 = objc_alloc_init(v3);
  [v9 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v6 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v7 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v4];

  [v6 setMhId:v7];
  [v5 setEventMetadata:v6];
  [v5 setVoiceTriggerTwoShotDetected:v9];
  v8 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v8 emitMessage:v5];
}

- (CSFVoiceTriggerEventInfoSelfLoggerEmbedded)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFVoiceTriggerEventInfoSelfLoggerEmbedded;
    self = [(CSFVoiceTriggerEventInfoSelfLoggerEmbedded *)&v5 init];
    v3 = self;
  }

  return v3;
}

+ (void)_emitVTClientEventWithVTContext:(id)a3 withMHUUID:(id)a4
{
  v5 = MEMORY[0x1E69CEEF8];
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v8 setMhId:v9];
  [v11 setEventMetadata:v8];
  [v11 setVoiceTriggerContext:v7];

  v10 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v10 emitMessage:v11];
}

+ (void)_emitTwoShotClientEventWithTwoShotTransitionContext:(id)a3 withMHUUID:(id)a4
{
  v5 = MEMORY[0x1E69CEEF8];
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v8 setMhId:v9];
  [v11 setEventMetadata:v8];
  [v11 setAssistantDaemonAudioTwoShotTransitionContext:v7];

  v10 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v10 emitMessage:v11];
}

+ (id)_getStartedMessageWithFirstPassInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF60]);
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstPassDetectedChannel"];
    [v5 setFirstPassDetectedChannel:{objc_msgSend(v6, "intValue")}];

    v7 = [v4 objectForKeyedSubscript:@"firstPassScore"];
    [v7 floatValue];
    [v5 setFirstPassScore:?];

    v8 = [v4 objectForKeyedSubscript:@"firstPassOnsetChannel"];
    [v5 setFirstPassOnsetChannel:{objc_msgSend(v8, "intValue")}];

    v9 = [v4 objectForKeyedSubscript:@"firstPassOnsetScore"];
    [v9 floatValue];
    [v5 setFirstPassOnsetScore:?];

    v10 = [v4 objectForKeyedSubscript:@"firstPassChannelSelectionScores"];
    v11 = [a1 _convertToFirstPassChannelSelectionScores:v10];

    [v5 setChannelSelectionScores:v11];
    v12 = [v4 objectForKeyedSubscript:@"firstPassChannelSelectionDelaySeconds"];
    [v12 floatValue];
    [v5 setFirstPassChannelSelectionDelayNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v13 = [v4 objectForKeyedSubscript:@"firstPassMasterChannelScoreBoost"];
    [v13 floatValue];
    [v5 setFirstPassPrimaryChannelScoreBoost:?];

    v14 = [v4 objectForKeyedSubscript:@"firstPassStartSampleCount"];
    [v5 setFirstPassStartSampleCount:{objc_msgSend(v14, "intValue")}];

    v15 = [v4 objectForKeyedSubscript:@"firstPassEndSampleCount"];
    [v5 setFirstPassEndSampleCount:{objc_msgSend(v15, "intValue")}];

    v16 = [v4 objectForKeyedSubscript:@"firstPassFireSampleCount"];
    [v5 setFirstPassFireSampleCount:{objc_msgSend(v16, "intValue")}];

    v17 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
    [v5 setFirstPassTriggerSource:{objc_msgSend(a1, "_convertToFirstPassSource:", v17)}];

    v18 = [v4 objectForKeyedSubscript:@"earlyDetectFiredTime"];
    [v18 floatValue];
    [v5 setEarlyDetectFiredTime:?];

    v19 = [v4 objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
    v20 = [v19 intValue];
    v21 = [v4 objectForKeyedSubscript:@"earlyDetectFiredTime"];
    [v21 floatValue];
    [v5 setEarlyDetectFiredTimeOffsetInNs:{v20 - +[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v22 = [v4 objectForKey:@"firstPassInfoGeneratedTime"];

    if (v22)
    {
      v23 = [v4 objectForKeyedSubscript:@"firstPassInfoGeneratedTime"];
      [v5 setFirstPassInfoDispatchTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", objc_msgSend(v23, "unsignedLongLongValue"))}];

      v24 = [v4 objectForKeyedSubscript:@"firstPassInfoProcessedTime"];
      [v5 setFirstPassInfoReceptionTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", objc_msgSend(v24, "unsignedLongLongValue"))}];
    }
  }

  return v5;
}

+ (id)_convertToFirstPassChannelSelectionScores:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

+ (int)_convertToTwoShotPromptType:(int64_t)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)_convertToFirstPassSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ApplicationProcessor"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ApplicationProcessorWithRingtone"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ApplicationProcessorWithConnectedCall"))
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BuiltInAlwaysOnProcessor"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Hearst"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Jarvis"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Remora"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HearstAP"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Watch"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Darwin"])
  {
    v4 = 10;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Default"];
  }

  return v4;
}

+ (int)_convertToSELFRejectedReason:(unint64_t)a3
{
  if (a3 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_1DDB1FAE8[a3];
  }
}

+ (int)_convertToMatchResult:(unsigned int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)_convertJarvisTriggerModeString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"VoiceActivityDetection"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"VoiceTriggerDetection"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)_convertPowerState:(unsigned int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)_convertToSELFVTEI:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF40]);
  v6 = [v4 objectForKeyedSubscript:@"secondPassAnalyerStartSampleCount"];
  [v5 setSecondPassAnalyerStartSampleCount:{objc_msgSend(v6, "intValue")}];

  v7 = [v4 objectForKeyedSubscript:@"secondPassAnalyerEndSampleCount"];
  [v5 setSecondPassAnalyerEndSampleCount:{objc_msgSend(v7, "intValue")}];

  v8 = [v4 objectForKeyedSubscript:@"satScore"];
  [v8 floatValue];
  [v5 setSatScore:?];

  v9 = [v4 objectForKeyedSubscript:@"satNumTrainingUtts"];
  [v5 setSatNumTrainingUtterances:{objc_msgSend(v9, "intValue")}];

  v10 = [v4 objectForKeyedSubscript:@"satThreshold"];
  [v10 floatValue];
  [v5 setSatThreshold:?];

  v11 = [v4 objectForKeyedSubscript:@"satTriggered"];
  [v5 setSatTriggered:{objc_msgSend(v11, "BOOLValue")}];

  v12 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerScore"];
  [v12 floatValue];
  [v5 setTdSpeakerRecognizerScore:?];

  v13 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
  [v13 floatValue];
  [v5 setTdSpeakerRecognizerCombinedScore:?];

  v14 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];
  [v14 floatValue];
  [v5 setTdSpeakerRecognizerCombinedThreshold:?];

  v15 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinationWeight"];
  [v15 floatValue];
  [v5 setTdSpeakerRecognizerCombinationWeight:?];

  v16 = [v4 objectForKeyedSubscript:@"biometricClue"];
  [v5 setBiometricClue:{objc_msgSend(a1, "_convertToMatchResult:", objc_msgSend(v16, "intValue"))}];

  v17 = [v4 objectForKeyedSubscript:@"satBeingTrained"];
  [v5 setSatBeingTrained:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v4 objectForKeyedSubscript:@"lastConsecutivePHSRejects"];
  [v5 setLastConsecutivePHSRejects:{objc_msgSend(v18, "intValue")}];

  v19 = [v4 objectForKeyedSubscript:@"deltaTimeFromlastPHSReject"];
  [v19 floatValue];
  [v5 setDeltaTimeInNsFromlastPHSReject:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v20 = [v4 objectForKeyedSubscript:@"triggerExplicitSatScore"];
  [v20 floatValue];
  [v5 setTriggerExplicitSatScore:?];

  v21 = [v4 objectForKeyedSubscript:@"triggerExplicitTDSRSatScore"];
  [v21 floatValue];
  [v5 setTriggerExplicitTDSRSatScore:?];

  v22 = [v4 objectForKeyedSubscript:@"shadowMicScore"];
  [v22 floatValue];
  [v5 setShadowMicScore:?];

  v23 = [v4 objectForKeyedSubscript:@"shadowMicScoreThresholdForVAD"];
  [v23 floatValue];
  [v5 setShadowMicScoreThresholdForVAD:?];

  v24 = [v4 objectForKeyedSubscript:@"remoteMicVADScore"];
  [v24 floatValue];
  [v5 setRemoteMicVADScore:?];

  v25 = [v4 objectForKeyedSubscript:@"remoteMicVADThreshold"];
  [v25 floatValue];
  [v5 setRemoteMicVADThreshold:?];

  v26 = [v4 objectForKeyedSubscript:@"remoteMicVADMyriadThreshold"];
  [v26 floatValue];
  [v5 setRemoteMicVADMyriadThreshold:?];

  v27 = [v4 objectForKeyedSubscript:@"firstPassJarvisTriggerMode"];
  [v5 setEnhancedCarplayTriggerMode:{objc_msgSend(a1, "_convertJarvisTriggerModeString:", v27)}];

  v28 = [v4 objectForKeyedSubscript:@"triggerStartSampleCount"];
  [v5 setTriggerStartSampleCount:{objc_msgSend(v28, "intValue")}];

  v29 = [v4 objectForKeyedSubscript:@"clientStartSampleCount"];
  [v5 setClientStartSampleCount:{objc_msgSend(v29, "intValue")}];

  v30 = [v4 objectForKeyedSubscript:@"triggerEndSampleCount"];
  [v5 setTriggerEndSampleCount:{objc_msgSend(v30, "intValue")}];

  v31 = [v4 objectForKeyedSubscript:@"triggerFireSampleCount"];
  [v5 setTriggerFireSampleCount:{objc_msgSend(v31, "intValue")}];

  v32 = [v4 objectForKeyedSubscript:@"triggerStartSeconds"];
  [v32 floatValue];
  [v5 setTriggerStartNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v33 = [v4 objectForKeyedSubscript:@"triggerEndSeconds"];
  [v33 floatValue];
  [v5 setTriggerEndNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v34 = [v4 objectForKeyedSubscript:@"triggerFireSeconds"];
  [v34 floatValue];
  [v5 setTriggerFireNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v35 = [v4 objectForKeyedSubscript:@"extraSamplesAtStart"];
  [v5 setExtraSamplesAtStart:{objc_msgSend(v35, "intValue")}];

  v36 = [v4 objectForKeyedSubscript:@"analyzerPrependingSamples"];
  [v5 setAnalyzerPrependingSamples:{objc_msgSend(v36, "intValue")}];

  v37 = [v4 objectForKeyedSubscript:@"analyzerTrailingSamples"];
  [v5 setAnalyzerTrailingSamples:{objc_msgSend(v37, "intValue")}];

  v38 = [v4 objectForKeyedSubscript:@"isTriggerEvent"];
  [v5 setIsTriggerEvent:{objc_msgSend(v38, "BOOLValue")}];

  v39 = [v4 objectForKeyedSubscript:@"totalSampleCount"];
  [v5 setTotalSampleCount:{objc_msgSend(v39, "intValue")}];

  v40 = [v4 objectForKeyedSubscript:@"triggerScore"];
  [v40 floatValue];
  [v5 setTriggerScore:?];

  v41 = [v4 objectForKeyedSubscript:@"isMaximized"];
  [v5 setIsMaximized:{objc_msgSend(v41, "BOOLValue")}];

  v42 = [v4 objectForKeyedSubscript:@"effectiveThreshold"];
  [v42 floatValue];
  [v5 setEffectiveThreshold:?];

  v43 = [v4 objectForKeyedSubscript:@"recognizerScore"];
  [v43 floatValue];
  [v5 setRecognizerScore:?];

  v44 = [v4 objectForKeyedSubscript:@"recognizerThresholdOffset"];
  [v44 floatValue];
  [v5 setRecognizerThresholdOffset:?];

  v45 = [v4 objectForKeyedSubscript:@"recognizerWaitTime"];
  [v45 floatValue];
  [v5 setRecognizerWaitTimeInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v46 = [v4 objectForKeyedSubscript:@"recognizerScaleFactor"];
  [v46 floatValue];
  [v5 setRecognizerScaleFactor:?];

  v47 = [v4 objectForKeyedSubscript:@"threshold"];
  [v47 floatValue];
  [v5 setThreshold:?];

  v48 = [v4 objectForKeyedSubscript:@"triggeredPhrase"];
  [v5 setTriggerPhrase:v48];

  v49 = mach_absolute_time();
  v50 = [v4 objectForKeyedSubscript:@"triggerStartMachTime"];
  v51 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v50 unsignedLongLongValue]);

  v52 = [v4 objectForKeyedSubscript:@"triggerEndMachTime"];
  v53 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v52 unsignedLongLongValue]);

  v54 = [v4 objectForKeyedSubscript:@"triggerFireMachTime"];
  v55 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v54 unsignedLongLongValue]);

  v56 = [v4 objectForKey:@"displayWakeMachTime"];

  if (v56)
  {
    v108 = a1;
    v57 = [v4 objectForKey:@"extraSamplesAtStart"];

    v58 = v51;
    if (v57)
    {
      v59 = [v4 objectForKeyedSubscript:@"extraSamplesAtStart"];
      v60 = [v59 intValue];

      +[CSConfig inputRecordingSampleRate];
      v58 = v51 - [CSFTimeUtils convertSampleCountToNs:v60 sampleRate:?];
    }

    v61 = [v4 objectForKeyedSubscript:@"displayWakeMachTime"];
    v62 = +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v49 - [v61 unsignedLongLongValue]);

    [v5 setIsHSJSTriggerFromAlwaysOnMicBuffer:v58 > v62];
    [v5 setDisplayWakeTimeOffsetInNs:v62];
    a1 = v108;
  }

  [v5 setTriggerStartTimeOffsetInNs:v51];
  [v5 setTriggerEndTimeOffsetInNs:v53];
  [v5 setTriggerFireTimeOffsetInNs:v55];
  v63 = [v4 objectForKeyedSubscript:@"triggerStartTime"];
  [v63 doubleValue];
  [v5 setTriggerStartTime:?];

  v64 = [v4 objectForKeyedSubscript:@"triggerEndTime"];
  [v64 doubleValue];
  [v5 setTriggerEndTime:?];

  v65 = [v4 objectForKeyedSubscript:@"triggerFiredTime"];
  [v65 doubleValue];
  [v5 setTriggerFiredTime:?];

  v66 = [v4 objectForKeyedSubscript:@"hardwareSamplerate"];
  [v5 setHardwareSamplerate:{objc_msgSend(v66, "intValue")}];

  v67 = [v4 objectForKeyedSubscript:@"isContinuous"];
  [v5 setIsContinuous:{objc_msgSend(v67, "BOOLValue")}];

  v68 = [v4 objectForKeyedSubscript:@"triggerDuration"];
  [v68 floatValue];
  *&v69 = [CSFTimeUtils secondsToNs:?];
  [v5 setTriggerDurationInNs:v69];

  v70 = [v4 objectForKeyedSubscript:@"totalSamplesAtTriggerStart"];
  [v5 setTotalSamplesAtTriggerStart:{objc_msgSend(v70, "intValue")}];

  v71 = [v4 objectForKeyedSubscript:@"totalSamplesAtTriggerEnd"];
  [v5 setTotalSamplesAtTriggerEnd:{objc_msgSend(v71, "intValue")}];

  v72 = [v4 objectForKeyedSubscript:@"totalSamplesAtEndOfCapture"];
  [v5 setTotalSamplesAtEndOfCapture:{objc_msgSend(v72, "intValue")}];

  v73 = [v4 objectForKeyedSubscript:@"configVersion"];
  [v5 setConfigVersion:v73];

  v74 = [v4 objectForKeyedSubscript:@"configPath"];
  [v5 setConfigPath:v74];

  v75 = [v4 objectForKeyedSubscript:@"isSecondChance"];
  [v5 setIsSecondChance:{objc_msgSend(v75, "BOOLValue")}];

  v76 = [v4 objectForKeyedSubscript:@"deviceHandHeld"];
  [v5 setDeviceHandheld:{objc_msgSend(v76, "BOOLValue")}];

  v77 = [v4 objectForKeyedSubscript:@"activeChannel"];
  [v5 setActiveChannel:{objc_msgSend(v77, "intValue")}];

  v78 = [v4 objectForKeyedSubscript:@"twoShotAudibleFeedbackDelay"];
  [v78 floatValue];
  [v5 setTwoShotAudibleFeedbackDelayInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

  v79 = [v4 objectForKeyedSubscript:@"cumulativeUptime"];
  [v79 floatValue];
  [v5 setCumulativeUptimeInSec:?];

  v80 = [v4 objectForKeyedSubscript:@"cumulativeDowntime"];
  [v80 floatValue];
  [v5 setCumulativeDowntimeInSec:?];

  v81 = [v4 objectForKeyedSubscript:@"hostPowerStateAtTrigger"];
  [v5 setHostPowerStateAtTrigger:{objc_msgSend(a1, "_convertPowerState:", objc_msgSend(v81, "intValue"))}];

  v82 = [v4 objectForKeyedSubscript:@"isMediaPlaying"];
  [v5 setIsMediaPlaying:{objc_msgSend(v82, "BOOLValue")}];

  v83 = [v4 objectForKeyedSubscript:@"mediaVolume"];
  [v83 floatValue];
  [v5 setMediaVolume:?];

  v84 = objc_alloc(MEMORY[0x1E696AFB0]);
  v85 = [v4 objectForKeyedSubscript:@"audioProviderUUID"];
  v86 = [v84 initWithUUIDString:v85];

  v87 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v86];
  [v5 setAudioProviderUUID:v87];

  v88 = [v4 objectForKeyedSubscript:@"onBatteryPower"];
  [v5 setOnBatteryPower:{objc_msgSend(v88, "BOOLValue")}];

  v89 = [v4 objectForKeyedSubscript:@"didWakeAP"];
  [v5 setDidWakeAP:{objc_msgSend(v89, "BOOLValue")}];

  v90 = [v4 objectForKeyedSubscript:@"uptime"];
  [v90 floatValue];
  [v5 setUptimeInSec:?];

  v91 = [v4 objectForKeyedSubscript:@"downtime"];
  [v91 floatValue];
  [v5 setDowntimeInSec:?];

  v92 = [v4 objectForKeyedSubscript:@"lastConsecutiveVTRejects"];
  [v5 setLastConsecutiveVTRejects:{objc_msgSend(v92, "intValue")}];

  v93 = [v4 objectForKeyedSubscript:@"captureFilePath"];
  [v5 setCaptureFilePath:v93];

  v94 = [v4 objectForKeyedSubscript:@"configDataHash"];
  [v5 setConfigDataHash:v94];

  v95 = [v4 objectForKeyedSubscript:@"siriIsActiveOrOtherAssertion"];
  [v5 setSiriIsActiveOrOtherAssertion:{objc_msgSend(v95, "BOOLValue")}];

  v96 = [v4 objectForKeyedSubscript:@"DarwinVoiceTriggeredWhenHostInSleep"];
  [v5 setIsWakeFromSleep:{objc_msgSend(v96, "BOOLValue")}];

  v97 = [v4 objectForKey:@"secondPassAssetQueryStartTime"];
  [v5 setSecondPassAssetQueryStartTimeInNs:{objc_msgSend(v97, "unsignedLongLongValue")}];

  v98 = [v4 objectForKey:@"secondPassAssetQueryCompleteTime"];
  [v5 setSecondPassAssetQueryCompleteTimeInNs:{objc_msgSend(v98, "unsignedLongLongValue")}];

  v99 = [v4 objectForKey:@"secondPassAssetLoadStartTime"];
  [v5 setSecondPassAssetLoadStartTimeInNs:{objc_msgSend(v99, "unsignedLongLongValue")}];

  v100 = [v4 objectForKey:@"secondPassAssetLoadCompleteTime"];
  [v5 setSecondPassAssetLoadCompleteTimeInNs:{objc_msgSend(v100, "unsignedLongLongValue")}];

  v101 = [v4 objectForKey:@"secondPassAudioStreamStartTime"];
  [v5 setSecondPassAudioStreamStartTimeInNs:{objc_msgSend(v101, "unsignedLongLongValue")}];

  v102 = [v4 objectForKey:@"secondPassAudioStreamReadyTime"];
  [v5 setSecondPassAudioStreamReadyTimeInNs:{objc_msgSend(v102, "unsignedLongLongValue")}];

  v103 = [v4 objectForKey:@"secondPassFirstAudioPacketReceptionTime"];
  [v5 setSecondPassFirstAudioPacketReceptionTimeInNs:{objc_msgSend(v103, "unsignedLongLongValue")}];

  v104 = [v4 objectForKey:@"secondPassLastAudioPacketReceptionTime"];
  [v5 setSecondPassLastAudioPacketReceptionTimeInNs:{objc_msgSend(v104, "unsignedLongLongValue")}];

  v105 = [v4 objectForKey:@"secondPassCheckerModelKeywordDetectionStartTime"];
  [v5 setSecondPassCheckerModelKeywordDetectionStartTimeInNs:{objc_msgSend(v105, "unsignedLongLongValue")}];

  v106 = [v4 objectForKey:@"secondPassCheckerModelKeywordDetectionEndTime"];
  [v5 setSecondPassCheckerModelKeywordDetectionEndTimeInNs:{objc_msgSend(v106, "unsignedLongLongValue")}];

  return v5;
}

+ (id)sanitizeEventInfoForLogging:(id)a3
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0xBFF0000000000000;
    v5 = [MEMORY[0x1E695DF90] dictionary];
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
    v10 = v5;
    v17 = v10;
    v19 = a1;
    [v4 enumerateKeysAndObjectsUsingBlock:v15];
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