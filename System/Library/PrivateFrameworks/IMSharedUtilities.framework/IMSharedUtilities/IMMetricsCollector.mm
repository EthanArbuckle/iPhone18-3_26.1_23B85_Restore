@interface IMMetricsCollector
+ (id)_IMServiceNameToSentMessageEventType:(id)type;
+ (id)sharedInstance;
+ (id)stringForFZErrorType:(unsigned int)type;
- (BOOL)trackAction:(id)action extensionBundleID:(id)d isNotification:(BOOL)notification;
- (BOOL)trackEvent:(id)event;
- (BOOL)trackEvent:(id)event withCount:(id)count;
- (BOOL)trackEvent:(id)event withDictionary:(id)dictionary;
- (BOOL)trackEvent:(id)event withStatistic:(id)statistic;
- (IMMetricsCollector)init;
- (id)_stringForDeleteMessagesType:(unint64_t)type;
- (id)_stringForSpamType:(unint64_t)type;
- (id)_stringForiMessageJunkType:(unint64_t)type;
- (unint64_t)keepMessagesSourceTypeForDays:(int64_t)days;
- (void)_ADClientAddValueForScalarKeyApiInit;
- (void)_ADClientPushValueForDistributionKeyApiInit;
- (void)_ADClientSetValueForScalarKeyApiInit;
- (void)_trackEvent:(id)event;
- (void)_trackEvent:(id)event withCount:(id)count;
- (void)_trackEvent:(id)event withDictionary:(id)dictionary;
- (void)_trackEvent:(id)event withStatistic:(id)statistic;
- (void)_trackTranscodeFailureWithReason:(unint64_t)reason messageType:(unint64_t)type sourceFile:(id)file sizeLimits:(id)limits isSticker:(BOOL)sticker lowQualityModeEnabled:(BOOL)enabled;
- (void)_trackTranscodeWithReason:(unint64_t)reason messageType:(unint64_t)type sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)self0 lowQualityModeEnabled:(BOOL)self1;
- (void)autoBugCaptureWithSubType:(id)type errorPayload:(id)payload;
- (void)dealloc;
- (void)forceAutoBugCaptureWithSubType:(id)type errorPayload:(id)payload;
- (void)forceAutoBugCaptureWithSubType:(id)type errorPayload:(id)payload type:(id)a5 context:(id)context metadata:(id)metadata;
- (void)metricAttachmentValidation:(BOOL)validation attachmentSize:(id)size operationalErrorDomain:(id)domain operationalErrorCode:(id)code validationErrorDomain:(id)errorDomain validationErrorCode:(id)errorCode;
- (void)trackAttachmentDownloadFailedWithFileSize:(id)size reason:(int64_t)reason context:(id)context;
- (void)trackAttachmentDownloadSuccess:(id)success context:(id)context;
- (void)trackAttachmentRenderingAttempt:(BOOL)attempt failureReason:(id)reason;
- (void)trackDeleteMessages:(id)messages sourceType:(unint64_t)type;
- (void)trackMMSTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)enabled;
- (void)trackMessagesWithoutChatsWithContext:(id)context;
- (void)trackRCSTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)self0;
- (void)trackSentMessageEventOfType:(id)type subtype:(id)subtype originalServiceName:(id)name messageSize:(unint64_t)size sendDuration:(id)duration receiverType:(id)receiverType receiverGroupType:(id)groupType wasSuccessful:(BOOL)self0 sourceHandle:(id)self1 destinationHandle:(id)self2 error:(id)self3;
- (void)trackSpamEvent:(unint64_t)event withDictionary:(id)dictionary;
- (void)trackiMessageJunkEvent:(unint64_t)event withDictionary:(id)dictionary;
- (void)trackiMessageTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)self0;
@end

@implementation IMMetricsCollector

+ (id)sharedInstance
{
  if (qword_1ED8CA468 != -1)
  {
    sub_1A8603EC4();
  }

  return qword_1ED8CA3D0;
}

- (IMMetricsCollector)init
{
  v6.receiver = self;
  v6.super_class = IMMetricsCollector;
  v2 = [(IMMetricsCollector *)&v6 init];
  if (v2)
  {
    v2->_metricsQueue = dispatch_queue_create("com.apple.private.IMSharedUtilities.IMMetricsCollector", 0);
    v2->_diagnosticReporter = objc_alloc_init(MEMORY[0x1AC570AA0](@"SDRDiagnosticReporter", @"SymptomDiagnosticReporter"));
    if (!qword_1ED8C9A88)
    {
      v3 = MEMORY[0x1AC570AB0]("kSymptomDiagnosticSignatureSubTypeContext", @"SymptomDiagnosticReporter");
      if (v3)
      {
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

      qword_1ED8C9A88 = v4;
    }
  }

  return v2;
}

- (void)trackiMessageTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)self0
{
  *(&v10 + 1) = __PAIR16__(enabled, transcoded);
  LOBYTE(v10) = sticker;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:reason sourceFile:1 highQualityFile:file lowQualityFile:qualityFile sizeLimits:lowQualityFile isSticker:limits transcoded:v10 lowQualityModeEnabled:?];
}

- (void)trackMMSTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)enabled
{
  BYTE2(v9) = enabled;
  BYTE1(v9) = transcoded;
  LOBYTE(v9) = 0;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:reason sourceFile:2 highQualityFile:file lowQualityFile:qualityFile sizeLimits:lowQualityFile isSticker:limits transcoded:v9 lowQualityModeEnabled:?];
}

- (void)trackRCSTranscodeWithReason:(unint64_t)reason sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)transcoded lowQualityModeEnabled:(BOOL)self0
{
  *(&v10 + 1) = __PAIR16__(enabled, transcoded);
  LOBYTE(v10) = sticker;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:reason sourceFile:3 highQualityFile:file lowQualityFile:qualityFile sizeLimits:lowQualityFile isSticker:limits transcoded:v10 lowQualityModeEnabled:?];
}

- (void)_trackTranscodeWithReason:(unint64_t)reason messageType:(unint64_t)type sourceFile:(id)file highQualityFile:(id)qualityFile lowQualityFile:(id)lowQualityFile sizeLimits:(id)limits isSticker:(BOOL)sticker transcoded:(BOOL)self0 lowQualityModeEnabled:(BOOL)self1
{
  fileCopy = file;
  qualityFileCopy = qualityFile;
  lowQualityFileCopy = lowQualityFile;
  limitsCopy = limits;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = *MEMORY[0x1E695DB50];
  v20 = *MEMORY[0x1E695DAA0];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  if (fileCopy)
  {
    v22 = [fileCopy resourceValuesForKeys:v21 error:0];
    if (qualityFileCopy)
    {
LABEL_3:
      v60 = [qualityFileCopy resourceValuesForKeys:v21 error:0];
      goto LABEL_6;
    }
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
    if (qualityFileCopy)
    {
      goto LABEL_3;
    }
  }

  v60 = MEMORY[0x1E695E0F8];
LABEL_6:
  v58 = lowQualityFileCopy;
  v59 = qualityFileCopy;
  v56 = v21;
  if (lowQualityFileCopy)
  {
    v23 = [lowQualityFileCopy resourceValuesForKeys:v21 error:0];
  }

  else
  {
    v23 = MEMORY[0x1E695E0F8];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [dictionary setObject:v24 forKey:@"message_type"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  [dictionary setObject:v25 forKey:@"transcode_reason"];

  v26 = [v22 objectForKey:v20];
  v62 = [v60 objectForKey:v20];
  v27 = [v23 objectForKey:v20];
  v54 = v22;
  v28 = [v22 objectForKey:v19];
  v29 = [v60 objectForKey:v19];
  v53 = v23;
  v30 = [v23 objectForKey:v19];
  if (sticker)
  {
    v31 = 3;
  }

  else
  {
    v31 = 0;
  }

  identifier = [v26 identifier];
  v33 = [identifier length];

  if (!v33)
  {
    v35 = limitsCopy;
    v34 = v62;
    goto LABEL_26;
  }

  v34 = v62;
  if (sticker)
  {
    v31 = 3;
  }

  else
  {
    identifier2 = [v26 identifier];
    if (!IMUTTypeIsImage(identifier2))
    {
      identifier3 = [v26 identifier];
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(identifier3);

      v35 = limitsCopy;
      if (IsSupportedAnimatedImage)
      {
        v31 = 1;
      }

      else
      {
        identifier4 = [v26 identifier];
        IsMovie = IMUTTypeIsMovie(identifier4);

        if (IsMovie)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }
      }

      v34 = v62;
      goto LABEL_25;
    }

    v31 = 1;
  }

  v35 = limitsCopy;
LABEL_25:
  identifier5 = [v26 identifier];
  [dictionary setObject:identifier5 forKey:@"original_uttype"];

LABEL_26:
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
  [dictionary setObject:v42 forKey:@"attachment_type"];

  identifier6 = [v34 identifier];
  v44 = [identifier6 length];

  if (v44)
  {
    identifier7 = [v34 identifier];
    [dictionary setObject:identifier7 forKey:@"high_quality_uttype"];
  }

  identifier8 = [v27 identifier];
  v47 = [identifier8 length];

  if (v47)
  {
    identifier9 = [v27 identifier];
    [dictionary setObject:identifier9 forKey:@"low_quality_uttype"];
  }

  if (v28)
  {
    [dictionary setObject:v28 forKey:@"original_size"];
  }

  if (v29)
  {
    [dictionary setObject:v29 forKey:@"high_quality_size_result"];
  }

  if (v30)
  {
    [dictionary setObject:v30 forKey:@"low_quality_size_result"];
  }

  firstObject = [v35 firstObject];
  if ([v35 count] < 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = [v35 objectAtIndex:1];
  }

  if (firstObject)
  {
    [dictionary setObject:firstObject forKey:@"high_quality_size_limit"];
  }

  if (v50)
  {
    [dictionary setObject:v50 forKey:@"low_quality_size_limit"];
  }

  v51 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [dictionary setObject:v51 forKey:@"low_quality_mode_enabled"];

  v52 = [MEMORY[0x1E696AD98] numberWithBool:transcoded];
  [dictionary setObject:v52 forKey:@"was_transcoded"];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventTranscodeAttachmentAttempt" withDictionary:dictionary];
}

- (void)_trackTranscodeFailureWithReason:(unint64_t)reason messageType:(unint64_t)type sourceFile:(id)file sizeLimits:(id)limits isSticker:(BOOL)sticker lowQualityModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  stickerCopy = sticker;
  fileCopy = file;
  limitsCopy = limits;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = *MEMORY[0x1E695DB50];
  v15 = *MEMORY[0x1E695DAA0];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  v36 = v16;
  if (fileCopy)
  {
    v17 = [fileCopy resourceValuesForKeys:v16 error:0];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [dictionary setObject:v18 forKey:@"message_type"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  [dictionary setObject:v19 forKey:@"transcode_reason"];

  v20 = [v17 objectForKey:v15];
  v21 = [v17 objectForKey:v14];
  if (stickerCopy)
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  identifier = [v20 identifier];
  v24 = [identifier length];

  if (v24)
  {
    if (stickerCopy)
    {
      v22 = 3;
    }

    else
    {
      identifier2 = [v20 identifier];
      if (IMUTTypeIsImage(identifier2))
      {
      }

      else
      {
        identifier3 = [v20 identifier];
        IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(identifier3);

        if (!IsSupportedAnimatedImage)
        {
          identifier4 = [v20 identifier];
          IsMovie = IMUTTypeIsMovie(identifier4);

          if (IsMovie)
          {
            v22 = 2;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_17;
        }
      }

      v22 = 1;
    }

LABEL_17:
    identifier5 = [v20 identifier];
    [dictionary setObject:identifier5 forKey:@"original_uttype"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  [dictionary setObject:v31 forKey:@"attachment_type"];

  if (v21)
  {
    [dictionary setObject:v21 forKey:@"original_size"];
  }

  firstObject = [limitsCopy firstObject];
  if ([limitsCopy count] < 2)
  {
    v33 = 0;
    if (!firstObject)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v33 = [limitsCopy objectAtIndex:1];
  if (firstObject)
  {
LABEL_24:
    [dictionary setObject:firstObject forKey:@"high_quality_size_limit"];
  }

LABEL_25:
  if (v33)
  {
    [dictionary setObject:v33 forKey:@"low_quality_size_limit"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [dictionary setObject:v34 forKey:@"low_quality_mode_enabled"];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventTranscodeAttachmentFailure" withDictionary:dictionary];
}

- (void)trackAttachmentDownloadSuccess:(id)success context:(id)context
{
  successCopy = success;
  v6 = MEMORY[0x1E695DF90];
  contextCopy = context;
  dictionary = [v6 dictionary];
  v9 = *MEMORY[0x1E695DB50];
  v10 = *MEMORY[0x1E695DAA0];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  if (successCopy)
  {
    v12 = [successCopy resourceValuesForKeys:v11 error:0];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"was_downloaded"];
  v13 = [v12 objectForKey:v10];
  v14 = [v12 objectForKey:v9];
  [contextCopy _setValuesOnMetricsDictionary:dictionary withFileSize:v14 sourceType:v13];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDownloadAttachmentAttempt" withDictionary:dictionary];
}

- (void)trackAttachmentDownloadFailedWithFileSize:(id)size reason:(int64_t)reason context:(id)context
{
  v8 = MEMORY[0x1E695DF90];
  contextCopy = context;
  sizeCopy = size;
  dictionary = [v8 dictionary];
  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"was_downloaded"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [dictionary setObject:v11 forKeyedSubscript:@"failure_reason"];

  [contextCopy _setValuesOnMetricsDictionary:dictionary withFileSize:sizeCopy sourceType:0];
  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDownloadAttachmentAttempt" withDictionary:dictionary];
}

- (void)trackAttachmentRenderingAttempt:(BOOL)attempt failureReason:(id)reason
{
  attemptCopy = attempt;
  reasonCopy = reason;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = dictionary;
  if (attemptCopy)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"IsRenderingSuccessful"];
    v8 = &stru_1F1BB91F0;
    v9 = v7;
  }

  else
  {
    [dictionary setObject:MEMORY[0x1E695E110] forKey:@"IsRenderingSuccessful"];
    v9 = v7;
    v8 = reasonCopy;
  }

  [v9 setObject:v8 forKey:@"RenderingFailureReasons"];
  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventRCSAttachmentRendering" withDictionary:v7];
}

- (void)dealloc
{
  dispatch_release(self->_metricsQueue);

  v3.receiver = self;
  v3.super_class = IMMetricsCollector;
  [(IMMetricsCollector *)&v3 dealloc];
}

- (void)_ADClientAddValueForScalarKeyApiInit
{
  if (qword_1ED8C99B0 != -1)
  {
    sub_1A88C5CF0();
  }

  return off_1ED8C99B8;
}

- (void)_ADClientPushValueForDistributionKeyApiInit
{
  if (qword_1ED8C98B0 != -1)
  {
    sub_1A88C5D04();
  }

  return off_1ED8C98B8;
}

- (void)_ADClientSetValueForScalarKeyApiInit
{
  if (qword_1ED8C9950 != -1)
  {
    sub_1A860415C();
  }

  return off_1ED8C9958;
}

- (void)_trackEvent:(id)event
{
  v6 = *MEMORY[0x1E69E9840];
  if (event)
  {
    if (qword_1ED8C99B0 != -1)
    {
      sub_1A88C5CF0();
    }

    if (off_1ED8C99B8)
    {
      off_1ED8C99B8(event, 1);
    }

    else if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "IMMetricsCollector, Could not weak link ADClientAddValueForScalarKey", v5, 2u);
      }
    }

    AnalyticsSendEvent();
  }
}

- (BOOL)trackEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      eventCopy = event;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "trackEvent %@", buf, 0xCu);
    }
  }

  metricsQueue = self->_metricsQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86ED2C8;
  v8[3] = &unk_1E782AE58;
  v8[4] = self;
  v8[5] = event;
  dispatch_async(metricsQueue, v8);
  return 1;
}

- (void)_trackEvent:(id)event withStatistic:(id)statistic
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (event && statistic)
  {
    if (qword_1ED8C98B0 != -1)
    {
      sub_1A88C5D04();
    }

    v6 = off_1ED8C98B8;
    if (off_1ED8C98B8)
    {
      [statistic doubleValue];
      v6(event);
    }

    else if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "IMMetricsCollector, Could not weak link AggdPushValueForDistributionKey", v8, 2u);
      }
    }

    v9 = @"statistic";
    v10[0] = statistic;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    AnalyticsSendEvent();
  }
}

- (BOOL)trackEvent:(id)event withStatistic:(id)statistic
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      eventCopy2 = event;
      v15 = 2112;
      statisticCopy = statistic;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ withStatistic %@", buf, 0x16u);
    }
  }

  if (statistic && ![statistic isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AB90], "notANumber")}])
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86ED690;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = event;
    block[6] = statistic;
    dispatch_async(metricsQueue, block);
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = IMOSLoggingEnabled();
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      v8 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v8)
      {
        *buf = 138412290;
        eventCopy2 = event;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil statistic passed in for event %@", buf, 0xCu);
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

- (void)_trackEvent:(id)event withCount:(id)count
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (event && count)
  {
    if (qword_1ED8C9950 != -1)
    {
      sub_1A860415C();
    }

    if (off_1ED8C9958)
    {
      (off_1ED8C9958)(event, [count integerValue]);
    }

    else if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "IMMetricsCollector, Could not weak link AggdPushValueForDistributionKey", v7, 2u);
      }
    }

    v8 = @"count";
    v9[0] = count;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    AnalyticsSendEvent();
  }
}

- (BOOL)trackAction:(id)action extensionBundleID:(id)d isNotification:(BOOL)notification
{
  notificationCopy = notification;
  v12[3] = *MEMORY[0x1E69E9840];
  v9 = [d length];
  if (v9)
  {
    v9 = [action length];
    if (v9)
    {
      v11[0] = @"bundleID";
      v11[1] = @"action";
      v12[0] = d;
      v12[1] = action;
      v11[2] = @"isNotification";
      v12[2] = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
      -[IMMetricsCollector _trackEvent:withDictionary:](self, "_trackEvent:withDictionary:", @"com.apple.Messages.IMMetricsCollectorMessageExtensionAction", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3]);
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)_trackEvent:(id)event withDictionary:(id)dictionary
{
  if (event)
  {
    if (dictionary)
    {
      AnalyticsSendEvent();
    }
  }
}

- (BOOL)trackEvent:(id)event withCount:(id)count
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      eventCopy2 = event;
      v14 = 2112;
      countCopy = count;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ with count %@", buf, 0x16u);
    }
  }

  if (count)
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86EDC40;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = event;
    block[6] = count;
    dispatch_async(metricsQueue, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      eventCopy2 = event;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil count passed in for event %@", buf, 0xCu);
    }
  }

  return count != 0;
}

- (BOOL)trackEvent:(id)event withDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      eventCopy2 = event;
      v14 = 2112;
      dictionaryCopy = dictionary;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ with dictionary %@", buf, 0x16u);
    }
  }

  if (dictionary)
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86EDE04;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = event;
    block[6] = dictionary;
    dispatch_async(metricsQueue, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      eventCopy2 = event;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil dictionary passed in for event %@", buf, 0xCu);
    }
  }

  return dictionary != 0;
}

- (void)autoBugCaptureWithSubType:(id)type errorPayload:(id)payload
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "*** Auto bug capture not supported ***", v5, 2u);
    }
  }
}

- (void)forceAutoBugCaptureWithSubType:(id)type errorPayload:(id)payload
{
  userInfo = [payload userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  if (![(__CFString *)v7 length])
  {
    v7 = @"No context";
  }

  if (v7 && [(__CFString *)v7 length]>= 0x37)
  {
    v7 = [(__CFString *)v7 substringToIndex:54];
  }

  v8 = MEMORY[0x1E696AEC0];
  domain = [payload domain];
  [v8 stringWithFormat:@"%@-%@-%@", domain, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(payload, "code")), v7];

  MEMORY[0x1EEE66B58](self, sel_forceAutoBugCaptureWithSubType_errorPayload_type_context_);
}

- (void)forceAutoBugCaptureWithSubType:(id)type errorPayload:(id)payload type:(id)a5 context:(id)context metadata:(id)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] && objc_msgSend(objc_msgSend(MEMORY[0x1E69A60F0], "sharedInstance"), "isInternalInstall"))
  {
    v13 = [objc_msgSend(MEMORY[0x1E699BE90] "sharedInstance")];
    v14 = MEMORY[0x1E696AD98];
    mEMORY[0x1E69A61A8] = [MEMORY[0x1E69A61A8] sharedInstance];
    if (v13)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    v25 = [v14 numberWithInt:{objc_msgSend(mEMORY[0x1E69A61A8], "linkQualityValueForInterfaceType:", v16)}];
    userInfo = [payload userInfo];
    v18 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];
    if (qword_1EB30B748 != -1)
    {
      sub_1A88C5D18();
    }

    v19 = off_1EB30B740;
    if (off_1EB30B740)
    {
      domain = [payload domain];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(payload, "code")}];
      domain2 = [v18 domain];
      v19(type, domain, v23, domain2, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "code")}], v25);
    }

    if (self->_diagnosticReporter)
    {
      metricsQueue = self->_metricsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A86EE368;
      block[3] = &unk_1E782AED0;
      block[4] = self;
      block[5] = a5;
      block[6] = type;
      block[7] = context;
      block[8] = payload;
      block[9] = metadata;
      dispatch_async(metricsQueue, block);
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "IMMetricsCollector could not get diagnostic reporter class", &buf, 2u);
      }
    }
  }
}

- (void)metricAttachmentValidation:(BOOL)validation attachmentSize:(id)size operationalErrorDomain:(id)domain operationalErrorCode:(id)code validationErrorDomain:(id)errorDomain validationErrorCode:(id)errorCode
{
  validationCopy = validation;
  v14 = [objc_msgSend(MEMORY[0x1E699BE90] "sharedInstance")];
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(MEMORY[0x1E69A61A8], "sharedInstance"), "linkQualityValueForInterfaceType:", v15)}];
  if (qword_1EB30B758 != -1)
  {
    sub_1A88C5D2C();
  }

  if (off_1EB30B750)
  {
    if (v14)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v20 = off_1EB30B750;
    v18 = [MEMORY[0x1E696AD98] numberWithInt:v17];

    v20(validationCopy, size, domain, code, errorDomain, errorCode, v16, v18);
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "We failed to weak link FTAWDLogIMessageCloudKitValidatePurgeableAttachment to validate metric", buf, 2u);
    }
  }
}

- (void)trackSentMessageEventOfType:(id)type subtype:(id)subtype originalServiceName:(id)name messageSize:(unint64_t)size sendDuration:(id)duration receiverType:(id)receiverType receiverGroupType:(id)groupType wasSuccessful:(BOOL)self0 sourceHandle:(id)self1 destinationHandle:(id)self2 error:(id)self3
{
  v46 = *MEMORY[0x1E69E9840];
  if (duration)
  {
    if ([duration compare:&unk_1F1BFAAF0] == -1)
    {
      durationCopy = &unk_1F1BFAAF0;
    }

    else
    {
      durationCopy = duration;
    }
  }

  else
  {
    durationCopy = 0;
  }

  v36 = durationCopy;
  if (destinationHandle)
  {
    v16 = [objc_msgSend(MEMORY[0x1E69A51E8] "sharedInstance")];
  }

  else
  {
    v16 = 0;
  }

  if (handle && (v17 = -[CTXPCContexts subscriptions](-[IMCTSubscriptionUtilities ctActiveContexts](+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities, "sharedInstance"), "ctActiveContexts"), "subscriptions"), v39 = 0u, v40 = 0u, v41 = 0u, v42 = 0u, (v18 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16]) != 0))
  {
    v19 = v18;
    v20 = *v40;
    v32 = v16;
    while (2)
    {
      selfCopy = self;
      for (i = 0; i != v19; ++i)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        if ([objc_msgSend(v23 "phoneNumber")] && objc_msgSend(MEMORY[0x1E69A51E8], "isPhoneNumber:equivalentToExistingPhoneNumber:", objc_msgSend(v23, "phoneNumber"), handle))
        {
          null3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "slotID") == 0}];
          self = selfCopy;
          v16 = v32;
          goto LABEL_22;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
      null3 = 0;
      self = selfCopy;
      v16 = v32;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    null3 = 0;
  }

LABEL_22:
  if (name)
  {
    null = [IMMetricsCollector _IMServiceNameToSentMessageEventType:?];
  }

  else
  {
    null = 0;
  }

  v43[0] = @"type";
  typeCopy = type;
  if (!type)
  {
    typeCopy = [MEMORY[0x1E695DFB0] null];
  }

  v44[0] = typeCopy;
  v43[1] = @"subtype";
  subtypeCopy = subtype;
  if (!subtype)
  {
    subtypeCopy = [MEMORY[0x1E695DFB0] null];
  }

  v44[1] = subtypeCopy;
  v43[2] = @"original_type";
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44[2] = null;
  v43[3] = @"message_size";
  v44[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:size];
  v43[4] = @"send_duration";
  null2 = v36;
  if (!v36)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  groupTypeCopy = groupType;
  v44[4] = null2;
  v43[5] = @"receiver_type";
  receiverTypeCopy = receiverType;
  if (!receiverType)
  {
    receiverTypeCopy = [MEMORY[0x1E695DFB0] null];
  }

  errorCopy = error;
  v44[5] = receiverTypeCopy;
  v43[6] = @"receiver_group_type";
  if (!groupType)
  {
    groupTypeCopy = [MEMORY[0x1E695DFB0] null];
  }

  v44[6] = groupTypeCopy;
  v43[7] = @"was_successful";
  v44[7] = [MEMORY[0x1E696AD98] numberWithBool:successful];
  v43[8] = @"error_cause";
  if (!error)
  {
    errorCopy = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = errorCopy;
  v43[9] = @"is_emergency";
  v44[9] = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v43[10] = @"is_partially_active_sim";
  if (!null3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v44[10] = null3;
  -[IMMetricsCollector trackEvent:withDictionary:](self, "trackEvent:withDictionary:", @"com.apple.Messages.IMMetricsCollectorEventSentMessage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:11]);
}

+ (id)_IMServiceNameToSentMessageEventType:(id)type
{
  if ([type isEqualToString:IMServiceNameSatelliteSMS])
  {
    return @"SMSOverSatellite";
  }

  else
  {
    return type;
  }
}

+ (id)stringForFZErrorType:(unsigned int)type
{
  if (type > 0x2C)
  {
    return @"???";
  }

  else
  {
    return off_1E782AF18[type];
  }
}

- (void)trackSpamEvent:(unint64_t)event withDictionary:(id)dictionary
{
  v6 = [(IMMetricsCollector *)self _stringForSpamType:event];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:@"type"];
    v8 = v7;
    if (dictionary)
    {
      [v7 addEntriesFromDictionary:dictionary];
    }

    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventInternationalSpam" withDictionary:v8];
  }
}

- (id)_stringForSpamType:(unint64_t)type
{
  if (type - 1 > 0x1F)
  {
    return 0;
  }

  else
  {
    return off_1E782B080[type - 1];
  }
}

- (void)trackiMessageJunkEvent:(unint64_t)event withDictionary:(id)dictionary
{
  v6 = [(IMMetricsCollector *)self _stringForiMessageJunkType:event];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:@"type"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A86EEED8;
    v8[3] = &unk_1E782AEF8;
    v8[4] = self;
    v8[5] = v7;
    [dictionary enumerateKeysAndObjectsUsingBlock:v8];
    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventOscar" withDictionary:v7];
  }
}

- (id)_stringForiMessageJunkType:(unint64_t)type
{
  if (type - 1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E782B180[type - 1];
  }
}

- (void)trackDeleteMessages:(id)messages sourceType:(unint64_t)type
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = [messages isEqualToNumber:&unk_1F1BFAAF0];
  if (type && (v7 & 1) == 0)
  {
    v14[0] = @"source_type";
    v14[1] = @"count_messages";
    v15[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v15[1] = messages;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        messagesCopy = messages;
        v12 = 2112;
        v13 = [(IMMetricsCollector *)self _stringForDeleteMessagesType:type];
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Delete Messages Metrics | Delete %@ messages from %@", &v10, 0x16u);
      }
    }

    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDeleteMessages" withDictionary:v8];
  }
}

- (unint64_t)keepMessagesSourceTypeForDays:(int64_t)days
{
  v8 = *MEMORY[0x1E69E9840];
  if (days == 30)
  {
    return 2;
  }

  if (days == 365)
  {
    return 3;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      daysCopy = days;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Delete Messages Metrics | unknown type of keep messages days: %lld", &v6, 0xCu);
    }
  }

  return 0;
}

- (id)_stringForDeleteMessagesType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E782B200[type - 1];
  }
}

- (void)trackMessagesWithoutChatsWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1A8757FB8(contextCopy);
}

@end