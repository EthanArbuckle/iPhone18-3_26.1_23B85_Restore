@interface CSFAudioMetricsSelfLogger
+ (id)sharedLogger;
- (CSFAudioMetricsSelfLogger)init;
- (id)_getPreprocessorCompletedMessageWithMetrics:(id)metrics;
- (id)_getRunPairs:(id)pairs;
- (id)_getSelfFanWithCSSiriFanInfo:(id)info;
- (int)_getMHBluetoothAudioDeviceCategoryFromString:(id)string;
- (int)_getSelfStopRecordingReasonWithADStopRecordingEvent:(unsigned __int16)event;
- (int)_translateAudioSessionCategory:(id)category;
- (int)_translateAudioSessionMode:(id)mode;
- (void)logCoreSpeechPreprocessorCompletedWithMHUUID:(id)d withMetricsDictionary:(id)dictionary;
- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)d withAudioCodecString:(id)string withAudioSkippedNumSamples:(unint64_t)samples;
- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)d withAudioCodecString:(id)string withAudioSkippedTimeInNs:(unint64_t)ns;
- (void)logMHApplicationPlaybackAttemptedWithMHUUID:(id)d withAppBundleName:(id)name withAppBundleVersion:(id)version;
- (void)logMHAssistantDaemonAudioConfigureContextWithMHUUID:(id)d withConfigureStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:(id)d withFetchRouteContextStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioInitContextWithMHUUID:(id)d withInitStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioLateBufferDetectedWithMHUUID:(id)d withBufferReceiptTimeInNs:(unint64_t)ns;
- (void)logMHAssistantDaemonAudioPrepareContextWithMHUUID:(id)d withPrepareStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioPrewarmContextWithMHUUID:(id)d withPrewarmStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioRecordingFailedWithMHUUID:(id)d withReason:(int64_t)reason vendorId:(id)id productId:(id)productId;
- (void)logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:(id)d withStartEvent:(BOOL)event withFirstBufferStartTimeOffsetNs:(unint64_t)ns withFirstBufferReceiptTimeOffsetNs:(unint64_t)offsetNs;
- (void)logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:(id)d withStartEvent:(BOOL)event withLinkID:(id)iD withAvAudioSessionInterruptorName:(id)name withAVAudioSessionInterrupterType:(id)type;
- (void)logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:(id)d withLinkID:(id)iD withActiveSessionDisplayIDs:(id)ds audioSessionCategory:(id)category audioSessionMode:(id)mode;
- (void)logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:(id)d withStartEvent:(BOOL)event withLastBufferStartTimeOffsetNs:(unint64_t)ns withLastBufferReceiptTimeOffsetNs:(unint64_t)offsetNs;
- (void)logMHAssistantDaemonAudioRecordingMissedBufferDetectedWithMHUUID:(id)d;
- (void)logMHAssistantDaemonAudioSessionActivationFailedWithInsufficientPriority:(id)priority activeSessionDisplayIDs:(id)ds audioSessionCategory:(id)category audioSessionMode:(id)mode;
- (void)logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:(id)d withSetActivateStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:(id)d withSetInactiveStarted:(BOOL)started;
- (void)logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:(id)d withStartRecordingContext:(BOOL)context withFanInfoArray:(id)array withActiveSessionDisplayIDs:(id)ds;
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

- (int)_translateAudioSessionMode:(id)mode
{
  modeCopy = mode;
  v4 = modeCopy;
  if (modeCopy)
  {
    if ([modeCopy isEqualToString:*MEMORY[0x1E69AF830]])
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

- (int)_translateAudioSessionCategory:(id)category
{
  categoryCopy = category;
  v4 = categoryCopy;
  if (categoryCopy)
  {
    if ([categoryCopy isEqualToString:*MEMORY[0x1E69AF6F0]])
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

- (void)logMHAssistantDaemonAudioSessionActivationFailedWithInsufficientPriority:(id)priority activeSessionDisplayIDs:(id)ds audioSessionCategory:(id)category audioSessionMode:(id)mode
{
  v10 = MEMORY[0x1E69CEE20];
  modeCopy = mode;
  categoryCopy = category;
  dsCopy = ds;
  priorityCopy = priority;
  v21 = objc_alloc_init(v10);
  v15 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionCategory:categoryCopy];

  [v21 setAudioSessionCategory:v15];
  v16 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionMode:modeCopy];

  [v21 setAudioSessionMode:v16];
  [v21 setActiveSessionDisplayIds:dsCopy];

  v17 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v18 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v19 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:priorityCopy];

  [v18 setMhId:v19];
  [v17 setEventMetadata:v18];
  [v17 setAssistantDaemonAudioRecordingFailureInsufficientPriority:v21];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v17];
}

- (void)logMHAssistantDaemonAudioRecordingFailedWithMHUUID:(id)d withReason:(int64_t)reason vendorId:(id)id productId:(id)productId
{
  v10 = MEMORY[0x1E69CEE18];
  productIdCopy = productId;
  idCopy = id;
  dCopy = d;
  v18 = objc_alloc_init(v10);
  [v18 setReason:{-[CSFAudioMetricsSelfLogger _getSpeechErrorTypeWithRecordingFailedReason:](self, "_getSpeechErrorTypeWithRecordingFailedReason:", reason)}];
  [v18 setAudioInterfaceVendorId:idCopy];

  [v18 setAudioInterfaceProductId:productIdCopy];
  v14 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v15 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v16 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v15 setMhId:v16];
  [v14 setEventMetadata:v15];
  [v14 setAudioRecordingFailed:v18];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v14];
}

- (void)logMHApplicationPlaybackAttemptedWithMHUUID:(id)d withAppBundleName:(id)name withAppBundleVersion:(id)version
{
  v7 = MEMORY[0x1E69CED68];
  versionCopy = version;
  nameCopy = name;
  dCopy = d;
  v15 = objc_alloc_init(v7);
  [v15 setAppBundleName:nameCopy];

  [v15 setAppBundleVersion:versionCopy];
  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v12 setMhId:v13];
  [v11 setEventMetadata:v12];
  [v11 setApplicationPlaybackAttempted:v15];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v11];
}

- (void)logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:(id)d withLinkID:(id)iD withActiveSessionDisplayIDs:(id)ds audioSessionCategory:(id)category audioSessionMode:(id)mode
{
  v38 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  v14 = MEMORY[0x1E69CEE50];
  dsCopy = ds;
  iDCopy = iD;
  dCopy = d;
  v18 = objc_alloc_init(v14);
  v19 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:iDCopy];

  [v18 setLinkId:v19];
  [v18 setActiveSessionDisplayIds:dsCopy];

  v20 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionCategory:categoryCopy];
  v21 = [(CSFAudioMetricsSelfLogger *)self _translateAudioSessionMode:modeCopy];
  v22 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136316162;
    v29 = "[CSFAudioMetricsSelfLogger logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:withLinkID:withActiveSessionDisplayIDs:audioSessionCategory:audioSessionMode:]";
    v30 = 2112;
    v31 = categoryCopy;
    v32 = 1024;
    v33 = v20;
    v34 = 2112;
    v35 = modeCopy;
    v36 = 1024;
    v37 = v21;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s Currently Active Category: %@[%d]. Mode: %@[%d]", &v28, 0x2Cu);
  }

  [v18 setAudioSessionCategory:v20];
  [v18 setAudioSessionMode:v21];
  v23 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v24 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v25 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v24 setMhId:v25];
  [v23 setEventMetadata:v24];
  [v23 setAssistantDaemonAudioRecordingInterruptionStartedTier1:v18];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v23];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:(id)d withStartEvent:(BOOL)event withLinkID:(id)iD withAvAudioSessionInterruptorName:(id)name withAVAudioSessionInterrupterType:(id)type
{
  eventCopy = event;
  iDCopy = iD;
  nameCopy = name;
  typeCopy = type;
  v13 = MEMORY[0x1E69CEE38];
  dCopy = d;
  v15 = objc_alloc_init(v13);
  if (eventCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69CEE48]);
    v17 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:iDCopy];
    [v16 setLinkId:v17];

    [v16 setAvAudioSessionInterruptorName:nameCopy];
    [v16 setAvAudioSessionInterruptionType:typeCopy];
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
  v20 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v19 setMhId:v20];
  [v18 setEventMetadata:v19];
  [v18 setAssistantDaemonAudioRecordingInterruptionContext:v15];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v18];
}

- (void)logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:(id)d withStartEvent:(BOOL)event withLastBufferStartTimeOffsetNs:(unint64_t)ns withLastBufferReceiptTimeOffsetNs:(unint64_t)offsetNs
{
  eventCopy = event;
  v9 = MEMORY[0x1E69CEE58];
  dCopy = d;
  v16 = objc_alloc_init(v9);
  if (eventCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE68]);
    [v11 setLastAudioRecordBufferStartTimeOffsetInNs:ns];
    [v16 setStartedOrChanged:v11];
    [v16 setHasStartedOrChanged:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE60]);
    [v11 setLastAudioRecordBufferReceiptTimeOffsetInNs:offsetNs];
    [v16 setEnded:v11];
    [v16 setHasEnded:1];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v13 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v14 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v13 setMhId:v14];
  [v12 setEventMetadata:v13];
  [v12 setAssistantDaemonAudioRecordingLastBufferContext:v16];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v12];
}

- (void)logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:(id)d withStartEvent:(BOOL)event withFirstBufferStartTimeOffsetNs:(unint64_t)ns withFirstBufferReceiptTimeOffsetNs:(unint64_t)offsetNs
{
  eventCopy = event;
  v9 = MEMORY[0x1E69CEE28];
  dCopy = d;
  v16 = objc_alloc_init(v9);
  if (eventCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE30]);
    [v11 setFirstBufferStartTimeOffsetInNs:ns];
    [v16 setStartedOrChanged:v11];
    [v16 setHasStartedOrChanged:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CEE00]);
    [v11 setFirstBufferReceiptTimeOffsetInNs:offsetNs];
    [v16 setEnded:v11];
    [v16 setHasEnded:1];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v13 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v14 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v13 setMhId:v14];
  [v12 setEventMetadata:v13];
  [v12 setAssistantDaemonAudioRecordingFirstBufferContext:v16];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v12];
}

- (void)logMHAssistantDaemonAudioLateBufferDetectedWithMHUUID:(id)d withBufferReceiptTimeInNs:(unint64_t)ns
{
  v5 = MEMORY[0x1E69CEDC8];
  dCopy = d;
  v10 = objc_alloc_init(v5);
  [v10 setBufferReceiptTimeOffsetInNs:ns];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v8 setMhId:v9];
  [v7 setEventMetadata:v8];
  [v7 setAssistantDaemonAudioLateBufferDetected:v10];
}

- (void)logMHAssistantDaemonAudioRecordingMissedBufferDetectedWithMHUUID:(id)d
{
  v3 = MEMORY[0x1E69CEE70];
  dCopy = d;
  v9 = objc_alloc_init(v3);
  [v9 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  [v5 setAssistantDaemonAudioRecordingMissedBufferDetected:v9];
  v6 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v7 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v6 setMhId:v7];
  [v5 setEventMetadata:v6];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v5];
}

- (void)logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:(id)d withFetchRouteContextStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CED98];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioFetchRouteContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:(id)d withSetInactiveStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CEE98];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioSessionSetInactiveContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:(id)d withSetActivateStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CEE80];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioSessionSetActiveContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:(id)d withStartRecordingContext:(BOOL)context withFanInfoArray:(id)array withActiveSessionDisplayIDs:(id)ds
{
  contextCopy = context;
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  arrayCopy = array;
  dsCopy = ds;
  v13 = objc_alloc_init(MEMORY[0x1E69CEEB0]);
  if (contextCopy)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CEEC0]);
    [v14 setExists:1];
    [v13 setStartedOrChanged:v14];
    [v13 setHasStartedOrChanged:1];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CEEB8]);
    if (arrayCopy)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [(CSFAudioMetricsSelfLogger *)self _getSelfFanWithCSSiriFanInfo:arrayCopy, 0];
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

    [v14 setActiveSessionDisplayIds:dsCopy];
    [v13 setEnded:v14];
    [v13 setHasEnded:1];
  }

  v20 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v21 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v22 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];
  [v21 setMhId:v22];

  [v20 setEventMetadata:v21];
  [v20 setAssistantDaemonAudioStartRecordingContext:v13];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v20];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)logMHAssistantDaemonAudioPrewarmContextWithMHUUID:(id)d withPrewarmStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CEDE8];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioPrewarmContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioPrepareContextWithMHUUID:(id)d withPrepareStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CEDD0];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioPrepareContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioConfigureContextWithMHUUID:(id)d withConfigureStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CED78];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioConfigureContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHAssistantDaemonAudioInitContextWithMHUUID:(id)d withInitStarted:(BOOL)started
{
  startedCopy = started;
  v5 = MEMORY[0x1E69CEDB0];
  dCopy = d;
  v12 = objc_alloc_init(v5);
  if (startedCopy)
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
  v10 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v9 setMhId:v10];
  [v8 setEventMetadata:v9];
  [v8 setAssistantDaemonAudioInitContext:v12];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v8];
}

- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)d withAudioCodecString:(id)string withAudioSkippedTimeInNs:(unint64_t)ns
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  stringCopy = string;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[CSFAudioMetricsSelfLogger logMHASRAudioConfigureStartedWithMHUUID:withAudioCodecString:withAudioSkippedTimeInNs:]";
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = stringCopy;
    v22 = 2048;
    nsCopy = ns;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s logMHASRAudioConfigureStartedWithMHUUID: %@, CodeC: %@, SkippedTimeInNs:%llu", &v16, 0x2Au);
  }

  v10 = objc_alloc_init(MEMORY[0x1E69CED60]);
  [v10 setAudioCodec:SASCodecForString()];
  [v10 setAudioSkippedTimeInNs:ns];
  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];
  [v12 setMhId:v13];

  [v11 setEventMetadata:v12];
  [v11 setAsrAudioConfigureStarted:v10];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v11];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)logMHASRAudioConfigureStartedWithMHUUID:(id)d withAudioCodecString:(id)string withAudioSkippedNumSamples:(unint64_t)samples
{
  v7 = MEMORY[0x1E69CED60];
  stringCopy = string;
  dCopy = d;
  v15 = objc_alloc_init(v7);
  v10 = SASCodecForString();

  [v15 setAudioCodec:v10];
  if (samples)
  {
    [v15 setAudioSkippedNumSamples:samples];
  }

  v11 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v12 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v13 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v12 setMhId:v13];
  [v11 setEventMetadata:v12];
  [v11 setAsrAudioConfigureStarted:v15];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v11];
}

- (void)logCoreSpeechPreprocessorCompletedWithMHUUID:(id)d withMetricsDictionary:(id)dictionary
{
  dCopy = d;
  v11 = [(CSFAudioMetricsSelfLogger *)self _getPreprocessorCompletedMessageWithMetrics:dictionary];
  v7 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  v8 = objc_alloc_init(MEMORY[0x1E69CEF00]);
  v9 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v8 setMhId:v9];
  [v7 setEventMetadata:v8];
  [v7 setCoreSpeechPreprocessorCompleted:v11];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v7];
}

- (id)_getPreprocessorCompletedMessageWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc_init(MEMORY[0x1E69CEF08]);
  v6 = [metricsCopy objectForKey:@"ZeroFilterMetrics"];
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

  v12 = [metricsCopy objectForKey:@"BeepCancellerMetrics"];
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

- (id)_getRunPairs:(id)pairs
{
  v22 = *MEMORY[0x1E69E9840];
  pairsCopy = pairs;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = pairsCopy;
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

- (int)_getMHBluetoothAudioDeviceCategoryFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E69AEBB0]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69AEBD0]])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69AEBB8]])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69AEBC0]])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69AEBC8]])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_getSelfStopRecordingReasonWithADStopRecordingEvent:(unsigned __int16)event
{
  if (event > 8u)
  {
    return 1;
  }

  else
  {
    return *&aMcplsupoxeps[4 * event + 12];
  }
}

- (id)_getSelfFanWithCSSiriFanInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = infoCopy;
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
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFAudioMetricsSelfLogger;
    self = [(CSFAudioMetricsSelfLogger *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __41__CSFAudioMetricsSelfLogger_sharedLogger__block_invoke()
{
  sharedLogger_sharedAudioMetricsSelfLogger = objc_alloc_init(CSFAudioMetricsSelfLogger);

  return MEMORY[0x1EEE66BB8]();
}

@end