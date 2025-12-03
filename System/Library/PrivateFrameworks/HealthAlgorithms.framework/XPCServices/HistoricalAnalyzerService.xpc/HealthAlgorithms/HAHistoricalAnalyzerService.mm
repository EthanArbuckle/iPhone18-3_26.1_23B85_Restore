@interface HAHistoricalAnalyzerService
- (BOOL)shouldSendCoreAnalytics;
- (void)appendDays:(id)days;
- (void)beginSession;
- (void)finishSessionWithReply:(id)reply;
@end

@implementation HAHistoricalAnalyzerService

- (BOOL)shouldSendCoreAnalytics
{
  v2 = +[MCProfileConnection sharedConnection];
  isHealthDataSubmissionAllowed = [v2 isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKeyPath:@"HADateOfLastHistoricalAnalyzerCAEvent"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v5 timeIntervalSinceNow];
      LOBYTE(isHealthDataSubmissionAllowed) = v6 < -84600.0;
    }

    else
    {
      LOBYTE(isHealthDataSubmissionAllowed) = 1;
    }
  }

  return isHealthDataSubmissionAllowed;
}

- (void)beginSession
{
  v3 = sub_100001974();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446210;
    v11 = "[HAHistoricalAnalyzerService beginSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v10, 0xCu);
  }

  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
  {
    v5 = sub_100001974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1000019FC();
    }
  }

  v6 = objc_opt_new();
  [(HAHistoricalAnalyzerService *)self setAnalyzer:v6];

  analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer2)
  {
    v8 = objc_opt_new();
    [(HAHistoricalAnalyzerService *)self setDiagnosticLogger:v8];

    v9 = sub_100001974();
    self->_signpostID = os_signpost_id_make_with_pointer(v9, self);
  }

  else
  {
    v9 = sub_100001974();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100001A30();
    }
  }
}

- (void)appendDays:(id)days
{
  daysCopy = days;
  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = daysCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
          [analyzer2 appendDay:v11];

          diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
          [diagnosticLogger appendDay:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = sub_100001974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }
  }
}

- (void)finishSessionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100001974();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v38 = "[HAHistoricalAnalyzerService finishSessionWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];
  v7 = analyzer == 0;

  if (v7)
  {
    v22 = sub_100001974();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    [diagnosticLogger finalizeHistoricalAnalyzerInput];

    v9 = sub_100001974();
    v10 = v9;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HistoricalAnalyzerAnalysisDuration", "", buf, 2u);
    }

    analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
    analyze = [analyzer2 analyze];
    v15 = v14;

    v16 = analyze;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:buf count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v34;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v33 + 1) + 8 * i) predictionPrimarySource] == 2)
          {
            ++v18;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v33 objects:buf count:16];
      }

      while (v17);
      v21 = v18;
    }

    else
    {
      v21 = 0.0;
    }

    v23 = sub_100001974();
    v24 = v23;
    v25 = self->_signpostID;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 134217984;
      v38 = *&v21;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v25, "HistoricalAnalyzerAnalysisDuration", "primarySourceWristTemperatureCount=%{signpost.telemetry:number1}lf enableTelemetry=YES ", buf, 0xCu);
    }

    diagnosticLogger2 = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    v27 = v16;
    v28 = v15;
    if (diagnosticLogger2)
    {
      [diagnosticLogger2 logHistoricalAnalyzerOutput:{analyze, v15}];
    }

    else
    {
    }

    shouldSendCoreAnalytics = [(HAHistoricalAnalyzerService *)self shouldSendCoreAnalytics];
    if (v15)
    {
      v30 = shouldSendCoreAnalytics;
    }

    else
    {
      v30 = 0;
    }

    if (v30 == 1)
    {
      v31 = +[NSUserDefaults standardUserDefaults];
      v32 = +[NSDate date];
      [v31 setValue:v32 forKeyPath:@"HADateOfLastHistoricalAnalyzerCAEvent"];

      AnalyticsSendEvent();
    }

    [(HAHistoricalAnalyzerService *)self setAnalyzer:0];
    [(HAHistoricalAnalyzerService *)self setDiagnosticLogger:0];
    (replyCopy)[2](replyCopy, v27);
  }
}

@end