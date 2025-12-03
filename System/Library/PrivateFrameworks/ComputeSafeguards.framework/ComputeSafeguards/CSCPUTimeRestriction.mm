@interface CSCPUTimeRestriction
- (BOOL)isEqual:(id)equal;
- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window;
- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window andFatal:(BOOL)fatal;
- (id)getProperties;
- (int)applyToProcess:(id)process;
- (int)releaseForProcess:(id)process;
@end

@implementation CSCPUTimeRestriction

- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window
{
  thresholdCopy = threshold;
  windowCopy = window;
  cpuThreshold = self->_cpuThreshold;
  self->_cpuThreshold = thresholdCopy;
  v9 = thresholdCopy;

  timeWindow = self->_timeWindow;
  self->_timeWindow = windowCopy;

  self->_fatalMitigation = 1;
  return self;
}

- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window andFatal:(BOOL)fatal
{
  result = [(CSCPUTimeRestriction *)self initWithThreshold:threshold andTimeWindow:window];
  result->_fatalMitigation = fatal;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cpuThreshold = self->_cpuThreshold;
      cpuThreshold = [(CSCPUTimeRestriction *)equalCopy cpuThreshold];
      if (cpuThreshold == cpuThreshold)
      {
        timeWindow = self->_timeWindow;
        timeWindow = [(CSCPUTimeRestriction *)equalCopy timeWindow];
        if (timeWindow == timeWindow)
        {
          fatalMitigation = self->_fatalMitigation;
          v7 = fatalMitigation == [(CSCPUTimeRestriction *)equalCopy fatalMitigation];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int)applyToProcess:(id)process
{
  v44 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v4 = processCopy;
  if (processCopy)
  {
    trackedPIDs = [processCopy trackedPIDs];
    v6 = [trackedPIDs count];

    if (!v6)
    {
      v7 = +[CSLogger defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CSCPUTimeRestriction *)v4 applyToProcess:v7];
      }
    }

    cpuThreshold = [v4 cpuThreshold];
    cpuTimeWindow = [v4 cpuTimeWindow];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v4 trackedPIDs];
    v10 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v33 = v4;
      v12 = 0;
      v13 = *v35;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * v14);

          intValue = [v12 intValue];
          v17 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v33 identifier];
            *buf = 138413058;
            *v39 = cpuThreshold;
            *&v39[8] = 2112;
            *&v39[10] = cpuTimeWindow;
            *&v39[18] = 2112;
            v40 = identifier;
            v41 = 1024;
            v42 = intValue;
            _os_log_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEFAULT, "applyToProcess: Configuring cpuMonitor with cpuThreshold: %@, timeWindow:%@ for process:%@ (%d)", buf, 0x26u);
          }

          [cpuThreshold floatValue];
          v20 = v19;
          [cpuTimeWindow floatValue];
          LODWORD(v22) = v21;
          LODWORD(v23) = v20;
          v24 = [CSCPUMonitorHelper setThreshold:intValue overTimeWindow:0 forPID:v23 withFatalEffect:v22];
          if (v24)
          {
            v25 = v24;
            v26 = +[CSLogger defaultCategory];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [v33 identifier];
              *buf = 67109634;
              *v39 = v25;
              *&v39[4] = 2112;
              *&v39[6] = identifier2;
              v28 = identifier2;
              *&v39[14] = 1024;
              *&v39[16] = intValue;
              _os_log_error_impl(&dword_243DC3000, v26, OS_LOG_TYPE_ERROR, "applyToProcess: Failed %d to apply thresholds on process:%@ (%d)", buf, 0x18u);
            }
          }

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v11);

      v4 = v33;
    }

    [v4 setCpuMonitored:1];
    v29 = 0;
  }

  else
  {
    cpuThreshold = +[CSLogger defaultCategory];
    if (os_log_type_enabled(cpuThreshold, OS_LOG_TYPE_ERROR))
    {
      [CSCPUTimeRestriction applyToProcess:cpuThreshold];
    }

    v29 = 2;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (int)releaseForProcess:(id)process
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  processCopy = process;
  trackedPIDs = [processCopy trackedPIDs];
  v4 = [trackedPIDs countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(trackedPIDs);
        }

        v6 = *(*(&v18 + 1) + 8 * v8);

        v10 = +[CSCPUMonitorHelper clearMonitorForPID:](CSCPUMonitorHelper, "clearMonitorForPID:", [v6 intValue]);
        if (v10)
        {
          v11 = v10;
          v12 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            identifier = [processCopy identifier];
            intValue = [v6 intValue];
            *buf = 67109634;
            v23 = v11;
            v24 = 2112;
            v25 = identifier;
            v26 = 1024;
            v27 = intValue;
            _os_log_error_impl(&dword_243DC3000, v12, OS_LOG_TYPE_ERROR, "releaseForProcess: clearMonitorForPID failed %d on process:%@ (%d)", buf, 0x18u);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [trackedPIDs countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v5);
  }

  [processCopy setCpuMonitored:0];
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = self->_timeWindow;
  v8[0] = @"TimeWindow";
  v8[1] = @"Fatal";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_fatalMitigation];
  v8[2] = @"Threshold";
  cpuThreshold = self->_cpuThreshold;
  v9[1] = v3;
  v9[2] = cpuThreshold;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)applyToProcess:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "applyToProcess: Attempted applying thresholds on process:%@ with no current tracked pids", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end