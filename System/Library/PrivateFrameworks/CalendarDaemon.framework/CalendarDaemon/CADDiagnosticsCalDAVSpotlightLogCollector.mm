@interface CADDiagnosticsCalDAVSpotlightLogCollector
- (id)findAllLogFiles:(id)a3;
- (id)parseFilenameDates:(id)a3 context:(id)a4;
- (id)sortAndTrimLogFiles:(id)a3 context:(id)a4;
- (void)collect:(id)a3;
- (void)determineExpectedOutputFiles:(id)a3;
@end

@implementation CADDiagnosticsCalDAVSpotlightLogCollector

- (void)determineExpectedOutputFiles:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self findAllLogFiles:v4];
  [v4 log:{@"Found %lu spotlight logs", objc_msgSend(v5, "count")}];
  v6 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self sortAndTrimLogFiles:v5 context:v4];
  [v4 log:{@"Including %lu spotlight logs", objc_msgSend(v6, "count")}];
  objc_storeStrong(&self->_orderedInputURLs, v6);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) lastPathComponent];
        v14 = [v4 temporaryFileForName:v13];
        [v4 setStatus:0 forFile:v14];
        [(NSArray *)v7 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  orderedOutputURLs = self->_orderedOutputURLs;
  self->_orderedOutputURLs = v7;

  v16 = *MEMORY[0x277D85DE8];
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
    [v3 logError:{@"Unable to find spotlight logs: %@", v7}];
  }

  v17 = v7;
  v18 = v4;
  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 hasPrefix:@"SpotlightLog"] && (objc_msgSend(v13, "containsString:", @"-latest") & 1) == 0)
        {
          v14 = [v20 URLByAppendingPathComponent:v13];
          if (v14)
          {
            [v3 log:{@"Found log file %@", v13}];
            [v19 addObject:v14];
          }

          else
          {
            [v3 logError:{@"Unable to construct URL for file %@; skipping", v13}];
          }
        }

        else
        {
          [v3 log:{@"Ignoring irrelevant file %@", v13}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)sortAndTrimLogFiles:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mutableCopy];
  v9 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self parseFilenameDates:v7 context:v6];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __73__CADDiagnosticsCalDAVSpotlightLogCollector_sortAndTrimLogFiles_context___block_invoke;
  v15 = &unk_27851AF80;
  v10 = v9;
  v16 = v10;
  [v8 sortUsingComparator:&v12];
  if ([v8 count] >= 0x15)
  {
    [v6 log:{@"Too many spotlight logs; only including the most recent %i", 20, v12, v13, v14, v15}];
    [v8 removeObjectsInRange:{20, objc_msgSend(v8, "count") - 20}];
  }

  return v8;
}

uint64_t __73__CADDiagnosticsCalDAVSpotlightLogCollector_sortAndTrimLogFiles_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = self;
  obj = self->_orderedInputURLs;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = [(NSArray *)v18->_orderedOutputURLs objectAtIndexedSubscript:v7];
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = 0;
      v13 = [v12 copyItemAtURL:v10 toURL:v11 error:&v19];
      v14 = v19;

      if (v13)
      {
        [v4 setStatus:2 forFile:v11];
      }

      else
      {
        [v4 logError:{@"Failed to copy log from %@ to %@: %@", v10, v11, v14}];
      }

      v15 = [v4 canceled];

      if (v15)
      {
        break;
      }

      ++v7;
      if (v6 == ++v9)
      {
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end