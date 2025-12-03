@interface CSProcess
- (BOOL)checkKnownViolationStartTime:(double)time endTime:(double)endTime;
- (CSProcess)initWithIdentifier:(id)identifier;
- (double)computeEnergyDiff:(id)diff;
- (id)getPidsForCoalitionID:(unint64_t)d;
- (int)lastPid;
- (unint64_t)lastCoalitionID;
- (void)addPenaltyBoxCoalitionID:(unint64_t)d;
- (void)dealloc;
- (void)incrementCPUViolationCounter:(BOOL)counter;
- (void)monitorForExitWithPID:(int)d;
- (void)snapshotCPUEnergy;
@end

@implementation CSProcess

- (void)snapshotCPUEnergy
{
  v4 = [CPUEnergySnapshot snapshotCPUEnergy:[(CSProcess *)self lastCoalitionID]];
  energySnapshotNew = [(CSProcess *)self energySnapshotNew];
  [(CSProcess *)self setEnergySnapshot:energySnapshotNew];

  [(CSProcess *)self setEnergySnapshotNew:v4];
}

- (CSProcess)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = CSProcess;
  v6 = [(CSProcess *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    processName = v7->_processName;
    v7->_processName = 0;

    v7->_policyBitMask = 0;
    *&v7->_rootDaemon = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    exitMonitors = v7->_exitMonitors;
    v7->_exitMonitors = dictionary;

    *&v7->_cpuFatalCnt = 0;
    *&v7->_cpuNonFatalCnt = 0;
    *&v7->_issueType = -1;
    v7->_mitigationReason = -1;
    v7->_inPenaltyBox = 0;
    cpuThreshold = v7->_cpuThreshold;
    v7->_cpuThreshold = 0;

    cpuTimeWindow = v7->_cpuTimeWindow;
    v7->_cpuTimeWindow = 0;

    violationPath = v7->_violationPath;
    v7->_violationPath = 0;

    *&v7->_violationEndTime.tv_sec = 0u;
    *&v7->_violationObservationWindow = 0u;
    violationDetectorString = v7->_violationDetectorString;
    v7->_violationLimitWindow = 0;
    v7->_violationDetectorString = 0;

    *&v7->_penaltyBoxDurationMins = xmmword_243DF73E0;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    penaltyBoxCoalitionIDs = v7->_penaltyBoxCoalitionIDs;
    v7->_penaltyBoxCoalitionIDs = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    previousPIDs = v7->_previousPIDs;
    v7->_previousPIDs = dictionary3;

    array = [MEMORY[0x277CBEB18] array];
    previousPIDkeys = v7->_previousPIDkeys;
    v7->_previousPIDkeys = array;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    trackedPIDs = v7->_trackedPIDs;
    v7->_trackedPIDs = dictionary4;

    array2 = [MEMORY[0x277CBEB18] array];
    trackedPIDkeys = v7->_trackedPIDkeys;
    v7->_trackedPIDkeys = array2;
  }

  return v7;
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_trackedPIDs removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_exitMonitors;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v6;
      v11 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v15 + 1) + 8 * v9);

        v7 = [(NSMutableDictionary *)self->_exitMonitors objectForKey:v6];

        if (v7)
        {
          dispatch_source_cancel(v7);
        }

        ++v9;
        v10 = v6;
        v11 = v7;
      }

      while (v5 != v9);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = objc_autoreleasePoolPush();
  [(NSMutableDictionary *)self->_exitMonitors removeAllObjects];
  objc_autoreleasePoolPop(v12);
  v14.receiver = self;
  v14.super_class = CSProcess;
  [(CSProcess *)&v14 dealloc];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)incrementCPUViolationCounter:(BOOL)counter
{
  if (counter)
  {
    ++self->_cpuFatalCnt;
  }

  else
  {
    ++self->_cpuNonFatalCnt;
  }
}

- (void)monitorForExitWithPID:(int)d
{
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)self->_exitMonitors objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = processLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSProcess monitorForExitWithPID:?];
    }
  }

  else
  {
    v9 = getMainQueue();
    v10 = dispatch_source_create(MEMORY[0x277D85D20], d, 0x80000000uLL, v9);

    if (v10)
    {
      dispatch_set_context(v10, d);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __35__CSProcess_monitorForExitWithPID___block_invoke;
      handler[3] = &unk_278DF5230;
      v11 = v10;
      v19 = v11;
      dispatch_source_set_event_handler(v11, handler);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __35__CSProcess_monitorForExitWithPID___block_invoke_2;
      v16 = &unk_278DF5230;
      v7 = v11;
      v17 = v7;
      dispatch_source_set_cancel_handler(v7, &v13);
      [(NSMutableDictionary *)self->_exitMonitors setObject:v7 forKey:v5, v13, v14, v15, v16];
      dispatch_resume(v7);
      v12 = processLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CSProcess monitorForExitWithPID:?];
      }
    }

    else
    {
      v7 = processLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CSProcess monitorForExitWithPID:?];
      }
    }
  }
}

void __35__CSProcess_monitorForExitWithPID___block_invoke_2(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  v2 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
  [v2 recordTerminationForPID:context];
}

- (double)computeEnergyDiff:(id)diff
{
  diffCopy = diff;
  v5 = [CPUEnergySnapshot snapshotCPUEnergy:[(CSProcess *)self lastCoalitionID]];
  [v5 computeEnergyDiff:diffCopy];
  v7 = v6;

  return v7;
}

- (int)lastPid
{
  allKeys = [(NSMutableDictionary *)self->_trackedPIDs allKeys];
  v4 = [allKeys count];

  if (v4)
  {
    v5 = 88;
  }

  else
  {
    allKeys2 = [(NSMutableDictionary *)self->_previousPIDs allKeys];
    v7 = [allKeys2 count];

    if (!v7)
    {
      return 0;
    }

    v5 = 72;
  }

  lastObject = [*(&self->super.isa + v5) lastObject];
  if (lastObject)
  {
    v9 = lastObject;
    intValue = [lastObject intValue];

    return intValue;
  }

  return 0;
}

- (id)getPidsForCoalitionID:(unint64_t)d
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v5 = [(NSMutableDictionary *)self->_trackedPIDs allKeysForObject:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)lastCoalitionID
{
  p_trackedPIDs = &self->_trackedPIDs;
  allKeys = [(NSMutableDictionary *)self->_trackedPIDs allKeys];
  v5 = [allKeys count];

  if (v5)
  {
    v6 = 88;
  }

  else
  {
    p_trackedPIDs = &self->_previousPIDs;
    allKeys2 = [(NSMutableDictionary *)self->_previousPIDs allKeys];
    v8 = [allKeys2 count];

    if (!v8)
    {
      lastObject = 0;
      goto LABEL_8;
    }

    v6 = 72;
  }

  lastObject = [*(&self->super.isa + v6) lastObject];
  v10 = [(NSMutableDictionary *)*p_trackedPIDs objectForKey:lastObject];
  if (!v10)
  {
LABEL_8:
    longLongValue = 0;
    goto LABEL_9;
  }

  v11 = v10;
  longLongValue = [v10 longLongValue];

LABEL_9:
  return longLongValue;
}

- (void)addPenaltyBoxCoalitionID:(unint64_t)d
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:getCurrentTime()];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(NSMutableDictionary *)self->_penaltyBoxCoalitionIDs setObject:v6 forKey:v5];
}

- (BOOL)checkKnownViolationStartTime:(double)time endTime:(double)endTime
{
  v31 = *MEMORY[0x277D85DE8];
  eventHistory = self->_eventHistory;
  if (eventHistory)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = eventHistory;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"ViolationType", v26}];

          if (v13)
          {
            v14 = [v12 objectForKeyedSubscript:@"StartTime"];
            [v14 doubleValue];
            v16 = v15;

            v17 = [v12 objectForKeyedSubscript:@"EndTime"];
            [v17 doubleValue];
            v19 = v18;

            v20 = v16 >= time ? v16 : time;
            v21 = v19 >= endTime ? endTime : v19;
            if (v20 < v21 && v19 + 1200.0 > endTime)
            {
              v23 = 1;
              goto LABEL_23;
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0;
LABEL_23:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)monitorForExitWithPID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_1(&dword_243DC3000, v2, v3, "monitorForExitWithPID: Monitor for process %@ (%d) already exists");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)monitorForExitWithPID:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(&dword_243DC3000, v2, OS_LOG_TYPE_DEBUG, "monitorForExitWithPID: Started monitoring process %@ (%d) for exit.", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)monitorForExitWithPID:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_1(&dword_243DC3000, v2, v3, "monitorForExitWithPID: Failed to start monitoring process %@ (%d) for exit.");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)addNewTrackedPID:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  v3 = [a2 processName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_243DC3000, v4, v5, "addNewTrackedPID: Too many pids (> %d) so remove tracked pid %d from process %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeTrackedPID:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  v3 = [a2 processName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_243DC3000, v4, v5, "removeTrackedPID: Too many pids (> %d) so remove previous pid %d from process %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end