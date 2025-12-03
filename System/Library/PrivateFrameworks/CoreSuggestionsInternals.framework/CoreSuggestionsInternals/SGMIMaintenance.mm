@interface SGMIMaintenance
+ (void)executeDailyTasksWithShouldContinue:(id)continue;
@end

@implementation SGMIMaintenance

+ (void)executeDailyTasksWithShouldContinue:(id)continue
{
  continueCopy = continue;
  v4 = +[SGMITrialClientWrapper sharedInstance];
  [v4 refresh];
  if (continueCopy[2](continueCopy))
  {
    v5 = +[SGSqlEntityStore defaultStore];
    +[SGMIFollowUpAnalyzer logFollowUpStatsAndSetting];
    if (continueCopy[2](continueCopy))
    {
      v6 = +[SGMIEnablementConfig logWarningSignatureStats];
      v7 = sgMailIntelligenceLogHandle();
      v8 = v7;
      if (v6)
      {
        v9 = os_signpost_id_generate(v7);

        v10 = sgMailIntelligenceLogHandle();
        v11 = v10;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231E60000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DailyTasks.LogSignature", " enableTelemetry=YES ", buf, 2u);
        }

        v12 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #1 for Signature Stats logging: [SGMIFeatureStore warningStatsForLogging:]", buf, 2u);
        }

        sgmiFeatureStore = [v5 sgmiFeatureStore];
        v8 = [sgmiFeatureStore warningStatsForLogging:1];

        if (v8)
        {
          trialMetadata = [v4 trialMetadata];
          [v8 setTrialMetadata:trialMetadata];

          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          localeIdentifier = [currentLocale localeIdentifier];
          [v8 setLocale:localeIdentifier];

          mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
          [mEMORY[0x277D41DA8] logMessage:v8];
        }

        else
        {
          mEMORY[0x277D41DA8] = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(mEMORY[0x277D41DA8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231E60000, mEMORY[0x277D41DA8], OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Signature Stats logging do not have enough new data point to submit new logs.", buf, 2u);
          }
        }

        v18 = sgMailIntelligenceLogHandle();
        v19 = v18;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231E60000, v19, OS_SIGNPOST_INTERVAL_END, v9, "DailyTasks.LogSignature", " enableTelemetry=YES ", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance will not run signature stats logging (logWarningSignatureStats is disabled)", buf, 2u);
      }

      if (continueCopy[2](continueCopy))
      {
        v20 = sgMailIntelligenceLogHandle();
        v21 = os_signpost_id_generate(v20);

        v22 = sgMailIntelligenceLogHandle();
        v23 = v22;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231E60000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "DailyTasks.NicknameMappingLookup", " enableTelemetry=YES ", buf, 2u);
        }

        v24 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task NicknameMappingLookup", buf, 2u);
        }

        [SGMINicknameManager lookForNicknamesInSentMailsAndStore:v5 shouldContinue:continueCopy];
        v25 = sgMailIntelligenceLogHandle();
        v26 = v25;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231E60000, v26, OS_SIGNPOST_INTERVAL_END, v21, "DailyTasks.NicknameMappingLookup", " enableTelemetry=YES ", buf, 2u);
        }

        if (continueCopy[2](continueCopy))
        {
          if (+[SGMIEnablementConfig detectSalientMails])
          {
            v27 = objc_opt_new();
            trialMetadata2 = [v4 trialMetadata];
            [v27 setTrialMetadata:trialMetadata2];

            v29 = objc_opt_new();
            [v29 timeIntervalSinceReferenceDate];
            [v27 setHoursSinceReference:(v30 / 3600.0)];

            if (continueCopy[2](continueCopy))
            {
              v31 = sgMailIntelligenceLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #1: SGMISubmodelsManager checkForAndProcessVersionChange", buf, 2u);
              }

              v32 = sgMailIntelligenceLogHandle();
              v33 = os_signpost_id_generate(v32);

              v34 = sgMailIntelligenceLogHandle();
              v35 = v34;
              if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_231E60000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "DailyTasks.ModelVersionChange", " enableTelemetry=YES ", buf, 2u);
              }

              +[SGMISubmodelsManager checkForAndProcessVersionChange];
              v36 = sgMailIntelligenceLogHandle();
              v37 = v36;
              if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_231E60000, v37, OS_SIGNPOST_INTERVAL_END, v33, "DailyTasks.ModelVersionChange", " enableTelemetry=YES ", buf, 2u);
              }

              v38 = sgMailIntelligenceLogHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Finished Task #1: SGMISubmodelsManager checkForAndProcessVersionChange", buf, 2u);
              }

              if (continueCopy[2](continueCopy))
              {
                v39 = sgMailIntelligenceLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #2: SGMISubmodelsManager incrementalSubmodelUpdate", buf, 2u);
                }

                v40 = sgMailIntelligenceLogHandle();
                v41 = os_signpost_id_generate(v40);

                v42 = sgMailIntelligenceLogHandle();
                v43 = v42;
                if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_231E60000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "DailyTasks.SubmodelUpdate", " enableTelemetry=YES ", buf, 2u);
                }

                v44 = mach_absolute_time();
                [SGMISubmodelsManager incrementalSubmodelUpdateWithStore:v5 shouldContinue:continueCopy limit:1000 log:v27];
                v45 = mach_absolute_time();
                v46 = SGMachTimeToNanoseconds(v45 - v44);
                v47 = sgMailIntelligenceLogHandle();
                v48 = v47;
                if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_231E60000, v48, OS_SIGNPOST_INTERVAL_END, v41, "DailyTasks.SubmodelUpdate", " enableTelemetry=YES ", buf, 2u);
                }

                v49 = sgMailIntelligenceLogHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_231E60000, v49, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Finished Task #2: SGMISubmodelsManager incrementalSubmodelUpdate", buf, 2u);
                }

                if (continueCopy[2](continueCopy))
                {
                  v50 = sgMailIntelligenceLogHandle();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_231E60000, v50, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #3: SGMISubmodelsManager pruneDB", buf, 2u);
                  }

                  v51 = sgMailIntelligenceLogHandle();
                  v52 = os_signpost_id_generate(v51);

                  v53 = sgMailIntelligenceLogHandle();
                  v54 = v53;
                  if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_231E60000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v52, "DailyTasks.PruneSubmodels", " enableTelemetry=YES ", buf, 2u);
                  }

                  v55 = mach_absolute_time();
                  +[SGMISubmodelsManager pruneDB];
                  v56 = mach_absolute_time();
                  v57 = SGMachTimeToNanoseconds(v56 - v55);
                  v58 = sgMailIntelligenceLogHandle();
                  v59 = v58;
                  if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_231E60000, v59, OS_SIGNPOST_INTERVAL_END, v52, "DailyTasks.PruneSubmodels", " enableTelemetry=YES ", buf, 2u);
                  }

                  v60 = sgMailIntelligenceLogHandle();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_231E60000, v60, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Finished Task #3: SGMISubmodelsManager pruneDB", buf, 2u);
                  }

                  if (continueCopy[2](continueCopy))
                  {
                    v61 = sgMailIntelligenceLogHandle();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_231E60000, v61, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #4: Logging", buf, 2u);
                    }

                    v62 = sgMailIntelligenceLogHandle();
                    v63 = os_signpost_id_generate(v62);

                    v64 = sgMailIntelligenceLogHandle();
                    v65 = v64;
                    v91 = v63 - 1;
                    if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_231E60000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v63, "DailyTasks.LogMetrics", " enableTelemetry=YES ", buf, 2u);
                    }

                    spid = v63;

                    [SGMISubmodelsManager addSubmodelStatsToLog:v27];
                    [v27 setSubmodelsUpdatePerformanceInMilliSeconds:v46 / 0xF4240];
                    [v27 setSubmodelsPruningForCappingPolicyPerformanceInMilliSeconds:v57 / 0xF4240];
                    v66 = objc_opt_new();
                    v67 = [v5 getInt64NSNumberForKey:@"kTotalSGMITruePositivePredictions"];
                    [v67 doubleValue];
                    [SGRTCLogging round:2 toSignificantFigures:?];
                    [v66 setSalientPredictedAsSalient:v68];
                    v95 = [v5 getInt64NSNumberForKey:@"kTotalSGMIFalsePositivePredictions"];
                    [v95 doubleValue];
                    [SGRTCLogging round:2 toSignificantFigures:?];
                    [v66 setIgnorablePredictedAsSalient:v69];
                    v94 = [v5 getInt64NSNumberForKey:@"kTotalSGMITrueNegativePredictions"];
                    [v94 doubleValue];
                    [SGRTCLogging round:2 toSignificantFigures:?];
                    [v66 setIgnorablePredictedAsIgnorable:v70];
                    v93 = [v5 getInt64NSNumberForKey:@"kTotalSGMIFalseNegativePredictions"];
                    [v93 doubleValue];
                    [SGRTCLogging round:2 toSignificantFigures:?];
                    [v66 setSalientPredictedAsIgnorable:v71];
                    v72 = objc_opt_new();
                    trialMetadata3 = [v4 trialMetadata];
                    [v72 setActiveTrialMetadata:trialMetadata3];

                    [v72 setActiveAggregatedAccuracyLogSinceModelInitialization:v66];
                    mEMORY[0x277D41DA8]2 = [MEMORY[0x277D41DA8] sharedInstance];
                    v92 = v72;
                    [mEMORY[0x277D41DA8]2 logMessage:v72];

                    mEMORY[0x277D41DA8]3 = [MEMORY[0x277D41DA8] sharedInstance];
                    [mEMORY[0x277D41DA8]3 logMessage:v27];

                    v76 = sgMailIntelligenceLogHandle();
                    v77 = v76;
                    if (v91 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_231E60000, v77, OS_SIGNPOST_INTERVAL_END, spid, "DailyTasks.LogMetrics", " enableTelemetry=YES ", buf, 2u);
                    }

                    v78 = sgMailIntelligenceLogHandle();
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_231E60000, v78, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Finished Task #4: Logging", buf, 2u);
                    }

                    if (continueCopy[2](continueCopy))
                    {
                      v79 = sgMailIntelligenceLogHandle();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_231E60000, v79, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Starting Task #5: Performing DB maintenance", buf, 2u);
                      }

                      v80 = sgMailIntelligenceLogHandle();
                      v81 = os_signpost_id_generate(v80);

                      v82 = sgMailIntelligenceLogHandle();
                      v83 = v82;
                      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_231E60000, v83, OS_SIGNPOST_INTERVAL_BEGIN, v81, "DailyTasks.PerformDBMaintenance", " enableTelemetry=YES ", buf, 2u);
                      }

                      v84 = +[SGSqlEntityStore defaultStore];
                      sgmiFeatureStore2 = [v84 sgmiFeatureStore];
                      [sgmiFeatureStore2 performMaintenanceWithShouldContinueBlock:continueCopy];

                      v86 = sgMailIntelligenceLogHandle();
                      v87 = v86;
                      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_231E60000, v87, OS_SIGNPOST_INTERVAL_END, v81, "DailyTasks.PerformDBMaintenance", " enableTelemetry=YES ", buf, 2u);
                      }

                      v88 = sgMailIntelligenceLogHandle();
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_231E60000, v88, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance Finished Task #5: Performing DB maintenance", buf, 2u);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v89 = sgMailIntelligenceLogHandle();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v89, OS_LOG_TYPE_DEFAULT, "SGMIMaintenance: Mail saliency detection is off. Will not proceed with daily activity tasks.", buf, 2u);
            }

            [v5 clearMailIntelligenceSaliencyDetection];
          }
        }
      }
    }
  }
}

@end