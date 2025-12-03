@interface OSAStateMonitor
+ (BOOL)processCALogEvent:(id)event eventPayload:(id)payload into:(id *)into;
+ (id)CALogStateToString:(int64_t)string;
+ (id)dateForEvent:(id)event;
+ (id)evaluateCALogStates:(id)states;
+ (void)checkAndReportCALogStates;
+ (void)checkCALogWrittenStatus;
+ (void)checkSubmissionStatus;
+ (void)evaluateState;
+ (void)postFailureWithReason:(id)reason;
+ (void)recordEvent:(id)event;
+ (void)recordEvent:(id)event with:(id)with;
@end

@implementation OSAStateMonitor

+ (void)evaluateState
{
  if (evaluateState_token != -1)
  {
    +[OSAStateMonitor evaluateState];
  }

  v2 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AE4F7000, v2, OS_LOG_TYPE_DEFAULT, "Running the state monitor.", v3, 2u);
  }

  +[OSAStateMonitor checkCALogWrittenStatus];
  +[OSAStateMonitor checkSubmissionStatus];
  +[OSAStateMonitor checkAndReportCALogStates];
}

uint64_t __32__OSAStateMonitor_evaluateState__block_invoke()
{
  OSAStateMonitorLogDomain = os_log_create("com.apple.osanalytics.monitors", "state-monitor");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)recordEvent:(id)event
{
  eventCopy = event;
  if (([eventCopy isEqualToString:@"log-submission"] & 1) != 0 || objc_msgSend(eventCopy, "isEqualToString:", @"ca-log-written"))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    v4 = [OSAStateMonitor keyForEvent:eventCopy];
    [OSADefaults setObject:v3 forKey:v4];
  }

  else
  {
    [OSAStateMonitor recordEvent:eventCopy with:0];
  }
}

+ (void)recordEvent:(id)event with:(id)with
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v15 = @"eventName";
  v16 = eventCopy;
  v6 = MEMORY[0x1E695DF20];
  withCopy = with;
  v8 = [v6 dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v9 = [v8 mutableCopy];

  [v9 addEntriesFromDictionary:withCopy];
  v10 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v13 = [v10 stringWithFormat:@"state-monitor.ca.event.%f", v12, v15, v16, v17];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[OSAStateMonitor recordEvent:with:];
  }

  [OSADefaults setObject:v9 forKey:v13];

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)checkCALogWrittenStatus
{
  v2 = [OSAStateMonitor dateForEvent:@"ca-log-written"];
  [v2 timeIntervalSinceNow];
  v4 = v3;

  if (v4 < -90000.0)
  {

    [OSAStateMonitor postFailureWithReason:@"Missing CA log after rollover"];
  }
}

+ (void)checkSubmissionStatus
{
  if (!OSAIsRSDDisplay())
  {
    v2 = [OSAStateMonitor dateForEvent:@"log-submission"];
    [v2 timeIntervalSinceNow];
    v4 = v3;

    if (v4 < -129600.0)
    {

      [OSAStateMonitor postFailureWithReason:@"Log submission is overdue"];
    }
  }
}

+ (void)postFailureWithReason:(id)reason
{
  v14[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v4 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_ERROR))
  {
    [(OSAStateMonitor *)reasonCopy postFailureWithReason:v4];
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = reasonCopy;
  v5 = reasonCopy;
  AnalyticsSendEventLazy();
  v13[0] = @"crk";
  v6 = [OSASystemConfiguration sharedInstance:v11];
  crashReporterKey = [v6 crashReporterKey];
  v13[1] = @"reason";
  v14[0] = crashReporterKey;
  v8 = @"<unknown>";
  if (v5)
  {
    v8 = v5;
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  rtcsc_send(2006, 2006, v9);

  v10 = *MEMORY[0x1E69E9840];
}

id __41__OSAStateMonitor_postFailureWithReason___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = @"<unknown>";
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  v5 = @"reason";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)checkAndReportCALogStates
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AE4F7000, a2, OS_LOG_TYPE_DEBUG, "Will discard keys: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (BOOL)processCALogEvent:(id)event eventPayload:(id)payload into:(id *)into
{
  v102 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  payloadCopy = payload;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEBUG))
  {
    +[OSAStateMonitor processCALogEvent:eventPayload:into:];
  }

  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSinceDate:eventCopy];
  v11 = v10;

  if (v11 >= 300.0)
  {
    v12 = [payloadCopy objectForKeyedSubscript:@"eventName"];
    if (!*into)
    {
      *into = objc_opt_new();
    }

    if ([v12 isEqualToString:@"ca-2hr-heartbeat"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"startTimestamp"];
      allKeys2 = [*into objectForKeyedSubscript:allKeys];
      if (!allKeys2)
      {
        v15 = [MEMORY[0x1E695E0F8] mutableCopy];
        [*into setObject:v15 forKeyedSubscript:allKeys];

        allKeys2 = [*into objectForKeyedSubscript:allKeys];
      }

      v16 = [allKeys2 objectForKeyedSubscript:@"twoHrHeartbeat"];
      unsignedIntValue = [v16 unsignedIntValue];

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntValue + 1];
      [allKeys2 setObject:v18 forKeyedSubscript:@"twoHrHeartbeat"];

      v19 = &unk_1F241EA40;
LABEL_16:
      [allKeys2 setObject:v19 forKeyedSubscript:@"lastSuccessfulLogState"];
      [*into setObject:allKeys2 forKeyedSubscript:allKeys];
LABEL_17:

      goto LABEL_18;
    }

    if ([v12 isEqualToString:@"ca-log-written-new"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"startTimestamp"];
      allKeys2 = [*into objectForKeyedSubscript:allKeys];
      if (!allKeys2)
      {
        v21 = [MEMORY[0x1E695E0F8] mutableCopy];
        [*into setObject:v21 forKeyedSubscript:allKeys];

        allKeys2 = [*into objectForKeyedSubscript:allKeys];
      }

      v22 = [payloadCopy objectForKeyedSubscript:@"totalHeartbeats"];
      [allKeys2 setObject:v22 forKeyedSubscript:@"totalHeartbeats"];

      v23 = [payloadCopy objectForKeyedSubscript:@"endTimestamp"];
      [allKeys2 setObject:v23 forKeyedSubscript:@"endTimestamp"];

      v24 = [payloadCopy objectForKeyedSubscript:@"logPath"];
      [allKeys2 setObject:v24 forKeyedSubscript:@"logPath"];

      v19 = &unk_1F241EA58;
      goto LABEL_16;
    }

    v70 = payloadCopy;
    if ([v12 isEqualToString:@"submission-started"])
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      allKeys = [*into allKeys];
      v27 = [allKeys countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (!v27)
      {
        goto LABEL_18;
      }

      v28 = v27;
      v67 = v12;
      v29 = *v92;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v92 != v29)
          {
            objc_enumerationMutation(allKeys);
          }

          v31 = [*into objectForKeyedSubscript:*(*(&v91 + 1) + 8 * i)];
          [v31 setObject:eventCopy forKeyedSubscript:@"lastSubmissionStartTimestamp"];
          [v31 setObject:&unk_1F241EA70 forKeyedSubscript:@"lastSuccessfulLogState"];
        }

        v28 = [allKeys countByEnumeratingWithState:&v91 objects:v101 count:16];
      }

      while (v28);
      goto LABEL_29;
    }

    if ([v12 isEqualToString:@"submission-found-logs"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      allKeys2 = [*into allKeys];
      v32 = [allKeys2 countByEnumeratingWithState:&v87 objects:v100 count:16];
      if (!v32)
      {
        goto LABEL_17;
      }

      v33 = v32;
      v65 = eventCopy;
      v68 = v12;
      v34 = *v88;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v88 != v34)
          {
            objc_enumerationMutation(allKeys2);
          }

          v36 = [*into objectForKeyedSubscript:{*(*(&v87 + 1) + 8 * j), v65}];
          v37 = [v36 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v37])
          {
            [v36 setObject:&unk_1F241EA88 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v33 = [allKeys2 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v33);
    }

    else if ([v12 isEqualToString:@"submission-logs-added-to-archive"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      allKeys2 = [*into allKeys];
      v38 = [allKeys2 countByEnumeratingWithState:&v83 objects:v99 count:16];
      if (!v38)
      {
        goto LABEL_17;
      }

      v39 = v38;
      v65 = eventCopy;
      v68 = v12;
      v40 = *v84;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v84 != v40)
          {
            objc_enumerationMutation(allKeys2);
          }

          v42 = [*into objectForKeyedSubscript:{*(*(&v83 + 1) + 8 * k), v65}];
          v43 = [v42 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v43])
          {
            [v42 setObject:&unk_1F241EAA0 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v39 = [allKeys2 countByEnumeratingWithState:&v83 objects:v99 count:16];
      }

      while (v39);
    }

    else
    {
      if (![v12 isEqualToString:@"submission-http-post-started"])
      {
        if ([v12 isEqualToString:@"ca-log-retired"])
        {
          v66 = eventCopy;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          allKeys = [*into allKeys];
          v50 = [allKeys countByEnumeratingWithState:&v75 objects:v97 count:16];
          if (!v50)
          {
            goto LABEL_18;
          }

          v51 = v50;
          v67 = v12;
          v69 = *v76;
          do
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v76 != v69)
              {
                objc_enumerationMutation(allKeys);
              }

              v53 = [*into objectForKeyedSubscript:*(*(&v75 + 1) + 8 * m)];
              v54 = [v53 objectForKeyedSubscript:@"logPath"];
              v55 = [payloadCopy objectForKeyedSubscript:@"logPath"];
              v56 = [v54 isEqualToString:v55];

              if (v56)
              {
                [v53 setObject:&unk_1F241EAD0 forKeyedSubscript:@"lastSuccessfulLogState"];
                v57 = [v70 objectForKeyedSubscript:@"retiredReason"];
                [v53 setObject:v57 forKeyedSubscript:@"retiredReason"];
              }

              payloadCopy = v70;
            }

            v51 = [allKeys countByEnumeratingWithState:&v75 objects:v97 count:16];
          }

          while (v51);
          eventCopy = v66;
          goto LABEL_30;
        }

        if (![v12 hasPrefix:@"Error"])
        {
          goto LABEL_19;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        allKeys = [*into allKeys];
        v58 = [allKeys countByEnumeratingWithState:&v71 objects:v96 count:16];
        if (!v58)
        {
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        v59 = v58;
        v67 = v12;
        v60 = *v72;
        do
        {
          for (n = 0; n != v59; ++n)
          {
            if (*v72 != v60)
            {
              objc_enumerationMutation(allKeys);
            }

            v62 = [*into objectForKeyedSubscript:*(*(&v71 + 1) + 8 * n)];
            [v62 setObject:v12 forKeyedSubscript:@"lastSubmissionError"];
            v63 = [v70 objectForKeyedSubscript:@"errorDesc"];

            if (v63)
            {
              v64 = [v70 objectForKeyedSubscript:@"errorDesc"];
              [v62 setObject:v64 forKeyedSubscript:@"errorDesc"];
            }
          }

          v59 = [allKeys countByEnumeratingWithState:&v71 objects:v96 count:16];
        }

        while (v59);
LABEL_29:
        payloadCopy = v70;
LABEL_30:
        v12 = v67;
        goto LABEL_18;
      }

      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      allKeys2 = [*into allKeys];
      v44 = [allKeys2 countByEnumeratingWithState:&v79 objects:v98 count:16];
      if (!v44)
      {
        goto LABEL_17;
      }

      v45 = v44;
      v65 = eventCopy;
      v68 = v12;
      v46 = *v80;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v80 != v46)
          {
            objc_enumerationMutation(allKeys2);
          }

          v48 = [*into objectForKeyedSubscript:{*(*(&v79 + 1) + 8 * ii), v65}];
          v49 = [v48 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v49])
          {
            [v48 setObject:&unk_1F241EAB8 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v45 = [allKeys2 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v45);
    }

    eventCopy = v65;
    v12 = v68;
    payloadCopy = v70;
    goto LABEL_17;
  }

  v20 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, v20, OS_LOG_TYPE_DEFAULT, "Event within submission window. Ignoring, will pick up next run.", buf, 2u);
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];
  return v11 >= 300.0;
}

+ (id)evaluateCALogStates:(id)states
{
  v86 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v69 = [MEMORY[0x1E695E0F0] mutableCopy];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v71 = statesCopy;
  obj = [statesCopy allKeys];
  v72 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v72)
  {
    v70 = *v78;
    do
    {
      v4 = 0;
      do
      {
        if (*v78 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v4;
        v5 = *(*(&v77 + 1) + 8 * v4);
        v6 = [v71 objectForKeyedSubscript:v5];
        v7 = [v6 objectForKeyedSubscript:@"totalHeartbeats"];
        unsignedIntValue = [v7 unsignedIntValue];
        v9 = [v6 objectForKeyedSubscript:@"twoHrHeartbeat"];
        unsignedIntValue2 = [v9 unsignedIntValue];

        v74 = v5;
        if (unsignedIntValue != unsignedIntValue2)
        {
          v11 = OSAStateMonitorLogDomain;
          if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE4F7000, v11, OS_LOG_TYPE_DEFAULT, "Identified heartbeat mismatch. Reporting to RTC now.", buf, 2u);
          }

          v12 = [v6 objectForKeyedSubscript:@"endTimestamp"];
          v83[0] = @"crk";
          v13 = +[OSASystemConfiguration sharedInstance];
          crashReporterKey = [v13 crashReporterKey];
          v84[0] = crashReporterKey;
          v84[1] = v5;
          v83[1] = @"CA_startTimestamp";
          v83[2] = @"CA_endTimestamp";
          v15 = &stru_1F2411100;
          if (v12)
          {
            v15 = v12;
          }

          v84[2] = v15;
          v83[3] = @"expectedCAHeartbeats";
          v16 = [v6 objectForKeyedSubscript:@"twoHrHeartbeat"];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = &unk_1F241EAE8;
          }

          v84[3] = v18;
          v83[4] = @"actualCAHeartbeats";
          v19 = [v6 objectForKeyedSubscript:@"totalHeartbeats"];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = &unk_1F241EAE8;
          }

          v84[4] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:5];

          rtcsc_send(2008, 2008, v22);
        }

        v23 = MEMORY[0x1E695DEC8];
        v24 = [v6 objectForKeyedSubscript:@"lastSubmissionError"];
        v25 = [v6 objectForKeyedSubscript:@"errorDesc"];
        v26 = [v23 arrayWithObjects:{v24, v25, 0}];
        v27 = [v26 componentsJoinedByString:@":"];

        v75 = [v6 objectForKeyedSubscript:@"endTimestamp"];
        v28 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        LODWORD(v25) = [v28 isEqualToNumber:&unk_1F241EA70];

        if (v25)
        {
          v29 = [v6 objectForKeyedSubscript:@"logPath"];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v31 = [defaultManager fileExistsAtPath:v29];

          v32 = @"ErrorFileNotFound";
          if ((v31 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isReadableFileAtPath:", v29), v33, v32 = @"ErrorFileNotReadable", v34))
          {
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v32, v27, 0}];
            v36 = [v35 componentsJoinedByString:@":"];

            v27 = v36;
          }
        }

        v37 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v38 = [v37 isEqualToNumber:&unk_1F241EA88];

        if (v38)
        {
          v39 = [v6 objectForKeyedSubscript:@"logPath"];
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v41 = [defaultManager2 fileExistsAtPath:v39];

          v42 = @"ErrorFileNotFound";
          if ((v41 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "isReadableFileAtPath:", v39), v43, v42 = @"ErrorFileNotReadable", v44))
          {

            v27 = v42;
          }
        }

        v45 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v46 = [v45 isEqualToNumber:&unk_1F241EAD0];

        if (v46)
        {
          v47 = [v6 objectForKeyedSubscript:@"retiredReason"];
          v48 = [v47 isEqualToString:@"submitted"];

          if ((v48 & 1) == 0)
          {
            v49 = [v6 objectForKeyedSubscript:@"retiredReason"];

            v27 = v49;
          }
        }

        v81[0] = @"crk";
        v50 = +[OSASystemConfiguration sharedInstance];
        crashReporterKey2 = [v50 crashReporterKey];
        v82[0] = crashReporterKey2;
        v82[1] = v5;
        v81[1] = @"CA_startTimestamp";
        v81[2] = @"CA_endTimestamp";
        if (v75)
        {
          v52 = v75;
        }

        else
        {
          v52 = &stru_1F2411100;
        }

        v82[2] = v52;
        v81[3] = @"submissionStartTimestamp";
        v53 = [v6 objectForKeyedSubscript:@"lastSubmissionStartTimestamp"];
        v54 = v53;
        v55 = @"<unknown>";
        if (v53)
        {
          v55 = v53;
        }

        v82[3] = v55;
        v81[4] = @"lastSuccessfulState";
        v56 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v57 = +[OSAStateMonitor CALogStateToString:](OSAStateMonitor, "CALogStateToString:", [v56 intValue]);
        v58 = v57;
        v81[5] = @"errorMessage";
        if (v27)
        {
          v59 = v27;
        }

        else
        {
          v59 = &stru_1F2411100;
        }

        v82[4] = v57;
        v82[5] = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:6];

        rtcsc_send(2007, 2007, v60);
        v61 = objc_opt_new();
        [v61 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
        v62 = [v61 dateFromString:v74];
        if (!v62 || ([MEMORY[0x1E695DF00] now], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "timeIntervalSinceDate:", v62), v65 = v64, v63, (v65 > 259200.0) | v46 & 1))
        {
          [v69 addObject:v74];
        }

        v4 = v73 + 1;
      }

      while (v72 != v73 + 1);
      v72 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v72);
  }

  v66 = *MEMORY[0x1E69E9840];

  return v69;
}

+ (id)CALogStateToString:(int64_t)string
{
  if ((string - 2) > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A27BA8[string - 2];
  }
}

+ (id)dateForEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = [OSAStateMonitor keyForEvent:eventCopy];
  v5 = [OSADefaults objectForKey:v4];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = eventCopy;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Initializing event date for %{public}@", &v9, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [OSAStateMonitor keyForEvent:eventCopy];
    [OSADefaults setObject:v5 forKey:v6];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)recordEvent:with:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s %@", v1, 0x16u);
  v0 = *MEMORY[0x1E69E9840];
}

+ (void)postFailureWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1AE4F7000, a2, OS_LOG_TYPE_ERROR, "State monitor observed a failure: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)processCALogEvent:eventPayload:into:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AE4F7000, v0, OS_LOG_TYPE_DEBUG, "%{public}s %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end