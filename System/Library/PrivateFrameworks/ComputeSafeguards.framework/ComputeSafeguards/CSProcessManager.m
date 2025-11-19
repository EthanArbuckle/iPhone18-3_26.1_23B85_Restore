@interface CSProcessManager
+ (id)sharedInstanceWithEnrolledProcesses:(id)a3 andProcessPolicies:(id)a4 andBand95:(id)a5 andBand80:(id)a6;
+ (int)coalitionIDForPid:(int)a3 coalitionID:(unint64_t *)a4;
- (BOOL)fillPIDDictionary:(id)a3;
- (BOOL)isXPCServiceExempt:(id)a3 withIssueType:(unsigned __int8)a4;
- (BOOL)modifyTargetProcessMitigationRecords:(id)a3;
- (id)_initWithEnrolledProcesses:(id)a3 andProcessPolicies:(id)a4 andBand95:(id)a5 andBand80:(id)a6;
- (id)fullProcessNameForPid:(int)a3;
- (id)getMaxRelaunchPollingInterval;
- (id)getMonitoredList;
- (id)getPollingInterval;
- (id)getProcessForProcessName:(id)a3;
- (id)getProcessForUUID:(id)a3;
- (id)getRelaunchPollingInterval;
- (id)getTargetProcessMitigationRecords;
- (id)identiferForName:(id)a3;
- (id)processNameForIdentifier:(id)a3;
- (int)discoverPidForProcessName:(id)a3 withError:(id *)a4;
- (unsigned)getPollPIDsCount;
- (void)applyRecordsForProcess:(id)a3;
- (void)clearAllCounters;
- (void)clearMitigationRecords;
- (void)clearTargetProcessState;
- (void)importMitigationRecords;
- (void)initRelaunchPollingTimer;
- (void)modifyMaxRelaunchPollingInterval:(id)a3;
- (void)modifyPollingInterval:(id)a3;
- (void)modifyRelaunchPollingInterval:(id)a3;
- (void)notifyObserversOfNewInstances:(id)a3;
- (void)pollPIDs;
- (void)pollPenaltyBoxProcessRelaunch;
- (void)registerForPenaltyBoxRelaunchPolling:(id)a3;
- (void)schedulePIDPolling;
- (void)unregisterAllForPenaltyBoxRelaunchPolling;
- (void)unregisterForPenaltyBoxRelaunchPolling:(id)a3;
@end

@implementation CSProcessManager

void __38__CSProcessManager_schedulePIDPolling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pollPIDs];
}

- (void)pollPIDs
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "pollPIDs: Start, interval: %f", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

+ (int)coalitionIDForPid:(int)a3 coalitionID:(unint64_t *)a4
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = proc_pidinfo(a3, 20, 1uLL, v6, 40);
  if (result == 40)
  {
    result = 0;
    if (a4)
    {
      *a4 = *&v6[0];
    }
  }

  return result;
}

+ (id)sharedInstanceWithEnrolledProcesses:(id)a3 andProcessPolicies:(id)a4 andBand95:(id)a5 andBand80:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__CSProcessManager_sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___block_invoke;
  v21[3] = &unk_278DF53E8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v13 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80__onceToken;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  if (v13 != -1)
  {
    dispatch_once(&sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80__onceToken, v21);
  }

  v18 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance;
  v19 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance;

  return v18;
}

uint64_t __95__CSProcessManager_sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___block_invoke(void *a1)
{
  sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance = [[CSProcessManager alloc] _initWithEnrolledProcesses:a1[4] andProcessPolicies:a1[5] andBand95:a1[6] andBand80:a1[7]];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithEnrolledProcesses:(id)a3 andProcessPolicies:(id)a4 andBand95:(id)a5 andBand80:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = CSProcessManager;
  v13 = [(CSProcessManager *)&v26 init];
  if (v13)
  {
    v14 = [CSLogger logForCategory:@"CSProcessManager"];
    logger = v13->_logger;
    v13->_logger = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    allProcessesMap = v13->_allProcessesMap;
    v13->_allProcessesMap = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    processNameIdentiferByName = v13->_processNameIdentiferByName;
    v13->_processNameIdentiferByName = v18;

    objc_storeStrong(&v13->_processPoliciesDict, a4);
    objc_storeStrong(&v13->_band95ProcessesSet, a5);
    objc_storeStrong(&v13->_band80ProcessesSet, a6);
    v13->_monitorFilterBitMap = 17;
    pollingTimer = v13->_pollingTimer;
    v13->_pollingTimer = 0;

    v21 = [MEMORY[0x277CBEB58] set];
    observers = v13->_observers;
    v13->_observers = v21;

    *&v13->_PIDPollingInterval = 1133903872;
    currentPIDList = v13->_currentPIDList;
    v13->_currentPIDList = 0;

    [(CSProcessManager *)v13 initRelaunchPollingTimer];
    [(CSProcessManager *)v13 importMitigationRecords];
    [(CSProcessManager *)v13 schedulePIDPolling];
    v24 = v13;
  }

  return v13;
}

- (void)schedulePIDPolling
{
  v3 = getMainQueue();
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  pollingTimer = self->_pollingTimer;
  self->_pollingTimer = v4;

  v6 = self->_pollingTimer;
  v7 = dispatch_walltime(0, 60000000000);
  dispatch_source_set_timer(v6, v7, (self->_PIDPollingInterval * 1000000000.0), 0x6FC23AC00uLL);
  objc_initWeak(&location, self);
  v8 = self->_pollingTimer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CSProcessManager_schedulePIDPolling__block_invoke;
  v9[3] = &unk_278DF5180;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_pollingTimer);
  self->_pollingTimerActive = 1;
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSProcessManager schedulePIDPolling];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)initRelaunchPollingTimer
{
  v3 = [MEMORY[0x277CBEB58] set];
  relaunchPollingUUIDs = self->_relaunchPollingUUIDs;
  self->_relaunchPollingUUIDs = v3;

  v5 = getMainQueue();
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  relaunchPollingTimer = self->_relaunchPollingTimer;
  self->_relaunchPollingTimer = v6;

  objc_initWeak(&location, self);
  v8 = self->_relaunchPollingTimer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CSProcessManager_initRelaunchPollingTimer__block_invoke;
  v9[3] = &unk_278DF5180;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  *&self->_relaunchPollingIntervalStartS = 0x4396000040A00000;
  self->_savedRelaunchPollingIntervalStartS = 0.0;
  self->_relaunchPollingTimerActive = 0;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__CSProcessManager_initRelaunchPollingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pollPenaltyBoxProcessRelaunch];
}

- (void)importMitigationRecords
{
  v37 = *MEMORY[0x277D85DE8];
  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;

  v5 = +[CSPowerlogDBReader sharedInstance];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 startOfDayForDate:v6];
  v9 = [v5 getDeviceBootTime];
  if ([v8 compare:v9] == -1)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "importMitigationRecords: Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
    }

    v11 = v9;

    v8 = v11;
  }

  [v5 openConnection];
  v12 = [v5 getPowerExceptionsRecordsWithStartDate:v8 andEndDate:v6];
  [v5 closeConnection];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 count])
      {
        v13 = [v12 mutableCopy];
        v14 = self->_powerlogRecords;
        self->_powerlogRecords = v13;
      }
    }
  }

  if (self->_powerlogRecords)
  {
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = v6;
    v15 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_powerlogRecords;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"PUUID"];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    v7 = v26;
    v6 = v27;
    v8 = v25;
    if ([v15 count])
    {
      v22 = self->_logger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243DC3000, v22, OS_LOG_TYPE_DEFAULT, "importMitigationRecords: found records", buf, 2u);
      }

      objc_storeStrong(&self->_powerlogRecordsUUIDs, v15);
    }

    v9 = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerForPenaltyBoxRelaunchPolling:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  if (([(NSMutableSet *)self->_relaunchPollingUUIDs containsObject:v4]& 1) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSProcessManager registerForPenaltyBoxRelaunchPolling:];
    }
  }

  else
  {
    [(NSMutableSet *)self->_relaunchPollingUUIDs addObject:v4];
  }

  relaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
  self->_relaunchPollingIntervalS = relaunchPollingIntervalStartS;
  relaunchPollingTimer = self->_relaunchPollingTimer;
  v8 = dispatch_walltime(0, (relaunchPollingIntervalStartS * 1000000000.0));
  dispatch_source_set_timer(relaunchPollingTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  if (!self->_relaunchPollingTimerActive)
  {
    dispatch_resume(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 1;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "registerForPenaltyBoxRelaunchPolling: timer now active", v10, 2u);
    }
  }
}

- (void)unregisterForPenaltyBoxRelaunchPolling:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  [(NSMutableSet *)self->_relaunchPollingUUIDs minusSet:v4];
  if (![(NSMutableSet *)self->_relaunchPollingUUIDs count]&& self->_relaunchPollingTimerActive)
  {
    dispatch_suspend(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 0;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "unregisterForPenaltyBoxRelaunchPolling: timer now inactive", v7, 2u);
    }
  }
}

- (void)unregisterAllForPenaltyBoxRelaunchPolling
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  [(NSMutableSet *)self->_relaunchPollingUUIDs removeAllObjects];
  if (self->_relaunchPollingTimerActive)
  {
    dispatch_suspend(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 0;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "unregisterAllForPenaltyBoxRelaunchPolling: timer now inactive", v5, 2u);
    }
  }
}

- (void)pollPenaltyBoxProcessRelaunch
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    relaunchPollingIntervalS = self->_relaunchPollingIntervalS;
    *buf = 134217984;
    v51 = relaunchPollingIntervalS;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "pollPenaltyBoxProcessRelaunch: Start (interval: %f)", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = +[CSMitigationManager sharedInstance];
  v8 = [v7 penaltyBoxProcesses];

  v38 = [MEMORY[0x277CBEB38] dictionary];
  if ([(CSProcessManager *)self fillPIDDictionary:?])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v8 allValues];
    v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          relaunchPollingUUIDs = self->_relaunchPollingUUIDs;
          v15 = [v13 uuid];
          LODWORD(relaunchPollingUUIDs) = [(NSMutableSet *)relaunchPollingUUIDs containsObject:v15];

          if (relaunchPollingUUIDs)
          {
            context = objc_autoreleasePoolPush();
            v16 = [v13 uuid];
            v17 = [v38 allKeysForObject:v16];

            if (v17 && [v17 count])
            {
              v36 = v8;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v41;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v41 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v40 + 1) + 8 * j);
                    v24 = [v13 trackedPIDs];
                    v25 = [v24 allKeys];
                    LOBYTE(v23) = [v25 containsObject:v23];

                    if ((v23 & 1) == 0)
                    {
                      v26 = self->_logger;
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = v26;
                        v28 = [v13 identifier];
                        *buf = 138412290;
                        v51 = *&v28;
                        _os_log_impl(&dword_243DC3000, v27, OS_LOG_TYPE_DEFAULT, "pollPenaltyBoxProcessRelaunch: found %@", buf, 0xCu);
                      }

                      v29 = [v13 uuid];
                      [v6 addObject:v29];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
                }

                while (v20);
              }

              objc_autoreleasePoolPop(context);
              v8 = v36;
              goto LABEL_30;
            }

            objc_autoreleasePoolPop(context);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSProcessManager pollPenaltyBoxProcessRelaunch];
  }

  if ([v6 count])
  {
    [(CSProcessManager *)self unregisterForPenaltyBoxRelaunchPolling:v6];
  }

  savedRelaunchPollingIntervalStartS = self->_savedRelaunchPollingIntervalStartS;
  if (savedRelaunchPollingIntervalStartS != 0.0)
  {
    self->_relaunchPollingIntervalS = savedRelaunchPollingIntervalStartS;
    self->_relaunchPollingIntervalStartS = savedRelaunchPollingIntervalStartS;
    self->_savedRelaunchPollingIntervalStartS = 0.0;
  }

  if (self->_relaunchPollingTimerActive && [(NSMutableSet *)self->_relaunchPollingUUIDs count]&& (v31 = self->_relaunchPollingIntervalS, v31 <= 1.7014e38) && v31 <= (self->_relaunchPollingIntervalMaxS * 0.5))
  {
    v32 = v31 + v31;
    self->_relaunchPollingIntervalS = v32;
    relaunchPollingTimer = self->_relaunchPollingTimer;
    v34 = dispatch_walltime(0, (v32 * 1000000000.0));
    dispatch_source_set_timer(relaunchPollingTimer, v34, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  }

  else
  {
    [(CSProcessManager *)self unregisterAllForPenaltyBoxRelaunchPolling];
  }

  if ([v6 count])
  {
    [(CSProcessManager *)self pollPIDs];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)fillPIDDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

    goto LABEL_13;
  }

  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = v5;
  v8 = malloc_type_malloc(v5, 0x100004052888210uLL);
  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  memset(v8, 255, v7);
  v10 = proc_listpids(1u, 0, v9, v6);
  if (v10 >= 4)
  {
    v12 = 0;
    v11 = 0;
    if (v10 >> 2 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10 >> 2;
    }

    v17 = v9;
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 >= 1)
      {
        v20 = getProcessUUID(v18);

        if (v20)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInt:v18];

          [v4 setObject:v20 forKey:v21];
          v11 = v21;
          v12 = v20;
        }

        else
        {
          logger = self->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            v23 = logger;
            v24 = *__error();
            *buf = 67109376;
            v26 = v24;
            v27 = 1024;
            v28 = v18;
            _os_log_error_impl(&dword_243DC3000, v23, OS_LOG_TYPE_ERROR, "fillPIDDictionary: getProcessUUID() failed %d, so skipping pid: %d", buf, 0xEu);
          }

          v12 = 0;
        }
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  free(v9);

  v13 = 1;
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)applyRecordsForProcess:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_targetProcessRecords)
  {
    v6 = gTargetProcess == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ([v4 processName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", gTargetProcess), v7, !v8))
  {
    powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
    v13 = [v5 uuid];
    v14 = [v13 UUIDString];
    LODWORD(powerlogRecordsUUIDs) = [(NSMutableArray *)powerlogRecordsUUIDs containsObject:v14];

    if (powerlogRecordsUUIDs)
    {
      v61 = [MEMORY[0x277CBEB18] array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = [(NSMutableArray *)self->_powerlogRecords copy];
      v15 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v68;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v68 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v67 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:@"PUUID"];
            v21 = [v5 uuid];
            v22 = [v21 UUIDString];
            v23 = [v20 isEqualToString:v22];

            if (v23)
            {
              [v61 addObject:v19];
              [(NSMutableArray *)self->_powerlogRecords removeObject:v19];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v16);
      }

      if ([v61 count])
      {
        v11 = v61;
      }

      else
      {
        v11 = 0;
      }

      v24 = self->_powerlogRecordsUUIDs;
      v25 = [v5 uuid];
      v26 = [v25 UUIDString];
      [(NSMutableArray *)v24 removeObject:v26];

      v60 = 0;
    }

    else
    {
      v60 = 0;
      v11 = 0;
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      targetProcessRecords = self->_targetProcessRecords;
      *buf = 138412546;
      v74 = gTargetProcess;
      v75 = 2112;
      v76 = targetProcessRecords;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "applyRecordsForProcess: for target process %@, use _targetProcessRecords: %@", buf, 0x16u);
    }

    v11 = self->_targetProcessRecords;
    v60 = 1;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v27 = v11;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v28)
  {
    v30 = v28;
    v31 = *v64;
    *&v29 = 67109120;
    v59 = v29;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v63 + 1) + 8 * j);
        v34 = self->_logger;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = [v5 processName];
          *buf = 138412546;
          v74 = v36;
          v75 = 2112;
          v76 = v33;
          _os_log_impl(&dword_243DC3000, v35, OS_LOG_TYPE_DEFAULT, "applyRecordsForProcess: process: %@ record: %@", buf, 0x16u);
        }

        v37 = [(NSArray *)v33 objectForKeyedSubscript:@"FatalCount", v59];
        v38 = [v37 intValue];

        [v5 setCpuFatalCnt:v38];
        v39 = [(NSArray *)v33 objectForKeyedSubscript:@"NonFatalCount"];
        v40 = [v39 intValue];

        [v5 setCpuNonFatalCnt:v40];
        v41 = [(NSArray *)v33 objectForKeyedSubscript:@"MitigationType"];
        v42 = [v41 intValue];

        v43 = [(NSArray *)v33 objectForKeyedSubscript:@"timestampEnd"];
        [v43 doubleValue];
        v45 = v44;

        v46 = [(NSArray *)v33 objectForKeyedSubscript:@"TimeWindowSize"];
        [v46 doubleValue];
        v48 = v47;

        if (v42 > 4)
        {
          if (v42 <= 6)
          {
            if (v42 == 5)
            {
              goto LABEL_51;
            }

            [v5 setPenaltyBoxPending:1];
LABEL_39:
            if (v60)
            {
              [v5 addPenaltyBoxCoalitionID:{objc_msgSend(v5, "lastCoalitionID")}];
            }

            else
            {
              v55 = [(NSArray *)v33 objectForKeyedSubscript:@"CoalitionID"];
              [v5 addPenaltyBoxCoalitionID:{objc_msgSend(v55, "intValue")}];
            }

            goto LABEL_51;
          }

          if (v42 != 7 && v42 != 255)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v42 <= 2)
          {
            if (v42 < 2)
            {
              goto LABEL_51;
            }

            if (v42 != 2)
            {
LABEL_48:
              v56 = self->_logger;
              if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_51;
              }

              *buf = v59;
              LODWORD(v74) = v42;
              v52 = v56;
              v53 = "applyRecordsForProcess: skipping unknown mitigationType value: %d";
              v54 = 8;
              goto LABEL_50;
            }

            v49 = +[CSMitigationManager sharedInstance];
            v50 = [v49 penaltyBoxDurationMinsForProcess:v5];

            [v5 setPenaltyBoxDurationMins:v50];
            [v5 setPenaltyBoxEndTime:{getCurrentTime() + 60 * objc_msgSend(v5, "penaltyBoxDurationMins")}];
            goto LABEL_39;
          }

          if (v42 != 3)
          {
            v51 = self->_logger;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v52 = v51;
              v53 = "applyRecordsForProcess: unexpected PEMitigationDefault value";
              v54 = 2;
LABEL_50:
              _os_log_impl(&dword_243DC3000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
            }
          }
        }

LABEL_51:
        v57 = [(NSArray *)v33 objectForKeyedSubscript:@"IssueType"];
        [v5 addViolationEvent:objc_msgSend(v57 startTime:"intValue") endTime:{v45 - v48, v45}];
      }

      v30 = [(NSArray *)v27 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v30);
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfNewInstances:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) observeNewRunningProcesses:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)identiferForName:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  v6 = [(NSMutableDictionary *)self->_processNameIdentiferByName objectForKeyedSubscript:v4];

  processNameIdentiferByName = self->_processNameIdentiferByName;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)processNameIdentiferByName objectForKeyedSubscript:v4];
LABEL_5:
    v11 = v8;
    goto LABEL_6;
  }

  v9 = [(NSMutableDictionary *)processNameIdentiferByName allValues];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    v8 = v4;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)processNameForIdentifier:(id)a3
{
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  v6 = [(CSProcessManager *)self processForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 processName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getProcessForProcessName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 processName];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getProcessForUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)clearAllCounters
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 setCpuFatalCnt:0];
        [v9 setCpuNonFatalCnt:0];
        [v9 setExitsCnt:0];
        [v9 setPenaltyBoxCnt:0];
        [v9 setPenaltyBoxPending:0];
        [v9 setEventHistory:0];
        [v9 setPenaltyBoxEndTime:0];
        v10 = [v9 penaltyBoxCoalitionIDs];
        [v10 removeAllObjects];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)getPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CSProcessManager_getPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__CSProcessManager_getPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)getRelaunchPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CSProcessManager_getRelaunchPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__CSProcessManager_getRelaunchPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 28);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)getMaxRelaunchPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CSProcessManager_getMaxRelaunchPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__CSProcessManager_getMaxRelaunchPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)modifyPollingInterval:(id)a3
{
  v14 = a3;
  v4 = getMainQueue();
  dispatch_assert_queue_V2(v4);

  PIDPollingInterval = self->_PIDPollingInterval;
  [v14 floatValue];
  if (PIDPollingInterval != v6)
  {
    dispatch_suspend(self->_pollingTimer);
    [v14 floatValue];
    if (v7 == 0.0)
    {
      self->_savedPIDPollingInterval = self->_PIDPollingInterval;
      pollingTimer = self->_pollingTimer;
      v9 = dispatch_walltime(0, 0);
      v10 = pollingTimer;
      v11 = 1;
    }

    else
    {
      [v14 floatValue];
      self->_PIDPollingInterval = v12;
      v13 = self->_pollingTimer;
      v9 = dispatch_walltime(0, 0);
      v11 = (self->_PIDPollingInterval * 1000000000.0);
      v10 = v13;
    }

    dispatch_source_set_timer(v10, v9, v11, 0x6FC23AC00uLL);
    dispatch_resume(self->_pollingTimer);
  }
}

- (void)modifyRelaunchPollingInterval:(id)a3
{
  v14 = a3;
  v4 = getMainQueue();
  dispatch_assert_queue_V2(v4);

  relaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
  [v14 floatValue];
  v6 = v14;
  if (relaunchPollingIntervalStartS != v7)
  {
    if (self->_relaunchPollingTimerActive)
    {
      dispatch_suspend(self->_relaunchPollingTimer);
    }

    [v14 floatValue];
    if (v8 == 0.0)
    {
      self->_savedRelaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
      self->_relaunchPollingIntervalS = 1.0;
      v9 = 1000000000;
    }

    else
    {
      [v14 floatValue];
      v6 = v14;
      if (v10 >= self->_relaunchPollingIntervalMaxS)
      {
        goto LABEL_9;
      }

      [v14 floatValue];
      self->_relaunchPollingIntervalS = v11;
      self->_relaunchPollingIntervalStartS = v11;
      v9 = (v11 * 1000000000.0);
    }

    relaunchPollingTimer = self->_relaunchPollingTimer;
    v13 = dispatch_walltime(0, v9);
    dispatch_source_set_timer(relaunchPollingTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    dispatch_resume(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 1;
    v6 = v14;
  }

LABEL_9:
}

- (void)modifyMaxRelaunchPollingInterval:(id)a3
{
  v10 = a3;
  v4 = getMainQueue();
  dispatch_assert_queue_V2(v4);

  [v10 floatValue];
  v5 = v10;
  if (v6 != 0.0)
  {
    [v10 floatValue];
    v8 = v7;
    v9 = 3600.0;
    if (v8 < 3600.0)
    {
      [v10 floatValue];
    }

    self->_relaunchPollingIntervalMaxS = v9;
    v5 = v10;
  }
}

- (id)getMonitoredList
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  allProcessesMap = self->_allProcessesMap;

  return allProcessesMap;
}

- (id)fullProcessNameForPid:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(a3, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(buffer)];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)clearTargetProcessState
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  if (gTargetProcess)
  {
    v4 = [(CSProcessManager *)self getProcessForProcessName:?];
    if (v4)
    {
      allProcessesMap = self->_allProcessesMap;
      v7 = v4;
      v6 = [v4 identifier];
      [(NSMutableDictionary *)allProcessesMap removeObjectForKey:v6];

      v4 = v7;
    }
  }
}

- (id)getTargetProcessMitigationRecords
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  targetProcessRecords = self->_targetProcessRecords;

  return targetProcessRecords;
}

- (BOOL)modifyTargetProcessMitigationRecords:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getMainQueue();
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CBEB18] array];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 1;
    goto LABEL_45;
  }

  v41 = v3;
  v42 = v5;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v6)
  {
    v9 = 1;
    goto LABEL_44;
  }

  v7 = v6;
  v8 = *v60;
  v9 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v60 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v59 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v57 modifyTargetProcessMitigationRecords:v58];
        }

        goto LABEL_26;
      }

      v12 = [v11 objectForKeyedSubscript:@"MitigationType"];
      if (!v12 || (v13 = v12, [v11 objectForKeyedSubscript:@"MitigationType"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, v13, (isKindOfClass & 1) == 0))
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v55 modifyTargetProcessMitigationRecords:v56];
        }

LABEL_26:
        v9 = 0;
        goto LABEL_27;
      }

      v16 = [v11 objectForKeyedSubscript:@"MitigationReason"];
      if (v16 && (v17 = v16, [v11 objectForKeyedSubscript:@"MitigationReason"], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) != 0))
      {
        v20 = [v11 objectForKeyedSubscript:@"FatalCount"];
        if (v20 && (v21 = v20, [v11 objectForKeyedSubscript:@"FatalCount"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v23 = objc_opt_isKindOfClass(), v22, v21, (v23 & 1) != 0))
        {
          v24 = [v11 objectForKeyedSubscript:@"NonFatalCount"];
          if (v24 && (v25 = v24, [v11 objectForKeyedSubscript:@"NonFatalCount"], v26 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v27 = objc_opt_isKindOfClass(), v26, v25, (v27 & 1) != 0))
          {
            v28 = [v11 objectForKeyedSubscript:@"timestampEnd"];
            if (v28 && (v29 = v28, [v11 objectForKeyedSubscript:@"timestampEnd"], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v31 = objc_opt_isKindOfClass(), v30, v29, (v31 & 1) != 0))
            {
              v32 = [v11 objectForKeyedSubscript:@"TimeWindowSize"];
              if (v32)
              {
                v33 = v32;
                v34 = [v11 objectForKeyedSubscript:@"TimeWindowSize"];
                objc_opt_class();
                v35 = objc_opt_isKindOfClass();

                if (v35)
                {
                  [v42 addObject:v11];
                  goto LABEL_27;
                }
              }

              if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
              {
                [(CSProcessManager *)&v45 modifyTargetProcessMitigationRecords:v46];
              }
            }

            else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [(CSProcessManager *)&v47 modifyTargetProcessMitigationRecords:v48];
            }
          }

          else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [(CSProcessManager *)&v49 modifyTargetProcessMitigationRecords:v50];
          }
        }

        else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v51 modifyTargetProcessMitigationRecords:v52];
        }
      }

      else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [(CSProcessManager *)&v53 modifyTargetProcessMitigationRecords:v54];
      }

      v9 = 0;
LABEL_27:
      ++v10;
    }

    while (v7 != v10);
    v36 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    v7 = v36;
  }

  while (v36);
LABEL_44:

  v3 = v41;
  v5 = v42;
LABEL_45:
  v37 = [v5 count];
  if (v37)
  {
    v37 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  }

  targetProcessRecords = self->_targetProcessRecords;
  self->_targetProcessRecords = v37;

  v39 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (void)clearMitigationRecords
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;

  targetProcessRecords = self->_targetProcessRecords;
  self->_targetProcessRecords = 0;
}

- (int)discoverPidForProcessName:(id)a3 withError:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = getMainQueue();
  dispatch_assert_queue_V2(v7);

  v8 = proc_listpids(1u, 0, 0, 0);
  if ((v8 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA5B8];
    v21 = 3;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v8;
  v11 = malloc_type_malloc(v8, 0x100004052888210uLL);
  if (!v11)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA5B8];
    v21 = 12;
    goto LABEL_21;
  }

  v12 = v11;
  memset(v11, 255, v10);
  v13 = proc_listpids(1u, 0, v12, v9);
  if (v13 < 4)
  {
LABEL_12:
    free(v12);
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = @"CSRestrictionManagerErrorDomain";
    v21 = 0;
LABEL_21:
    [v19 errorWithDomain:v20 code:v21 userInfo:0];
    *a4 = v16 = 0;
    goto LABEL_22;
  }

  v14 = 0;
  if (v13 >> 2 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13 >> 2;
  }

  while (1)
  {
    v16 = v12[v14];
    if (v16 >= 1)
    {
      break;
    }

LABEL_11:
    if (v15 == ++v14)
    {
      goto LABEL_12;
    }
  }

  v17 = [(CSProcessManager *)self fullProcessNameForPid:v12[v14]];
  v18 = v17;
  if (!v17 || ([v17 isEqualToString:v6] & 1) == 0)
  {

    goto LABEL_11;
  }

  free(v12);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 67109120;
    v25[1] = v16;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "discoverPidForProcessName: found pid: %d", v25, 8u);
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isXPCServiceExempt:(id)a3 withIssueType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSDictionary *)self->_processPoliciesDict objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 intValue];
    if (v4 == 1)
    {
      v10 = (v9 >> 1) & 1;
    }

    else if (v4)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSProcessManager isXPCServiceExempt:withIssueType:];
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = v9 & 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unsigned)getPollPIDsCount
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  return self->_pollPIDsCount;
}

- (void)isAppleXPCServiceWithRBS:andPID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_1(&dword_243DC3000, v0, v1, "isAppleXPCServiceWithRBS: Error grabbing RBSProcessHandle (pid%i) to perform XPC Service check %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordTerminationForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "recordTerminationForPID: Process not found for exited pid (%d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isXPCServiceExempt:withIssueType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_1(&dword_243DC3000, v0, v1, "isXPCServiceExempt: Unknown issueType %d for policyBitMask for coalitionName:%@, assuming exempt ");
  v2 = *MEMORY[0x277D85DE8];
}

@end