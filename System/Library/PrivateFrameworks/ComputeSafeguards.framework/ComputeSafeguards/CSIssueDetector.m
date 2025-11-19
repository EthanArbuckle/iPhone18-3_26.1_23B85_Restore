@interface CSIssueDetector
+ (CSIssueDetector)sharedInstance;
- (BOOL)compareWithValue1:(float)a3 andValue2:(float)a4 andComparator:(int)a5;
- (id)_init;
- (id)evaluateRuleInFixedWindow:(id)a3 withStartDate:(id)a4 andEndDate:(id)a5;
- (id)evaluateRuleWithSlidingWindow:(id)a3 withStartDate:(id)a4 andEndDate:(id)a5;
- (id)getCPUIssueStartEndTime:(id)a3 valueThreshold:(float)a4;
- (id)getValueOfMetric:(int)a3 startDate:(id)a4 endDate:(id)a5;
- (void)_init;
- (void)clearFatalMitigatedProcessList;
- (void)dayChangedNotificationReceived:(id)a3;
- (void)detectIssuesFromStartTime:(id)a3 endDate:(id)a4 withRules:(id)a5;
- (void)detectWithLookbackDuration:(double)a3;
- (void)forceDetectorViolationForProcess:(id)a3 withHandler:(id)a4;
- (void)handleDetectedIssues:(id)a3;
- (void)logIssuesToPowerLogWithPayload:(id)a3;
- (void)processCPUIntervalsForCondition:(id)a3 startDate:(id)a4 endDate:(id)a5 rule:(id)a6 normalizer:(id)a7 issueCandidates:(id)a8;
- (void)registerForDayChangedNotification;
- (void)resetRuleParameters:(id)a3 withHandler:(id)a4;
- (void)setRuleParameters:(id)a3 withWindowSize:(id)a4 withStepSize:(id)a5 withMaxLookback:(id)a6 withDaemonOnly:(id)a7 withHandler:(id)a8;
- (void)testDetectWithLookbackDuration;
- (void)testHandleDetectedIssues;
@end

@implementation CSIssueDetector

+ (CSIssueDetector)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CSIssueDetector sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_4;

  return v3;
}

uint64_t __33__CSIssueDetector_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_4 = [[CSIssueDetector alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v151[3] = *MEMORY[0x277D85DE8];
  v142.receiver = self;
  v142.super_class = CSIssueDetector;
  v2 = [(CSIssueDetector *)&v142 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSIssueDetector"];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = _os_feature_enabled_impl();
    v6 = *(v2 + 4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "Starting Rule Based Detection", buf, 2u);
      }

      v8 = +[CSPowerlogDBReader sharedInstance];
      v9 = *(v2 + 1);
      *(v2 + 1) = v8;

      v10 = *(v2 + 5);
      *(v2 + 5) = &unk_28570B468;

      v139 = [&unk_28570B480 arrayByAddingObjectsFromArray:*(v2 + 5)];
      v140 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"coreautomation\\.coreautomationd|^com\\.openssh\\.sshd\\." options:0 error:&v140];
      v12 = v140;
      v13 = *(v2 + 6);
      *(v2 + 6) = v11;

      if (v12 && os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector _init];
      }

      [v2 registerForDayChangedNotification];
      v14 = [MEMORY[0x277CBEB18] array];
      v15 = *(v2 + 7);
      *(v2 + 7) = v14;

      v16 = [CSDetectionRule alloc];
      v17 = [CSDetectionRuleCondition alloc];
      LODWORD(v18) = 1065336439;
      v19 = [(CSDetectionRuleCondition *)v17 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v18];
      v151[0] = v19;
      v20 = [CSDetectionRuleCondition alloc];
      LODWORD(v21) = 1137180672;
      v22 = [(CSDetectionRuleCondition *)v20 initWithScalarMetric:1 andNormalizerMetric:0 andComparator:2 andValue:v21];
      v151[1] = v22;
      v23 = [CSDetectionRuleCondition alloc];
      LODWORD(v24) = 1050253722;
      v25 = [(CSDetectionRuleCondition *)v23 initWithScalarMetric:3 andNormalizerMetric:1 andComparator:2 andValue:v24];
      v151[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:3];
      LODWORD(v127) = 1;
      LODWORD(v27) = 1172373504;
      LODWORD(v28) = 1050253722;
      v137 = [(CSDetectionRule *)v16 initWithWindowSize:v26 conditions:0 processesAllowList:*(v2 + 5) processesDenyList:0 processesAllowRegex:*(v2 + 6) processesDenyRegex:1 daemonOnly:v27 mainThresholdValue:v28 ruleID:v127];

      v29 = [CSDetectionRule alloc];
      v30 = [CSDetectionRuleCondition alloc];
      LODWORD(v31) = 1155596288;
      v32 = [(CSDetectionRuleCondition *)v30 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:1 andValue:v31];
      v150[0] = v32;
      v33 = [CSDetectionRuleCondition alloc];
      LODWORD(v34) = 1150681088;
      v35 = [(CSDetectionRuleCondition *)v33 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v34];
      v150[1] = v35;
      v36 = [CSDetectionRuleCondition alloc];
      LODWORD(v37) = 1050253722;
      v38 = [(CSDetectionRuleCondition *)v36 initWithScalarMetric:4 andNormalizerMetric:2 andComparator:2 andValue:v37];
      v150[2] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
      LODWORD(v128) = 2;
      LODWORD(v40) = 1172373504;
      LODWORD(v41) = 1050253722;
      v136 = [(CSDetectionRule *)v29 initWithWindowSize:v39 conditions:0 processesAllowList:*(v2 + 5) processesDenyList:0 processesAllowRegex:*(v2 + 6) processesDenyRegex:1 daemonOnly:v40 mainThresholdValue:v41 ruleID:v128];

      v42 = [CSDetectionRule alloc];
      v43 = [CSDetectionRuleCondition alloc];
      LODWORD(v44) = 1142292480;
      v45 = [(CSDetectionRuleCondition *)v43 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:1 andValue:v44];
      v149[0] = v45;
      v46 = [CSDetectionRuleCondition alloc];
      LODWORD(v47) = 1137180672;
      v48 = [(CSDetectionRuleCondition *)v46 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v47];
      v149[1] = v48;
      v49 = [CSDetectionRuleCondition alloc];
      LODWORD(v50) = 1050253722;
      v51 = [(CSDetectionRuleCondition *)v49 initWithScalarMetric:4 andNormalizerMetric:2 andComparator:2 andValue:v50];
      v149[2] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
      LODWORD(v129) = 3;
      LODWORD(v53) = 1150681088;
      LODWORD(v54) = 1050253722;
      v135 = [(CSDetectionRule *)v42 initWithWindowSize:v52 conditions:*(v2 + 7) processesAllowList:0 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v53 mainThresholdValue:v54 ruleID:v129];

      v55 = [CSDetectionRule alloc];
      v56 = [CSDetectionRuleCondition alloc];
      LODWORD(v57) = 1065336439;
      v58 = [(CSDetectionRuleCondition *)v56 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v57];
      v148[0] = v58;
      v59 = [CSDetectionRuleCondition alloc];
      LODWORD(v60) = 1133903872;
      v61 = [(CSDetectionRuleCondition *)v59 initWithScalarMetric:1 andNormalizerMetric:0 andComparator:2 andValue:v60];
      v148[1] = v61;
      v62 = [CSDetectionRuleCondition alloc];
      LODWORD(v63) = 1140457472;
      v64 = [(CSDetectionRuleCondition *)v62 initWithScalarMetric:7 andNormalizerMetric:1 andComparator:2 andValue:v63];
      v148[2] = v64;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
      LODWORD(v130) = 4;
      LODWORD(v66) = 1142292480;
      LODWORD(v67) = 1133903872;
      LODWORD(v68) = 1157840896;
      LODWORD(v69) = 1140457472;
      v138 = [(CSDetectionRule *)v55 initWithWindowSize:v65 slidingWindowStepSize:0 maxSlidingLookback:v139 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v66 processesDenyRegex:v67 daemonOnly:v68 mainThresholdValue:v69 ruleID:v130];

      v70 = [CSDetectionRule alloc];
      v71 = [CSDetectionRuleCondition alloc];
      LODWORD(v72) = 1133903872;
      v73 = [(CSDetectionRuleCondition *)v71 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:2 andValue:v72];
      v147[0] = v73;
      v74 = [CSDetectionRuleCondition alloc];
      LODWORD(v75) = 1133903872;
      v76 = [(CSDetectionRuleCondition *)v74 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v75];
      v147[1] = v76;
      v77 = [CSDetectionRuleCondition alloc];
      LODWORD(v78) = 1140457472;
      v79 = [(CSDetectionRuleCondition *)v77 initWithScalarMetric:8 andNormalizerMetric:1 andComparator:2 andValue:v78];
      v147[2] = v79;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:3];
      LODWORD(v131) = 5;
      LODWORD(v81) = 1142292480;
      LODWORD(v82) = 1133903872;
      LODWORD(v83) = 1157840896;
      LODWORD(v84) = 1140457472;
      v134 = [(CSDetectionRule *)v70 initWithWindowSize:v80 slidingWindowStepSize:0 maxSlidingLookback:v139 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v81 processesDenyRegex:v82 daemonOnly:v83 mainThresholdValue:v84 ruleID:v131];

      v85 = [CSDetectionRule alloc];
      v86 = [CSDetectionRuleCondition alloc];
      LODWORD(v87) = 1065336439;
      v88 = [(CSDetectionRuleCondition *)v86 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v87];
      v146[0] = v88;
      v89 = [CSDetectionRuleCondition alloc];
      LODWORD(v90) = 1133903872;
      v91 = [(CSDetectionRuleCondition *)v89 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v90];
      v146[1] = v91;
      v92 = [CSDetectionRuleCondition alloc];
      LODWORD(v93) = 1132068864;
      v94 = [(CSDetectionRuleCondition *)v92 initWithScalarMetric:7 andNormalizerMetric:1 andComparator:2 andValue:v93];
      v146[2] = v94;
      v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
      LODWORD(v132) = 6;
      LODWORD(v96) = 1150681088;
      LODWORD(v97) = 1133903872;
      LODWORD(v98) = 1160298496;
      LODWORD(v99) = 1132068864;
      v100 = [(CSDetectionRule *)v85 initWithWindowSize:v95 slidingWindowStepSize:0 maxSlidingLookback:v139 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v96 processesDenyRegex:v97 daemonOnly:v98 mainThresholdValue:v99 ruleID:v132];

      v101 = [CSDetectionRule alloc];
      v102 = [CSDetectionRuleCondition alloc];
      LODWORD(v103) = 1142292480;
      v104 = [(CSDetectionRuleCondition *)v102 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:2 andValue:v103];
      v145[0] = v104;
      v105 = [CSDetectionRuleCondition alloc];
      LODWORD(v106) = 1133903872;
      v107 = [(CSDetectionRuleCondition *)v105 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v106];
      v145[1] = v107;
      v108 = [CSDetectionRuleCondition alloc];
      LODWORD(v109) = 1132068864;
      v110 = [(CSDetectionRuleCondition *)v108 initWithScalarMetric:8 andNormalizerMetric:1 andComparator:2 andValue:v109];
      v145[2] = v110;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
      LODWORD(v133) = 7;
      LODWORD(v112) = 1150681088;
      LODWORD(v113) = 1133903872;
      LODWORD(v114) = 1160298496;
      LODWORD(v115) = 1132068864;
      v116 = [(CSDetectionRule *)v101 initWithWindowSize:v111 slidingWindowStepSize:0 maxSlidingLookback:v139 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v112 processesDenyRegex:v113 daemonOnly:v114 mainThresholdValue:v115 ruleID:v133];

      v144[0] = v137;
      v144[1] = v136;
      v144[2] = v138;
      v144[3] = v134;
      v117 = v100;
      v144[4] = v100;
      v144[5] = v116;
      v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:6];
      if ([*(v2 + 7) count])
      {
        v119 = v135;
        v143 = v135;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
        v121 = [v120 arrayByAddingObjectsFromArray:v118];
        v122 = *(v2 + 2);
        *(v2 + 2) = v121;
      }

      else
      {
        v123 = v118;
        v120 = *(v2 + 2);
        *(v2 + 2) = v123;
        v119 = v135;
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "No rule based detection: PerfPowerServices/safeguards_rule_detection feature flag is off", buf, 2u);
    }

    v124 = v2;
  }

  v125 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)detectWithLookbackDuration:(double)a3
{
  v7 = [MEMORY[0x277CBEAA8] now];
  v5 = [v7 dateByAddingTimeInterval:-a3];
  v6 = [(CSIssueDetector *)self rules];
  [(CSIssueDetector *)self detectIssuesFromStartTime:v5 endDate:v7 withRules:v6];
}

- (void)detectIssuesFromStartTime:(id)a3 endDate:(id)a4 withRules:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(a3);
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    [v9 timeIntervalSinceDate:*&v8];
    v12 = v11;
    v51 = [MEMORY[0x277CBEB18] array];
    [(CSPowerlogDBReader *)self->_powerlogDBReader openConnection];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v49 = v10;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v58;
      v50 = v8;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [v17 windowSize];
          if (v12 >= v19 * 0.9)
          {
            if ([v17 useSlidingWindow])
            {
              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
              {
                v30 = logger;
                v31 = [v17 ruleID];
                LODWORD(buf) = 67109634;
                HIDWORD(buf) = v31;
                v62 = 2112;
                v63 = v8;
                v64 = 2112;
                v65 = v9;
                _os_log_impl(&dword_243DC3000, v30, OS_LOG_TYPE_INFO, "Start detection for rule %d: From %@ to %@, with sliding window", &buf, 0x1Cu);
              }

              v32 = [(CSIssueDetector *)self evaluateRuleWithSlidingWindow:v17 withStartDate:*&v8 andEndDate:v9];
              v33 = self->_logger;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = v33;
                v35 = [v17 ruleID];
                v36 = COERCE_DOUBLE([v32 count]);
                LODWORD(buf) = 67109376;
                HIDWORD(buf) = v35;
                v8 = v50;
                v62 = 2048;
                v63 = v36;
                _os_log_impl(&dword_243DC3000, v34, OS_LOG_TYPE_INFO, "Finish detection for rule %d: Detected %lu issues", &buf, 0x12u);
              }

              [v51 addObjectsFromArray:v32];
            }

            else
            {
              [v17 windowSize];
              [v9 dateByAddingTimeInterval:-v37];
              v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v39 = self->_logger;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = v39;
                v41 = [v17 ruleID];
                LODWORD(buf) = 67109634;
                HIDWORD(buf) = v41;
                v62 = 2112;
                v63 = v38;
                v64 = 2112;
                v65 = v9;
                _os_log_impl(&dword_243DC3000, v40, OS_LOG_TYPE_INFO, "Start detection for rule %d: From %@ to %@, without sliding window", &buf, 0x1Cu);
              }

              v42 = [(CSIssueDetector *)self evaluateRuleInFixedWindow:v17 withStartDate:*&v38 andEndDate:v9];
              v43 = self->_logger;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                v44 = v43;
                v45 = [v17 ruleID];
                v46 = COERCE_DOUBLE([v42 count]);
                LODWORD(buf) = 67109376;
                HIDWORD(buf) = v45;
                v62 = 2048;
                v63 = v46;
                _os_log_impl(&dword_243DC3000, v44, OS_LOG_TYPE_INFO, "Finish detection for rule %d: Detected %lu issues", &buf, 0x12u);
              }

              [v51 addObjectsFromArray:v42];

              v8 = v50;
            }
          }

          else
          {
            v20 = self->_logger;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = v20;
              v22 = [v17 ruleID];
              [v17 windowSize];
              LODWORD(buf) = 67109376;
              HIDWORD(buf) = v22;
              v62 = 2048;
              v63 = v23 - v12;
              _os_log_impl(&dword_243DC3000, v21, OS_LOG_TYPE_INFO, "Prepare detection for rule %d: Waiting for %.0f seconds, without sliding window", &buf, 0x12u);
            }

            v24 = getMainQueue();
            v25 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v24);

            [v17 windowSize];
            v27 = dispatch_walltime(0, ((v26 - v12) * 1000000000.0));
            dispatch_source_set_timer(v25, v27, 0, 0x6FC23AC00uLL);
            objc_initWeak(&buf, self);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __63__CSIssueDetector_detectIssuesFromStartTime_endDate_withRules___block_invoke;
            handler[3] = &unk_278DF5788;
            v54 = v25;
            v55 = v17;
            v28 = v25;
            objc_copyWeak(&v56, &buf);
            dispatch_source_set_event_handler(v28, handler);
            dispatch_resume(v28);
            objc_destroyWeak(&v56);

            objc_destroyWeak(&buf);
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v14);
    }

    [(CSPowerlogDBReader *)self->_powerlogDBReader closeConnection];
    if ([v51 count])
    {
      [(CSIssueDetector *)self handleDetectedIssues:v51];
    }

    v10 = v49;
  }

  else
  {
    v47 = self->_logger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_243DC3000, v47, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: No rule based detection: PerfPowerServices/safeguards_rule_detection feature flag is off", &buf, 2u);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __63__CSIssueDetector_detectIssuesFromStartTime_endDate_withRules___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  v2 = [MEMORY[0x277CBEAA8] now];
  [*(a1 + 40) windowSize];
  v4 = [v2 dateByAddingTimeInterval:-v3];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained logger];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 40) ruleID];
    v16 = 67109634;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: Start detection for rule %d: From %@ to %@, without sliding window", &v16, 0x1Cu);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 evaluateRuleInFixedWindow:*(a1 + 40) withStartDate:v4 andEndDate:v2];

  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 logger];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 40) ruleID];
    v13 = [v9 count];
    v16 = 67109376;
    v17 = v12;
    v18 = 2048;
    v19 = v13;
    _os_log_impl(&dword_243DC3000, v11, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: Finish detection for rule %d: Detected %lu issues", &v16, 0x12u);
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 handleDetectedIssues:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getValueOfMetric:(int)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v15 = [(CSIssueDetector *)self powerlogDBReader];
        v16 = [v15 getAPWakeIntervalListWithStartDate:v8 andEndDate:v10];

        v17 = [(CSIssueDetector *)self powerlogDBReader];
        v18 = [v17 getUnpluggedIntervalListWithStartDate:v8 andEndDate:v10];

        v19 = [v16 intersectWithIntervalList:v18];
        [v19 durationInSeconds];
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];

        goto LABEL_28;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector getValueOfMetric:startDate:endDate:];
      }

      goto LABEL_27;
    }

    if (!a3)
    {
      v14 = &unk_28570AF68;
      goto LABEL_28;
    }

    if (a3 != 1)
    {
LABEL_25:
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector getValueOfMetric:startDate:endDate:];
      }

      goto LABEL_27;
    }

    v11 = [(CSIssueDetector *)self powerlogDBReader];
    v12 = [v11 getAPWakeIntervalListWithStartDate:v8 andEndDate:v10];
LABEL_20:
    v20 = v12;

    [v20 durationInSeconds];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    goto LABEL_28;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      v13 = MEMORY[0x277CCABB0];
      [v9 timeIntervalSinceDate:v8];
      v14 = [v13 numberWithDouble:?];
      goto LABEL_28;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector getValueOfMetric:startDate:endDate:];
    }

    goto LABEL_27;
  }

  if (a3 == 6)
  {
    v11 = [(CSIssueDetector *)self powerlogDBReader];
    v12 = [v11 getUnpluggedIntervalListWithStartDate:v8 andEndDate:v10];
    goto LABEL_20;
  }

  if (a3 == 7)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector getValueOfMetric:startDate:endDate:];
    }

    goto LABEL_27;
  }

  if (a3 != 8)
  {
    goto LABEL_25;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSIssueDetector getValueOfMetric:startDate:endDate:];
  }

LABEL_27:
  v14 = 0;
LABEL_28:

  return v14;
}

- (void)processCPUIntervalsForCondition:(id)a3 startDate:(id)a4 endDate:(id)a5 rule:(id)a6 normalizer:(id)a7 issueCandidates:(id)a8
{
  v105 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v86 = a5;
  v15 = a6;
  v92 = a7;
  v16 = a8;
  v17 = [v13 scalarMetric] == 4 || objc_msgSend(v13, "scalarMetric") == 8;
  v84 = "energy";
  if ([v13 scalarMetric] != 8)
  {
    v18 = [v13 scalarMetric];
    v19 = "seconds";
    if (v18 == 7)
    {
      v19 = "energy";
    }

    v84 = v19;
  }

  v20 = [v13 scalarMetric];
  if ((v20 - 7) < 2)
  {
    v85 = v16;
    v21 = [(CSIssueDetector *)self powerlogDBReader];
    v22 = [v15 processesAllowList];
    v23 = [v15 processesDenyList];
    v24 = [v21 getCPUEnergyIntervalListMapWithStartDate:v14 andEndDate:v86 andAllowListCoalitions:v22 andDenyListCoalitions:v23 andDaemonOnly:{objc_msgSend(v15, "daemonOnly")}];
    goto LABEL_12;
  }

  if ((v20 - 3) <= 1)
  {
    v85 = v16;
    v21 = [(CSIssueDetector *)self powerlogDBReader];
    v22 = [v15 processesAllowList];
    v23 = [v15 processesDenyList];
    v24 = [v21 getCPUPercentageIntervalListMapWithStartDate:v14 andEndDate:v86 andAllowListCoalitions:v22 andDenyListCoalitions:v23 andDaemonOnly:{objc_msgSend(v15, "daemonOnly")}];
LABEL_12:
    v25 = v24;

    if (v17)
    {
      v26 = [(CSIssueDetector *)self powerlogDBReader];
      v89 = [v26 getUnpluggedIntervalListWithStartDate:v14 andEndDate:v86];
    }

    else
    {
      v89 = 0;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v27 = v25;
    v91 = [v27 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v91)
    {
      v29 = "";
      v90 = *v95;
      if (v17)
      {
        v29 = "unplugged";
      }

      v81 = v29;
      *&v28 = 138412290;
      v79 = v28;
      v80 = v13;
      v87 = v27;
      v82 = v15;
      v83 = v14;
      v88 = v17;
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v95 != v90)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v94 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = [v27 objectForKeyedSubscript:v31];
          v34 = v33;
          if (v17)
          {
            v35 = [v33 intersectWithIntervalList:v89];

            v34 = v35;
          }

          [v34 timeWeightedSum];
          v37 = v36;
          v38 = v36;
          [v13 value];
          v40 = v39;
          [v92 doubleValue];
          *&v40 = v41 * v40;
          v42 = [v13 comparator];
          *&v43 = v38;
          LODWORD(v44) = LODWORD(v40);
          if ([(CSIssueDetector *)self compareWithValue1:v42 andValue2:v43 andComparator:v44])
          {
            v45 = [v31 rangeOfString:@":" options:4];
            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
              {
                *buf = v79;
                v99 = v31;
                _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "Wrong format of launchdNameAndCID: %@", buf, 0xCu);
              }

              v47 = v31;
              v48 = &unk_28570AF80;
            }

            else
            {
              v49 = v45;
              v50 = MEMORY[0x277CCABB0];
              v51 = [v31 substringFromIndex:v45 + 1];
              v48 = [v50 numberWithInt:{objc_msgSend(v51, "intValue")}];

              v47 = [v31 substringToIndex:v49];
            }

            v52 = [v15 processesAllowRegex];

            if (!v52 || ([v15 processesAllowRegex], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "rangeOfFirstMatchInString:options:range:", v47, 0, 0, objc_msgSend(v47, "length")), v53, v54 != 0x7FFFFFFFFFFFFFFFLL))
            {
              v55 = [v15 processesDenyRegex];

              if (!v55 || ([v15 processesDenyRegex], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "rangeOfFirstMatchInString:options:range:", v47, 0, 0, objc_msgSend(v47, "length")), v56, v57 == 0x7FFFFFFFFFFFFFFFLL))
              {
                v58 = self->_logger;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v99 = v84;
                  v100 = 2080;
                  v101 = v81;
                  v102 = 2112;
                  v103 = v47;
                  _os_log_impl(&dword_243DC3000, v58, OS_LOG_TYPE_INFO, "CPU %s %s threshold matches process with launchd name %@", buf, 0x20u);
                }

                v59 = -[CSIssueDetector getCPUIssueWithMitigationSuggestionForCoalitionID:withLaunchdName:fromStartDate:toEndDate:byRule:](self, "getCPUIssueWithMitigationSuggestionForCoalitionID:withLaunchdName:fromStartDate:toEndDate:byRule:", [v48 intValue], v47, v14, v86, v15);
                [v59 setRule:v15];
                v60 = MEMORY[0x277CCABB0];
                [v92 doubleValue];
                v62 = [v60 numberWithDouble:v37 / v61];
                [v59 setValue:v62];

                if ([v34 count])
                {
                  [v15 mainThresholdValue];
                  *&v64 = v63 / 10.0;
                  v65 = [(CSIssueDetector *)self getCPUIssueStartEndTime:v34 valueThreshold:v64];
                  if ([v65 count] == 2)
                  {
                    v66 = [v65 objectAtIndexedSubscript:0];
                    v67 = [MEMORY[0x277CBEB68] null];

                    if (v66 != v67)
                    {
                      v68 = [(CSIssueDetector *)self powerlogDBReader];
                      v69 = [v65 objectAtIndexedSubscript:0];
                      v70 = [v68 getSystemTime:v69];
                      [v59 setStartTime:v70];

                      v13 = v80;
                    }

                    v71 = [v65 objectAtIndexedSubscript:1];
                    v72 = [MEMORY[0x277CBEB68] null];

                    v73 = v71 == v72;
                    v15 = v82;
                    v14 = v83;
                    if (!v73)
                    {
                      v74 = [(CSIssueDetector *)self powerlogDBReader];
                      v75 = [v65 objectAtIndexedSubscript:1];
                      v76 = [v74 getSystemTime:v75];
                      [v59 setEndTime:v76];

                      v13 = v80;
                      v15 = v82;

                      v14 = v83;
                    }
                  }
                }

                [v85 addObject:v59];
              }
            }

            v17 = v88;
            v27 = v87;
          }

          objc_autoreleasePoolPop(v32);
        }

        v91 = [v27 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v91);
    }

    v16 = v85;
    [v85 count];

    goto LABEL_48;
  }

  v78 = self->_logger;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    [CSIssueDetector processCPUIntervalsForCondition:v78 startDate:? endDate:? rule:? normalizer:? issueCandidates:?];
  }

LABEL_48:

  v77 = *MEMORY[0x277D85DE8];
}

- (id)evaluateRuleInFixedWindow:(id)a3 withStartDate:(id)a4 andEndDate:(id)a5
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 detectAcrossBoots] & 1) == 0)
  {
    v11 = [(CSIssueDetector *)self powerlogDBReader];
    v12 = [v11 getDeviceBootTime];

    if ([v9 compare:v12] == -1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v100 = v9;
        *&v100[8] = 2112;
        *&v100[10] = v12;
        _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
      }

      v14 = v12;

      v9 = v14;
    }
  }

  v15 = self->_logger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v8 ruleID];
    *buf = 67109634;
    *v100 = v17;
    *&v100[4] = 2112;
    *&v100[6] = v9;
    *&v100[14] = 2112;
    *&v100[16] = v10;
    _os_log_impl(&dword_243DC3000, v16, OS_LOG_TYPE_INFO, "Evaluating rule %d in a fixed window [%@, %@]", buf, 0x1Cu);
  }

  [v10 timeIntervalSinceDate:v9];
  if (v18 < 0.0)
  {
    v19 = self->_logger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v100 = v9;
      *&v100[8] = 2112;
      *&v100[10] = v10;
      _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_INFO, "Skip evaluating rule since startDate %@ is later than endDate %@", buf, 0x16u);
    }

LABEL_15:
    v26 = 0;
    goto LABEL_72;
  }

  [v10 timeIntervalSinceDate:v9];
  v21 = v20;
  [v8 windowSize];
  if (v21 < v22 * 0.9)
  {
    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      [v8 windowSize];
      *buf = 138412802;
      *v100 = v9;
      *&v100[8] = 2112;
      *&v100[10] = v10;
      *&v100[18] = 2048;
      *&v100[20] = v25;
      _os_log_impl(&dword_243DC3000, v24, OS_LOG_TYPE_INFO, "Skip evaluating rule since duration from %@ to %@ is not enough for %f", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = [v8 conditions];
  v92 = [obj countByEnumeratingWithState:&v94 objects:v98 count:16];
  if (!v92)
  {
    goto LABEL_71;
  }

  v93 = *v95;
  v90 = v26;
  do
  {
    v27 = 0;
    do
    {
      if (*v95 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v94 + 1) + 8 * v27);
      v29 = objc_autoreleasePoolPush();
      v30 = -[CSIssueDetector getValueOfMetric:startDate:endDate:](self, "getValueOfMetric:startDate:endDate:", [v28 normalizerMetric], v9, v10);
      v31 = v30;
      if (!v30)
      {
        v83 = self->_logger;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          [CSIssueDetector evaluateRuleInFixedWindow:v83 withStartDate:? andEndDate:?];
        }

        goto LABEL_58;
      }

      [v30 doubleValue];
      if (v32 == 0.0)
      {
        v84 = self->_logger;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          [CSIssueDetector evaluateRuleInFixedWindow:v84 withStartDate:? andEndDate:?];
        }

        goto LABEL_58;
      }

      if ([v28 scalarMetric] == 1)
      {
        v33 = [(CSIssueDetector *)self getValueOfMetric:1 startDate:v9 endDate:v10];
        v34 = v33;
        if (!v33)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
          }

          goto LABEL_68;
        }

        [v33 doubleValue];
        v36 = v35;
        [v28 value];
        v38 = v37;
        [v31 doubleValue];
        *&v38 = v39 * v38;
        v40 = [v28 comparator];
        *&v41 = v36;
        LODWORD(v42) = LODWORD(v38);
        v43 = [(CSIssueDetector *)self compareWithValue1:v40 andValue2:v41 andComparator:v42];
        v44 = self->_logger;
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
        if (!v43)
        {
          if (v45)
          {
            *buf = 0;
            v85 = "--APWakeDuration condition not meet";
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (v45)
        {
          *buf = 0;
          v46 = v44;
          v47 = "++APWakeDuration condition meet";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_40;
      }

      if ([v28 scalarMetric] == 2)
      {
        v48 = [(CSIssueDetector *)self getValueOfMetric:2 startDate:v9 endDate:v10];
        v34 = v48;
        if (!v48)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
          }

          goto LABEL_68;
        }

        [v48 doubleValue];
        v50 = v49;
        [v28 value];
        v52 = v51;
        [v31 doubleValue];
        *&v52 = v53 * v52;
        v54 = [v28 comparator];
        *&v55 = v50;
        LODWORD(v56) = LODWORD(v52);
        v57 = [(CSIssueDetector *)self compareWithValue1:v54 andValue2:v55 andComparator:v56];
        v44 = self->_logger;
        v58 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
        if (!v57)
        {
          if (v58)
          {
            *buf = 0;
            v85 = "--APAwakeDurationUnplugged condition not meet";
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (!v58)
        {
          goto LABEL_34;
        }

        *buf = 0;
        v46 = v44;
        v47 = "++APAwakeDurationUnplugged condition meet";
        goto LABEL_33;
      }

      if ([v28 scalarMetric] != 3 && objc_msgSend(v28, "scalarMetric") != 4 && objc_msgSend(v28, "scalarMetric") != 7 && objc_msgSend(v28, "scalarMetric") != 8)
      {
        if ([v28 scalarMetric] == 5)
        {
          v60 = [(CSIssueDetector *)self getValueOfMetric:5 startDate:v9 endDate:v10];
          v34 = v60;
          if (!v60)
          {
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
            }

            goto LABEL_68;
          }

          [v60 doubleValue];
          v62 = v61;
          [v28 value];
          v64 = v63;
          [v31 doubleValue];
          *&v64 = v65 * v64;
          v66 = [v28 comparator];
          *&v67 = v62;
          LODWORD(v68) = LODWORD(v64);
          v69 = [(CSIssueDetector *)self compareWithValue1:v66 andValue2:v67 andComparator:v68];
          v44 = self->_logger;
          v70 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (!v69)
          {
            if (v70)
            {
              *buf = 0;
              v85 = "--UnpluggedDuration condition not meet";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!v70)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ([v28 scalarMetric] != 6)
          {
            v89 = self->_logger;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:v89 withStartDate:? andEndDate:?];
            }

LABEL_58:
            [v90 removeAllObjects];
            goto LABEL_70;
          }

          v71 = [(CSIssueDetector *)self getValueOfMetric:6 startDate:v9 endDate:v10];
          v34 = v71;
          if (!v71)
          {
            v86 = v90;
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
            }

            goto LABEL_69;
          }

          [v71 doubleValue];
          v73 = v72;
          [v28 value];
          v75 = v74;
          [v31 doubleValue];
          *&v75 = v76 * v75;
          v77 = [v28 comparator];
          *&v78 = v73;
          LODWORD(v79) = LODWORD(v75);
          v80 = [(CSIssueDetector *)self compareWithValue1:v77 andValue2:v78 andComparator:v79];
          v44 = self->_logger;
          v81 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (!v80)
          {
            if (v81)
            {
              *buf = 0;
              v85 = "--UnpluggedDuration condition not meet";
LABEL_67:
              _os_log_impl(&dword_243DC3000, v44, OS_LOG_TYPE_INFO, v85, buf, 2u);
            }

LABEL_68:
            v86 = v90;
LABEL_69:
            [v86 removeAllObjects];

LABEL_70:
            objc_autoreleasePoolPop(v29);
            v26 = v90;
            goto LABEL_71;
          }

          if (!v81)
          {
            goto LABEL_34;
          }
        }

        *buf = 0;
        v46 = v44;
        v47 = "++UnpluggedDuration condition meet";
LABEL_33:
        _os_log_impl(&dword_243DC3000, v46, OS_LOG_TYPE_INFO, v47, buf, 2u);
        goto LABEL_34;
      }

      v59 = v90;
      [(CSIssueDetector *)self processCPUIntervalsForCondition:v28 startDate:v9 endDate:v10 rule:v8 normalizer:v31 issueCandidates:v90, v90];
      if (![v59 count])
      {
        goto LABEL_70;
      }

LABEL_40:

      objc_autoreleasePoolPop(v29);
      ++v27;
    }

    while (v92 != v27);
    v82 = [obj countByEnumeratingWithState:&v94 objects:v98 count:16];
    v26 = v90;
    v92 = v82;
  }

  while (v82);
LABEL_71:

LABEL_72:
  v87 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)evaluateRuleWithSlidingWindow:(id)a3 withStartDate:(id)a4 andEndDate:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 maxSlidingLookback];
  v12 = [v10 addTimeInterval:-v11];
  if ([v12 compare:v9] == 1)
  {
    v13 = v12;

    v9 = v13;
  }

  if (([v8 detectAcrossBoots] & 1) == 0)
  {
    v14 = v12;
    v15 = [(CSIssueDetector *)self powerlogDBReader];
    v16 = [v15 getDeviceBootTime];

    if ([v9 compare:v16] == -1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v73 = v9;
        *&v73[8] = 2112;
        *&v73[10] = v16;
        _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
      }

      v18 = v16;

      v9 = v18;
    }

    v12 = v14;
  }

  v19 = self->_logger;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [v8 ruleID];
    *buf = 67109634;
    *v73 = v21;
    *&v73[4] = 2112;
    *&v73[6] = v9;
    *&v73[14] = 2112;
    *&v73[16] = v10;
    _os_log_impl(&dword_243DC3000, v20, OS_LOG_TYPE_INFO, "Evaluate rule %d in sliding windows in range [%@, %@]", buf, 0x1Cu);
  }

  [v10 timeIntervalSinceDate:v9];
  if (v22 < 0.0)
  {
    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v73 = v9;
      *&v73[8] = 2112;
      *&v73[10] = v10;
      _os_log_impl(&dword_243DC3000, v23, OS_LOG_TYPE_INFO, "Skip evaluating rule since startDate %@ is later than endDate %@", buf, 0x16u);
    }

LABEL_17:
    v30 = 0;
    goto LABEL_38;
  }

  [v10 timeIntervalSinceDate:v9];
  v25 = v24;
  [v8 windowSize];
  if (v25 < v26 * 0.9)
  {
    v27 = self->_logger;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      [v8 windowSize];
      *buf = 138412802;
      *v73 = v9;
      *&v73[8] = 2112;
      *&v73[10] = v10;
      *&v73[18] = 2048;
      *&v73[20] = v29;
      _os_log_impl(&dword_243DC3000, v28, OS_LOG_TYPE_INFO, "Skip evaluating rule since duration from %@ to %@ is not enough for %f", buf, 0x20u);
    }

    goto LABEL_17;
  }

  [v8 slidingWindowStepSize];
  v61 = v10;
  if (v31 >= 300.0)
  {
    v33 = v31;
  }

  else
  {
    v32 = self->_logger;
    v33 = 300.0;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = v32;
      [v8 slidingWindowStepSize];
      v36 = v35;
      v37 = [v8 ruleID];
      *buf = 134218496;
      *v73 = 0x4072C00000000000;
      *&v73[8] = 2048;
      *&v73[10] = v36;
      *&v73[18] = 1024;
      *&v73[20] = v37;
      _os_log_impl(&dword_243DC3000, v34, OS_LOG_TYPE_INFO, "Use step size %.1f instead of %.1f in rule %d since it was too small", buf, 0x1Cu);
    }
  }

  v60 = v12;
  v30 = [MEMORY[0x277CBEB18] array];
  v38 = [MEMORY[0x277CBEB58] set];
  v39 = v61;
  [v8 windowSize];
  v41 = [v39 dateByAddingTimeInterval:-v40];
  [v41 timeIntervalSinceDate:v9];
  if (v42 >= 0.0)
  {
    v45 = -v33;
    v62 = v9;
    v63 = v8;
    do
    {
      context = objc_autoreleasePoolPush();
      v65 = v39;
      v66 = v41;
      v46 = [(CSIssueDetector *)self evaluateRuleInFixedWindow:v8 withStartDate:v41 andEndDate:v39];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v47 = [v46 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v67 + 1) + 8 * i);
            v52 = [v51 identifier];
            v53 = [v38 containsObject:v52];

            if (v53)
            {
              v54 = self->_logger;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                [(CSIssueDetector *)buf evaluateRuleWithSlidingWindow:v54 withStartDate:v51 andEndDate:v73];
              }
            }

            else
            {
              v55 = [v51 identifier];
              [v38 addObject:v55];

              [v30 addObject:v51];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v67 objects:v71 count:16];
        }

        while (v48);
      }

      v43 = [v65 dateByAddingTimeInterval:v45];

      v8 = v63;
      [v63 windowSize];
      v44 = [v43 dateByAddingTimeInterval:-v56];

      objc_autoreleasePoolPop(context);
      v9 = v62;
      [v44 timeIntervalSinceDate:v62];
      v41 = v44;
      v39 = v43;
    }

    while (v57 >= 0.0);
  }

  else
  {
    v43 = v39;
    v44 = v41;
  }

  v12 = v60;
  v10 = v61;
LABEL_38:

  v58 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)getCPUIssueStartEndTime:(id)a3 valueThreshold:(float)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 intervalArray];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v7)
  {

    v10 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v29;
  v12 = a4;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      [v14 value];
      if (v15 >= v12)
      {
        v16 = [v14 startTime];
        v17 = v16;
        if (!v9)
        {
          v9 = v16;
LABEL_13:
          v22 = [v14 endTime];

          v10 = v22;
          continue;
        }

        v18 = [v16 compare:v9];

        if (v18 == -1)
        {
          v19 = [v14 startTime];

          v9 = v19;
        }

        v20 = [v14 endTime];
        v21 = [v20 compare:v10];

        if (v21 == 1)
        {
          goto LABEL_13;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v8);

  if (v9 && v10)
  {
    v33[0] = v9;
    v33[1] = v10;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    goto LABEL_21;
  }

LABEL_20:
  v24 = [MEMORY[0x277CBEB68] null];
  v32[0] = v24;
  v25 = [MEMORY[0x277CBEB68] null];
  v32[1] = v25;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)handleDetectedIssues:(id)a3
{
  v185 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v3 = [v96 sortedArrayUsingComparator:&__block_literal_global_98];
  v4 = [MEMORY[0x277CBEB58] set];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v153 objects:v184 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v154;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v154 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v153 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 containsObject:v11];

        if (v12)
        {
          [v10 setOverridden:1];
          [v10 setMitigationSuggestion:0];
          [v10 setForceMitigationSuggestion:1];
          [v10 setMitigationSuggestionReason:3];
        }

        else
        {
          v13 = [v10 identifier];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v153 objects:v184 count:16];
    }

    while (v7);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = v5;
  v115 = [obj countByEnumeratingWithState:&v149 objects:v183 count:16];
  if (v115)
  {
    v113 = *v150;
    v114 = v4;
    do
    {
      v14 = 0;
      do
      {
        if (*v150 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v147 = v14;
        v15 = *(*(&v149 + 1) + 8 * v14);
        context = objc_autoreleasePoolPush();
        v138 = MEMORY[0x277CCACA8];
        v134 = PEIssueTypeString([v15 issueType]);
        v16 = [v15 rule];
        if (v16)
        {
          v117 = [v15 rule];
          v130 = [v117 ruleID];
        }

        else
        {
          v130 = 0xFFFFFFFFLL;
        }

        v17 = [v15 processName];
        v142 = v16;
        if (v17)
        {
          v118 = [v15 processName];
          v127 = [v118 UTF8String];
        }

        else
        {
          v127 = "UnknownProcessName";
        }

        v18 = [v15 coalitionID];
        v19 = getDateFormatter();
        v20 = [v15 startTime];
        v21 = [v19 stringFromDate:v20];
        v22 = [v21 UTF8String];
        v23 = getDateFormatter();
        v24 = [v15 endTime];
        v25 = [v23 stringFromDate:v24];
        v26 = [v138 stringWithFormat:@"Found issue with IssueType:%s in Rule: %d for process: %s with coalitionID: %llu from time %s to %s", v134, v130, v127, v18, v22, objc_msgSend(v25, "UTF8String")];
        [v15 setDetectorString:v26];

        if (v17)
        {
        }

        if (v142)
        {
        }

        v27 = self->_logger;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v145 = [v15 rule];
          if (v145)
          {
            v97 = [v15 rule];
            v141 = [v97 ruleID];
          }

          else
          {
            v141 = -1;
          }

          v83 = [v15 processName];
          v84 = v83;
          v85 = @"UnknownProcessName";
          if (v83)
          {
            v85 = v83;
          }

          v137 = v85;
          v133 = [v15 coalitionID];
          v86 = getDateFormatter();
          v87 = [v15 startTime];
          v88 = [v86 stringFromDate:v87];
          v89 = [v88 UTF8String];
          v90 = getDateFormatter();
          v91 = [v15 endTime];
          v92 = [v90 stringFromDate:v91];
          v93 = [v92 UTF8String];
          *buf = 67110402;
          *v160 = v141;
          *&v160[4] = 2112;
          *&v160[6] = v15;
          *&v160[14] = 2112;
          *&v160[16] = v137;
          *&v160[24] = 2048;
          *&v160[26] = v133;
          *&v160[34] = 2080;
          *&v160[36] = v89;
          v161 = 2080;
          v162 = v93;
          _os_log_error_impl(&dword_243DC3000, v27, OS_LOG_TYPE_ERROR, "handleDetectedIssues: Found issues with rule %d issue %@ for process %@ with coalitionID: %llu from time %s to %s", buf, 0x3Au);

          if (v145)
          {
          }
        }

        if ([v15 mitigationSuggestion] || !objc_msgSend(v15, "forceMitigationSuggestion"))
        {
          v29 = +[CSMitigationManager sharedInstance];
          [v29 handleDetectorViolation:v15];

          if ([v15 mitigationDecisionType] == 1)
          {
            v30 = [v15 launchdName];
            if (v30)
            {
              v31 = v30;
              fatalMitigatedProcessList = self->_fatalMitigatedProcessList;
              v33 = [v15 launchdName];
              LOBYTE(fatalMitigatedProcessList) = [(NSMutableArray *)fatalMitigatedProcessList containsObject:v33];

              if ((fatalMitigatedProcessList & 1) == 0)
              {
                v34 = self->_fatalMitigatedProcessList;
                v35 = [v15 launchdName];
                [(NSMutableArray *)v34 addObject:v35];
              }
            }
          }

          v36 = [v15 errorString];

          if (v36)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              v74 = logger;
              v75 = PEMitigationTypeString([v15 mitigationDecisionType]);
              v76 = PEReasonString([v15 mitigationDecisionReason]);
              v77 = [v15 errorString];
              v78 = v77;
              if (v77)
              {
                v79 = v77;
              }

              else
              {
                v79 = @"NullString";
              }

              v80 = [v15 processName];
              v81 = v80;
              *buf = 136315906;
              v82 = @"UnknownProcessName";
              if (v80)
              {
                v82 = v80;
              }

              *v160 = v75;
              *&v160[8] = 2080;
              *&v160[10] = v76;
              *&v160[18] = 2112;
              *&v160[20] = v79;
              *&v160[28] = 2112;
              *&v160[30] = v82;
              _os_log_error_impl(&dword_243DC3000, v74, OS_LOG_TYPE_ERROR, "handleDetectedIssues: handleDetectorViolation() returned an error. MitigationDecisionType: %s MitigationDecisionReason: %s errorString <%@> for process %@", buf, 0x2Au);
            }
          }
        }

        else
        {
          v28 = self->_logger;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(CSIssueDetector *)v181 handleDetectedIssues:v28, v15, &v182];
          }
        }

        v38 = +[CSLogger signpostCategory];
        v39 = [v15 lastPID];
        if ((v39 - 1) <= 0xFFFFFFFD)
        {
          v40 = v39;
          if (os_signpost_enabled(v38))
          {
            v143 = [v15 processName];
            if (v143)
            {
              v102 = [v15 processName];
              v119 = [v102 UTF8String];
            }

            else
            {
              v119 = 0;
            }

            v41 = getDateFormatter();
            v135 = [v15 startTime];
            v139 = v41;
            v131 = [v41 stringFromDate:?];
            v110 = [v131 UTF8String];
            v42 = getDateFormatter();
            v125 = [v15 endTime];
            v128 = v42;
            v123 = [v42 stringFromDate:?];
            v109 = [v123 UTF8String];
            v108 = PEIssueTypeString([v15 issueType]);
            v43 = [v15 value];
            if (v43)
            {
              v101 = [v15 value];
              v107 = [v101 intValue];
            }

            else
            {
              v107 = -1;
            }

            v106 = [v15 coalitionID];
            v44 = [v15 launchdName];
            if (v44)
            {
              v100 = [v15 launchdName];
              v105 = [v100 UTF8String];
            }

            else
            {
              v105 = 0;
            }

            v45 = [v15 rule];
            v121 = v43;
            v111 = v44;
            if (v45)
            {
              v99 = [v15 rule];
              v104 = [v99 ruleID];
            }

            else
            {
              v104 = -1;
            }

            v103 = PEMitigationTypeString([v15 mitigationSuggestion]);
            v46 = PESuggestionReasonString([v15 mitigationSuggestionReason]);
            v47 = [v15 forceMitigationSuggestion];
            v48 = [v15 overridden];
            v49 = PEMitigationTypeString([v15 mitigationDecisionType]);
            v50 = PEReasonString([v15 mitigationDecisionReason]);
            v51 = [v15 errorString];
            v52 = v51;
            if (v51)
            {
              v98 = [v15 errorString];
              v51 = [v98 UTF8String];
            }

            *buf = 136449794;
            *v160 = v119;
            *&v160[8] = 2082;
            *&v160[10] = v110;
            *&v160[18] = 2082;
            *&v160[20] = v109;
            *&v160[28] = 2082;
            *&v160[30] = v108;
            *&v160[38] = 1026;
            *&v160[40] = v107;
            v161 = 2050;
            v162 = v106;
            v163 = 2082;
            v164 = v105;
            v165 = 1026;
            v166 = v104;
            v167 = 2082;
            v168 = v103;
            v169 = 2082;
            v170 = v46;
            v171 = 1026;
            v172 = v47;
            v173 = 1026;
            v174 = v48;
            v175 = 2082;
            v176 = v49;
            v177 = 2082;
            v178 = v50;
            v179 = 2082;
            v180 = v51;
            _os_signpost_emit_with_name_impl(&dword_243DC3000, v38, OS_SIGNPOST_EVENT, v40, "Issue Detected", "Process name: %{public, name=processName}s\nSignpost ID is PID\nTime Stamp Start: %{public, name=timeStampStart}s\nTime Stamp End: %{public, name=timeStampEnd}s\nIssue Type: %{public, name=issueType}s\nValue: %{public, name=value}d\nCoalition ID: %{public, name=coalitionID}lld\nCoalition name: %{public, name=coalitionName}s\nRule ID: %{public, name=ruleID}d\nMitigation Suggestion: %{public, name=mitigationSuggestion}s\nMitigation Suggestion Reason: %{public, name=mitigationSuggestionReason}s\nForce Mitigation Suggestion: %{public, name=forceMitigationSuggestion}d\nOverridden: %{public, name=overridden}d\nMitigation Decision Type: %{public, name=mitigationDecisionType}s\nMitigation Decision Reason: %{public, name=mitigationDecisionReason}s\nError String: %{public, name=errorString}s\n", buf, 0x88u);
            if (v52)
            {
            }

            if (v45)
            {
            }

            if (v111)
            {
            }

            if (v121)
            {
            }

            if (v143)
            {
            }
          }
        }

        v126 = MEMORY[0x277CBEB38];
        v157[0] = @"timestampStart";
        v53 = MEMORY[0x277CCABB0];
        v144 = [v15 startTime];
        [v144 timeIntervalSince1970];
        v140 = [v53 numberWithDouble:?];
        v158[0] = v140;
        v157[1] = @"timestampEnd";
        v54 = MEMORY[0x277CCABB0];
        v136 = [v15 endTime];
        [v136 timeIntervalSince1970];
        v132 = [v54 numberWithDouble:?];
        v158[1] = v132;
        v157[2] = @"IssueType";
        v129 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "issueType")}];
        v158[2] = v129;
        v157[3] = @"PID";
        v124 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "lastPID")}];
        v158[3] = v124;
        v157[4] = @"CoalitionID";
        v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "coalitionID")}];
        v158[4] = v122;
        v157[5] = @"RuleID";
        v55 = MEMORY[0x277CCABB0];
        v120 = [v15 rule];
        if (v120)
        {
          v116 = [v15 rule];
          v56 = [v116 ruleID];
        }

        else
        {
          v56 = 0xFFFFFFFFLL;
        }

        v57 = [v55 numberWithInt:v56];
        v158[5] = v57;
        v157[6] = @"MitigationSuggestion";
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationSuggestion")}];
        v158[6] = v58;
        v157[7] = @"MitigationSuggestionReason";
        v59 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "mitigationSuggestionReason")}];
        v158[7] = v59;
        v157[8] = @"ForceMitigationSuggestion";
        v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "forceMitigationSuggestion")}];
        v158[8] = v60;
        v157[9] = @"Overridden";
        v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "overridden")}];
        v158[9] = v61;
        v157[10] = @"MitigationDecisionType";
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationDecisionType")}];
        v158[10] = v62;
        v157[11] = @"MitigationDecisionReason";
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationDecisionReason")}];
        v158[11] = v63;
        v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:12];
        v65 = [v126 dictionaryWithDictionary:v64];

        if (v120)
        {
        }

        v66 = [v15 processName];

        v4 = v114;
        if (v66)
        {
          v67 = [v15 processName];
          [v65 setObject:v67 forKeyedSubscript:@"ProcessName"];
        }

        v68 = [v15 value];

        if (v68)
        {
          v69 = [v15 value];
          [v65 setObject:v69 forKeyedSubscript:@"Value"];
        }

        v70 = [v15 launchdName];

        if (v70)
        {
          v71 = [v15 launchdName];
          [v65 setObject:v71 forKeyedSubscript:@"LaunchdName"];
        }

        v72 = [v15 errorString];

        if (v72)
        {
          v73 = [v15 errorString];
          [v65 setObject:v73 forKeyedSubscript:@"ErrorString"];
        }

        [(CSIssueDetector *)self logIssuesToPowerLogWithPayload:v65];

        objc_autoreleasePoolPop(context);
        v14 = v147 + 1;
      }

      while (v115 != v147 + 1);
      v94 = [obj countByEnumeratingWithState:&v149 objects:v183 count:16];
      v115 = v94;
    }

    while (v94);
  }

  v95 = *MEMORY[0x277D85DE8];
}

uint64_t __40__CSIssueDetector_handleDetectedIssues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endTime];
  v6 = [v4 endTime];

  v7 = [v6 compare:v5];
  return v7;
}

- (void)logIssuesToPowerLogWithPayload:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [(CSIssueDetector *)v4 logIssuesToPowerLogWithPayload:?];
  }

  if (logIssuesToPowerLogWithPayload__onceToken != -1)
  {
    [CSIssueDetector logIssuesToPowerLogWithPayload:];
  }

  PPSSendTelemetry();
}

uint64_t __50__CSIssueDetector_logIssuesToPowerLogWithPayload___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logIssuesToPowerLogWithPayload__streamID = result;
  return result;
}

- (BOOL)compareWithValue1:(float)a3 andValue2:(float)a4 andComparator:(int)a5
{
  if (a5 <= 1)
  {
    if (a5)
    {
      return a5 == 1 && a3 > a4;
    }

    if (a3 != a4)
    {
      return 0;
    }
  }

  else if (a5 == 2)
  {
    if (a3 < a4)
    {
      return 0;
    }
  }

  else
  {
    if (a5 != 3)
    {
      return a5 == 4 && a3 <= a4;
    }

    if (a3 >= a4)
    {
      return 0;
    }
  }

  return 1;
}

- (void)clearFatalMitigatedProcessList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fatalMitigatedProcessList];
  [v2 removeAllObjects];

  v3 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke_cold_1(v3);
  }
}

- (void)registerForDayChangedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_dayChangedNotificationReceived_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)dayChangedNotificationReceived:(id)a3
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [CSIssueDetector dayChangedNotificationReceived:?];
  }

  v5 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CSIssueDetector_dayChangedNotificationReceived___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)testHandleDetectedIssues
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = [CSIssue alloc];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2000.0];
  v5 = [(CSIssue *)v2 initWithIdentifier:@"CPU::process1" andLaunchdName:@"process1" andIssueType:1 andStartTime:v3 andEndTime:v4];

  v6 = [CSDetectionRule alloc];
  LODWORD(v29) = 10003;
  v7 = MEMORY[0x277CBEBF8];
  LODWORD(v8) = 1172373504;
  LODWORD(v9) = 1050253722;
  v10 = [(CSDetectionRule *)v6 initWithWindowSize:MEMORY[0x277CBEBF8] conditions:MEMORY[0x277CBEBF8] processesAllowList:MEMORY[0x277CBEBF8] processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v8 mainThresholdValue:v9 ruleID:v29];
  [(CSIssue *)v5 setRule:v10];

  [(CSIssue *)v5 setMitigationSuggestion:4];
  v11 = [CSIssue alloc];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3000.0];
  v14 = [(CSIssue *)v11 initWithIdentifier:@"CPU::process1" andLaunchdName:@"process1" andIssueType:1 andStartTime:v12 andEndTime:v13];

  v15 = [CSDetectionRule alloc];
  LODWORD(v30) = 10002;
  LODWORD(v16) = 1172373504;
  LODWORD(v17) = 1050253722;
  v18 = [(CSDetectionRule *)v15 initWithWindowSize:v7 conditions:v7 processesAllowList:v7 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v16 mainThresholdValue:v17 ruleID:v30];
  [(CSIssue *)v14 setRule:v18];

  [(CSIssue *)v14 setMitigationSuggestion:4];
  v19 = [CSIssue alloc];
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3000.0];
  v22 = [(CSIssue *)v19 initWithIdentifier:@"CPU::process2" andLaunchdName:@"process2" andIssueType:1 andStartTime:v20 andEndTime:v21];

  v23 = [CSDetectionRule alloc];
  LODWORD(v31) = 10003;
  LODWORD(v24) = 1172373504;
  LODWORD(v25) = 1050253722;
  v26 = [(CSDetectionRule *)v23 initWithWindowSize:v7 conditions:v7 processesAllowList:v7 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v24 mainThresholdValue:v25 ruleID:v31];
  [(CSIssue *)v22 setRule:v26];

  [(CSIssue *)v22 setMitigationSuggestion:0];
  [(CSIssue *)v22 setForceMitigationSuggestion:1];
  [(CSIssue *)v22 setMitigationSuggestionReason:1];
  v33[0] = v5;
  v33[1] = v14;
  v33[2] = v22;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  [(CSIssueDetector *)self handleDetectedIssues:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)testDetectWithLookbackDuration
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = +[CSPowerlogDBReader sharedInstance];
  [v3 openConnection];

  v4 = [CSDetectionRule alloc];
  v5 = [[CSDetectionRuleCondition alloc] initWithScalarMetric:3 andNormalizerMetric:1 andComparator:2 andValue:0.0];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  LODWORD(v15) = 9999;
  LODWORD(v7) = 1114636288;
  LODWORD(v8) = 1.0;
  v9 = [(CSDetectionRule *)v4 initWithWindowSize:v6 conditions:0 processesAllowList:self->_genericCPUDetectorProcessDenyList processesDenyList:0 processesAllowRegex:self->_genericCPUDetectorProcessDenyRegex processesDenyRegex:1 daemonOnly:v7 mainThresholdValue:v8 ruleID:v15];

  [(CSDetectionRule *)v9 setDetectAcrossBoots:1];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 dateByAddingTimeInterval:-36000.0];
  v16 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [(CSIssueDetector *)self detectIssuesFromStartTime:v11 endDate:v10 withRules:v12];

  v13 = +[CSPowerlogDBReader sharedInstance];
  [v13 closeConnection];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)forceDetectorViolationForProcess:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4.0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v10 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke;
  block[3] = &unk_278DF57D0;
  v11 = v6;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  v18 = self;
  v19 = &v20;
  dispatch_sync(v10, block);

  v7[2](v7, v21[5]);
  _Block_object_dispose(&v20, 8);
}

void __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke(uint64_t *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [[CSIssue alloc] initWithIdentifier:a1[4] andProcessName:a1[4] andIssueType:1 andStartTime:a1[5] andEndTime:a1[6]];
  v4 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identiferForName:*v2];
    if (v6)
    {
      v7 = [v5 processForIdentifier:v6];
      v8 = v7;
      if (v7 && ([v7 trackedPIDs], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
      {
        v11 = [v8 lastPid];
      }

      else
      {
        v14 = a1[4];
        v15 = *(a1[8] + 8);
        obj = *(v15 + 40);
        v11 = [v5 discoverPidForProcessName:v14 withError:&obj];
        objc_storeStrong((v15 + 40), obj);
        if (!v11)
        {
          if ([v8 lastPid])
          {
            v11 = [v8 lastPid];
            v16 = *(a1[8] + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = 0;
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v20 = [v8 uuid];
      v21 = [v20 UUIDString];
      [(CSIssue *)v3 setLastPUUID:v21];

      [(CSIssue *)v3 setLastPID:v11];
      -[CSIssue setCoalitionID:](v3, "setCoalitionID:", [v8 lastCoalitionID]);
      [(CSIssue *)v3 setValue:&unk_28570B498];
      v22 = a1[7];
      v26[0] = v3;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [v22 handleDetectedIssues:v23];
    }

    else
    {
      if (os_log_type_enabled(*(a1[7] + 32), OS_LOG_TYPE_ERROR))
      {
        __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke_cold_1(a1 + 4);
      }

      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
      v19 = *(a1[8] + 8);
      v8 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1[7] + 32), OS_LOG_TYPE_ERROR))
    {
      __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke_cold_2();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    v13 = *(a1[8] + 8);
    v6 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:(id)a3 withWindowSize:(id)a4 withStepSize:(id)a5 withMaxLookback:(id)a6 withDaemonOnly:(id)a7 withHandler:(id)a8
{
  v46 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v39 = a5;
  v38 = a6;
  v40 = a7;
  v16 = a8;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = self->_rules;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v42 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v41 + 1) + 8 * v21);
      v23 = [v22 ruleID];
      if (v23 == [v14 intValue])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v24 = v22;

    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = v15;
    v26 = [v15 intValue];
    v27 = v26;
    if (v26 != -1 && v26 <= 599)
    {
      v28 = v38;
      v29 = v39;
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

LABEL_29:
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:7 userInfo:0];
      v16[2](v16, v35);

      goto LABEL_30;
    }

    v29 = v39;
    v30 = [v39 intValue];
    v31 = v30;
    v28 = v38;
    if (v30 != -1 && v30 <= 59)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    v32 = [v38 intValue];
    v33 = v32;
    if (v32 != -1 && v32 <= 599)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    v37 = [v40 intValue];
    if ((v37 - 2) <= 0xFFFFFFFC)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    if (v27 != -1)
    {
      *&v34 = v27;
      [v24 setWindowSize:v34];
    }

    if (v31 != -1)
    {
      *&v34 = v31;
      [v24 setSlidingWindowStepSize:v34];
    }

    if (v33 != -1)
    {
      *&v34 = v33;
      [v24 setMaxSlidingLookback:v34];
    }

    if (v37 != -1)
    {
      [v24 setDaemonOnly:v37 != 0];
    }

    v16[2](v16, 0);
  }

  else
  {
LABEL_9:

LABEL_15:
    v25 = v15;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:6 userInfo:0];
    v16[2](v16, v24);
    v28 = v38;
    v29 = v39;
  }

LABEL_30:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)resetRuleParameters:(id)a3 withHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_rules;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      v14 = [v13 ruleID];
      if (v14 == [v6 intValue])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_12;
    }

    [v15 initWindowSize];
    [v15 setWindowSize:?];
    [v15 initSlidingWindowStepSize];
    [v15 setSlidingWindowStepSize:?];
    [v15 initMaxSlidingLookback];
    [v15 setMaxSlidingLookback:?];
    [v15 setDaemonOnly:{objc_msgSend(v15, "initDaemonOnly")}];
    v16 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:6 userInfo:{0, v18}];
    v15 = v16;
  }

  v7[2](v7, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getValueOfMetric:startDate:endDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getValueOfMetric:startDate:endDate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getValueOfMetric:startDate:endDate:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getValueOfMetric:startDate:endDate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getValueOfMetric:startDate:endDate:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processCPUIntervalsForCondition:(void *)a1 startDate:endDate:rule:normalizer:issueCandidates:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() scalarMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Unrecognized scalar metric type passed to processCPUIntervalsForCondition: %u", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() scalarMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Scalar Metric Type %d is not supported", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.6(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() normalizerMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Normalizer Metric Type %d is zero", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.7(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() normalizerMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Error when getting normalizer value from metric %d", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRuleWithSlidingWindow:(void *)a3 withStartDate:(void *)a4 andEndDate:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 launchdName];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_243DC3000, v7, OS_LOG_TYPE_DEBUG, "Issue on %@ already detected in a previous sliding window.", a1, 0xCu);
}

- (void)handleDetectedIssues:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, _DWORD *a4)
{
  v7 = a2;
  v8 = [a3 mitigationSuggestionReason];
  *a1 = 67109120;
  *a4 = v8;
  _os_log_error_impl(&dword_243DC3000, v7, OS_LOG_TYPE_ERROR, "handleDetectedIssues: Skip CSMitigationManager to handleDetectorViolation for this issue with reason: %d", a1, 8u);
}

- (void)logIssuesToPowerLogWithPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "logIssuesToPowerLogWithPayload payload: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.3()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end