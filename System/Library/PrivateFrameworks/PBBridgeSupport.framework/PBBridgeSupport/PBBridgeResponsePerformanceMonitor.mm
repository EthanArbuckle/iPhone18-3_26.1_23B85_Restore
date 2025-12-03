@interface PBBridgeResponsePerformanceMonitor
+ (id)shareMonitor;
- (double)endMacroActivity:(id)activity beginTime:(double)time;
- (void)_logLocalMeasurements:(BOOL)measurements;
- (void)_logMacroActivitiesLocal:(BOOL)local;
- (void)_logMeasurements;
- (void)_logMilestones;
- (void)addMeasurement:(double)measurement timeSent:(double)sent activityType:(id)type activityIdentifier:(id)identifier;
- (void)addMilestone:(double)milestone activityType:(id)type activityIdentifier:(id)identifier;
- (void)beginMacroActivity:(id)activity beginTime:(double)time;
- (void)beginMonitorTransaction;
- (void)endMonitorTransaction;
@end

@implementation PBBridgeResponsePerformanceMonitor

+ (id)shareMonitor
{
  if (shareMonitor_onceToken != -1)
  {
    +[PBBridgeResponsePerformanceMonitor shareMonitor];
  }

  v3 = shareMonitor___shareMonitor;

  return v3;
}

uint64_t __50__PBBridgeResponsePerformanceMonitor_shareMonitor__block_invoke()
{
  shareMonitor___shareMonitor = objc_alloc_init(PBBridgeResponsePerformanceMonitor);

  return MEMORY[0x2821F96F8]();
}

- (void)beginMonitorTransaction
{
  if (!self->_measurements)
  {
    array = [MEMORY[0x277CBEB18] array];
    measurements = self->_measurements;
    self->_measurements = array;
  }

  if (!self->_macroActivities)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    macroActivities = self->_macroActivities;
    self->_macroActivities = dictionary;
  }

  if (!self->_milestones)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    milestones = self->_milestones;
    self->_milestones = dictionary2;

    MEMORY[0x2821F96F8]();
  }
}

- (void)endMonitorTransaction
{
  string = [MEMORY[0x277CCAB68] string];
  logBuffer = self->_logBuffer;
  self->_logBuffer = string;

  [(PBBridgeResponsePerformanceMonitor *)self _logMeasurements];
  [(PBBridgeResponsePerformanceMonitor *)self _logMacroActivitiesLocal:1];
  if (self->_remoteMacroActivities)
  {
    [(PBBridgeResponsePerformanceMonitor *)self _logMacroActivitiesLocal:0];
  }

  if (!self->_remoteMilestones)
  {
    [(PBBridgeResponsePerformanceMonitor *)self _logMilestones];
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Pair-Performance-Report-%f.txt", CFAbsoluteTimeGetCurrent()];
  [(NSMutableString *)self->_logBuffer writeToFile:v5 atomically:1 encoding:4 error:0];
  [(NSMutableArray *)self->_measurements removeAllObjects];
  [(NSMutableDictionary *)self->_macroActivities removeAllObjects];
  [(NSMutableDictionary *)self->_milestones removeAllObjects];
}

- (void)_logLocalMeasurements:(BOOL)measurements
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = @"Remote";
  if (measurements)
  {
    v4 = @"Local";
    v5 = 8;
  }

  else
  {
    v5 = 32;
  }

  if (measurements)
  {
    v6 = 40;
  }

  else
  {
    v6 = 16;
  }

  v7 = v4;
  v8 = *(&self->super.isa + v5);
  v129 = *(&self->super.isa + v6);
  if ([v8 count])
  {
    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v9, v10, v11, v12, v13, v14, v116);
    v123 = v7;
    PBBAddToBufferAndLog(self->_logBuffer, @"Statistics for %@ Pairing Run:", v15, v16, v17, v18, v19, v20, v7);
    PBBAddToBufferAndLog(self->_logBuffer, @"\tActivity, Identifier, RTT, OWD, LocalMessageSentTime", v21, v22, v23, v24, v25, v26, v117);
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v122 = v8;
    obj = v8;
    v27 = [obj countByEnumeratingWithState:&v131 objects:v135 count:16];
    if (v27)
    {
      v28 = v27;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v29 = 0;
      v30 = 0;
      v125 = 0;
      v126 = *v132;
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v132 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v131 + 1) + 8 * i);
          identifier = [v35 identifier];
          v37 = [v129 objectForKey:identifier];

          if (v37)
          {
            [v37 timeEnded];
            v39 = v38;
            [v35 timeStarted];
            v41 = v39 - v40;
            [v125 timeDelta];
            if (v41 > v42)
            {
              [v37 setTimeDelta:v41];
              v43 = v37;

              v125 = v43;
            }

            if (!v30 || ([v30 timeDelta], v41 < v44))
            {
              [v37 setTimeDelta:v41];
              v45 = v37;

              v30 = v45;
            }

            v31 = v31 + v41;
            ++v130;
          }

          selfCopy = self;
          logBuffer = self->_logBuffer;
          activityType = [v35 activityType];
          identifier2 = [v35 identifier];
          [v35 timeDelta];
          [v35 timeStarted];
          PBBAddToBufferAndLog(logBuffer, @"\t%@, %@, %f, %f, %f", v50, v51, v52, v53, v54, v55, activityType);

          activityType2 = [v35 activityType];
          LOBYTE(identifier2) = [activityType2 isEqualToString:@"PBBGMessageIDTellGizmoToUpdateProgressState"];

          if (identifier2)
          {
            self = selfCopy;
          }

          else
          {
            [v35 timeDelta];
            v58 = v57;
            v59 = v128;
            [v128 timeDelta];
            if (v58 > v60)
            {
              v61 = v35;

              v59 = v61;
            }

            self = selfCopy;
            v128 = v59;
            if (!v29 || ([v29 timeDelta], v58 < v62))
            {
              v63 = v35;

              v29 = v63;
            }

            ++v127;
            [v35 timeDelta];
            v33 = v33 + v64;
          }

          [v35 timeDelta];
          v32 = v32 + v65;
        }

        v28 = [obj countByEnumeratingWithState:&v131 objects:v135 count:16];
      }

      while (v28);
    }

    else
    {
      v130 = 0;
      v128 = 0;
      v29 = 0;
      v125 = 0;
      v30 = 0;
    }

    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v66, v67, v68, v69, v70, v71, v118);
    PBBAddToBufferAndLog(self->_logBuffer, @"Round-Trip Delay Time", v72, v73, v74, v75, v76, v77, v119);
    v7 = v123;
    if (v128)
    {
      PBBAddToBufferAndLog(self->_logBuffer, @"Longest %@ RTT Measurement: %@", v78, v79, v80, v81, v82, v83, v123);
    }

    if (v29)
    {
      PBBAddToBufferAndLog(self->_logBuffer, @"Shortest %@ RTT Measurement: %@", v78, v79, v80, v81, v82, v83, v123);
    }

    v84 = self->_logBuffer;
    [obj count];
    [obj count];
    PBBAddToBufferAndLog(v84, @"Average %@ RTT: %f (Total %f across %d runs).", v85, v86, v87, v88, v89, v90, v123);
    PBBAddToBufferAndLog(self->_logBuffer, @"(Without Sync Messages) Average %@ RTT: %f (Total %f across %d runs).", v91, v92, v93, v94, v95, v96, v123);
    v8 = v122;
    if (v130)
    {
      PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v97, v98, v99, v100, v101, v102, v120);
      PBBAddToBufferAndLog(self->_logBuffer, @"One-Way Delay Time (Only correct if time sync is accurate)", v103, v104, v105, v106, v107, v108, v121);
      if (v125)
      {
        PBBAddToBufferAndLog(self->_logBuffer, @"Longest %@ OWD Measurement: %@", v109, v110, v111, v112, v113, v114, v123);
      }

      if (v30)
      {
        PBBAddToBufferAndLog(self->_logBuffer, @"Shortest %@ OWD Measurement: %@", v109, v110, v111, v112, v113, v114, v123);
      }

      PBBAddToBufferAndLog(self->_logBuffer, @"Average %@ OWD Time: %f (Total %f across %d runs).", v109, v110, v111, v112, v113, v114, v123);
    }
  }

  v115 = *MEMORY[0x277D85DE8];
}

- (void)_logMeasurements
{
  [(PBBridgeResponsePerformanceMonitor *)self _logLocalMeasurements:1];
  if (self->_remoteMeasurements)
  {

    [(PBBridgeResponsePerformanceMonitor *)self _logLocalMeasurements:0];
  }
}

- (void)_logMacroActivitiesLocal:(BOOL)local
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = @"Remote";
  if (local)
  {
    v4 = @"Local";
    v5 = 24;
  }

  else
  {
    v5 = 48;
  }

  v6 = v4;
  v7 = *(&self->super.isa + v5);
  if ([v7 count])
  {
    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v8, v9, v10, v11, v12, v13, v41);
    v43 = v6;
    PBBAddToBufferAndLog(self->_logBuffer, @"Other %@ Activities: ", v14, v15, v16, v17, v18, v19, v6);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allValues = [v7 allValues];
    v21 = [allValues countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v45;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(allValues);
          }

          v25 = *(*(&v44 + 1) + 8 * i);
          logBuffer = self->_logBuffer;
          activityType = [v25 activityType];
          [v25 timeDelta];
          PBBAddToBufferAndLog(logBuffer, @"\t Activity: %@ time: %f", v28, v29, v30, v31, v32, v33, activityType);
        }

        v22 = [allValues countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v22);
    }

    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v34, v35, v36, v37, v38, v39, v42);
    v6 = v43;
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_logMilestones
{
  v45 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_milestones count])
  {
    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v3, v4, v5, v6, v7, v8, v37);
    PBBAddToBufferAndLog(self->_logBuffer, @"Local Milestones: ", v9, v10, v11, v12, v13, v14, v38);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allValues = [(NSMutableDictionary *)self->_milestones allValues];
    v16 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(allValues);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          logBuffer = self->_logBuffer;
          activityType = [v20 activityType];
          identifier = [v20 identifier];
          [v20 timeEnded];
          PBBAddToBufferAndLog(logBuffer, @"\t Milestone: %@ (%@) time ended: %f", v24, v25, v26, v27, v28, v29, activityType);
        }

        v17 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v17);
    }

    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v30, v31, v32, v33, v34, v35, v39);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)addMeasurement:(double)measurement timeSent:(double)sent activityType:(id)type activityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  v12 = objc_alloc_init(PBBProtoPerformanceResult);
  [(PBBProtoPerformanceResult *)v12 setTimeDelta:measurement];
  [(PBBProtoPerformanceResult *)v12 setTimeStarted:sent];
  [(PBBProtoPerformanceResult *)v12 setActivityType:typeCopy];

  [(PBBProtoPerformanceResult *)v12 setIdentifier:identifierCopy];
  [(NSMutableArray *)self->_measurements addObject:v12];
}

- (void)addMilestone:(double)milestone activityType:(id)type activityIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  if (identifierCopy)
  {
    v9 = objc_alloc_init(PBBProtoPerformanceResult);
    [(PBBProtoPerformanceResult *)v9 setTimeEnded:milestone];
    [(PBBProtoPerformanceResult *)v9 setActivityType:typeCopy];
    [(PBBProtoPerformanceResult *)v9 setIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_milestones setObject:v9 forKey:identifierCopy];
  }
}

- (void)beginMacroActivity:(id)activity beginTime:(double)time
{
  activityCopy = activity;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  if (activityCopy)
  {
    v6 = objc_alloc_init(PBBProtoPerformanceResult);
    [(PBBProtoPerformanceResult *)v6 setTimeStarted:time];
    [(PBBProtoPerformanceResult *)v6 setActivityType:activityCopy];
    [(PBBProtoPerformanceResult *)v6 setIdentifier:&stru_286FA8098];
    [(NSMutableDictionary *)self->_macroActivities setObject:v6 forKey:activityCopy];
  }
}

- (double)endMacroActivity:(id)activity beginTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v7 = [(NSMutableDictionary *)self->_macroActivities objectForKey:activityCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setTimeEnded:time];
    [v8 timeEnded];
    v10 = v9;
    [v8 timeStarted];
    v12 = v10 - v11;
    [v8 setTimeDelta:v12];
    [(NSMutableDictionary *)self->_macroActivities setObject:v8 forKey:activityCopy];
  }

  else
  {
    v13 = pbb_shared_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = activityCopy;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "Tried to end un-started Activity (%@)", &v16, 0xCu);
    }

    v12 = -1.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end