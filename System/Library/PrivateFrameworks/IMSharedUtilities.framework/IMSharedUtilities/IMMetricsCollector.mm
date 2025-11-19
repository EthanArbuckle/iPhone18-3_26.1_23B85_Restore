@interface IMMetricsCollector
+ (id)_IMServiceNameToSentMessageEventType:(id)a3;
+ (id)sharedInstance;
+ (id)stringForFZErrorType:(unsigned int)a3;
- (BOOL)trackAction:(id)a3 extensionBundleID:(id)a4 isNotification:(BOOL)a5;
- (BOOL)trackEvent:(id)a3;
- (BOOL)trackEvent:(id)a3 withCount:(id)a4;
- (BOOL)trackEvent:(id)a3 withDictionary:(id)a4;
- (BOOL)trackEvent:(id)a3 withStatistic:(id)a4;
- (IMMetricsCollector)init;
- (id)_stringForDeleteMessagesType:(unint64_t)a3;
- (id)_stringForSpamType:(unint64_t)a3;
- (id)_stringForiMessageJunkType:(unint64_t)a3;
- (unint64_t)keepMessagesSourceTypeForDays:(int64_t)a3;
- (void)_ADClientAddValueForScalarKeyApiInit;
- (void)_ADClientPushValueForDistributionKeyApiInit;
- (void)_ADClientSetValueForScalarKeyApiInit;
- (void)_trackEvent:(id)a3;
- (void)_trackEvent:(id)a3 withCount:(id)a4;
- (void)_trackEvent:(id)a3 withDictionary:(id)a4;
- (void)_trackEvent:(id)a3 withStatistic:(id)a4;
- (void)_trackTranscodeFailureWithReason:(unint64_t)a3 messageType:(unint64_t)a4 sourceFile:(id)a5 sizeLimits:(id)a6 isSticker:(BOOL)a7 lowQualityModeEnabled:(BOOL)a8;
- (void)_trackTranscodeWithReason:(unint64_t)a3 messageType:(unint64_t)a4 sourceFile:(id)a5 highQualityFile:(id)a6 lowQualityFile:(id)a7 sizeLimits:(id)a8 isSticker:(BOOL)a9 transcoded:(BOOL)a10 lowQualityModeEnabled:(BOOL)a11;
- (void)autoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4;
- (void)dealloc;
- (void)forceAutoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4;
- (void)forceAutoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4 type:(id)a5 context:(id)a6 metadata:(id)a7;
- (void)metricAttachmentValidation:(BOOL)a3 attachmentSize:(id)a4 operationalErrorDomain:(id)a5 operationalErrorCode:(id)a6 validationErrorDomain:(id)a7 validationErrorCode:(id)a8;
- (void)trackAttachmentDownloadFailedWithFileSize:(id)a3 reason:(int64_t)a4 context:(id)a5;
- (void)trackAttachmentDownloadSuccess:(id)a3 context:(id)a4;
- (void)trackAttachmentRenderingAttempt:(BOOL)a3 failureReason:(id)a4;
- (void)trackDeleteMessages:(id)a3 sourceType:(unint64_t)a4;
- (void)trackMMSTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 transcoded:(BOOL)a8 lowQualityModeEnabled:(BOOL)a9;
- (void)trackMessagesWithoutChatsWithContext:(id)a3;
- (void)trackRCSTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 isSticker:(BOOL)a8 transcoded:(BOOL)a9 lowQualityModeEnabled:(BOOL)a10;
- (void)trackSentMessageEventOfType:(id)a3 subtype:(id)a4 originalServiceName:(id)a5 messageSize:(unint64_t)a6 sendDuration:(id)a7 receiverType:(id)a8 receiverGroupType:(id)a9 wasSuccessful:(BOOL)a10 sourceHandle:(id)a11 destinationHandle:(id)a12 error:(id)a13;
- (void)trackSpamEvent:(unint64_t)a3 withDictionary:(id)a4;
- (void)trackiMessageJunkEvent:(unint64_t)a3 withDictionary:(id)a4;
- (void)trackiMessageTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 isSticker:(BOOL)a8 transcoded:(BOOL)a9 lowQualityModeEnabled:(BOOL)a10;
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

- (void)trackiMessageTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 isSticker:(BOOL)a8 transcoded:(BOOL)a9 lowQualityModeEnabled:(BOOL)a10
{
  *(&v10 + 1) = __PAIR16__(a10, a9);
  LOBYTE(v10) = a8;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:a3 sourceFile:1 highQualityFile:a4 lowQualityFile:a5 sizeLimits:a6 isSticker:a7 transcoded:v10 lowQualityModeEnabled:?];
}

- (void)trackMMSTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 transcoded:(BOOL)a8 lowQualityModeEnabled:(BOOL)a9
{
  BYTE2(v9) = a9;
  BYTE1(v9) = a8;
  LOBYTE(v9) = 0;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:a3 sourceFile:2 highQualityFile:a4 lowQualityFile:a5 sizeLimits:a6 isSticker:a7 transcoded:v9 lowQualityModeEnabled:?];
}

- (void)trackRCSTranscodeWithReason:(unint64_t)a3 sourceFile:(id)a4 highQualityFile:(id)a5 lowQualityFile:(id)a6 sizeLimits:(id)a7 isSticker:(BOOL)a8 transcoded:(BOOL)a9 lowQualityModeEnabled:(BOOL)a10
{
  *(&v10 + 1) = __PAIR16__(a10, a9);
  LOBYTE(v10) = a8;
  [IMMetricsCollector _trackTranscodeWithReason:"_trackTranscodeWithReason:messageType:sourceFile:highQualityFile:lowQualityFile:sizeLimits:isSticker:transcoded:lowQualityModeEnabled:" messageType:a3 sourceFile:3 highQualityFile:a4 lowQualityFile:a5 sizeLimits:a6 isSticker:a7 transcoded:v10 lowQualityModeEnabled:?];
}

- (void)_trackTranscodeWithReason:(unint64_t)a3 messageType:(unint64_t)a4 sourceFile:(id)a5 highQualityFile:(id)a6 lowQualityFile:(id)a7 sizeLimits:(id)a8 isSticker:(BOOL)a9 transcoded:(BOOL)a10 lowQualityModeEnabled:(BOOL)a11
{
  v61 = a5;
  v16 = a6;
  v17 = a7;
  v57 = a8;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = *MEMORY[0x1E695DB50];
  v20 = *MEMORY[0x1E695DAA0];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  if (v61)
  {
    v22 = [v61 resourceValuesForKeys:v21 error:0];
    if (v16)
    {
LABEL_3:
      v60 = [v16 resourceValuesForKeys:v21 error:0];
      goto LABEL_6;
    }
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v60 = MEMORY[0x1E695E0F8];
LABEL_6:
  v58 = v17;
  v59 = v16;
  v56 = v21;
  if (v17)
  {
    v23 = [v17 resourceValuesForKeys:v21 error:0];
  }

  else
  {
    v23 = MEMORY[0x1E695E0F8];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v18 setObject:v24 forKey:@"message_type"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v18 setObject:v25 forKey:@"transcode_reason"];

  v26 = [v22 objectForKey:v20];
  v62 = [v60 objectForKey:v20];
  v27 = [v23 objectForKey:v20];
  v54 = v22;
  v28 = [v22 objectForKey:v19];
  v29 = [v60 objectForKey:v19];
  v53 = v23;
  v30 = [v23 objectForKey:v19];
  if (a9)
  {
    v31 = 3;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v26 identifier];
  v33 = [v32 length];

  if (!v33)
  {
    v35 = v57;
    v34 = v62;
    goto LABEL_26;
  }

  v34 = v62;
  if (a9)
  {
    v31 = 3;
  }

  else
  {
    v36 = [v26 identifier];
    if (!IMUTTypeIsImage(v36))
    {
      v37 = [v26 identifier];
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(v37);

      v35 = v57;
      if (IsSupportedAnimatedImage)
      {
        v31 = 1;
      }

      else
      {
        v39 = [v26 identifier];
        IsMovie = IMUTTypeIsMovie(v39);

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

  v35 = v57;
LABEL_25:
  v41 = [v26 identifier];
  [v18 setObject:v41 forKey:@"original_uttype"];

LABEL_26:
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
  [v18 setObject:v42 forKey:@"attachment_type"];

  v43 = [v34 identifier];
  v44 = [v43 length];

  if (v44)
  {
    v45 = [v34 identifier];
    [v18 setObject:v45 forKey:@"high_quality_uttype"];
  }

  v46 = [v27 identifier];
  v47 = [v46 length];

  if (v47)
  {
    v48 = [v27 identifier];
    [v18 setObject:v48 forKey:@"low_quality_uttype"];
  }

  if (v28)
  {
    [v18 setObject:v28 forKey:@"original_size"];
  }

  if (v29)
  {
    [v18 setObject:v29 forKey:@"high_quality_size_result"];
  }

  if (v30)
  {
    [v18 setObject:v30 forKey:@"low_quality_size_result"];
  }

  v49 = [v35 firstObject];
  if ([v35 count] < 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = [v35 objectAtIndex:1];
  }

  if (v49)
  {
    [v18 setObject:v49 forKey:@"high_quality_size_limit"];
  }

  if (v50)
  {
    [v18 setObject:v50 forKey:@"low_quality_size_limit"];
  }

  v51 = [MEMORY[0x1E696AD98] numberWithBool:a11];
  [v18 setObject:v51 forKey:@"low_quality_mode_enabled"];

  v52 = [MEMORY[0x1E696AD98] numberWithBool:a10];
  [v18 setObject:v52 forKey:@"was_transcoded"];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventTranscodeAttachmentAttempt" withDictionary:v18];
}

- (void)_trackTranscodeFailureWithReason:(unint64_t)a3 messageType:(unint64_t)a4 sourceFile:(id)a5 sizeLimits:(id)a6 isSticker:(BOOL)a7 lowQualityModeEnabled:(BOOL)a8
{
  v35 = a8;
  v8 = a7;
  v38 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = *MEMORY[0x1E695DB50];
  v15 = *MEMORY[0x1E695DAA0];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  v36 = v16;
  if (v38)
  {
    v17 = [v38 resourceValuesForKeys:v16 error:0];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v13 setObject:v18 forKey:@"message_type"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v13 setObject:v19 forKey:@"transcode_reason"];

  v20 = [v17 objectForKey:v15];
  v21 = [v17 objectForKey:v14];
  if (v8)
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v20 identifier];
  v24 = [v23 length];

  if (v24)
  {
    if (v8)
    {
      v22 = 3;
    }

    else
    {
      v25 = [v20 identifier];
      if (IMUTTypeIsImage(v25))
      {
      }

      else
      {
        v26 = [v20 identifier];
        IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(v26);

        if (!IsSupportedAnimatedImage)
        {
          v28 = [v20 identifier];
          IsMovie = IMUTTypeIsMovie(v28);

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
    v30 = [v20 identifier];
    [v13 setObject:v30 forKey:@"original_uttype"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  [v13 setObject:v31 forKey:@"attachment_type"];

  if (v21)
  {
    [v13 setObject:v21 forKey:@"original_size"];
  }

  v32 = [v12 firstObject];
  if ([v12 count] < 2)
  {
    v33 = 0;
    if (!v32)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v33 = [v12 objectAtIndex:1];
  if (v32)
  {
LABEL_24:
    [v13 setObject:v32 forKey:@"high_quality_size_limit"];
  }

LABEL_25:
  if (v33)
  {
    [v13 setObject:v33 forKey:@"low_quality_size_limit"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:v35];
  [v13 setObject:v34 forKey:@"low_quality_mode_enabled"];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventTranscodeAttachmentFailure" withDictionary:v13];
}

- (void)trackAttachmentDownloadSuccess:(id)a3 context:(id)a4
{
  v15 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = [v6 dictionary];
  v9 = *MEMORY[0x1E695DB50];
  v10 = *MEMORY[0x1E695DAA0];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DAA0], 0}];
  if (v15)
  {
    v12 = [v15 resourceValuesForKeys:v11 error:0];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"was_downloaded"];
  v13 = [v12 objectForKey:v10];
  v14 = [v12 objectForKey:v9];
  [v7 _setValuesOnMetricsDictionary:v8 withFileSize:v14 sourceType:v13];

  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDownloadAttachmentAttempt" withDictionary:v8];
}

- (void)trackAttachmentDownloadFailedWithFileSize:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v10 = a3;
  v12 = [v8 dictionary];
  [v12 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"was_downloaded"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v12 setObject:v11 forKeyedSubscript:@"failure_reason"];

  [v9 _setValuesOnMetricsDictionary:v12 withFileSize:v10 sourceType:0];
  [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDownloadAttachmentAttempt" withDictionary:v12];
}

- (void)trackAttachmentRenderingAttempt:(BOOL)a3 failureReason:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v6;
  if (v4)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"IsRenderingSuccessful"];
    v8 = &stru_1F1BB91F0;
    v9 = v7;
  }

  else
  {
    [v6 setObject:MEMORY[0x1E695E110] forKey:@"IsRenderingSuccessful"];
    v9 = v7;
    v8 = v10;
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

- (void)_trackEvent:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED8C99B0 != -1)
    {
      sub_1A88C5CF0();
    }

    if (off_1ED8C99B8)
    {
      off_1ED8C99B8(a3, 1);
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

- (BOOL)trackEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "trackEvent %@", buf, 0xCu);
    }
  }

  metricsQueue = self->_metricsQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86ED2C8;
  v8[3] = &unk_1E782AE58;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(metricsQueue, v8);
  return 1;
}

- (void)_trackEvent:(id)a3 withStatistic:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if (qword_1ED8C98B0 != -1)
    {
      sub_1A88C5D04();
    }

    v6 = off_1ED8C98B8;
    if (off_1ED8C98B8)
    {
      [a4 doubleValue];
      v6(a3);
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
    v10[0] = a4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    AnalyticsSendEvent();
  }
}

- (BOOL)trackEvent:(id)a3 withStatistic:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = a3;
      v15 = 2112;
      v16 = a4;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ withStatistic %@", buf, 0x16u);
    }
  }

  if (a4 && ![a4 isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AB90], "notANumber")}])
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86ED690;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
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
        v14 = a3;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil statistic passed in for event %@", buf, 0xCu);
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

- (void)_trackEvent:(id)a3 withCount:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if (qword_1ED8C9950 != -1)
    {
      sub_1A860415C();
    }

    if (off_1ED8C9958)
    {
      (off_1ED8C9958)(a3, [a4 integerValue]);
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
    v9[0] = a4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    AnalyticsSendEvent();
  }
}

- (BOOL)trackAction:(id)a3 extensionBundleID:(id)a4 isNotification:(BOOL)a5
{
  v5 = a5;
  v12[3] = *MEMORY[0x1E69E9840];
  v9 = [a4 length];
  if (v9)
  {
    v9 = [a3 length];
    if (v9)
    {
      v11[0] = @"bundleID";
      v11[1] = @"action";
      v12[0] = a4;
      v12[1] = a3;
      v11[2] = @"isNotification";
      v12[2] = [MEMORY[0x1E696AD98] numberWithBool:v5];
      -[IMMetricsCollector _trackEvent:withDictionary:](self, "_trackEvent:withDictionary:", @"com.apple.Messages.IMMetricsCollectorMessageExtensionAction", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3]);
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)_trackEvent:(id)a3 withDictionary:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      AnalyticsSendEvent();
    }
  }
}

- (BOOL)trackEvent:(id)a3 withCount:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a4;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ with count %@", buf, 0x16u);
    }
  }

  if (a4)
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86EDC40;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(metricsQueue, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = a3;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil count passed in for event %@", buf, 0xCu);
    }
  }

  return a4 != 0;
}

- (BOOL)trackEvent:(id)a3 withDictionary:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a4;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "trackEvent %@ with dictionary %@", buf, 0x16u);
    }
  }

  if (a4)
  {
    metricsQueue = self->_metricsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86EDE04;
    block[3] = &unk_1E782AE80;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(metricsQueue, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = a3;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMetricsCollector Nil dictionary passed in for event %@", buf, 0xCu);
    }
  }

  return a4 != 0;
}

- (void)autoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4
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

- (void)forceAutoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4
{
  v6 = [a4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  if (![(__CFString *)v7 length])
  {
    v7 = @"No context";
  }

  if (v7 && [(__CFString *)v7 length]>= 0x37)
  {
    v7 = [(__CFString *)v7 substringToIndex:54];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [a4 domain];
  [v8 stringWithFormat:@"%@-%@-%@", v9, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(a4, "code")), v7];

  MEMORY[0x1EEE66B58](self, sel_forceAutoBugCaptureWithSubType_errorPayload_type_context_);
}

- (void)forceAutoBugCaptureWithSubType:(id)a3 errorPayload:(id)a4 type:(id)a5 context:(id)a6 metadata:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] && objc_msgSend(objc_msgSend(MEMORY[0x1E69A60F0], "sharedInstance"), "isInternalInstall"))
  {
    v13 = [objc_msgSend(MEMORY[0x1E699BE90] "sharedInstance")];
    v14 = MEMORY[0x1E696AD98];
    v15 = [MEMORY[0x1E69A61A8] sharedInstance];
    if (v13)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    v25 = [v14 numberWithInt:{objc_msgSend(v15, "linkQualityValueForInterfaceType:", v16)}];
    v17 = [a4 userInfo];
    v18 = [v17 objectForKey:*MEMORY[0x1E696AA08]];
    if (qword_1EB30B748 != -1)
    {
      sub_1A88C5D18();
    }

    v19 = off_1EB30B740;
    if (off_1EB30B740)
    {
      v24 = [a4 domain];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a4, "code")}];
      v20 = [v18 domain];
      v19(a3, v24, v23, v20, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "code")}], v25);
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
      block[6] = a3;
      block[7] = a6;
      block[8] = a4;
      block[9] = a7;
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

- (void)metricAttachmentValidation:(BOOL)a3 attachmentSize:(id)a4 operationalErrorDomain:(id)a5 operationalErrorCode:(id)a6 validationErrorDomain:(id)a7 validationErrorCode:(id)a8
{
  v13 = a3;
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

    v20(v13, a4, a5, a6, a7, a8, v16, v18);
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

- (void)trackSentMessageEventOfType:(id)a3 subtype:(id)a4 originalServiceName:(id)a5 messageSize:(unint64_t)a6 sendDuration:(id)a7 receiverType:(id)a8 receiverGroupType:(id)a9 wasSuccessful:(BOOL)a10 sourceHandle:(id)a11 destinationHandle:(id)a12 error:(id)a13
{
  v46 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if ([a7 compare:&unk_1F1BFAAF0] == -1)
    {
      v15 = &unk_1F1BFAAF0;
    }

    else
    {
      v15 = a7;
    }
  }

  else
  {
    v15 = 0;
  }

  v36 = v15;
  if (a12)
  {
    v16 = [objc_msgSend(MEMORY[0x1E69A51E8] "sharedInstance")];
  }

  else
  {
    v16 = 0;
  }

  if (a11 && (v17 = -[CTXPCContexts subscriptions](-[IMCTSubscriptionUtilities ctActiveContexts](+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities, "sharedInstance"), "ctActiveContexts"), "subscriptions"), v39 = 0u, v40 = 0u, v41 = 0u, v42 = 0u, (v18 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16]) != 0))
  {
    v19 = v18;
    v20 = *v40;
    v32 = v16;
    while (2)
    {
      v21 = self;
      for (i = 0; i != v19; ++i)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        if ([objc_msgSend(v23 "phoneNumber")] && objc_msgSend(MEMORY[0x1E69A51E8], "isPhoneNumber:equivalentToExistingPhoneNumber:", objc_msgSend(v23, "phoneNumber"), a11))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "slotID") == 0}];
          self = v21;
          v16 = v32;
          goto LABEL_22;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
      v24 = 0;
      self = v21;
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
    v24 = 0;
  }

LABEL_22:
  if (a5)
  {
    v25 = [IMMetricsCollector _IMServiceNameToSentMessageEventType:?];
  }

  else
  {
    v25 = 0;
  }

  v43[0] = @"type";
  v26 = a3;
  if (!a3)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v44[0] = v26;
  v43[1] = @"subtype";
  v27 = a4;
  if (!a4)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v44[1] = v27;
  v43[2] = @"original_type";
  if (!v25)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v44[2] = v25;
  v43[3] = @"message_size";
  v44[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a6];
  v43[4] = @"send_duration";
  v28 = v36;
  if (!v36)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = a9;
  v44[4] = v28;
  v43[5] = @"receiver_type";
  v30 = a8;
  if (!a8)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = a13;
  v44[5] = v30;
  v43[6] = @"receiver_group_type";
  if (!a9)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v44[6] = v29;
  v43[7] = @"was_successful";
  v44[7] = [MEMORY[0x1E696AD98] numberWithBool:a10];
  v43[8] = @"error_cause";
  if (!a13)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = v31;
  v43[9] = @"is_emergency";
  v44[9] = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v43[10] = @"is_partially_active_sim";
  if (!v24)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v44[10] = v24;
  -[IMMetricsCollector trackEvent:withDictionary:](self, "trackEvent:withDictionary:", @"com.apple.Messages.IMMetricsCollectorEventSentMessage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:11]);
}

+ (id)_IMServiceNameToSentMessageEventType:(id)a3
{
  if ([a3 isEqualToString:IMServiceNameSatelliteSMS])
  {
    return @"SMSOverSatellite";
  }

  else
  {
    return a3;
  }
}

+ (id)stringForFZErrorType:(unsigned int)a3
{
  if (a3 > 0x2C)
  {
    return @"???";
  }

  else
  {
    return off_1E782AF18[a3];
  }
}

- (void)trackSpamEvent:(unint64_t)a3 withDictionary:(id)a4
{
  v6 = [(IMMetricsCollector *)self _stringForSpamType:a3];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:@"type"];
    v8 = v7;
    if (a4)
    {
      [v7 addEntriesFromDictionary:a4];
    }

    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventInternationalSpam" withDictionary:v8];
  }
}

- (id)_stringForSpamType:(unint64_t)a3
{
  if (a3 - 1 > 0x1F)
  {
    return 0;
  }

  else
  {
    return off_1E782B080[a3 - 1];
  }
}

- (void)trackiMessageJunkEvent:(unint64_t)a3 withDictionary:(id)a4
{
  v6 = [(IMMetricsCollector *)self _stringForiMessageJunkType:a3];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:@"type"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A86EEED8;
    v8[3] = &unk_1E782AEF8;
    v8[4] = self;
    v8[5] = v7;
    [a4 enumerateKeysAndObjectsUsingBlock:v8];
    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventOscar" withDictionary:v7];
  }
}

- (id)_stringForiMessageJunkType:(unint64_t)a3
{
  if (a3 - 1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E782B180[a3 - 1];
  }
}

- (void)trackDeleteMessages:(id)a3 sourceType:(unint64_t)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = [a3 isEqualToNumber:&unk_1F1BFAAF0];
  if (a4 && (v7 & 1) == 0)
  {
    v14[0] = @"source_type";
    v14[1] = @"count_messages";
    v15[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v15[1] = a3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = a3;
        v12 = 2112;
        v13 = [(IMMetricsCollector *)self _stringForDeleteMessagesType:a4];
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Delete Messages Metrics | Delete %@ messages from %@", &v10, 0x16u);
      }
    }

    [(IMMetricsCollector *)self trackEvent:@"com.apple.Messages.IMMetricsCollectorEventDeleteMessages" withDictionary:v8];
  }
}

- (unint64_t)keepMessagesSourceTypeForDays:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 == 30)
  {
    return 2;
  }

  if (a3 == 365)
  {
    return 3;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Delete Messages Metrics | unknown type of keep messages days: %lld", &v6, 0xCu);
    }
  }

  return 0;
}

- (id)_stringForDeleteMessagesType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E782B200[a3 - 1];
  }
}

- (void)trackMessagesWithoutChatsWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A8757FB8(v4);
}

@end