@interface CSFAudioMetricsSelfLogger
+ (id)sharedLogger;
- (CSFAudioMetricsSelfLogger)init;
- (id)_getPreprocessorCompletedMessageWithMetrics:(id)a3;
- (id)_getRunPairs:(id)a3;
- (id)_getSelfFanWithCSSiriFanInfo:(id)a3;
- (int)_getMHBluetoothAudioDeviceCategoryFromString:(id)a3;
- (int)_getSelfStopRecordingReasonWithADStopRecordingEvent:(unsigned __int16)a3;
- (int)_translateAudioSessionCategory:(id)a3;
- (int)_translateAudioSessionMode:(id)a3;
- (void)logCoreSpeechPreprocessorCompletedWithMHUUID:(id)a3 withMetricsDictionary:(id)a4;
- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)a3 withAudioCodecString:(id)a4 withAudioSkippedNumSamples:(unint64_t)a5;
- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)a3 withAudioCodecString:(id)a4 withAudioSkippedTimeInNs:(unint64_t)a5;
- (void)logMHApplicationPlaybackAttemptedWithMHUUID:(id)a3 withAppBundleName:(id)a4 withAppBundleVersion:(id)a5;
- (void)logMHAssistantDaemonAudioConfigureContextWithMHUUID:(id)a3 withConfigureStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:(id)a3 withFetchRouteContextStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioInitContextWithMHUUID:(id)a3 withInitStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioLateBufferDetectedWithMHUUID:(id)a3 withBufferReceiptTimeInNs:(unint64_t)a4;
- (void)logMHAssistantDaemonAudioPrepareContextWithMHUUID:(id)a3 withPrepareStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioPrewarmContextWithMHUUID:(id)a3 withPrewarmStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioRecordingFailedWithMHUUID:(id)a3 withReason:(int64_t)a4 vendorId:(id)a5 productId:(id)a6;
- (void)logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withFirstBufferStartTimeOffsetNs:(unint64_t)a5 withFirstBufferReceiptTimeOffsetNs:(unint64_t)a6;
- (void)logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withLinkID:(id)a5 withAvAudioSessionInterruptorName:(id)a6 withAVAudioSessionInterrupterType:(id)a7;
- (void)logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:(id)a3 withLinkID:(id)a4 withActiveSessionDisplayIDs:(id)a5 audioSessionCategory:(id)a6 audioSessionMode:(id)a7;
- (void)logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withLastBufferStartTimeOffsetNs:(unint64_t)a5 withLastBufferReceiptTimeOffsetNs:(unint64_t)a6;
- (void)logMHAssistantDaemonAudioRecordingMissedBufferDetectedWithMHUUID:(id)a3;
- (void)logMHAssistantDaemonAudioSessionActivationFailedWithInsufficientPriority:(id)a3 activeSessionDisplayIDs:(id)a4 audioSessionCategory:(id)a5 audioSessionMode:(id)a6;
- (void)logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:(id)a3 withSetActivateStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:(id)a3 withSetInactiveStarted:(BOOL)a4;
- (void)logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:(id)a3 withStartRecordingContext:(BOOL)a4 withFanInfoArray:(id)a5 withActiveSessionDisplayIDs:(id)a6;
@end

@implementation CSFAudioMetricsSelfLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_2776 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_2776, &__block_literal_global_2777);
  }

  v3 = sharedLogger_sharedAudioMetricsSelfLogger;

  return v3;
}

- (int)_translateAudioSessionMode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E69AF830]])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF980]])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF850]])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF970]])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF898]])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF8A0]])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF940]])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF958]])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF908]])
    {
      v5 = 22;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF9A8]])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF8F8]])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF930]])
    {
      v5 = 14;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF8C0]])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF990]])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF838]])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF878]])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF8E0]])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF968]])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF8E8]])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF820]])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF880]])
    {
      v5 = 25;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF9C0]])
    {
      v5 = 26;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF928]])
    {
      v5 = 23;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF858]])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF808]])
    {
      v5 = 28;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_translateAudioSessionCategory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E69AF6F0]])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF630]])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF710]])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF6D8]])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF640]])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF730]])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF6A8]])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF708]])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF6C8]])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF798]])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF778]])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF720]])
    {
      v5 = 10;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF7A8]])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF760]])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF6B0]])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF660]])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF670]])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF688]])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF7B0]])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF678]])
    {
      v5 = 23;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF758]])
    {
      v5 = 24;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF740]])
    {
      v5 = 25;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69AF7C8]])
    {
      v5 = 26;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logMHAssistantDaemonAudioSessionActivationFailedWithInsufficientPriority:(id)a3 activeSessionDisplayIDs:(id)a4 audioSessionCategory:(id)a5 audioSessionMode:(id)a6
{
  v10 = MEMORY[0x1E69CEE20];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v21 = objc_alloc_init(v10);
  v15 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionCategory:v12];

  [v21 setAudioSessionCategory:v15];
  v16 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionMode:v11];

  [v21 setAudioSessionMode:v16];
  [v21 setActiveSessionDisplayIds:v13];

  v17 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v18 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v19 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v14];

  [v18 setMhId:v19];
  [v17 setEventMetadata:v18];
  [v17 setAssistantDaemonAudioRecordingFailureInsufficientPriority:v21];
  v20 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v20 emitMessage:v17];
}

- (void)logMHAssistantDaemonAudioRecordingFailedWithMHUUID:(id)a3 withReason:(int64_t)a4 vendorId:(id)a5 productId:(id)a6
{
  v10 = MEMORY[0x1E69CEE18];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v18 = objc_alloc_init(v10);
  [v18 setReason:{-[CSFAudioMetricsSelfLogger _getSpeechErrorTypeWithRecordingFailedReason:](self, "_getSpeechErrorTypeWithRecordingFailedReason:", a4)}];
  [v18 setAudioInterfaceVendorId:v12];

  [v18 setAudioInterfaceProductId:v11];
  v14 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v15 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v16 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v13];

  [v15 setMhId:v16];
  [v14 setEventMetadata:v15];
  [v14 setAudioRecordingFailed:v18];
  v17 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v17 emitMessage:v14];
}

- (void)logMHApplicationPlaybackAttemptedWithMHUUID:(id)a3 withAppBundleName:(id)a4 withAppBundleVersion:(id)a5
{
  v7 = MEMORY[0x1E69CED68];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v15 = objc_alloc_init(v7);
  [v15 setAppBundleName:v9];

  [v15 setAppBundleVersion:v8];
  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v10];

  [v12 setMhId:v13];
  [v11 setEventMetadata:v12];
  [v11 setApplicationPlaybackAttempted:v15];
  v14 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v14 emitMessage:v11];
}

- (void)logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:(id)a3 withLinkID:(id)a4 withActiveSessionDisplayIDs:(id)a5 audioSessionCategory:(id)a6 audioSessionMode:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x1E69CEE50];
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v14);
  v19 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v16];

  [v18 setLinkId:v19];
  [v18 setActiveSessionDisplayIds:v15];

  v20 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionCategory:v12];
  v21 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionMode:v13];
  v22 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136316162;
    v29 = "[CSFAudioMetricsSelfLogger logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:withLinkID:withActiveSessionDisplayIDs:audioSessionCategory:audioSessionMode:]";
    v30 = 2112;
    v31 = v12;
    v32 = 1024;
    v33 = v20;
    v34 = 2112;
    v35 = v13;
    v36 = 1024;
    v37 = v21;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s Currently Active Category: %@[%d]. Mode: %@[%d]", &v28, 0x2Cu);
  }

  [v18 setAudioSessionCategory:v20];
  [v18 setAudioSessionMode:v21];
  v23 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v24 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v25 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v17];

  [v24 setMhId:v25];
  [v23 setEventMetadata:v24];
  [v23 setAssistantDaemonAudioRecordingInterruptionStartedTier1:v18];
  v26 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v26 emitMessage:v23];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withLinkID:(id)a5 withAvAudioSessionInterruptorName:(id)a6 withAVAudioSessionInterrupterType:(id)a7
{
  v9 = a4;
  v22 = a5;
  v11 = a6;
  v12 = a7;
  v13 = MEMORY[0x1E69CEE38];
  v14 = a3;
  v15 = objc_alloc_init(v13);
  if (v9)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69CEE48]);
    v17 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v22];
    [v16 setLinkId:v17];

    [v16 setAvAudioSessionInterruptorName:v11];
    [v16 setAvAudioSessionInterruptionType:v12];
    [v15 setStartedOrChanged:v16];
    [v15 setHasStartedOrChanged:1];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E69CEE40]);
    [v16 setExists:1];
    [v15 setEnded:v16];
    [v15 setHasEnded:1];
  }

  v18 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v19 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v20 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v14];

  [v19 setMhId:v20];
  [v18 setEventMetadata:v19];
  [v18 setAssistantDaemonAudioRecordingInterruptionContext:v15];
  v21 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v21 emitMessage:v18];
}

- (void)logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withLastBufferStartTimeOffsetNs:(unint64_t)a5 withLastBufferReceiptTimeOffsetNs:(unint64_t)a6
{
  v8 = a4;
  v9 = MEMORY[0x1E69CEE58];
  v10 = a3;
  v16 = objc_alloc_init(v9);
  if (v8)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE68]);
    [v11 setLastAudioRecordBufferStartTimeOffsetInNs:a5];
    [v16 setStartedOrChanged:v11];
    [v16 setHasStartedOrChanged:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE60]);
    [v11 setLastAudioRecordBufferReceiptTimeOffsetInNs:a6];
    [v16 setEnded:v11];
    [v16 setHasEnded:1];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v13 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v14 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v10];

  [v13 setMhId:v14];
  [v12 setEventMetadata:v13];
  [v12 setAssistantDaemonAudioRecordingLastBufferContext:v16];
  v15 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v15 emitMessage:v12];
}

- (void)logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:(id)a3 withStartEvent:(BOOL)a4 withFirstBufferStartTimeOffsetNs:(unint64_t)a5 withFirstBufferReceiptTimeOffsetNs:(unint64_t)a6
{
  v8 = a4;
  v9 = MEMORY[0x1E69CEE28];
  v10 = a3;
  v16 = objc_alloc_init(v9);
  if (v8)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE30]);
    [v11 setFirstBufferStartTimeOffsetInNs:a5];
    [v16 setStartedOrChanged:v11];
    [v16 setHasStartedOrChanged:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE00]);
    [v11 setFirstBufferReceiptTimeOffsetInNs:a6];
    [v16 setEnded:v11];
    [v16 setHasEnded:1];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v13 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v14 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v10];

  [v13 setMhId:v14];
  [v12 setEventMetadata:v13];
  [v12 setAssistantDaemonAudioRecordingFirstBufferContext:v16];
  v15 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v15 emitMessage:v12];
}

- (void)logMHAssistantDaemonAudioLateBufferDetectedWithMHUUID:(id)a3 withBufferReceiptTimeInNs:(unint64_t)a4
{
  v5 = MEMORY[0x1E69CEDC8];
  v6 = a3;
  v10 = objc_alloc_init(v5);
  [v10 setBufferReceiptTimeOffsetInNs:a4];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v8 setMhId:v9];
  [v7 setEventMetadata:v8];
  [v7 setAssistantDaemonAudioLateBufferDetected:v10];
}

- (void)logMHAssistantDaemonAudioRecordingMissedBufferDetectedWithMHUUID:(id)a3
{
  v3 = MEMORY[0x1E69CEE70];
  v4 = a3;
  v9 = objc_alloc_init(v3);
  [v9 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  [v5 setAssistantDaemonAudioRecordingMissedBufferDetected:v9];
  v6 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v7 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v4];

  [v6 setMhId:v7];
  [v5 setEventMetadata:v6];
  v8 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v8 emitMessage:v5];
}

- (void)logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:(id)a3 withFetchRouteContextStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CED98];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDA8]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDA0]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioFetchRouteContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:(id)a3 withSetInactiveStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CEE98];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEEA8]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEEA0]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioSessionSetInactiveContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:(id)a3 withSetActivateStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CEE80];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEE90]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEE88]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioSessionSetActiveContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:(id)a3 withStartRecordingContext:(BOOL)a4 withFanInfoArray:(id)a5 withActiveSessionDisplayIDs:(id)a6
{
  v8 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E69CEEB0]);
  if (v8)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CEEC0]);
    [v14 setExists:1];
    [v13 setStartedOrChanged:v14];
    [v13 setHasStartedOrChanged:1];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CEEB8]);
    if (v11)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [(CSFAudioMetricsSelfLogger *)self _getSelfFanWithCSSiriFanInfo:v11, 0];
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v14 addFanInfo:*(*(&v25 + 1) + 8 * v19++)];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);
      }
    }

    [v14 setActiveSessionDisplayIds:v12];
    [v13 setEnded:v14];
    [v13 setHasEnded:1];
  }

  v20 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v21 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v22 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v10];
  [v21 setMhId:v22];

  [v20 setEventMetadata:v21];
  [v20 setAssistantDaemonAudioStartRecordingContext:v13];
  v23 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v23 emitMessage:v20];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)logMHAssistantDaemonAudioPrewarmContextWithMHUUID:(id)a3 withPrewarmStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CEDE8];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDF8]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDF0]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioPrewarmContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioPrepareContextWithMHUUID:(id)a3 withPrepareStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CEDD0];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDE0]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDD8]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioPrepareContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioConfigureContextWithMHUUID:(id)a3 withConfigureStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CED78];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CED88]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CED80]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioConfigureContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioInitContextWithMHUUID:(id)a3 withInitStarted:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69CEDB0];
  v6 = a3;
  v12 = objc_alloc_init(v5);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDC0]);
    [v7 setExists:1];
    [v12 setStartedOrChanged:v7];
    [v12 setHasStartedOrChanged:1];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CEDB8]);
    [v7 setExists:1];
    [v12 setEnded:v7];
    [v12 setHasEnded:1];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v9 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioInitContext:v12];
  v11 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v11 emitMessage:v8];
}

- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)a3 withAudioCodecString:(id)a4 withAudioSkippedTimeInNs:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[CSFAudioMetricsSelfLogger logMHASRAudioConfigureStartedWithMHUUID:withAudioCodecString:withAudioSkippedTimeInNs:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s logMHASRAudioConfigureStartedWithMHUUID: %@, CodeC: %@, SkippedTimeInNs:%llu", &v16, 0x2Au);
  }

  v10 = objc_alloc_init(MEMORY[0x1E69CED60]);
  [v10 setAudioCodec:SASCodecForString()];
  [v10 setAudioSkippedTimeInNs:a5];
  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v7];
  [v12 setMhId:v13];

  [v11 setEventMetadata:v12];
  [v11 setAsrAudioConfigureStarted:v10];
  v14 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v14 emitMessage:v11];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)a3 withAudioCodecString:(id)a4 withAudioSkippedNumSamples:(unint64_t)a5
{
  v7 = MEMORY[0x1E69CED60];
  v8 = a4;
  v9 = a3;
  v15 = objc_alloc_init(v7);
  v10 = SASCodecForString();

  [v15 setAudioCodec:v10];
  if (a5)
  {
    [v15 setAudioSkippedNumSamples:a5];
  }

  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v9];

  [v12 setMhId:v13];
  [v11 setEventMetadata:v12];
  [v11 setAsrAudioConfigureStarted:v15];
  v14 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v14 emitMessage:v11];
}

- (void)logCoreSpeechPreprocessorCompletedWithMHUUID:(id)a3 withMetricsDictionary:(id)a4
{
  v6 = a3;
  v11 = [(CSFAudioMetricsSelfLogger *)self _getPreprocessorCompletedMessageWithMetrics:a4];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:v6];

  [v8 setMhId:v9];
  [v7 setEventMetadata:v8];
  [v7 setCoreSpeechPreprocessorCompleted:v11];
  v10 = [MEMORY[0x1E69CE1F0] sharedStream];
  [v10 emitMessage:v7];
}

- (id)_getPreprocessorCompletedMessageWithMetrics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF08]);
  v6 = [v4 objectForKey:@"ZeroFilterMetrics"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"CSInitialContinuousZeros"];
    [v5 setInitialContinousZeros:{objc_msgSend(v8, "intValue")}];

    v9 = [v7 objectForKey:@"CSMaxContinuousZeros"];
    [v5 setMaxContinousZeros:{objc_msgSend(v9, "intValue")}];

    v10 = [v7 objectForKey:@"CSMidSegmentContinuousZeros"];
    if (v10)
    {
      v11 = [(CSFAudioMetricsSelfLogger *)self _getRunPairs:v10];
      [v5 setMidSegmentContinousZeros:v11];
    }
  }

  v12 = [v4 objectForKey:@"BeepCancellerMetrics"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKey:@"beepLocation"];
    [v5 setBeepLocation:{objc_msgSend(v14, "intValue")}];

    v15 = [v13 objectForKey:@"statsComputed"];
    [v5 setStatsComputed:{objc_msgSend(v15, "intValue")}];

    v16 = [v13 objectForKey:@"beepPower"];
    [v16 floatValue];
    [v5 setBeepPower:?];

    v17 = [v13 objectForKey:@"signalPower"];
    [v17 floatValue];
    [v5 setSignalPower:?];

    v18 = [v13 objectForKey:@"originalPower"];
    [v18 floatValue];
    [v5 setOriginalPower:?];

    v19 = [v13 objectForKey:@"absMaxVal"];
    [v19 floatValue];
    [v5 setAbsMaxVal:?];

    v20 = [v13 objectForKey:@"above95pcOfMax"];
    [v20 floatValue];
    [v5 setAboveNinetyFivepcOfMax:?];

    v21 = [v13 objectForKey:@"totalInputSamples"];
    [v5 setNumTotalInputSamples:{objc_msgSend(v21, "intValue")}];

    v22 = [v13 objectForKey:@"totalOutputSamples"];
    [v5 setNumTotalOutputSamples:{objc_msgSend(v22, "intValue")}];
  }

  return v5;
}

- (id)_getRunPairs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E69CEF10]);
        v11 = [v9 objectForKey:@"start"];
        [v10 setZeroRunStartingSample:{objc_msgSend(v11, "intValue")}];

        v12 = [v9 objectForKey:@"len"];
        [v10 setZeroRunLength:{objc_msgSend(v12, "intValue")}];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (int)_getMHBluetoothAudioDeviceCategoryFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69AEBB0]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69AEBD0]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69AEBB8]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69AEBC0]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69AEBC8]])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_getSelfStopRecordingReasonWithADStopRecordingEvent:(unsigned __int16)a3
{
  if (a3 > 8u)
  {
    return 1;
  }

  else
  {
    return *&aMcplsupoxeps[4 * a3 + 12];
  }
}

- (id)_getSelfFanWithCSSiriFanInfo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 count] == 3)
        {
          v11 = objc_alloc_init(MEMORY[0x1E69CED90]);
          v12 = [v10 objectAtIndexedSubscript:0];
          [v11 setFanId:{objc_msgSend(v12, "intValue")}];

          v13 = [v10 objectAtIndexedSubscript:1];
          [v11 setCurrentSpeed:{objc_msgSend(v13, "intValue")}];

          v14 = [v10 objectAtIndexedSubscript:2];
          [v11 setTargetSpeed:{objc_msgSend(v14, "intValue")}];

          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CSFAudioMetricsSelfLogger)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFAudioMetricsSelfLogger;
    self = [(CSFAudioMetricsSelfLogger *)&v5 init];
    v3 = self;
  }

  return v3;
}

uint64_t __41__CSFAudioMetricsSelfLogger_sharedLogger__block_invoke()
{
  sharedLogger_sharedAudioMetricsSelfLogger = objc_alloc_init(CSFAudioMetricsSelfLogger);

  return MEMORY[0x1EEE66BB8]();
}

@end