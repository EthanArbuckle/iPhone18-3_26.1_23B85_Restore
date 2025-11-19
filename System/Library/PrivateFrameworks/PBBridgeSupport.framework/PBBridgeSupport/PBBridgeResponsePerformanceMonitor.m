@interface PBBridgeResponsePerformanceMonitor
+ (id)shareMonitor;
- (double)endMacroActivity:(id)a3 beginTime:(double)a4;
- (void)_logLocalMeasurements:(BOOL)a3;
- (void)_logMacroActivitiesLocal:(BOOL)a3;
- (void)_logMeasurements;
- (void)_logMilestones;
- (void)addMeasurement:(double)a3 timeSent:(double)a4 activityType:(id)a5 activityIdentifier:(id)a6;
- (void)addMilestone:(double)a3 activityType:(id)a4 activityIdentifier:(id)a5;
- (void)beginMacroActivity:(id)a3 beginTime:(double)a4;
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
    v3 = [MEMORY[0x277CBEB18] array];
    measurements = self->_measurements;
    self->_measurements = v3;
  }

  if (!self->_macroActivities)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    macroActivities = self->_macroActivities;
    self->_macroActivities = v5;
  }

  if (!self->_milestones)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    milestones = self->_milestones;
    self->_milestones = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (void)endMonitorTransaction
{
  v3 = [MEMORY[0x277CCAB68] string];
  logBuffer = self->_logBuffer;
  self->_logBuffer = v3;

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

- (void)_logLocalMeasurements:(BOOL)a3
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = @"Remote";
  if (a3)
  {
    v4 = @"Local";
    v5 = 8;
  }

  else
  {
    v5 = 32;
  }

  if (a3)
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
          v36 = [v35 identifier];
          v37 = [v129 objectForKey:v36];

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

          v46 = self;
          logBuffer = self->_logBuffer;
          v48 = [v35 activityType];
          v49 = [v35 identifier];
          [v35 timeDelta];
          [v35 timeStarted];
          PBBAddToBufferAndLog(logBuffer, @"\t%@, %@, %f, %f, %f", v50, v51, v52, v53, v54, v55, v48);

          v56 = [v35 activityType];
          LOBYTE(v49) = [v56 isEqualToString:@"PBBGMessageIDTellGizmoToUpdateProgressState"];

          if (v49)
          {
            self = v46;
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

            self = v46;
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

- (void)_logMacroActivitiesLocal:(BOOL)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = @"Remote";
  if (a3)
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
    v20 = [v7 allValues];
    v21 = [v20 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v44 + 1) + 8 * i);
          logBuffer = self->_logBuffer;
          v27 = [v25 activityType];
          [v25 timeDelta];
          PBBAddToBufferAndLog(logBuffer, @"\t Activity: %@ time: %f", v28, v29, v30, v31, v32, v33, v27);
        }

        v22 = [v20 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
    v15 = [(NSMutableDictionary *)self->_milestones allValues];
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          logBuffer = self->_logBuffer;
          v22 = [v20 activityType];
          v23 = [v20 identifier];
          [v20 timeEnded];
          PBBAddToBufferAndLog(logBuffer, @"\t Milestone: %@ (%@) time ended: %f", v24, v25, v26, v27, v28, v29, v22);
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v17);
    }

    PBBAddToBufferAndLog(self->_logBuffer, &stru_286FA8098, v30, v31, v32, v33, v34, v35, v39);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)addMeasurement:(double)a3 timeSent:(double)a4 activityType:(id)a5 activityIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  v12 = objc_alloc_init(PBBProtoPerformanceResult);
  [(PBBProtoPerformanceResult *)v12 setTimeDelta:a3];
  [(PBBProtoPerformanceResult *)v12 setTimeStarted:a4];
  [(PBBProtoPerformanceResult *)v12 setActivityType:v11];

  [(PBBProtoPerformanceResult *)v12 setIdentifier:v10];
  [(NSMutableArray *)self->_measurements addObject:v12];
}

- (void)addMilestone:(double)a3 activityType:(id)a4 activityIdentifier:(id)a5
{
  v10 = a4;
  v8 = a5;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  if (v8)
  {
    v9 = objc_alloc_init(PBBProtoPerformanceResult);
    [(PBBProtoPerformanceResult *)v9 setTimeEnded:a3];
    [(PBBProtoPerformanceResult *)v9 setActivityType:v10];
    [(PBBProtoPerformanceResult *)v9 setIdentifier:v8];
    [(NSMutableDictionary *)self->_milestones setObject:v9 forKey:v8];
  }
}

- (void)beginMacroActivity:(id)a3 beginTime:(double)a4
{
  v7 = a3;
  [(PBBridgeResponsePerformanceMonitor *)self beginMonitorTransaction];
  if (v7)
  {
    v6 = objc_alloc_init(PBBProtoPerformanceResult);
    [(PBBProtoPerformanceResult *)v6 setTimeStarted:a4];
    [(PBBProtoPerformanceResult *)v6 setActivityType:v7];
    [(PBBProtoPerformanceResult *)v6 setIdentifier:&stru_286FA8098];
    [(NSMutableDictionary *)self->_macroActivities setObject:v6 forKey:v7];
  }
}

- (double)endMacroActivity:(id)a3 beginTime:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_macroActivities objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setTimeEnded:a4];
    [v8 timeEnded];
    v10 = v9;
    [v8 timeStarted];
    v12 = v10 - v11;
    [v8 setTimeDelta:v12];
    [(NSMutableDictionary *)self->_macroActivities setObject:v8 forKey:v6];
  }

  else
  {
    v13 = pbb_shared_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "Tried to end un-started Activity (%@)", &v16, 0xCu);
    }

    v12 = -1.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end