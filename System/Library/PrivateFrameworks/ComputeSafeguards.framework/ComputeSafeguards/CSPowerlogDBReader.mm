@interface CSPowerlogDBReader
+ (CSPowerlogDBReader)sharedInstance;
- (double)getTotalCPUTimeWithStartDate:(id)date andEndDate:(id)endDate;
- (id)_init;
- (id)getAPWakeIntervalListWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getCPUBasedIntervalListMapWithStartDate:(id)date andEndDate:(id)endDate andAllowListCoalitions:(id)coalitions andDenyListCoalitions:(id)listCoalitions andDaemonOnly:(BOOL)only andMetricType:(int)type;
- (id)getDeviceBootTime;
- (id)getMonotonicTime:(id)time;
- (id)getPowerExceptionsRecordsWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getSystemTime:(id)time;
- (id)getTotalBatteryDrainWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getUnpluggedIntervalListWithStartDate:(id)date andEndDate:(id)endDate;
- (void)closeConnection;
- (void)openConnection;
@end

@implementation CSPowerlogDBReader

+ (CSPowerlogDBReader)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CSPowerlogDBReader sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_0;

  return v3;
}

uint64_t __36__CSPowerlogDBReader_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_0 = [[CSPowerlogDBReader alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CSPowerlogDBReader;
  v2 = [(CSPowerlogDBReader *)&v6 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSPowerlogDBReader"];
    logger = v2->_logger;
    v2->_logger = v3;
  }

  return v2;
}

- (void)openConnection
{
  v3 = objc_alloc(MEMORY[0x277D3F210]);
  containerPath = [MEMORY[0x277D3F258] containerPath];
  v4 = [containerPath stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v5 = [v3 initWithFilePath:v4];
  conn = self->_conn;
  self->_conn = v5;
}

- (void)closeConnection
{
  [(PLSQLiteConnection *)self->_conn closeConnection];
  conn = self->_conn;
  self->_conn = 0;
}

- (id)getTotalBatteryDrainWithStartDate:(id)date andEndDate:(id)endDate
{
  v20 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];

  v9 = MEMORY[0x277CCACA8];
  [v7 timeIntervalSince1970];
  v11 = v10;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT timestamp AS %@, Level AS %@, energyConsumed AS %@                             FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f ORDER BY timestamp DESC", @"Timestamp", @"BatteryDrain", @"EnergyConsumed", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getTotalCPUDrainBetweenTimeInterval Query %@", buf, 0xCu);
  }

  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (double)getTotalCPUTimeWithStartDate:(id)date andEndDate:(id)endDate
{
  v41 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v33 = endDateCopy;
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v9 = MEMORY[0x277CCACA8];
  v32 = v7;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v31 = v8;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT sum (cpu_time) AS %@                              FROM PLCoalitionAgent_EventInterval_CoalitionInterval where timestamp >= %f AND timestamp <= %f", @"Total", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getTotalCPUTimeWithStartDate Query %@", buf, 0xCu);
  }

  v30 = v13;
  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"Total"];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 objectForKeyedSubscript:@"Total"];
          null = [MEMORY[0x277CBEB68] null];

          if (v24 != null)
          {
            v26 = [v21 objectForKeyedSubscript:@"Total"];
            [v26 doubleValue];
            v19 = v27;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0.0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)getCPUBasedIntervalListMapWithStartDate:(id)date andEndDate:(id)endDate andAllowListCoalitions:(id)coalitions andDenyListCoalitions:(id)listCoalitions andDaemonOnly:(BOOL)only andMetricType:(int)type
{
  onlyCopy = only;
  v102 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  coalitionsCopy = coalitions;
  listCoalitionsCopy = listCoalitions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v80 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v79 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  if (onlyCopy)
  {
    v86 = onlyCopy;
    v88 = dictionary;
    v17 = endDateCopy;
    v18 = dateCopy;
    v90 = [MEMORY[0x277CBEB58] set];
    v19 = [(PLSQLiteConnection *)self->_conn performQuery:@"select distinct Identifier as bundleId from PLApplicationAgent_EventForward_Application"];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v95 objects:v101 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v96;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v96 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v95 + 1) + 8 * i) objectForKeyedSubscript:@"bundleId"];
          [v90 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v95 objects:v101 count:16];
      }

      while (v21);
    }

    dateCopy = v18;
    endDateCopy = v17;
    dictionary = v88;
    onlyCopy = v86;
  }

  else
  {
    v90 = 0;
  }

  v25 = type - 3;
  if (type - 3) < 6 && ((0x33u >> v25))
  {
    v26 = off_278DF5480[v25];
    v27 = off_278DF54B0[v25];
    v28 = MEMORY[0x277CCACA8];
    [v80 timeIntervalSince1970];
    v30 = v29;
    [v80 timeIntervalSince1970];
    v32 = v31;
    [v79 timeIntervalSince1970];
    v34 = v33;
    [v79 timeIntervalSince1970];
    v36 = v35;
    [v80 timeIntervalSince1970];
    v38 = v37;
    [v79 timeIntervalSince1970];
    v84 = v26;
    v40 = [v28 stringWithFormat:@"        SELECT LaunchdName AS %@, LaunchdCoalitionID AS %@, BundleId AS %@, CASE WHEN timestamp > %f THEN timestamp ELSE %f END AS %@, CASE WHEN timestampEnd < %f THEN timestampEnd ELSE %f END AS %@, %@ AS %@         FROM PLCoalitionAgent_EventInterval_CoalitionInterval WHERE timestampEnd >= %f AND timestamp <= %f", @"LaunchdName", @"LaunchdCoalitionID", @"BundleID", v30, v32, @"TimestampStart", v34, v36, @"TimestampEnd", v27, v26, v38, v39];
    if (coalitionsCopy && [coalitionsCopy count])
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = [coalitionsCopy componentsJoinedByString:{@", "}];
      v43 = [v41 stringWithFormat:@" AND LaunchdName in (\"%@\"", v42];
      v44 = [v40 stringByAppendingString:v43];

      v40 = v44;
    }

    v77 = endDateCopy;
    v78 = dateCopy;
    if (listCoalitionsCopy && [listCoalitionsCopy count])
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = [listCoalitionsCopy componentsJoinedByString:{@", "}];
      v47 = [v45 stringWithFormat:@" AND LaunchdName not in (\"%@\"", v46];
      v48 = [v40 stringByAppendingString:v47];

      v40 = v48;
    }

    v49 = [v40 stringByAppendingString:@" ORDER by timestamp"];

    v76 = v49;
    [(PLSQLiteConnection *)self->_conn performQuery:v49];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v94 = 0u;
    v89 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v89)
    {
      if (v90)
      {
        v50 = onlyCopy;
      }

      else
      {
        v50 = 0;
      }

      v87 = v50;
      v85 = *v92;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v92 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v91 + 1) + 8 * j);
          if (v87)
          {
            v53 = [*(*(&v91 + 1) + 8 * j) objectForKeyedSubscript:@"BundleID"];
            v54 = [v90 containsObject:v53];

            if (v54)
            {
              continue;
            }
          }

          v55 = MEMORY[0x277CCACA8];
          v56 = [v52 valueForKey:@"LaunchdName"];
          v57 = [v52 valueForKey:@"LaunchdCoalitionID"];
          v58 = [v55 stringWithFormat:@"%@:%@", v56, v57];

          v59 = [CSInterval alloc];
          v60 = MEMORY[0x277CBEAA8];
          v61 = [v52 valueForKey:@"TimestampStart"];
          [v61 doubleValue];
          v62 = [v60 dateWithTimeIntervalSince1970:?];
          v63 = MEMORY[0x277CBEAA8];
          v64 = [v52 valueForKey:@"TimestampEnd"];
          [v64 doubleValue];
          v65 = [v63 dateWithTimeIntervalSince1970:?];
          [v52 valueForKey:v84];
          v67 = v66 = dictionary;
          [v67 doubleValue];
          v68 = [(CSInterval *)v59 initWithStartTime:v62 endTime:v65 value:?];

          dictionary = v66;
          v69 = [v66 objectForKey:v58];

          if (v69)
          {
            v70 = [v66 objectForKeyedSubscript:v58];
            [v70 addInterval:v68];
          }

          else
          {
            v71 = [CSIntervalList alloc];
            v99 = v68;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
            v72 = [(CSIntervalList *)v71 initWithIntervals:v70];
            [v66 setObject:v72 forKey:v58];
          }
        }

        v89 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v89);
    }

    endDateCopy = v77;
    dateCopy = v78;
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [CSPowerlogDBReader getCPUBasedIntervalListMapWithStartDate:type andEndDate:logger andAllowListCoalitions:? andDenyListCoalitions:? andDaemonOnly:? andMetricType:?];
    }
  }

  v74 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)getUnpluggedIntervalListWithStartDate:(id)date andEndDate:(id)endDate
{
  v56 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = [CSIntervalList alloc];
  v47 = [(CSIntervalList *)v8 initWithIntervals:MEMORY[0x277CBEBF8]];
  v9 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v10 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v11 = MEMORY[0x277CCACA8];
  [v9 timeIntervalSince1970];
  v13 = v12;
  v48 = v10;
  [v10 timeIntervalSince1970];
  v15 = [v11 stringWithFormat:@"SELECT timestamp, ExternalConnected FROM PLBatteryAgent_EventBackward_Battery WHERE timestamp >= %f - 300 AND timestamp < %f ORDER by timestamp", v13, v14];
  v16 = [(PLSQLiteConnection *)self->_conn performQuery:v15];
  v17 = v9;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v16;
  v18 = [v16 countByEnumeratingWithState:&v51 objects:v55 count:16];
  v19 = v17;
  if (!v18)
  {
    goto LABEL_34;
  }

  v20 = v18;
  v44 = v15;
  v45 = endDateCopy;
  v46 = dateCopy;
  v21 = 0;
  intValue = 1;
  v23 = *v52;
  v50 = v17;
  v19 = v17;
  do
  {
    v24 = 0;
    v25 = v21;
    do
    {
      if (*v52 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v51 + 1) + 8 * v24);

      v26 = [v21 valueForKey:@"ExternalConnected"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v28 = MEMORY[0x277CBEAA8];
        v29 = [v21 valueForKey:@"timestamp"];
        [v29 doubleValue];
        v30 = [v28 dateWithTimeIntervalSince1970:?];

        if ([v30 compare:v50] == 1)
        {
          if ([v30 compare:v48] == 1)
          {
            v31 = v48;

            v30 = v31;
          }

          if (!intValue)
          {
            v32 = v47;
            if (![(CSIntervalList *)v47 count])
            {
              goto LABEL_14;
            }

            lastInterval = [(CSIntervalList *)v47 lastInterval];
            endTime = [(CSInterval *)lastInterval endTime];

            if (endTime == v19)
            {
              [(CSInterval *)lastInterval setEndTime:v30];
            }

            else
            {

              v32 = v47;
LABEL_14:
              v35 = [CSInterval alloc];
              if ([v19 compare:v50] == 1)
              {
                v36 = v19;
              }

              else
              {
                v36 = v50;
              }

              lastInterval = [(CSInterval *)v35 initWithStartTime:v36 endTime:v30];
              [(CSIntervalList *)v32 addInterval:lastInterval];
            }
          }
        }

        v37 = [v21 valueForKey:@"ExternalConnected"];
        intValue = [v37 intValue];

        v19 = v30;
      }

      ++v24;
      v25 = v21;
    }

    while (v20 != v24);
    v20 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v20);

  if (!intValue)
  {
    if (![(CSIntervalList *)v47 count])
    {
      goto LABEL_27;
    }

    lastInterval2 = [(CSIntervalList *)v47 lastInterval];
    endTime2 = [(CSInterval *)lastInterval2 endTime];

    if (endTime2 == v19)
    {
      [(CSInterval *)lastInterval2 setEndTime:v48];
    }

    else
    {

LABEL_27:
      v40 = [CSInterval alloc];
      if ([v19 compare:v50] == 1)
      {
        v41 = v19;
      }

      else
      {
        v41 = v50;
      }

      lastInterval2 = [(CSInterval *)v40 initWithStartTime:v41 endTime:v48];
      [(CSIntervalList *)v47 addInterval:lastInterval2];
    }
  }

  endDateCopy = v45;
  dateCopy = v46;
  v15 = v44;
  v17 = v50;
LABEL_34:

  v42 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)getAPWakeIntervalListWithStartDate:(id)date andEndDate:(id)endDate
{
  v51 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = [CSIntervalList alloc];
  v45 = [(CSIntervalList *)v8 initWithIntervals:MEMORY[0x277CBEBF8]];
  v9 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v10 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v11 = MEMORY[0x277CCACA8];
  [v10 timeIntervalSince1970];
  v13 = v12;
  [v9 timeIntervalSince1970];
  v15 = [v11 stringWithFormat:@"SELECT timestamp, Event FROM PLSleepWakeAgent_EventForward_PowerState WHERE timestamp <= %f AND timestamp >= %f ORDER by ID", v13, v14];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [CSPowerlogDBReader getAPWakeIntervalListWithStartDate:v15 andEndDate:logger];
  }

  v17 = [(PLSQLiteConnection *)self->_conn performQuery:v15];
  if (![v17 count])
  {
    v18 = [[CSInterval alloc] initWithStartTime:v9 endTime:v10];
    [(CSIntervalList *)v45 addInterval:v18];
    goto LABEL_31;
  }

  v18 = v9;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  lastInterval2 = v17;
  v20 = [(CSInterval *)lastInterval2 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v40 = v17;
  v41 = v15;
  v42 = v9;
  v43 = endDateCopy;
  v44 = dateCopy;
  v22 = *v47;
  v23 = -1;
  do
  {
    v24 = 0;
    v25 = v18;
    do
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(lastInterval2);
      }

      v26 = *(*(&v46 + 1) + 8 * v24);
      v27 = MEMORY[0x277CBEAA8];
      v28 = [v26 valueForKey:@"timestamp"];
      [v28 doubleValue];
      v18 = [v27 dateWithTimeIntervalSince1970:?];

      if ([(CSInterval *)v18 compare:v10]== 1)
      {
        v29 = v10;

        v18 = v29;
      }

      v30 = [v26 valueForKey:@"Event"];
      [v30 doubleValue];
      v32 = v31;

      v33 = v32 != 0.0;
      if (v23 != -1)
      {
        v33 = v23 == 1;
      }

      if (v33)
      {
        if (![(CSIntervalList *)v45 count])
        {
          goto LABEL_17;
        }

        lastInterval = [(CSIntervalList *)v45 lastInterval];
        endTime = [(CSInterval *)lastInterval endTime];

        if (endTime == v25)
        {
          [(CSInterval *)lastInterval setEndTime:v18];
        }

        else
        {

LABEL_17:
          lastInterval = [[CSInterval alloc] initWithStartTime:v25 endTime:v18];
          [(CSIntervalList *)v45 addInterval:lastInterval];
        }
      }

      v23 = v32 != 4.0;

      ++v24;
      v25 = v18;
    }

    while (v21 != v24);
    v21 = [(CSInterval *)lastInterval2 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v21);

  v15 = v41;
  if (v32 == 4.0)
  {
    endDateCopy = v43;
    dateCopy = v44;
    v9 = v42;
    v17 = v40;
  }

  else
  {
    v36 = v45;
    endDateCopy = v43;
    dateCopy = v44;
    v9 = v42;
    v17 = v40;
    if (![(CSIntervalList *)v45 count])
    {
      goto LABEL_26;
    }

    lastInterval2 = [(CSIntervalList *)v45 lastInterval];
    endTime2 = [(CSInterval *)lastInterval2 endTime];

    if (endTime2 == v18)
    {
      [(CSInterval *)lastInterval2 setEndTime:v10];
    }

    else
    {

      v36 = v45;
LABEL_26:
      lastInterval2 = [[CSInterval alloc] initWithStartTime:v18 endTime:v10];
      [(CSIntervalList *)v36 addInterval:lastInterval2];
    }

LABEL_30:
  }

LABEL_31:

  v38 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)getPowerExceptionsRecordsWithStartDate:(id)date andEndDate:(id)endDate
{
  v76 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v67 = endDateCopy;
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v9 = MEMORY[0x277CCACA8];
  v66 = v7;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v65 = v8;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT *                             FROM XPCMetrics_CPUViolations_1_2 where timestamp >= %f AND timestamp <= %f", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getPowerExceptionsRecordsWithStartDate Query %@", buf, 0xCu);
  }

  v64 = v13;
  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];
  array = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v69 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"PUUID"];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 objectForKeyedSubscript:@"PUUID"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v26 = [v21 objectForKeyedSubscript:@"MitigationType"];
            if (v26)
            {
              v27 = v26;
              v28 = [v21 objectForKeyedSubscript:@"MitigationType"];
              objc_opt_class();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                v30 = [v21 objectForKeyedSubscript:@"MitigationReason"];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v21 objectForKeyedSubscript:@"MitigationReason"];
                  objc_opt_class();
                  v33 = objc_opt_isKindOfClass();

                  if (v33)
                  {
                    v34 = [v21 objectForKeyedSubscript:@"FatalCount"];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = [v21 objectForKeyedSubscript:@"FatalCount"];
                      objc_opt_class();
                      v37 = objc_opt_isKindOfClass();

                      if (v37)
                      {
                        v38 = [v21 objectForKeyedSubscript:@"NonFatalCount"];
                        if (v38)
                        {
                          v39 = v38;
                          v40 = [v21 objectForKeyedSubscript:@"NonFatalCount"];
                          objc_opt_class();
                          v41 = objc_opt_isKindOfClass();

                          if (v41)
                          {
                            v42 = [v21 objectForKeyedSubscript:@"PID"];
                            if (v42)
                            {
                              v43 = v42;
                              v44 = [v21 objectForKeyedSubscript:@"PID"];
                              objc_opt_class();
                              v45 = objc_opt_isKindOfClass();

                              if (v45)
                              {
                                v46 = [v21 objectForKeyedSubscript:@"CoalitionID"];
                                if (v46)
                                {
                                  v47 = v46;
                                  v48 = [v21 objectForKeyedSubscript:@"CoalitionID"];
                                  objc_opt_class();
                                  v49 = objc_opt_isKindOfClass();

                                  if (v49)
                                  {
                                    v50 = [v21 objectForKeyedSubscript:@"timestampEnd"];
                                    if (v50)
                                    {
                                      v51 = v50;
                                      v52 = [v21 objectForKeyedSubscript:@"timestampEnd"];
                                      objc_opt_class();
                                      v53 = objc_opt_isKindOfClass();

                                      if (v53)
                                      {
                                        v54 = [v21 objectForKeyedSubscript:@"TimeWindowSize"];
                                        if (v54)
                                        {
                                          v55 = v54;
                                          v56 = [v21 objectForKeyedSubscript:@"TimeWindowSize"];
                                          objc_opt_class();
                                          v57 = objc_opt_isKindOfClass();

                                          if (v57)
                                          {
                                            v58 = [v21 objectForKeyedSubscript:@"IssueType"];
                                            if (v58)
                                            {
                                              v59 = v58;
                                              v60 = [v21 objectForKeyedSubscript:@"IssueType"];
                                              objc_opt_class();
                                              v61 = objc_opt_isKindOfClass();

                                              if (v61)
                                              {
                                                [array addObject:v21];
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v18);
  }

  v62 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)getMonotonicTime:(id)time
{
  timeCopy = time;
  v5 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v7 = [v5 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp + system <= %f ORDER BY timestamp DESC LIMIT 1", v6];;
  v8 = [(PLSQLiteConnection *)self->_conn performQuery:v7];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"system"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [timeCopy dateByAddingTimeInterval:-v12];
LABEL_3:
    v14 = v13;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp + system > %f ORDER BY timestamp LIMIT 1", v16];;
  v18 = [(PLSQLiteConnection *)self->_conn performQuery:v17];
  if (![v18 count])
  {

    v13 = timeCopy;
    goto LABEL_3;
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"system"];
  [v20 doubleValue];
  v22 = v21;

  v14 = [timeCopy dateByAddingTimeInterval:-v22];

LABEL_6:

  return v14;
}

- (id)getSystemTime:(id)time
{
  timeCopy = time;
  v5 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v7 = [v5 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp <= %f ORDER BY timestamp DESC LIMIT 1", v6];;
  v8 = [(PLSQLiteConnection *)self->_conn performQuery:v7];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"system"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [timeCopy dateByAddingTimeInterval:v12];
LABEL_3:
    v14 = v13;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp > %f ORDER BY timestamp LIMIT 1", v16];;
  v18 = [(PLSQLiteConnection *)self->_conn performQuery:v17];
  if (![v18 count])
  {

    v13 = timeCopy;
    goto LABEL_3;
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"system"];
  [v20 doubleValue];
  v22 = v21;

  v14 = [timeCopy dateByAddingTimeInterval:v22];

LABEL_6:

  return v14;
}

- (id)getDeviceBootTime
{
  if (getDeviceBootTime_onceToken != -1)
  {
    [CSPowerlogDBReader getDeviceBootTime];
  }

  v3 = getDeviceBootTime_bootTime;

  return v3;
}

void __39__CSPowerlogDBReader_getDeviceBootTime__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  *v6 = 0x1500000001;
  v5 = 16;
  if (sysctl(v6, 2u, &v3, &v5, 0, 0) != -1)
  {
    v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4 / 1000000.0 + v3];
    v1 = getDeviceBootTime_bootTime;
    getDeviceBootTime_bootTime = v0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)getProcessesForCoalitionID:(void *)a3 withStartDate:(void *)a4 andEndDate:andDeviceBootDate:andCPURatio:.cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"ProcessName"];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_0_1(&dword_243DC3000, v9, v10, "Fail to get last PID for process name %@");
}

- (void)getCPUBasedIntervalListMapWithStartDate:(int)a1 andEndDate:(NSObject *)a2 andAllowListCoalitions:andDenyListCoalitions:andDaemonOnly:andMetricType:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "Unrecognized metric type passed to getCPUBasedIntervalListMapWithStartDate: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAPWakeIntervalListWithStartDate:(uint64_t)a1 andEndDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "getAPWakeIntervalListWithStartDate Query:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end