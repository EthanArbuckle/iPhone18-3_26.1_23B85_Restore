@interface CSRestrictionManager
+ (id)sharedInstanceWithDataProvider:(id)a3;
- (BOOL)applyDefaultRestrictionsToProcess:(id)a3;
- (BOOL)applyPluggedInRestrictionsToProcess:(id)a3;
- (BOOL)applyRestrictionsToProcess:(id)a3 forScenario:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_initWithDataProvider:(id)a3;
- (id)determineScenarioForProcess:(id)a3;
- (id)getInfoForProcess:(id)a3;
- (id)updateRestrictionsDataForScenarios:(id)a3;
- (unint64_t)applyRestriction:(id)a3 withProcessIdentifier:(id)a4;
- (void)checkScheduledIntensiveInNewProcesses:(id)a3;
- (void)clearMitigationRecordsWithHandler:(id)a3;
- (void)clearRestrictionsForProcess:(id)a3;
- (void)clearTargetProcess;
- (void)currentActiveScenarios:(id)a3 previousActiveScenarios:(id)a4;
- (void)determineAndApplyRestrictionsForProcess:(id)a3;
- (void)forceCPUViolationForProcess:(id)a3 withHandler:(id)a4;
- (void)forceDetectionWithStartTime:(id)a3 endTime:(id)a4 withHandler:(id)a5;
- (void)forceDetectorViolationForProcess:(id)a3 withHandler:(id)a4;
- (void)forceMidnightRoutineWithHandler:(id)a3;
- (void)getActiveScenariosWithHandler:(id)a3;
- (void)getCpuPercentageTriggerForWindowEndDate:(id)a3 windowStartDate:(id)a4 handler:(id)a5;
- (void)getDefaultsWithHandler:(id)a3;
- (void)getInfoForProcess:(id)a3 withHandler:(id)a4;
- (void)getMaxRelaunchPollingIntervalWithHandler:(id)a3;
- (void)getMitigationPolicyWithHandler:(id)a3;
- (void)getMonitoredListWithHandler:(id)a3;
- (void)getPenaltyListWithHandler:(id)a3;
- (void)getPollingIntervalWithHandler:(id)a3;
- (void)getProcessesAffectedByScenarioMapWithHandler:(id)a3;
- (void)getRelaunchPollingIntervalWithHandler:(id)a3;
- (void)getRestrictionsForProcess:(id)a3 forScenario:(id)a4 withHandler:(id)a5;
- (void)getScenarioRefreshIntervalWithHandler:(id)a3;
- (void)getScenariosWithHandler:(id)a3;
- (void)getTargetProcessMitigationRecordsWithHandler:(id)a3;
- (void)getTargetProcessWithHandler:(id)a3;
- (void)getTriggerIntervalWithHandler:(id)a3;
- (void)modifyContextForIdentifier:(id)a3 withState:(id)a4;
- (void)modifyDefaults:(id)a3 withMaxNonFatal:(id)a4 withEnableMitigations:(id)a5 withEnablePenaltyBox:(id)a6 withPercentage:(id)a7 withSeconds:(id)a8 withPenaltyBoxDuration:(id)a9 withMitigationsPluggedIn:(id)a10 withMitigateXPCServices:(id)a11 withHandler:(id)a12;
- (void)modifyMaxRelaunchPollingInterval:(id)a3;
- (void)modifyPollingInterval:(id)a3;
- (void)modifyProcessInfoFor:(id)a3 withFatalCount:(id)a4 withNonFatalCount:(id)a5 withExitCount:(id)a6 withPenaltyCount:(id)a7 withPolicyMask:(id)a8 withHandler:(id)a9;
- (void)modifyRelaunchPollingInterval:(id)a3;
- (void)modifyRestrictionsByProcessPerScenario:(id)a3 withHandler:(id)a4;
- (void)modifyScenarioRefreshInterval:(id)a3;
- (void)modifyTargetProcess:(id)a3 withPercentage:(id)a4 withSeconds:(id)a5 withPenaltyBoxDuration:(id)a6;
- (void)modifyTargetProcessMitigationRecords:(id)a3 withHandler:(id)a4;
- (void)observeNewRunningProcesses:(id)a3;
- (void)populateScenarios;
- (void)queueChangeForActivatedScenarios:(id)a3 deactivatedScenarios:(id)a4;
- (void)reportScheduledIntensiveWorkByProcesses:(id)a3;
- (void)traverseRestrictionsData;
- (void)updateScheduledIntensiveContext:(id)a3;
@end

@implementation CSRestrictionManager

+ (id)sharedInstanceWithDataProvider:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSRestrictionManager_sharedInstanceWithDataProvider___block_invoke;
  block[3] = &unk_278DF5230;
  v10 = v3;
  v4 = sharedInstanceWithDataProvider__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithDataProvider__onceToken, block);
  }

  v6 = sharedInstanceWithDataProvider___sharedInstance;
  v7 = sharedInstanceWithDataProvider___sharedInstance;

  return v6;
}

uint64_t __55__CSRestrictionManager_sharedInstanceWithDataProvider___block_invoke(uint64_t a1)
{
  sharedInstanceWithDataProvider___sharedInstance = [[CSRestrictionManager alloc] _initWithDataProvider:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithDataProvider:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = CSRestrictionManager;
  v6 = [(CSRestrictionManager *)&v44 initWithMachServiceName:@"com.apple.computesafeguards.managing"];
  if (v6)
  {
    v7 = [CSLogger logForCategory:@"CSRestrictionManager"];
    logger = v6->_logger;
    v6->_logger = v7;

    [(CSRestrictionManager *)v6 setDelegate:v6];
    objc_storeStrong(&v6->_dataProvider, a3);
    v9 = +[CSScenarioManager sharedInstance];
    scenarioManager = v6->_scenarioManager;
    v6->_scenarioManager = v9;

    v11 = [(CSRestrictionDataProviding *)v6->_dataProvider processesSet];
    v12 = [(CSRestrictionDataProviding *)v6->_dataProvider processPolicyDict];
    v13 = [(CSRestrictionDataProviding *)v6->_dataProvider band95ProcessesSet];
    v14 = [(CSRestrictionDataProviding *)v6->_dataProvider band80ProcessesSet];
    v15 = [CSProcessManager sharedInstanceWithEnrolledProcesses:v11 andProcessPolicies:v12 andBand95:v13 andBand80:v14];
    processManager = v6->_processManager;
    v6->_processManager = v15;

    v17 = +[CSMitigationManager sharedInstance];
    mitigationManager = v6->_mitigationManager;
    v6->_mitigationManager = v17;

    v19 = +[CSTriggerManager sharedInstance];
    triggerManager = v6->_triggerManager;
    v6->_triggerManager = v19;

    v21 = +[CSIssueDetector sharedInstance];
    issueDetector = v6->_issueDetector;
    v6->_issueDetector = v21;

    v23 = [(CSRestrictionDataProviding *)v6->_dataProvider restrictionsByProcessPerScenario];
    restrictionsByProcessPerScenario = v6->_restrictionsByProcessPerScenario;
    v6->_restrictionsByProcessPerScenario = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    processesAffectedByScenarioMap = v6->_processesAffectedByScenarioMap;
    v6->_processesAffectedByScenarioMap = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    monitors = v6->_monitors;
    v6->_monitors = v27;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    currentRestrictionsByProcess = v6->_currentRestrictionsByProcess;
    v6->_currentRestrictionsByProcess = v29;

    v31 = [MEMORY[0x277CBEB58] set];
    currentActiveScenarios = v6->_currentActiveScenarios;
    v6->_currentActiveScenarios = v31;

    v6->_debounceTimeBeforeRestrictions = 20;
    [(CSRestrictionManager *)v6 populateScenarios];
    [(CSRestrictionManager *)v6 observeProcessChanges];
    [(CSRestrictionManager *)v6 traverseRestrictionsData];
    v33 = [MEMORY[0x277CBEB18] array];
    v34 = [CSRestrictionFactory restrictionForClass:@"CPUTimeRestrictionBand" withProperties:&unk_28570AF98 errors:v33];
    defaultRestriction = v6->_defaultRestriction;
    v6->_defaultRestriction = v34;

    v36 = [MEMORY[0x277CBEB18] array];
    v37 = [CSRestrictionFactory restrictionForClass:@"CPUTimeRestrictionBand" withProperties:&unk_28570AFC0 errors:v36];
    band95Restriction = v6->_band95Restriction;
    v6->_band95Restriction = v37;

    v39 = [MEMORY[0x277CBEB18] array];
    v40 = [CSRestrictionFactory restrictionForClass:@"CPUTimeRestrictionBand" withProperties:&unk_28570AFE8 errors:v39];
    band80Restriction = v6->_band80Restriction;
    v6->_band80Restriction = v40;

    notify_post("PLPowerExceptionsExemptionsSyncNotification");
    [(CSRestrictionManager *)v6 activate];
    v42 = v6;
  }

  return v6;
}

- (void)clearRestrictionsForProcess:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [(CSRestrictionManager *)logger clearRestrictionsForProcess:v4];
  }

  [v4 setNeedClearRestrictions:0];
  [v4 setResetNonFatalCPUMonitor:0];
  v6 = 184;
  currentRestrictionsByProcess = self->_currentRestrictionsByProcess;
  v8 = [v4 identifier];
  v9 = [(NSMutableDictionary *)currentRestrictionsByProcess objectForKey:v8];

  if (v9)
  {
    v27 = 184;
    v28 = v9;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v15 releaseForProcess:{v4, v27, v28}];
          if (v16)
          {
            v17 = v16;
            v18 = self->_logger;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              log = v18;
              v19 = [v4 identifier];
              *buf = 67109634;
              v35 = v17;
              v36 = 2112;
              v37 = v15;
              v38 = 2112;
              v39 = v19;
              _os_log_debug_impl(&dword_243DC3000, log, OS_LOG_TYPE_DEBUG, "Failed %d to release restriction:%@ for processIdentifier:%@", buf, 0x1Cu);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v12);
    }

    v6 = v27;
    v9 = v28;
  }

  v20 = *(&self->super.super.isa + v6);
  v21 = [MEMORY[0x277CBEB58] set];
  v22 = [v4 identifier];
  [v20 setObject:v21 forKey:v22];

  v23 = *(&self->super.super.isa + v6);
  v24 = [v4 identifier];
  v25 = [v23 objectForKey:v24];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)traverseRestrictionsData
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_restrictionsByProcessPerScenario;
  v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      v3 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v3;
        v4 = *(*(&v23 + 1) + 8 * v3);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v4];
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v19 + 1) + 8 * i);
              v11 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKey:v10];

              if (!v11)
              {
                v12 = [MEMORY[0x277CBEB58] set];
                [(NSMutableDictionary *)self->_processesAffectedByScenarioMap setObject:v12 forKeyedSubscript:v10];
              }

              v13 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKeyedSubscript:v10];
              [v13 addObject:v4];
            }

            v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v7);
        }

        v3 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)updateRestrictionsDataForScenarios:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = [MEMORY[0x277CBEB58] set];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v42 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v42)
  {
    v41 = *v56;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v56 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v55 + 1) + 8 * i);
        v7 = [(CSScenarioManager *)self->_scenarioManager restrictionsForScenario:v6];

        if (v7)
        {
          v44 = i;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v8 = self->_restrictionsByProcessPerScenario;
          v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v52;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v52 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:*(*(&v51 + 1) + 8 * j)];
                [v13 setObject:0 forKeyedSubscript:v6];
              }

              v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
            }

            while (v10);
          }

          v14 = MEMORY[0x277CBEB58];
          v15 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKeyedSubscript:v6];
          v43 = [v14 setWithSet:v15];

          [(NSMutableDictionary *)self->_processesAffectedByScenarioMap setObject:0 forKeyedSubscript:v6];
          v16 = [(CSScenarioManager *)self->_scenarioManager restrictionsForScenario:v6];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v46 = v16;
          v45 = [v16 allKeys];
          v17 = [v45 countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v48;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v48 != v19)
                {
                  objc_enumerationMutation(v45);
                }

                v21 = *(*(&v47 + 1) + 8 * k);
                v22 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v21];

                if (!v22)
                {
                  v23 = [MEMORY[0x277CBEB38] dictionary];
                  [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario setObject:v23 forKeyedSubscript:v21];
                }

                v24 = [v46 objectForKeyedSubscript:v21];
                v25 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v21];
                [v25 setObject:v24 forKeyedSubscript:v6];

                v26 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKeyedSubscript:v6];

                if (!v26)
                {
                  v27 = [MEMORY[0x277CBEB58] set];
                  [(NSMutableDictionary *)self->_processesAffectedByScenarioMap setObject:v27 forKeyedSubscript:v6];
                }

                v28 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKeyedSubscript:v6];
                [v28 addObject:v21];

                logger = self->_logger;
                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
                {
                  processesAffectedByScenarioMap = self->_processesAffectedByScenarioMap;
                  v31 = logger;
                  v32 = [(NSMutableDictionary *)processesAffectedByScenarioMap objectForKeyedSubscript:v6];
                  *buf = 138412546;
                  v60 = v6;
                  v61 = 2112;
                  v62 = v32;
                  _os_log_debug_impl(&dword_243DC3000, v31, OS_LOG_TYPE_DEBUG, "_processesAffectedByScenarioMap[%@]: %@", buf, 0x16u);
                }
              }

              v18 = [v45 countByEnumeratingWithState:&v47 objects:v63 count:16];
            }

            while (v18);
          }

          v33 = MEMORY[0x277CBEB58];
          v34 = [(NSMutableDictionary *)self->_processesAffectedByScenarioMap objectForKeyedSubscript:v6];
          v35 = [v33 setWithSet:v34];

          v36 = [MEMORY[0x277CBEB58] setWithSet:v35];
          [v36 intersectSet:v43];
          [v35 minusSet:v36];
          [v43 minusSet:v36];
          [v40 unionSet:v35];
          [v40 unionSet:v43];

          i = v44;
        }
      }

      v42 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v42);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)populateScenarios
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CSRestrictionDataProviding *)self->_dataProvider scenariosDictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v14}];
        if (v10)
        {
          v11 = [CSScenarioFactory scenarioForIdentifier:v9 withProperties:v10];
          [(CSScenarioManager *)self->_scenarioManager registerScenario:v11];
        }

        else
        {
          logger = self->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
          {
            *buf = v14;
            v20 = v9;
            _os_log_fault_impl(&dword_243DC3000, logger, OS_LOG_TYPE_FAULT, "Encountered nil scenarioDescription for scenarioIdentifier:%@", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  [(CSScenarioManager *)self->_scenarioManager addObserver:self];
  [(CSScenarioManager *)self->_scenarioManager evaluateScenariosPostInit];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28570E0D0];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v8 = logger;
    v11[0] = 67109120;
    v11[1] = [v5 processIdentifier];
    _os_log_impl(&dword_243DC3000, v8, OS_LOG_TYPE_INFO, "Accepted new connection from pid %d", v11, 8u);
  }

  [v5 resume];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)applyPluggedInRestrictionsToProcess:(id)a3
{
  v4 = a3;
  v5 = [(CSProcessManager *)self->_processManager processForIdentifier:v4];
  if (v5)
  {
    [(CSRestrictionManager *)self clearRestrictionsForProcess:v5];
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager applyPluggedInRestrictionsToProcess:];
  }

  return v5 != 0;
}

- (unint64_t)applyRestriction:(id)a3 withProcessIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSProcessManager *)self->_processManager processForIdentifier:v7];
  if (v8)
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v9 = [v6 cpuThreshold];
    v10 = [v6 timeWindow];
    v11 = [v8 trackedPIDs];
    v12 = [v11 count];

    if (!v12)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSRestrictionManager applyRestriction:withProcessIdentifier:];
      }

      v14 = 255;
      goto LABEL_30;
    }

    [(CSMitigationManager *)self->_mitigationManager policyMitigationsEnabled];
    if ([v8 policyBitMask])
    {
      v15 = [v8 rootDaemon];
      v16 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
      if (v15)
      {
        if (v16)
        {
          [CSRestrictionManager applyRestriction:withProcessIdentifier:];
        }

        v13 = 17;
      }

      else
      {
        if (v16)
        {
          [CSRestrictionManager applyRestriction:withProcessIdentifier:];
        }

        v13 = 1;
      }
    }

    else
    {
      if (gMitigationsWhilePluggedIn || ![(NSSet *)self->_currentActiveScenarios containsObject:@"Charging"])
      {
        goto LABEL_23;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSRestrictionManager applyRestriction:withProcessIdentifier:];
      }

      v13 = 6;
    }

    [v8 setMitigationType:0];
    [v8 setMitigationReason:v13];
LABEL_23:
    [(CSMitigationManager *)self->_mitigationManager checkOverridesForProcess:v7 penaltyBoxDuration:&v23 cpuThreshold:&v22 timeWindow:&v21];
    if (v22)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:?];

      v9 = v17;
    }

    if (v21)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:?];

      v10 = v18;
    }

    [v6 releaseForProcess:v8];
    [v8 setCpuThreshold:v9];
    [v8 setCpuTimeWindow:v10];
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      [(CSRestrictionManager *)logger applyRestriction:v8 withProcessIdentifier:v7];
    }

    v14 = [v8 mitigationType];
LABEL_30:

    goto LABEL_31;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSRestrictionManager applyRestriction:withProcessIdentifier:];
  }

  v14 = 255;
LABEL_31:

  return v14;
}

- (BOOL)applyRestrictionsToProcess:(id)a3 forScenario:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSProcessManager *)self->_processManager processForIdentifier:v6];
  v9 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v9)
    {
      [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
    }

    v10 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKey:v6];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v6];
      v12 = [v11 objectForKey:v7];

      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v6];
        v14 = [v13 objectForKeyedSubscript:v7];
        v15 = [v14 restrictions];

        v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
        if (([v8 needClearRestrictions] & 1) != 0 || objc_msgSend(v8, "resetNonFatalCPUMonitor"))
        {
          [(CSRestrictionManager *)self clearRestrictionsForProcess:v8];
        }

        v17 = [(NSMutableDictionary *)self->_currentRestrictionsByProcess objectForKey:v6];
        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 isEqualToSet:v17])
          {
            logger = self->_logger;
            v19 = 1;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *v64 = v6;
              *&v64[8] = 2112;
              *&v64[10] = v7;
              _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Restrictions are unchanged for processIdentifier:%@ for scenario:%@", buf, 0x16u);
            }

LABEL_61:

            goto LABEL_62;
          }

          v20 = self->_logger;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *v64 = v17;
            *&v64[8] = 2112;
            *&v64[10] = v6;
            *&v64[18] = 2112;
            *&v64[20] = v7;
            _os_log_debug_impl(&dword_243DC3000, v20, OS_LOG_TYPE_DEBUG, "Clear current restrictions %@ for processIdentifier:%@ in scenario:%@", buf, 0x20u);
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v52 = v17;
          v21 = v17;
          v22 = [v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
          if (v22)
          {
            v23 = v22;
            v48 = v7;
            v50 = v16;
            v46 = v15;
            v24 = *v58;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v58 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v57 + 1) + 8 * i);
                v27 = [v26 releaseForProcess:v8];
                if (v27)
                {
                  v28 = v27;
                  v29 = self->_logger;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109634;
                    *v64 = v28;
                    *&v64[4] = 2112;
                    *&v64[6] = v26;
                    *&v64[14] = 2112;
                    *&v64[16] = v6;
                    _os_log_error_impl(&dword_243DC3000, v29, OS_LOG_TYPE_ERROR, "Failed %d to release restriction:%@ for processIdentifier:%@, skipping any further restrictions", buf, 0x1Cu);
                  }

                  v45 = 0;
                  goto LABEL_36;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }

            v45 = 1;
LABEL_36:
            v15 = v46;
            v7 = v48;
            v16 = v50;
          }

          else
          {
            v45 = 1;
          }
        }

        else
        {
          v52 = 0;
          v45 = 1;
        }

        currentRestrictionsByProcess = self->_currentRestrictionsByProcess;
        v31 = [MEMORY[0x277CBEB58] set];
        [(NSMutableDictionary *)currentRestrictionsByProcess setObject:v31 forKey:v6];

        v32 = [v7 isEqualToString:@"ScheduledIntensive"];
        v33 = self->_logger;
        if (v32)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v64 = v6;
            _os_log_impl(&dword_243DC3000, v33, OS_LOG_TYPE_DEFAULT, "Do not apply any restriction to processIdentifier:%@ while temporarily exempted", buf, 0xCu);
          }

          [v8 setMitigationType:0];
          [v8 setMitigationReason:18];
          v19 = 1;
          v17 = v52;
        }

        else
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
          {
            [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = v16;
          v34 = v16;
          v35 = [v34 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v35)
          {
            v36 = v35;
            v47 = v15;
            v49 = v7;
            v37 = *v54;
            while (2)
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v54 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v53 + 1) + 8 * j);
                [(CSRestrictionManager *)self applyRestriction:v39 withProcessIdentifier:v6];
                v40 = [v39 applyToProcess:v8];
                v41 = self->_logger;
                if (v40)
                {
                  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
                  {
                    [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
                  }

                  v19 = 0;
                  v15 = v47;
                  v7 = v49;
                  v16 = v51;
                  v17 = v52;
                  goto LABEL_60;
                }

                if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *v64 = v39;
                  *&v64[8] = 2112;
                  *&v64[10] = v6;
                  _os_log_impl(&dword_243DC3000, v41, OS_LOG_TYPE_INFO, "Successfully applied restriction: %@ to processIdentifier: %@", buf, 0x16u);
                }

                v42 = [(NSMutableDictionary *)self->_currentRestrictionsByProcess objectForKeyedSubscript:v6];
                [v42 addObject:v39];
              }

              v36 = [v34 countByEnumeratingWithState:&v53 objects:v61 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }

            v15 = v47;
            v7 = v49;
          }

          v16 = v51;
          v17 = v52;
          v19 = v45;
LABEL_60:
        }

        goto LABEL_61;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
    }
  }

  else if (v9)
  {
    [CSRestrictionManager applyRestrictionsToProcess:forScenario:];
  }

  v19 = 0;
LABEL_62:

  v43 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)applyDefaultRestrictionsToProcess:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSProcessManager *)self->_processManager processForIdentifier:v4];
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager applyDefaultRestrictionsToProcess:];
  }

  if (([v5 needClearRestrictions] & 1) != 0 || objc_msgSend(v5, "resetNonFatalCPUMonitor"))
  {
    [(CSRestrictionManager *)self clearRestrictionsForProcess:v5];
  }

  v6 = 184;
  v7 = [(NSMutableDictionary *)self->_currentRestrictionsByProcess objectForKey:v4];
  if (!v7)
  {
    currentRestrictionsByProcess = self->_currentRestrictionsByProcess;
    v8 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)currentRestrictionsByProcess setObject:v8 forKey:v4];
LABEL_23:
    v15 = 1;
    goto LABEL_24;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager applyDefaultRestrictionsToProcess:];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v27 = 184;
  v28 = v7;
  v11 = *v30;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      v14 = [v13 releaseForProcess:{v5, v27, v28, v29}];
      if (v14)
      {
        v16 = v14;
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          v34 = v16;
          v35 = 2112;
          v36 = v13;
          v37 = 2112;
          v38 = v4;
          _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "applyDefaultRestrictionsToProcess: Failed %d to release restriction:%@ for processIdentifier:%@, skipping any further restrictions", buf, 0x1Cu);
        }

        v15 = 0;
        goto LABEL_21;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
    v15 = 1;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v6 = v27;
  v7 = v28;
LABEL_24:

  if ([v5 band95Mitigations])
  {
    v19 = &OBJC_IVAR___CSRestrictionManager__band95Restriction;
  }

  else
  {
    v20 = [v5 band80Mitigations];
    v19 = &OBJC_IVAR___CSRestrictionManager__defaultRestriction;
    if (v20)
    {
      v19 = &OBJC_IVAR___CSRestrictionManager__band80Restriction;
    }
  }

  v21 = *(&self->super.super.isa + *v19);
  [(CSRestrictionManager *)self applyRestriction:v21 withProcessIdentifier:v4];
  v22 = [v21 applyToProcess:v5];
  v23 = self->_logger;
  if (v22)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager applyDefaultRestrictionsToProcess:];
    }

    v15 = 0;
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager applyDefaultRestrictionsToProcess:];
  }

  v24 = [*(&self->super.super.isa + v6) objectForKeyedSubscript:v4];
  [v24 addObject:v21];

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)queueChangeForActivatedScenarios:(id)a3 deactivatedScenarios:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Queueing change for activated scenarios:%@ to be re-revaluated after some debounce", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = dispatch_walltime(0, 1000000000 * self->_debounceTimeBeforeRestrictions);
  v10 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke;
  block[3] = &unk_278DF5258;
  v15 = v6;
  v11 = v6;
  objc_copyWeak(&v17, buf);
  v16 = v7;
  v12 = v7;
  dispatch_after(v9, v10, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke(id *a1)
{
  v124 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v111;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v111 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v110 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v10 = [WeakRetained currentActiveScenarios];
        v11 = [v10 containsObject:v8];

        v12 = objc_loadWeakRetained(a1 + 6);
        v13 = [v12 logger];

        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          if (v14)
          {
            *buf = 138412290;
            v118 = v8;
            _os_log_debug_impl(&dword_243DC3000, v13, OS_LOG_TYPE_DEBUG, "Scenario %@ is still active.", buf, 0xCu);
          }

          [v2 addObject:v8];
        }

        else
        {
          if (v14)
          {
            *buf = 138412290;
            v118 = v8;
            _os_log_debug_impl(&dword_243DC3000, v13, OS_LOG_TYPE_DEBUG, "Scenario %@ no longer active, ignoring.", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v5);
  }

  v15 = objc_loadWeakRetained(a1 + 6);
  v16 = [v15 logger];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_1();
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v17 = a1[5];
  v18 = [v17 countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v107;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v107 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v106 + 1) + 8 * j);
        v23 = objc_loadWeakRetained(a1 + 6);
        v24 = [v23 currentActiveScenarios];
        v25 = [v24 containsObject:v22];

        v26 = objc_loadWeakRetained(a1 + 6);
        v27 = [v26 logger];

        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          if (v28)
          {
            *buf = 138412290;
            v118 = v22;
            _os_log_debug_impl(&dword_243DC3000, v27, OS_LOG_TYPE_DEBUG, "Scenario %@ no longer deactive, ignoring.", buf, 0xCu);
          }
        }

        else
        {
          if (v28)
          {
            *buf = 138412290;
            v118 = v22;
            _os_log_debug_impl(&dword_243DC3000, v27, OS_LOG_TYPE_DEBUG, "Scenario %@ is still inactive.", buf, 0xCu);
          }

          [v2 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (v19);
  }

  v29 = objc_loadWeakRetained(a1 + 6);
  v30 = [v29 logger];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_2();
  }

  if ([v2 count])
  {
    v31 = objc_loadWeakRetained(a1 + 6);
    v32 = [v31 updateRestrictionsDataForScenarios:v2];

    v88 = v32;
    v33 = [MEMORY[0x277CBEB58] setWithSet:v32];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v34 = v2;
    v35 = [v34 countByEnumeratingWithState:&v102 objects:v121 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v103;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v103 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v102 + 1) + 8 * k);
          v40 = objc_loadWeakRetained(a1 + 6);
          v41 = [v40 processesAffectedByScenarioMap];
          v42 = [v41 objectForKeyedSubscript:v39];
          [v33 unionSet:v42];
        }

        v36 = [v34 countByEnumeratingWithState:&v102 objects:v121 count:16];
      }

      while (v36);
    }

    if (gMitigationsWhilePluggedIn || ![v34 containsObject:@"Charging"])
    {
      v64 = objc_loadWeakRetained(a1 + 6);
      v65 = [v64 logger];

      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_3();
      }

      v66 = objc_loadWeakRetained(a1 + 6);
      v67 = [v66 logger];

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_4();
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v55 = v33;
      v68 = [v55 countByEnumeratingWithState:&v90 objects:v114 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v91;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v91 != v70)
            {
              objc_enumerationMutation(v55);
            }

            v72 = *(*(&v90 + 1) + 8 * m);
            v73 = objc_loadWeakRetained(a1 + 6);
            [v73 determineAndApplyRestrictionsForProcess:v72];
          }

          v69 = [v55 countByEnumeratingWithState:&v90 objects:v114 count:16];
        }

        while (v69);
      }
    }

    else
    {
      v43 = objc_loadWeakRetained(a1 + 6);
      v44 = [v43 logger];

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_loadWeakRetained(a1 + 6);
        v46 = [v45 currentActiveScenarios];
        *buf = 138412546;
        v118 = v34;
        v119 = 2112;
        v120 = v46;
        _os_log_impl(&dword_243DC3000, v44, OS_LOG_TYPE_DEFAULT, "changedScenarios:%@ currentActiveScenarios%@", buf, 0x16u);
      }

      v47 = objc_loadWeakRetained(a1 + 6);
      v48 = [v47 currentActiveScenarios];
      v49 = [v48 containsObject:@"Charging"];

      v50 = objc_loadWeakRetained(a1 + 6);
      v51 = [v50 processManager];
      v52 = [v51 getMonitoredList];
      v53 = v52;
      if (v49)
      {
        v54 = [v52 allValues];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v55 = v54;
        v56 = [v55 countByEnumeratingWithState:&v98 objects:v116 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v99;
          do
          {
            for (n = 0; n != v57; ++n)
            {
              if (*v99 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = *(*(&v98 + 1) + 8 * n);
              v61 = objc_loadWeakRetained(a1 + 6);
              [v61 clearRestrictionsForProcess:v60];
            }

            v57 = [v55 countByEnumeratingWithState:&v98 objects:v116 count:16];
          }

          while (v57);
        }

        v62 = objc_loadWeakRetained(a1 + 6);
        v63 = [v62 mitigationManager];
        [v63 removeAllProcessesFromPenaltyBox];
      }

      else
      {
        v55 = [v52 allKeys];

        v74 = [MEMORY[0x277CBEB98] setWithArray:v55];
        [v33 unionSet:v74];

        v75 = objc_loadWeakRetained(a1 + 6);
        v76 = [v75 logger];

        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_3();
        }

        v77 = objc_loadWeakRetained(a1 + 6);
        v78 = [v77 logger];

        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_4();
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v62 = v33;
        v79 = [v62 countByEnumeratingWithState:&v94 objects:v115 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v95;
          obj = v62;
          do
          {
            for (ii = 0; ii != v80; ++ii)
            {
              if (*v95 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v83 = *(*(&v94 + 1) + 8 * ii);
              v84 = objc_loadWeakRetained(a1 + 6);
              [v84 determineAndApplyRestrictionsForProcess:v83];

              v85 = objc_loadWeakRetained(a1 + 6);
              v86 = [v85 mitigationManager];
              [v86 handleProcessStart:v83 withMitigationReason:25];
            }

            v62 = obj;
            v80 = [obj countByEnumeratingWithState:&v94 objects:v115 count:16];
          }

          while (v80);
        }
      }
    }
  }

  v87 = *MEMORY[0x277D85DE8];
}

- (id)determineScenarioForProcess:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v33 = v4;
  v6 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:?];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  [v8 intersectSet:self->_currentActiveScenarios];
  if ([v8 count])
  {
    if ([v8 count] == 1)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSRestrictionManager determineScenarioForProcess:];
      }

      v9 = [v8 anyObject];
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v27 = v8;
      obj = v8;
      v30 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v30)
      {
        v10 = 0;
        v9 = 0;
        v29 = *v39;
LABEL_11:
        v11 = 0;
        while (1)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(obj);
          }

          if (v10)
          {
            break;
          }

          v12 = *(*(&v38 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_restrictionsByProcessPerScenario objectForKeyedSubscript:v33];
          v14 = [v13 objectForKeyedSubscript:v12];

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v15 = [v14 restrictions];
          v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v16)
          {
            v17 = v16;
            v31 = v14;
            v32 = v11;
            v18 = 0;
            v19 = *v35;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                logger = self->_logger;
                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v43 = v21;
                  v44 = 2112;
                  v45 = v33;
                  _os_log_debug_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEBUG, "Inspecting restriction: %@ for process:%@", buf, 0x16u);
                }

                if (([v21 shouldBeFatalOnViolation] & 1) == 0)
                {
                  v24 = v12;

                  v10 = 1;
                  v9 = v24;
                  goto LABEL_29;
                }

                if (v18 < [v21 leniencyScore])
                {
                  v23 = v12;

                  v18 = [v21 leniencyScore];
                  v9 = v23;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

            v10 = 0;
LABEL_29:
            v14 = v31;
            v11 = v32;
          }

          else
          {
            v10 = 0;
          }

          if (++v11 == v30)
          {
            v30 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v30)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSRestrictionManager determineScenarioForProcess:];
      }

      v8 = v27;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSRestrictionManager determineScenarioForProcess:];
    }

    v9 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)currentActiveScenarios:(id)a3 previousActiveScenarios:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_currentActiveScenarios, a3);
  v9 = [MEMORY[0x277CBEB58] setWithSet:v7];
  [v9 minusSet:v8];
  v36 = [MEMORY[0x277CBEB58] setWithSet:v8];
  [v36 minusSet:v7];
  v35 = v7;
  v10 = [MEMORY[0x277CBEB58] setWithSet:v7];
  [v10 intersectSet:v8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = v10;
  v12 = v9;
  obj = v11;
  v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      v16 = 0;
      do
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v18 = [(CSScenarioManager *)self->_scenarioManager restrictionsForScenario:v17];
        v19 = [(NSMutableDictionary *)self->_currentActiveScenariosWithRestrictions objectForKeyedSubscript:v17];
        v20 = v19;
        if (v18)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          if (!(v18 | v19))
          {
            goto LABEL_13;
          }

LABEL_12:
          [v12 addObject:v17];
          goto LABEL_13;
        }

        v22 = [v18 isEqualToDictionary:v19];
        if (v22)
        {
          goto LABEL_12;
        }

LABEL_13:

        ++v16;
      }

      while (v14 != v16);
      v23 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      v14 = v23;
    }

    while (v23);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v35;
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v38 + 1) + 8 * i);
        v30 = [(CSScenarioManager *)self->_scenarioManager restrictionsForScenario:v29];

        if (v30)
        {
          v31 = [(CSScenarioManager *)self->_scenarioManager restrictionsForScenario:v29];
          [(NSMutableDictionary *)self->_currentActiveScenariosWithRestrictions setObject:v31 forKeyedSubscript:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  currentActiveScenariosWithRestrictions = self->_currentActiveScenariosWithRestrictions;
  v33 = [v8 allObjects];
  [(NSMutableDictionary *)currentActiveScenariosWithRestrictions removeObjectsForKeys:v33];

  if ([v12 count] || objc_msgSend(v36, "count"))
  {
    [(CSRestrictionManager *)self queueChangeForActivatedScenarios:v12 deactivatedScenarios:v36];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)observeNewRunningProcesses:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CSRestrictionManager *)self checkScheduledIntensiveInNewProcesses:v4];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    v9 = 0x27EDBD000uLL;
    v10 = 0x27EDBD000uLL;
    v11 = @"Charging";
    *&v6 = 138412290;
    v23 = v6;
    v12 = 0x27EDBD000uLL;
    do
    {
      v13 = 0;
      v24 = v7;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [(CSRestrictionManager *)self determineScenarioForProcess:v14, v23];
        if (*(v9 + 3696) || ![*(&self->super.super.isa + *(v10 + 2204)) containsObject:v11])
        {
          if (v15)
          {
            [(CSRestrictionManager *)self applyRestrictionsToProcess:v14 forScenario:v15];
          }

          else
          {
            v16 = v8;
            v17 = v9;
            v18 = v12;
            v19 = v11;
            v20 = v10;
            v21 = [(CSRestrictionManager *)self logger];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v31 = v14;
              _os_log_impl(&dword_243DC3000, v21, OS_LOG_TYPE_INFO, "No scenarios available for processIdentifier: %@. Proceeding to apply default policy.", buf, 0xCu);
            }

            [(CSRestrictionManager *)self applyDefaultRestrictionsToProcess:v14];
            v10 = v20;
            v11 = v19;
            v12 = v18;
            v9 = v17;
            v8 = v16;
            v7 = v24;
          }

          if (*(v9 + 3696) || ([*(&self->super.super.isa + *(v10 + 2204)) containsObject:v11] & 1) == 0)
          {
            [*(&self->super.super.isa + *(v12 + 2176)) handleProcessStart:v14 withMitigationReason:21];
          }
        }

        else
        {
          [(CSRestrictionManager *)self applyPluggedInRestrictionsToProcess:v14];
        }

        ++v13;
      }

      while (v7 != v13);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)checkScheduledIntensiveInNewProcesses:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_unknownScheduledIntensiveProcesses && [v4 count])
  {
    if ([v5 intersectsSet:self->_scheduledIntensiveProcesses])
    {
      goto LABEL_15;
    }

    v6 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CSProcessManager *)self->_processManager processNameForIdentifier:*(*(&v31 + 1) + 8 * i)];
          if (v13)
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v10);
    }

    v14 = [v6 intersectsSet:self->_scheduledIntensiveProcesses];
    v5 = v7;
    if (v14)
    {
LABEL_15:
      v15 = [MEMORY[0x277CBEB58] set];
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSRestrictionManager checkScheduledIntensiveInNewProcesses:];
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = self->_scheduledIntensiveProcesses;
      v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v27 + 1) + 8 * j);
            v23 = [(CSProcessManager *)self->_processManager identiferForName:v22];
            if (v23)
            {
              [v15 addObject:v23];
            }

            else
            {
              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v36 = v22;
                _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "checkScheduledIntensiveProcesses: unrecognized process name: %@", buf, 0xCu);
              }

              v19 = 1;
            }
          }

          v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      self->_unknownScheduledIntensiveProcesses = v19 & 1;
      [(CSRestrictionManager *)self updateScheduledIntensiveContext:v15];

      v5 = v26;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)determineAndApplyRestrictionsForProcess:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSRestrictionManager *)self determineScenarioForProcess:v4];
  if (gMitigationsWhilePluggedIn || ![(NSSet *)self->_currentActiveScenarios containsObject:@"Charging"])
  {
    if (v5)
    {
      [(CSRestrictionManager *)self applyRestrictionsToProcess:v4 forScenario:v5];
    }

    else
    {
      v6 = [(CSRestrictionManager *)self logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "No scenarios available for process: %@. Proceeding to apply default policy.", &v8, 0xCu);
      }

      [(CSRestrictionManager *)self applyDefaultRestrictionsToProcess:v4];
    }
  }

  else
  {
    [(CSRestrictionManager *)self applyPluggedInRestrictionsToProcess:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportScheduledIntensiveWorkByProcesses:(id)a3
{
  v4 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = [MEMORY[0x277CBEB58] set];
  v5 = getMainQueue();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __64__CSRestrictionManager_reportScheduledIntensiveWorkByProcesses___block_invoke;
  v10 = &unk_278DF5280;
  v6 = v4;
  v11 = v6;
  v12 = self;
  v13 = &v15;
  v14 = v21;
  dispatch_sync(v5, &v7);

  [(CSRestrictionManager *)self updateScheduledIntensiveContext:v16[5], v7, v8, v9, v10];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(v21, 8);
}

void __64__CSRestrictionManager_reportScheduledIntensiveWorkByProcesses___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412290;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 128) identiferForName:{v8, v15, v16}];
        if (v9)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
        }

        else
        {
          v10 = [*(a1 + 40) logger];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v8;
            _os_log_error_impl(&dword_243DC3000, v10, OS_LOG_TYPE_ERROR, "reportScheduledIntensiveWorkByProcesses: unrecognized process name: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) mutableCopy];
  v12 = *(a1 + 40);
  v13 = *(v12 + 192);
  *(v12 + 192) = v11;

  *(*(a1 + 40) + 56) = *(*(*(a1 + 56) + 8) + 24);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateScheduledIntensiveContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v31[0] = @"Threshold";
        v31[1] = @"TimeWindow";
        v32[0] = &unk_28570AC20;
        v32[1] = &unk_28570AC50;
        v31[2] = @"Fatal";
        v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v32[2] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

        v11 = [MEMORY[0x277CBEB18] array];
        v12 = [CSRestrictionFactory restrictionForClass:@"CPUTimeRestriction" withProperties:v10 errors:v11];

        if (v12)
        {
          v13 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
          v14 = objc_alloc_init(CSScenarioRestrictionsAttributesTemplate);
          [(CSScenarioRestrictionsAttributesTemplate *)v14 setRestrictions:v13];
          [v26 setObject:v14 forKeyedSubscript:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v15 = [obj count] != 0;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v17 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager updateScheduledIntensiveContext:];
  }

  safeguardsDaemon = self->_safeguardsDaemon;
  if (safeguardsDaemon || (initComputeSafeguards(), v19 = objc_claimAutoreleasedReturnValue(), v20 = self->_safeguardsDaemon, self->_safeguardsDaemon = v19, v20, (safeguardsDaemon = self->_safeguardsDaemon) != 0))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v22 = [MEMORY[0x277CBEB38] dictionary];
    [(CSDaemon *)safeguardsDaemon updateContextForIdentifier:@"ScheduledIntensiveActivities" withState:v21 withRestrictions:v22];

    if ([obj count])
    {
      [(CSDaemon *)self->_safeguardsDaemon updateContextForIdentifier:@"ScheduledIntensiveActivities" withState:v16 withRestrictions:v26];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)getScenariosWithHandler:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v5 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CSRestrictionManager_getScenariosWithHandler___block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5]);
  _Block_object_dispose(&v7, 8);
}

void __48__CSRestrictionManager_getScenariosWithHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 176) allKeys];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getActiveScenariosWithHandler:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v5 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CSRestrictionManager_getActiveScenariosWithHandler___block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5]);
  _Block_object_dispose(&v7, 8);
}

uint64_t __54__CSRestrictionManager_getActiveScenariosWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getProcessesAffectedByScenarioMapWithHandler:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v5 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CSRestrictionManager_getProcessesAffectedByScenarioMapWithHandler___block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5]);
  _Block_object_dispose(&v7, 8);
}

uint64_t __69__CSRestrictionManager_getProcessesAffectedByScenarioMapWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getRestrictionsForProcess:(id)a3 forScenario:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v11 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke;
  block[3] = &unk_278DF52A8;
  block[4] = self;
  v12 = v8;
  v16 = v12;
  v13 = v10;
  v18 = v13;
  v14 = v9;
  v17 = v14;
  v19 = &v20;
  dispatch_sync(v11, block);

  (*(v13 + 2))(v13, v21[5]);
  _Block_object_dispose(&v20, 8);
}

void __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) identiferForName:*(a1 + 40)];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 128) identiferForName:*(a1 + 40)];
    v4 = [*(a1 + 32) restrictionsByProcessPerScenario];
    v5 = [v4 objectForKeyedSubscript:v3];

    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 restrictionsByProcessPerScenario];
      v8 = [v7 objectForKeyedSubscript:v3];
      v9 = [v8 objectForKeyedSubscript:*(a1 + 48)];

      v10 = *(a1 + 32);
      if (v9)
      {
        v11 = [v10 restrictionsByProcessPerScenario];
        v12 = [v11 objectForKeyedSubscript:v3];
        v13 = [v12 objectForKeyedSubscript:*(a1 + 48)];

        v14 = [v13 restrictions];
        if ([v14 count])
        {
          v15 = [MEMORY[0x277CBEB18] array];
          v16 = *(*(a1 + 64) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = v14;
          v19 = [v18 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(*(a1 + 64) + 8) + 40);
                v24 = [*(*(&v32 + 1) + 8 * i) getProperties];
                [v23 addObject:v24];
              }

              v20 = [v18 countByEnumeratingWithState:&v32 objects:v38 count:16];
            }

            while (v20);
          }

          v25 = [*(a1 + 32) logger];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(*(*(a1 + 64) + 8) + 40);
            *buf = 138412290;
            v37 = v26;
            _os_log_impl(&dword_243DC3000, v25, OS_LOG_TYPE_DEFAULT, "getRestrictionsForProcess: restrictionsDictionaries: %@", buf, 0xCu);
          }
        }

        else
        {
          v30 = [*(a1 + 32) logger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_1(v3, (a1 + 48));
          }

          (*(*(a1 + 56) + 16))();
        }

        goto LABEL_27;
      }

      v29 = [v10 logger];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_2(v3, (a1 + 48));
      }
    }

    else
    {
      v29 = [v6 logger];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_3();
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_27:

    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v27 = *(*(a1 + 56) + 16);
  v28 = *MEMORY[0x277D85DE8];

  v27();
}

- (void)getPollingIntervalWithHandler:(id)a3
{
  processManager = self->_processManager;
  v5 = a3;
  v6 = [(CSProcessManager *)processManager getPollingInterval];
  (*(a3 + 2))(v5, v6);
}

- (void)getRelaunchPollingIntervalWithHandler:(id)a3
{
  processManager = self->_processManager;
  v5 = a3;
  v6 = [(CSProcessManager *)processManager getRelaunchPollingInterval];
  (*(a3 + 2))(v5, v6);
}

- (void)getMaxRelaunchPollingIntervalWithHandler:(id)a3
{
  processManager = self->_processManager;
  v5 = a3;
  v6 = [(CSProcessManager *)processManager getMaxRelaunchPollingInterval];
  (*(a3 + 2))(v5, v6);
}

- (void)getTriggerIntervalWithHandler:(id)a3
{
  triggerManager = self->_triggerManager;
  v5 = a3;
  v6 = [(CSTriggerManager *)triggerManager getTriggerInterval];
  (*(a3 + 2))(v5, v6);
}

- (void)getScenarioRefreshIntervalWithHandler:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v5 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CSRestrictionManager_getScenarioRefreshIntervalWithHandler___block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5]);
  _Block_object_dispose(&v7, 8);
}

uint64_t __62__CSRestrictionManager_getScenarioRefreshIntervalWithHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 208)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getTargetProcessWithHandler:(id)a3
{
  v3 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v4 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CSRestrictionManager_getTargetProcessWithHandler___block_invoke;
  block[3] = &unk_278DF52D0;
  block[4] = &v6;
  dispatch_sync(v4, block);

  v3[2](v3, v7[5]);
  _Block_object_dispose(&v6, 8);
}

void __52__CSRestrictionManager_getTargetProcessWithHandler___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (gTargetProcess)
  {
    v13[0] = gTargetProcess;
    v12[0] = @"TargetProcess";
    v12[1] = @"ExcessiveCPUPercentage";
    v2 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetCPUPercentage];
    v13[1] = v2;
    v12[2] = @"ExcessiveCPUTimeWindow";
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetCPUTimeWindow];
    v13[2] = v3;
    v12[3] = @"PenaltyBoxDurationMins";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetPenaltyBoxDurationMins];
    v13[3] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v13;
    v7 = v12;
  }

  else
  {
    v15[0] = @"Not Set";
    v14[0] = @"TargetProcess";
    v14[1] = @"ExcessiveCPUPercentage";
    v2 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetCPUPercentage];
    v15[1] = v2;
    v14[2] = @"ExcessiveCPUTimeWindow";
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetCPUTimeWindow];
    v15[2] = v3;
    v14[3] = @"PenaltyBoxDurationMins";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:gTargetPenaltyBoxDurationMins];
    v15[3] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v15;
    v7 = v14;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:4];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getInfoForProcess:(id)a3
{
  v86[28] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v68 = self;
    CurrentTime = getCurrentTime();
    v7 = [v4 penaltyBoxEndTime];
    v8 = v7;
    if (v7 <= CurrentTime || v7 == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 - CurrentTime;
    }

    v85[0] = @"currentTimeSecs";
    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CurrentTime];
    v86[0] = v70;
    v85[1] = @"uuid";
    v67 = [v4 uuid];
    v65 = [v67 UUIDString];
    v86[1] = v65;
    v85[2] = @"identifier";
    v64 = [v4 identifier];
    v86[2] = v64;
    v85[3] = @"processName";
    v63 = [v4 processName];
    v86[3] = v63;
    v85[4] = @"trackedPIDs/CoalitionID";
    v62 = [v4 trackedPIDs];
    v86[4] = v62;
    v85[5] = @"trackedPIDkeys";
    v61 = [v4 trackedPIDkeys];
    v86[5] = v61;
    v85[6] = @"previousPIDs/CoalitionID";
    v60 = [v4 previousPIDs];
    v86[6] = v60;
    v85[7] = @"previousPIDkeys";
    v59 = [v4 previousPIDkeys];
    v86[7] = v59;
    v85[8] = @"policyBitMask";
    v58 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "policyBitMask")}];
    v86[8] = v58;
    v85[9] = @"rootDaemon";
    v57 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "rootDaemon")}];
    v86[9] = v57;
    v85[10] = @"xpcService";
    v56 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "xpcService")}];
    v86[10] = v56;
    v85[11] = @"exitMonitorCount";
    v11 = MEMORY[0x277CCABB0];
    v55 = [v4 exitMonitors];
    v54 = [v11 numberWithUnsignedLong:{objc_msgSend(v55, "count")}];
    v86[11] = v54;
    v85[12] = @"cpuFatalCnt";
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v4, "cpuFatalCnt")}];
    v86[12] = v53;
    v85[13] = @"cpuNonFatalCnt";
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v4, "cpuNonFatalCnt")}];
    v86[13] = v52;
    v85[14] = @"exitsCnt";
    v51 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v4, "exitsCnt")}];
    v86[14] = v51;
    v85[15] = @"penaltyBoxCnt";
    v50 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v4, "penaltyBoxCnt")}];
    v86[15] = v50;
    v85[16] = @"cpuThreshold";
    v12 = [v4 cpuThreshold];
    v49 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &unk_28570AC68;
    }

    v86[16] = v13;
    v85[17] = @"cpuTimeWindow";
    v14 = [v4 cpuTimeWindow];
    v48 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &unk_28570AC68;
    }

    v86[17] = v15;
    v85[18] = @"cpuMonitored";
    v47 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "cpuMonitored")}];
    v86[18] = v47;
    v85[19] = @"inPenaltyBox";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "inPenaltyBox")}];
    v86[19] = v46;
    v85[20] = @"penaltyBoxPending";
    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "penaltyBoxPending")}];
    v86[20] = v16;
    v85[21] = @"penaltyBoxDurationMins";
    v17 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v4, "penaltyBoxDurationMins")}];
    v86[21] = v17;
    v85[22] = @"penaltyBoxEndTime";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v86[22] = v18;
    v85[23] = @"penaltyBoxRemainingTimeSecs";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    v86[23] = v19;
    v85[24] = @"penaltyBoxCoalitionIDs/timeStamp";
    v20 = [v4 penaltyBoxCoalitionIDs];
    v86[24] = v20;
    v85[25] = @"issueType";
    v69 = v4;
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{PEIssueTypeString(objc_msgSend(v4, "issueType"))}];
    v86[25] = v21;
    v85[26] = @"mitigationType";
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{PEMitigationTypeString(objc_msgSend(v69, "mitigationType"))}];
    v86[26] = v22;
    v85[27] = @"mitigationReason";
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{PEReasonString(objc_msgSend(v69, "mitigationReason"))}];
    v86[27] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:28];

    v4 = v69;
    v25 = v24;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v26 = [v69 trackedPIDs];
    v27 = [v26 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v27)
    {
      v28 = v27;
      v66 = v25;
      v29 = 0;
      v30 = 0;
      v31 = *v73;
      v32 = v68;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v73 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v72 + 1) + 8 * i);

          if (!v30)
          {
            v30 = [MEMORY[0x277CBEB38] dictionary];
          }

          v29 = v34;
          v35 = [v34 intValue];
          *__error() = 0;
          v36 = getpriority(9, v35);
          if (*__error())
          {
            v37 = [(CSRestrictionManager *)v32 logger];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v71 = *__error();
              v38 = __error();
              v39 = strerror(*v38);
              v40 = [v4 identifier];
              *buf = 67109890;
              v77 = v71;
              v78 = 2080;
              v79 = v39;
              v32 = v68;
              v80 = 2112;
              v81 = v40;
              v82 = 1024;
              v83 = v35;
              _os_log_error_impl(&dword_243DC3000, v37, OS_LOG_TYPE_ERROR, "getInfoForProcess: getpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", buf, 0x22u);

              v4 = v69;
            }
          }

          else
          {
            v37 = [MEMORY[0x277CCABB0] numberWithInt:v36];
            [v30 setObject:v37 forKey:v29];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v28);

      if (!v30)
      {
        v25 = v66;
        v41 = v66;
        goto LABEL_35;
      }

      v25 = v66;
      v41 = [v66 mutableCopy];
      [v41 setValue:v30 forKey:@"pid/priority"];
      v26 = v66;
    }

    else
    {
      v30 = 0;
      v41 = v25;
    }

LABEL_35:
    v42 = v41;

    v43 = v42;
    goto LABEL_36;
  }

  v42 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    [CSRestrictionManager getInfoForProcess:];
  }

  v43 = 0;
LABEL_36:

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)getInfoForProcess:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSRestrictionManager_getInfoForProcess_withHandler___block_invoke;
  block[3] = &unk_278DF52F8;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  v16 = &v17;
  dispatch_sync(v8, block);

  if (v18[5])
  {
    v10 = getMainQueue();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__CSRestrictionManager_getInfoForProcess_withHandler___block_invoke_290;
    v13[3] = &unk_278DF5320;
    v13[4] = self;
    v13[5] = &v23;
    v13[6] = &v17;
    dispatch_sync(v10, v13);

    v7[2](v7, v24[5], 0);
  }

  else
  {
    v11 = [(CSRestrictionManager *)self logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager getInfoForProcess:withHandler:];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
    (v7)[2](v7, 0, v12);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t __54__CSRestrictionManager_getInfoForProcess_withHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) identiferForName:a1[5]];
  if (v2)
  {
    v3 = [*(a1[4] + 128) processForIdentifier:v2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__CSRestrictionManager_getInfoForProcess_withHandler___block_invoke_290(uint64_t a1)
{
  v2 = [*(a1 + 32) getInfoForProcess:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getDefaultsWithHandler:(id)a3
{
  v54[9] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSRestrictionManager_getDefaultsWithHandler___block_invoke;
  block[3] = &unk_278DF5348;
  block[4] = &v49;
  block[5] = &v45;
  block[6] = &v41;
  block[7] = &v37;
  block[8] = &v33;
  block[9] = &v29;
  block[10] = &v25;
  block[11] = &v21;
  block[12] = &v17;
  dispatch_sync(v3, block);

  v53[0] = @"globalOverrideCPUPercentage";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v50[3]];
  v54[0] = v4;
  v53[1] = @"globalOverrideCPUTimeWindow";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v46[3]];
  v54[1] = v5;
  v53[2] = @"globalOverridePenaltyBoxDuration";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v42[3]];
  v54[2] = v6;
  v53[3] = @"maxNumberKills";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v38[3]];
  v54[3] = v7;
  v53[4] = @"maxNumberOfNonfatal";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v34[3]];
  v54[4] = v8;
  v53[5] = @"enablePenaltyBox";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v30[3]];
  v54[5] = v9;
  v53[6] = @"mitigationsWhilePluggedIn";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v26[3]];
  v54[6] = v10;
  v53[7] = @"enableMitigations";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v22[3]];
  v54[7] = v11;
  v53[8] = @"mitigateXPCServices";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v18[3]];
  v54[8] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:9];

  v15[2](v15, v13, 0);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void *__47__CSRestrictionManager_getDefaultsWithHandler___block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = gGlobalOverrideCPUPercentage;
  *(*(result[5] + 8) + 24) = gGlobalOverrideCPUTimeWindow;
  *(*(result[6] + 8) + 24) = gGlobalOverridePenaltyBoxDurationMins;
  *(*(result[7] + 8) + 24) = gMaxNumberOfKills;
  *(*(result[8] + 8) + 24) = gMaxNumberOfNonfatal;
  *(*(result[9] + 8) + 24) = gEnablePenaltyBox;
  *(*(result[10] + 8) + 24) = gMitigationsWhilePluggedIn;
  *(*(result[11] + 8) + 24) = gEnableMitigations;
  *(*(result[12] + 8) + 24) = gMitigateXPCServices;
  return result;
}

- (void)getMonitoredListWithHandler:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CSRestrictionManager_getMonitoredListWithHandler___block_invoke;
  block[3] = &unk_278DF51A8;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(v5, block);

  if (v16[5])
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = getMainQueue();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__CSRestrictionManager_getMonitoredListWithHandler___block_invoke_318;
    v11[3] = &unk_278DF5370;
    v13 = &v15;
    v11[4] = self;
    v8 = v6;
    v12 = v8;
    dispatch_sync(v7, v11);

    v4[2](v4, v8, 0);
  }

  else
  {
    v9 = [(CSRestrictionManager *)self logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager getMonitoredListWithHandler:];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    (v4)[2](v4, 0, v10);

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
}

void __52__CSRestrictionManager_getMonitoredListWithHandler___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) getMonitoredList];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__CSRestrictionManager_getMonitoredListWithHandler___block_invoke_318(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        v9 = v6;
        v10 = v5;
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);

        v5 = [*(*(a1 + 32) + 128) processForIdentifier:v6];

        v11 = *(a1 + 32);
        if (v5)
        {
          v12 = [v11 getInfoForProcess:v5];

          if (v12)
          {
            v13 = *(a1 + 40);
            v14 = [v5 processName];
            [v13 setValue:v12 forKey:v14];
            v4 = v12;
          }

          else
          {
            v14 = [*(a1 + 32) logger];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v6;
              _os_log_error_impl(&dword_243DC3000, v14, OS_LOG_TYPE_ERROR, "getMonitoredListWithHandler: getInfoForProcess returned NULL for process:%@", buf, 0xCu);
            }

            v4 = 0;
          }
        }

        else
        {
          v14 = [v11 logger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v6;
            _os_log_error_impl(&dword_243DC3000, v14, OS_LOG_TYPE_ERROR, "getMonitoredListWithHandler: Could not locate CSProcess for process:%@", buf, 0xCu);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getPenaltyListWithHandler:(id)a3
{
  mitigationManager = self->_mitigationManager;
  v5 = a3;
  v6 = [(CSMitigationManager *)mitigationManager penaltyBoxProcesses];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = getMainQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CSRestrictionManager_getPenaltyListWithHandler___block_invoke;
    block[3] = &unk_278DF5398;
    v12 = v6;
    v13 = self;
    v14 = v7;
    v9 = v7;
    dispatch_sync(v8, block);

    v5[2](v5, v9, 0);
    v5 = v12;
  }

  else
  {
    v10 = [(CSRestrictionManager *)self logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager getPenaltyListWithHandler:];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    (v5)[2](v5, 0, v9);
  }
}

void __50__CSRestrictionManager_getPenaltyListWithHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        v9 = v6;
        v10 = v5;
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);

        v5 = [*(*(a1 + 40) + 128) getProcessForUUID:v6];

        v11 = *(a1 + 40);
        if (v5)
        {
          v12 = [v11 getInfoForProcess:v5];

          if (v12)
          {
            v13 = *(a1 + 48);
            v14 = [v5 processName];
            [v13 setValue:v12 forKey:v14];
            v4 = v12;
          }

          else
          {
            v14 = [*(a1 + 40) logger];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __50__CSRestrictionManager_getPenaltyListWithHandler___block_invoke_cold_1(v21, v5, &v22, v14);
            }

            v4 = 0;
          }
        }

        else
        {
          v14 = [v11 logger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v6;
            _os_log_error_impl(&dword_243DC3000, v14, OS_LOG_TYPE_ERROR, "getPenaltyListWithHandler: Could not locate CSProcess for nsUUID:%@", buf, 0xCu);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getCpuPercentageTriggerForWindowEndDate:(id)a3 windowStartDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0xBFF0000000000000;
  v11 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__CSRestrictionManager_getCpuPercentageTriggerForWindowEndDate_windowStartDate_handler___block_invoke;
  block[3] = &unk_278DF53C0;
  v17 = &v23;
  block[4] = self;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  v18 = &v19;
  dispatch_sync(v11, block);

  (*(v10 + 2))(v10, *(v24 + 24), 0, v20[3]);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t __88__CSRestrictionManager_getCpuPercentageTriggerForWindowEndDate_windowStartDate_handler___block_invoke(void *a1)
{
  result = [*(a1[4] + 144) cpuPercentageTriggerForWindowEndDate:a1[5] windowStartDate:a1[6] score:*(a1[8] + 8) + 24];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)getTargetProcessMitigationRecordsWithHandler:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v5 = getMainQueue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CSRestrictionManager_getTargetProcessMitigationRecordsWithHandler___block_invoke;
  v9[3] = &unk_278DF51A8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v5, v9);

  v6 = v11[5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEA60] array];
    v8 = v11[5];
    v11[5] = v7;

    v6 = v11[5];
  }

  v4[2](v4, v6, 0);
  _Block_object_dispose(&v10, 8);
}

void __69__CSRestrictionManager_getTargetProcessMitigationRecordsWithHandler___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) getTargetProcessMitigationRecords];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)modifyRestrictionsByProcessPerScenario:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v8 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CSRestrictionManager_modifyRestrictionsByProcessPerScenario_withHandler___block_invoke;
  block[3] = &unk_278DF52F8;
  v9 = v6;
  v11 = v9;
  v12 = self;
  v13 = &v14;
  dispatch_sync(v8, block);

  v7[2](v7, v15[5]);
  _Block_object_dispose(&v14, 8);
}

void __75__CSRestrictionManager_modifyRestrictionsByProcessPerScenario_withHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [*(a1 + 32) allKeys];
  v35 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v35)
  {
    v34 = *v46;
    *&v2 = 138412290;
    v32 = v2;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v45 + 1) + 8 * v3);
        v5 = [*(*(v1 + 40) + 128) identiferForName:{v4, v32}];

        if (!v5)
        {
          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
          v29 = *(*(v1 + 48) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          goto LABEL_24;
        }

        v6 = [*(*(v1 + 40) + 128) identiferForName:v4];
        v7 = [*(v1 + 40) logger];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = v32;
          v51 = v6;
          _os_log_debug_impl(&dword_243DC3000, v7, OS_LOG_TYPE_DEBUG, "modifyRestrictionsByProcessPerScenario: process:%@", buf, 0xCu);
        }

        v36 = v3;

        v8 = [*(*(v1 + 40) + 168) objectForKeyedSubscript:v6];

        v9 = v6;
        if (!v8)
        {
          v10 = [MEMORY[0x277CBEB38] dictionary];
          [*(*(v1 + 40) + 168) setObject:v10 forKeyedSubscript:v6];
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v11 = [*(v1 + 32) objectForKeyedSubscript:v4];
        v12 = [v11 allKeys];

        v37 = v12;
        v39 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v39)
        {
          v38 = *v42;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v42 != v38)
              {
                objc_enumerationMutation(v37);
              }

              v14 = *(*(&v41 + 1) + 8 * i);
              v15 = [*(v1 + 32) objectForKeyedSubscript:v4];
              v16 = [v15 objectForKeyedSubscript:v14];

              v17 = [v16 dictionaryWithValuesForKeys:&unk_28570B3A8];
              v18 = [MEMORY[0x277CBEB18] array];
              v19 = [CSRestrictionFactory restrictionForClass:@"CPUTimeRestriction" withProperties:v17 errors:v18];

              if (v19)
              {
                v40 = [MEMORY[0x277CBEA60] arrayWithObject:v19];
                v20 = objc_alloc_init(CSScenarioRestrictionsAttributesTemplate);
                [(CSScenarioRestrictionsAttributesTemplate *)v20 setRestrictions:v40];
                [*(*(v1 + 40) + 168) objectForKeyedSubscript:v9];
                v21 = v17;
                v22 = v16;
                v23 = v9;
                v24 = v1;
                v26 = v25 = v4;
                [v26 setObject:v20 forKeyedSubscript:v14];

                v4 = v25;
                v1 = v24;
                v9 = v23;
                v16 = v22;
                v17 = v21;
              }

              v27 = [*(*(v1 + 40) + 176) objectForKeyedSubscript:v14];
              [v27 addObject:v9];
            }

            v39 = [v37 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v39);
        }

        [*(v1 + 40) determineAndApplyRestrictionsForProcess:v9];
        v3 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)modifyPollingInterval:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CSRestrictionManager_modifyPollingInterval___block_invoke;
  v7[3] = &unk_278DF51D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)modifyRelaunchPollingInterval:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CSRestrictionManager_modifyRelaunchPollingInterval___block_invoke;
  v7[3] = &unk_278DF51D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)modifyMaxRelaunchPollingInterval:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CSRestrictionManager_modifyMaxRelaunchPollingInterval___block_invoke;
  v7[3] = &unk_278DF51D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)modifyScenarioRefreshInterval:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CSRestrictionManager_modifyScenarioRefreshInterval___block_invoke;
  v7[3] = &unk_278DF51D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __54__CSRestrictionManager_modifyScenarioRefreshInterval___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) doubleValue];
  *(*(a1 + 32) + 208) = v3;
  return result;
}

- (void)modifyTargetProcess:(id)a3 withPercentage:(id)a4 withSeconds:(id)a5 withPenaltyBoxDuration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = getMainQueue();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__CSRestrictionManager_modifyTargetProcess_withPercentage_withSeconds_withPenaltyBoxDuration___block_invoke;
  v18[3] = &unk_278DF53E8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_sync(v13, v18);
}

uint64_t __94__CSRestrictionManager_modifyTargetProcess_withPercentage_withSeconds_withPenaltyBoxDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong(&gTargetProcess, v2);
  }

  v3 = [*(a1 + 40) longValue];
  if (v3 != -1)
  {
    gTargetCPUPercentage = v3;
  }

  v4 = [*(a1 + 48) longValue];
  if (v4 != -1)
  {
    gTargetCPUTimeWindow = v4;
  }

  result = [*(a1 + 56) longValue];
  if (result != -1)
  {
    gTargetPenaltyBoxDurationMins = result;
  }

  return result;
}

- (void)clearTargetProcess
{
  v3 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSRestrictionManager_clearTargetProcess__block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __42__CSRestrictionManager_clearTargetProcess__block_invoke(uint64_t a1)
{
  v1 = gTargetProcess;
  if (gTargetProcess)
  {
    [*(*(a1 + 32) + 136) clearTargetProcessState];
    [*(*(a1 + 32) + 128) clearTargetProcessState];
    v1 = gTargetProcess;
  }

  gTargetProcess = 0;

  gTargetCPUPercentage = 0;
  gTargetCPUTimeWindow = 0;
  gTargetPenaltyBoxDurationMins = 0;
}

- (void)modifyProcessInfoFor:(id)a3 withFatalCount:(id)a4 withNonFatalCount:(id)a5 withExitCount:(id)a6 withPenaltyCount:(id)a7 withPolicyMask:(id)a8 withHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  v22 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __136__CSRestrictionManager_modifyProcessInfoFor_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_withHandler___block_invoke;
  block[3] = &unk_278DF52F8;
  block[4] = self;
  v23 = v15;
  v38 = v23;
  v39 = &v40;
  dispatch_sync(v22, block);

  if (v41[5])
  {
    v24 = getMainQueue();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __136__CSRestrictionManager_modifyProcessInfoFor_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_withHandler___block_invoke_320;
    v28[3] = &unk_278DF5410;
    v35 = v46;
    v29 = v16;
    v36 = &v40;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v25 = v21;
    v34 = v25;
    dispatch_sync(v24, v28);

    (*(v25 + 2))(v25, 0);
    v26 = v29;
  }

  else
  {
    v27 = [(CSRestrictionManager *)self logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CSRestrictionManager modifyProcessInfoFor:withFatalCount:withNonFatalCount:withExitCount:withPenaltyCount:withPolicyMask:withHandler:];
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
    (*(v21 + 2))(v21, v26);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v46, 8);
}

uint64_t __136__CSRestrictionManager_modifyProcessInfoFor_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_withHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) identiferForName:a1[5]];
  if (v2)
  {
    v3 = [*(a1[4] + 128) processForIdentifier:v2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __136__CSRestrictionManager_modifyProcessInfoFor_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_withHandler___block_invoke_320(uint64_t a1)
{
  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) longValue];
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    [*(*(*(a1 + 88) + 8) + 40) setCpuFatalCnt:*(*(*(a1 + 80) + 8) + 24)];
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) longValue];
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    [*(*(*(a1 + 88) + 8) + 40) setCpuNonFatalCnt:*(*(*(a1 + 80) + 8) + 24)];
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 48) longValue];
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    [*(*(*(a1 + 88) + 8) + 40) setExitsCnt:*(*(*(a1 + 80) + 8) + 24)];
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 56) longValue];
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    [*(*(*(a1 + 88) + 8) + 40) setPenaltyBoxCnt:*(*(*(a1 + 80) + 8) + 24)];
  }

  result = [*(a1 + 64) longValue];
  *(*(*(a1 + 80) + 8) + 24) = result;
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    v3 = [*(*(*(a1 + 88) + 8) + 40) policyBitMask] & 0xFFFFFFF8 | *(*(*(a1 + 80) + 8) + 24) & 7;
    if ([*(*(*(a1 + 88) + 8) + 40) policyBitMask] == v3)
    {
      v4 = *(*(a1 + 72) + 16);

      return v4();
    }

    else
    {
      v5 = *(*(*(a1 + 88) + 8) + 40);
      if (v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = [v5 policyBitMask] & 0xFFFFFFF8;
        v5 = *(*(*(a1 + 88) + 8) + 40);
      }

      return [v5 setPolicyBitMask:v6];
    }
  }

  return result;
}

- (void)modifyContextForIdentifier:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  safeguardsDaemon = self->_safeguardsDaemon;
  if (!safeguardsDaemon)
  {
    v8 = initComputeSafeguards();
    v9 = self->_safeguardsDaemon;
    self->_safeguardsDaemon = v8;

    safeguardsDaemon = self->_safeguardsDaemon;
  }

  [(CSDaemon *)safeguardsDaemon updateContextForIdentifier:v10 withState:v6];
}

- (void)modifyDefaults:(id)a3 withMaxNonFatal:(id)a4 withEnableMitigations:(id)a5 withEnablePenaltyBox:(id)a6 withPercentage:(id)a7 withSeconds:(id)a8 withPenaltyBoxDuration:(id)a9 withMitigationsPluggedIn:(id)a10 withMitigateXPCServices:(id)a11 withHandler:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v21 = a12;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v22 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __209__CSRestrictionManager_modifyDefaults_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_withHandler___block_invoke;
  block[3] = &unk_278DF5438;
  v47 = v48;
  v31 = v17;
  v38 = v31;
  v23 = v18;
  v39 = v23;
  v24 = v19;
  v40 = v24;
  v25 = v20;
  v41 = v25;
  v26 = v32;
  v42 = v26;
  v27 = v33;
  v43 = v27;
  v28 = v34;
  v44 = v28;
  v29 = v35;
  v45 = v29;
  v30 = v36;
  v46 = v30;
  dispatch_sync(v22, block);

  v21[2](v21, 0);
  _Block_object_dispose(v48, 8);
}

uint64_t __209__CSRestrictionManager_modifyDefaults_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_withHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 32) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gMaxNumberOfKills = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 40) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gMaxNumberOfNonfatal = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 48) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gEnableMitigations = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 56) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gEnablePenaltyBox = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 64) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gGlobalOverrideCPUPercentage = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 72) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gGlobalOverrideCPUTimeWindow = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 80) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gGlobalOverridePenaltyBoxDurationMins = *(*(*(a1 + 104) + 8) + 24);
  }

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 88) longValue];
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gMitigationsWhilePluggedIn = *(*(*(a1 + 104) + 8) + 24);
  }

  result = [*(a1 + 96) longValue];
  *(*(*(a1 + 104) + 8) + 24) = result;
  if (*(*(*(a1 + 104) + 8) + 24) != -1)
  {
    gMitigateXPCServices = *(*(*(a1 + 104) + 8) + 24);
  }

  return result;
}

- (void)modifyTargetProcessMitigationRecords:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CSRestrictionManager_modifyTargetProcessMitigationRecords_withHandler___block_invoke;
  block[3] = &unk_278DF5370;
  v13 = &v14;
  block[4] = self;
  v9 = v6;
  v12 = v9;
  dispatch_sync(v8, block);

  if (v15[3])
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:5 userInfo:0];
  }

  v7[2](v7, v10);

  _Block_object_dispose(&v14, 8);
}

uint64_t __73__CSRestrictionManager_modifyTargetProcessMitigationRecords_withHandler___block_invoke(void *a1)
{
  result = [*(a1[4] + 128) modifyTargetProcessMitigationRecords:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)clearMitigationRecordsWithHandler:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSRestrictionManager_clearMitigationRecordsWithHandler___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v5, block);

  v4[2](v4, 0);
}

- (void)forceMidnightRoutineWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager forceMidnightRoutineWithHandler:];
  }

  v6 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CSRestrictionManager_forceMidnightRoutineWithHandler___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v6, block);

  v4[2](v4, 0);
}

- (void)forceCPUViolationForProcess:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager forceCPUViolationForProcess:withHandler:];
  }

  [(CSMitigationManager *)self->_mitigationManager forceCPUViolationForProcess:v7 withHandler:v6];
}

- (void)forceDetectorViolationForProcess:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager forceDetectorViolationForProcess:withHandler:];
  }

  v9 = +[CSIssueDetector sharedInstance];
  [v9 forceDetectorViolationForProcess:v7 withHandler:v6];
}

- (void)forceDetectionWithStartTime:(id)a3 endTime:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager forceDetectionWithStartTime:endTime:withHandler:];
  }

  v12 = getMainQueue();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__CSRestrictionManager_forceDetectionWithStartTime_endTime_withHandler___block_invoke;
  v15[3] = &unk_278DF51D0;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v12, v15);

  v10[2](v10, 0);
}

void __72__CSRestrictionManager_forceDetectionWithStartTime_endTime_withHandler___block_invoke(uint64_t a1)
{
  v7 = +[CSIssueDetector sharedInstance];
  v2 = MEMORY[0x277CBEAA8];
  [*(a1 + 32) doubleValue];
  v3 = [v2 dateWithTimeIntervalSince1970:?];
  v4 = MEMORY[0x277CBEAA8];
  [*(a1 + 40) doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  v6 = [v7 rules];
  [v7 detectIssuesFromStartTime:v3 endDate:v5 withRules:v6];
}

- (void)getMitigationPolicyWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSRestrictionManager *)self logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionManager getMitigationPolicyWithHandler:];
  }

  v6 = getMainQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CSRestrictionManager_getMitigationPolicyWithHandler___block_invoke;
  v8[3] = &unk_278DF5460;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __55__CSRestrictionManager_getMitigationPolicyWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) policyMitigationsEnabled];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  (*(v3 + 16))(v3, v4);
}

- (void)clearRestrictionsForProcess:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_243DC3000, v3, OS_LOG_TYPE_DEBUG, "Clearing current restrictions for processIdentifier:%@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyPluggedInRestrictionsToProcess:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestriction:withProcessIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestriction:withProcessIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestriction:withProcessIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applyRestriction:(uint64_t)a3 withProcessIdentifier:.cold.4(void *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 136316930;
  v8 = PEIssueTypeString([a2 issueType]);
  v9 = 2080;
  v10 = PEMitigationTypeString([a2 mitigationType]);
  v11 = 2080;
  v12 = PEReasonString([a2 mitigationReason]);
  v13 = 1024;
  v14 = [a2 cpuFatalCnt];
  v15 = 1024;
  v16 = [a2 cpuNonFatalCnt];
  v17 = 1024;
  v18 = [a2 exitsCnt];
  v19 = 1024;
  v20 = [a2 penaltyBoxCnt];
  v21 = 2112;
  v22 = a3;
  _os_log_debug_impl(&dword_243DC3000, v5, OS_LOG_TYPE_DEBUG, "applyRestriction: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u for process %@", &v7, 0x42u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyRestriction:withProcessIdentifier:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestriction:withProcessIdentifier:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "Determining restrictions for processIdentifier:%@ in scenario:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "Applying restrictions:%@ to processIdentifier:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_243DC3000, v0, v1, "Failed to apply restriction:%@ to processIdentifier:%@, skipping any further restrictions");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_243DC3000, v0, v1, "Could not locate Scenario:%@ for processIdentifier:%@ in _restrictionsByProcessPerScenario");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyRestrictionsToProcess:forScenario:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyDefaultRestrictionsToProcess:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyDefaultRestrictionsToProcess:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "applyDefaultRestrictionsToProcess: Clear current restrictions %@ for processIdentifier:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyDefaultRestrictionsToProcess:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_243DC3000, v0, v1, "applyDefaultRestrictionsToProcess: Failed to apply restriction:%@ to processIdentifier:%@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyDefaultRestrictionsToProcess:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "applyDefaultRestrictionsToProcess: Successfully applied restriction:%@ restriction to processIdentifier: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__CSRestrictionManager_queueChangeForActivatedScenarios_deactivatedScenarios___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)determineScenarioForProcess:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "Picking scenario %@ for process:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)determineScenarioForProcess:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)determineScenarioForProcess:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkScheduledIntensiveInNewProcesses:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateScheduledIntensiveContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "reportScheduledIntensiveWorkByProcesses: create DAS context for processes %@, state:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_243DC3000, v3, v4, "getRestrictionsForProcess: count=0 for process: %@, scenario: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_243DC3000, v3, v4, "getRestrictionsForProcess: nothing found for process: %@, scenario: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __74__CSRestrictionManager_getRestrictionsForProcess_forScenario_withHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getInfoForProcess:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getInfoForProcess:withHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getMonitoredListWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getPenaltyListWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__CSRestrictionManager_getPenaltyListWithHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 processName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_243DC3000, a4, OS_LOG_TYPE_ERROR, "getPenaltyListWithHandler: getInfoForProcess returned NULL for process:%@", a1, 0xCu);
}

- (void)modifyProcessInfoFor:withFatalCount:withNonFatalCount:withExitCount:withPenaltyCount:withPolicyMask:withHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)forceMidnightRoutineWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forceCPUViolationForProcess:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forceDetectorViolationForProcess:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forceDetectionWithStartTime:endTime:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getMitigationPolicyWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end