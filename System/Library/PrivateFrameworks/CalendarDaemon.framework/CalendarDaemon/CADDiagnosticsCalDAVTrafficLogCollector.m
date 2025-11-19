@interface CADDiagnosticsCalDAVTrafficLogCollector
+ (BOOL)_shouldIncludeLogWithFilename:(id)a3;
- (id)_filteredLogsFromAllLogs:(id)a3 context:(id)a4;
- (id)_limitedLogsFromAllFiles:(id)a3 context:(id)a4;
- (id)_recentLogsFromAllFiles:(id)a3 context:(id)a4;
- (id)findAllLogFiles:(id)a3;
- (id)parseFilenameDates:(id)a3 context:(id)a4;
- (void)collect:(id)a3;
- (void)determineExpectedOutputFiles:(id)a3;
@end

@implementation CADDiagnosticsCalDAVTrafficLogCollector

- (void)determineExpectedOutputFiles:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CADDiagnosticsCalDAVTrafficLogCollector *)self findAllLogFiles:v4];
  [v4 log:{@"Found %lu traffic logs", objc_msgSend(v5, "count")}];
  v20 = v5;
  v6 = [(CADDiagnosticsCalDAVTrafficLogCollector *)self _filteredLogsFromAllLogs:v5 context:v4];
  [v4 log:{@"Including %lu traffic logs", objc_msgSend(v6, "count")}];
  v21 = self;
  objc_storeStrong(&self->_orderedInputURLs, v6);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * v12) lastPathComponent];
        if ([v4 redactLogs])
        {
          v14 = [v13 pathExtension];
          v15 = [v14 isEqualToString:@"gz"];

          if ((v15 & 1) == 0)
          {
            v16 = [v13 stringByAppendingPathExtension:@"gz"];

            v13 = v16;
          }
        }

        v17 = [v4 temporaryFileForName:v13];
        [v4 setStatus:0 forFile:v17];
        [(NSArray *)v7 addObject:v17];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  orderedOutputURLs = v21->_orderedOutputURLs;
  v21->_orderedOutputURLs = v7;

  v19 = *MEMORY[0x277D85DE8];
}

- (id)findAllLogFiles:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DACustomLogDirectory();
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v25];
  v7 = v25;

  if (!v6)
  {
    [v3 logError:{@"Unable to find traffic logs: %@", v7}];
  }

  v18 = v7;
  v19 = v4;
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([objc_opt_class() _shouldIncludeLogWithFilename:v14])
        {
          v15 = [v8 URLByAppendingPathComponent:v14];
          if (v15)
          {
            [v3 log:{@"Found log file %@", v14}];
            [v20 addObject:v15];
          }

          else
          {
            [v3 logError:{@"Unable to construct URL for file %@; skipping", v14}];
          }
        }

        else
        {
          [v3 log:{@"Ignoring irrelevant file %@", v14}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (BOOL)_shouldIncludeLogWithFilename:(id)a3
{
  v3 = a3;
  if (([v3 containsString:@"-latest"] & 1) != 0 || !objc_msgSend(v3, "hasPrefix:", @"CalDAVHTTPTraffic."))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 containsString:@"com.apple.remindd"] ^ 1;
  }

  return v4;
}

- (id)_filteredLogsFromAllLogs:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(CADDiagnosticsCalDAVTrafficLogCollector *)self limitedLogs])
  {
    [(CADDiagnosticsCalDAVTrafficLogCollector *)self _limitedLogsFromAllFiles:v7 context:v6];
  }

  else
  {
    [(CADDiagnosticsCalDAVTrafficLogCollector *)self _recentLogsFromAllFiles:v7 context:v6];
  }
  v8 = ;

  return v8;
}

- (id)_limitedLogsFromAllFiles:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mutableCopy];
  v9 = [(CADDiagnosticsCalDAVTrafficLogCollector *)self parseFilenameDates:v7 context:v6];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__CADDiagnosticsCalDAVTrafficLogCollector__limitedLogsFromAllFiles_context___block_invoke;
  v15 = &unk_27851AF80;
  v10 = v9;
  v16 = v10;
  [v8 sortUsingComparator:&v12];
  if ([v8 count] >= 0xB)
  {
    [v6 log:{@"Too many traffic logs; only including the most recent %i", 10, v12, v13, v14, v15}];
    [v8 removeObjectsInRange:{10, objc_msgSend(v8, "count") - 10}];
  }

  return v8;
}

uint64_t __76__CADDiagnosticsCalDAVTrafficLogCollector__limitedLogsFromAllFiles_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v10 = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v13 = v12;

  v14 = [v13 compare:v10];
  return v14;
}

- (id)_recentLogsFromAllFiles:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = [MEMORY[0x277CBEAA8] date];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__CADDiagnosticsCalDAVTrafficLogCollector__recentLogsFromAllFiles_context___block_invoke;
  v16[3] = &unk_27851B2E8;
  v17 = v5;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v12 = v5;
  [v7 enumerateObjectsUsingBlock:v16];

  v13 = v19;
  v14 = v10;

  return v10;
}

void __75__CADDiagnosticsCalDAVTrafficLogCollector__recentLogsFromAllFiles_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v4 = *MEMORY[0x277CBE7B0];
  v13 = 0;
  v5 = [v3 getResourceValue:&v14 forKey:v4 error:&v13];
  v6 = v14;
  v7 = v13;
  if (v5)
  {
    [*(a1 + 40) timeIntervalSinceDate:v6];
    if (v8 <= 604800.0)
    {
      [*(a1 + 48) addObject:v3];
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v10 = [v3 path];
    [v9 log:{@"Excluding log %@ because it is too old", v10}];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = v6;
    v10 = [v3 path];
    [v11 logError:{@"Failed to get last modified date for file %@ (%@). Skipping it.", v10, v7}];
  }

LABEL_7:
}

- (id)parseFilenameDates:(id)a3 context:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = a4;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateStyle:1];
  v23 = v6;
  [v6 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZZZ"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 lastPathComponent];
        v13 = [v12 rangeOfString:@".log"];
        v14 = [v12 rangeOfString:@"_"];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL || v14 >= v13)
        {
          [v25 logError:{@"Unexpected log file name: %@", v12}];
        }

        else
        {
          v17 = [v12 substringWithRange:{v14 + 1, v13 + ~v14}];
          v18 = [v23 dateFromString:v17];
          v19 = v18;
          if (v18)
          {
            [v22 setObject:v18 forKeyedSubscript:v11];
          }

          else
          {
            [v25 logError:{@"Couldn't parse %@ into a date", v17}];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)collect:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_orderedInputURLs;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    do
    {
      v9 = 0;
      v19 = v6;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [(NSArray *)self->_orderedOutputURLs objectAtIndexedSubscript:v7];
        if ([v4 redactLogs])
        {
          if ([CalDAVTrafficLogScrubber redactLog:v10 toOutputFile:v11 context:v4])
          {
            goto LABEL_11;
          }
        }

        else
        {
          v12 = v8;
          v13 = self;
          v14 = [MEMORY[0x277CCAA00] defaultManager];
          v21 = 0;
          v15 = [v14 copyItemAtURL:v10 toURL:v11 error:&v21];
          v16 = v21;

          if (v15)
          {

            self = v13;
            v8 = v12;
            v6 = v19;
LABEL_11:
            [v4 setStatus:2 forFile:v11];
            goto LABEL_13;
          }

          [v4 logError:{@"Failed to copy log from %@ to %@: %@", v10, v11, v16}];

          self = v13;
          v8 = v12;
          v6 = v19;
        }

LABEL_13:
        v17 = [v4 canceled];

        if (v17)
        {
          goto LABEL_16;
        }

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

@end