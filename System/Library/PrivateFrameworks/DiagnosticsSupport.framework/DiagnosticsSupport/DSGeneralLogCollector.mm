@interface DSGeneralLogCollector
+ (id)latestRootLog;
+ (id)latestUserLog;
- (DSGeneralLogCollector)initWithLogIDs:(id)ds;
- (id)logFilesFromEnumerator:(id)enumerator;
- (void)enumerateLogLinesWithBlock:(id)block;
- (void)getLogFiles;
@end

@implementation DSGeneralLogCollector

+ (id)latestUserLog
{
  v2 = [@"/private/var/mobile/Library/Logs/AppleSupport" stringByAppendingPathComponent:@"general.log"];
  v3 = [DSGeneralLogFile alloc];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
  v5 = [(DSGeneralLogFile *)v3 initWithURL:v4];

  return v5;
}

+ (id)latestRootLog
{
  v2 = [@"/private/var/logs/AppleSupport" stringByAppendingPathComponent:@"general.log"];
  v3 = [DSGeneralLogFile alloc];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
  v5 = [(DSGeneralLogFile *)v3 initWithURL:v4];

  return v5;
}

- (DSGeneralLogCollector)initWithLogIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = DSGeneralLogCollector;
  v6 = [(DSGeneralLogCollector *)&v11 init];
  if (!dsCopy)
  {
    goto LABEL_7;
  }

  null = [MEMORY[0x277CBEB68] null];
  if ([dsCopy isEqual:null])
  {

LABEL_7:
    v9 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSGeneralLogCollector initWithLogIDs:v9];
    }

    v6 = 0;
    goto LABEL_10;
  }

  v8 = [dsCopy count];

  if (!v8)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    objc_storeStrong(&v6->_logIDs, ds);
    [(DSGeneralLogCollector *)v6 getLogFiles];
  }

LABEL_10:

  return v6;
}

- (void)getLogFiles
{
  v17[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"/private/var/logs/AppleSupport"];
  v6 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v7 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v6];
  [array addObjectsFromArray:v7];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"/private/var/mobile/Library/Logs/AppleSupport"];
  v10 = [defaultManager2 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v11 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v10];
  [array addObjectsFromArray:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"logStartDate" ascending:1];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [array sortedArrayUsingDescriptors:v13];
  logFiles = self->_logFiles;
  self->_logFiles = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)logFilesFromEnumerator:(id)enumerator
{
  v20 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = enumeratorCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [DSGeneralLogFile alloc];
        v12 = [(DSGeneralLogFile *)v11 initWithURL:v10, v15];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)enumerateLogLinesWithBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIDs = [(DSGeneralLogCollector *)self logIDs];
    *buf = 138412290;
    v21 = logIDs;
    _os_log_impl(&dword_248BD5000, v5, OS_LOG_TYPE_DEFAULT, "Requesting log lines for: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  logFiles = [(DSGeneralLogCollector *)self logFiles];
  v8 = [logFiles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(logFiles);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      logIDs2 = [(DSGeneralLogCollector *)self logIDs];
      LOBYTE(v12) = [v12 enumerateLogLinesWithIDs:logIDs2 usingBlock:blockCopy];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [logFiles countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end