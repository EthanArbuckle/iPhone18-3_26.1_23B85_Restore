@interface DSGeneralLogCollector
+ (id)latestRootLog;
+ (id)latestUserLog;
- (DSGeneralLogCollector)initWithLogIDs:(id)a3;
- (id)logFilesFromEnumerator:(id)a3;
- (void)enumerateLogLinesWithBlock:(id)a3;
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

- (DSGeneralLogCollector)initWithLogIDs:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DSGeneralLogCollector;
  v6 = [(DSGeneralLogCollector *)&v11 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBEB68] null];
  if ([v5 isEqual:v7])
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

  v8 = [v5 count];

  if (!v8)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    objc_storeStrong(&v6->_logIDs, a3);
    [(DSGeneralLogCollector *)v6 getLogFiles];
  }

LABEL_10:

  return v6;
}

- (void)getLogFiles
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"/private/var/logs/AppleSupport"];
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v7 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v6];
  [v3 addObjectsFromArray:v7];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"/private/var/mobile/Library/Logs/AppleSupport"];
  v10 = [v8 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v11 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v10];
  [v3 addObjectsFromArray:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"logStartDate" ascending:1];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [v3 sortedArrayUsingDescriptors:v13];
  logFiles = self->_logFiles;
  self->_logFiles = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)logFilesFromEnumerator:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)enumerateLogLinesWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DSGeneralLogCollector *)self logIDs];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_248BD5000, v5, OS_LOG_TYPE_DEFAULT, "Requesting log lines for: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(DSGeneralLogCollector *)self logFiles];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      v13 = [(DSGeneralLogCollector *)self logIDs];
      LOBYTE(v12) = [v12 enumerateLogLinesWithIDs:v13 usingBlock:v4];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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