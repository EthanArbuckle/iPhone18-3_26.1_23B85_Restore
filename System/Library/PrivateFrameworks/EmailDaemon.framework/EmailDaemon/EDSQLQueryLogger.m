@interface EDSQLQueryLogger
+ (id)_queryPerformanceLogDirectory;
+ (id)log;
- (BOOL)_createFileIfNeeded:(id)a3;
- (EDSQLQueryLogger)init;
- (id)_bucketTransactionLabels:(id)a3;
- (id)_createQueryCountLogFilePath;
- (id)_createQueryLogDirectoryPath;
- (id)_createQueryLogFilePath;
- (id)_createQueryStatisticsDictionary:(id)a3 queryCountByTransactionLabel:(id)a4 queryCountNum:(unint64_t)a5 firstRowExecutionTimeStats:(id)a6 totalExecutionTimeStats:(id)a7 timePerRowExecutionTimeStats:(id)a8;
- (id)_sortQueryCountDict;
- (void)_createQueryCountDict:(id)a3;
- (void)_createQueryLogDirectoryPath;
- (void)_preprocessQueryInfo;
- (void)_recreateFile:(id)a3;
- (void)_removeFile:(id)a3;
- (void)_writeQueryStatistics:(id)a3;
- (void)countQueryString:(id)a3 executionTime:(double)a4;
- (void)flushLogs;
- (void)logQueryString:(id)a3 executionTime:(double)a4 firstRowExecutionTime:(double)a5 numberOfRows:(unint64_t)a6;
- (void)logQueryString:(id)a3 label:(id)a4 firstRowExecutionTimeInNanoseconds:(unint64_t)a5 totalExecutionTimeInNanoseconds:(unint64_t)a6 numberOfRows:(unint64_t)a7;
- (void)logUniqueQueryString:(id)a3;
- (void)submitQueryLogData;
@end

@implementation EDSQLQueryLogger

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__EDSQLQueryLogger_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_99 != -1)
  {
    dispatch_once(&log_onceToken_99, block);
  }

  v2 = log_log_99;

  return v2;
}

void __23__EDSQLQueryLogger_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_99;
  log_log_99 = v1;
}

- (EDSQLQueryLogger)init
{
  v27.receiver = self;
  v27.super_class = EDSQLQueryLogger;
  v2 = [(EDSQLQueryLogger *)&v27 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EFSQLPreparedStatement" qualityOfService:17];
    queryLoggingScheduler = v2->_queryLoggingScheduler;
    v2->_queryLoggingScheduler = v3;

    v5 = [(EDSQLQueryLogger *)v2 _createQueryLogDirectoryPath];
    queryLogDirectoryPath = v2->_queryLogDirectoryPath;
    v2->_queryLogDirectoryPath = v5;

    v7 = [(EDSQLQueryLogger *)v2 _createQueryLogFilePath];
    queryLogFilePath = v2->_queryLogFilePath;
    v2->_queryLogFilePath = v7;

    [(EDSQLQueryLogger *)v2 _createFileIfNeeded:v2->_queryLogFilePath];
    v9 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v2->_queryLogFilePath];
    rawQueryLogInputFileHandle = v2->_rawQueryLogInputFileHandle;
    v2->_rawQueryLogInputFileHandle = v9;

    v11 = [(EDSQLQueryLogger *)v2 _createQueryCountLogFilePath];
    queryCountLogFilePath = v2->_queryCountLogFilePath;
    v2->_queryCountLogFilePath = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queryStatisticsArray = v2->_queryStatisticsArray;
    v2->_queryStatisticsArray = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryCountDict = v2->_queryCountDict;
    v2->_queryCountDict = v15;

    if (_os_feature_enabled_impl())
    {
      v2->_queryLoggingEnabled = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v17 = objc_alloc(MEMORY[0x1E699B880]);
      v18 = +[EDSQLQueryLogger _queryPerformanceLogDirectory];
      v19 = [v17 initWithBaseFilename:@"MailPerformance" directory:v18];
      performanceLogger = v2->_performanceLogger;
      v2->_performanceLogger = v19;
    }

    v21 = [MEMORY[0x1E699B7B0] currentDevice];
    if (![v21 isInternal])
    {
      goto LABEL_9;
    }

    v22 = _os_feature_enabled_impl();

    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E699B880]);
      v21 = +[EDSQLQueryLogger _queryPerformanceLogDirectory];
      v24 = [v23 initWithBaseFilename:@"MailUniqueQuery" directory:v21];
      uniqueQueryLogger = v2->_uniqueQueryLogger;
      v2->_uniqueQueryLogger = v24;

LABEL_9:
    }
  }

  return v2;
}

- (void)logQueryString:(id)a3 label:(id)a4 firstRowExecutionTimeInNanoseconds:(unint64_t)a5 totalExecutionTimeInNanoseconds:(unint64_t)a6 numberOfRows:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  if (self->_queryLoggingEnabled)
  {
    v14 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke;
    v15[3] = &unk_1E8257D00;
    v16 = v13;
    v19 = a5;
    v20 = a6;
    v21 = a7;
    v17 = v12;
    v18 = self;
    [v14 performBlock:v15];
  }
}

void __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke(uint64_t a1)
{
  v17[6] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v2 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke_cold_1();
    }
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E699B858] redactedQueryStringForQueryString:*(a1 + 40)];
  [v3 setObject:v4 forKeyedSubscript:@"redactedQuery"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v3 setObject:v5 forKeyedSubscript:@"firstRowExecutionTime"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  [v3 setObject:v6 forKeyedSubscript:@"totalExecutionTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  [v3 setObject:v7 forKeyedSubscript:@"numberOfRows"];

  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"transactionLabel"];
  v17[0] = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:v17];
  v9 = v17[0];
  if (!v8)
  {
    v10 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke_cold_2();
    }
  }

  v11 = [*(a1 + 48) rawQueryLogInputFileHandle];
  v16 = 0;
  v12 = [v11 writeData:v8 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v14 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v13 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke_cold_3();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_createQueryLogDirectoryPath
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"QueryPerformance" isDirectory:1 relativeToURL:v2];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v12[0] = 0;
    [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v12];
    v7 = v12[0];
    if (v7)
    {
      v8 = +[EDSQLQueryLogger log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v3 path];
        objc_claimAutoreleasedReturnValue();
        [EDSQLQueryLogger _createQueryLogDirectoryPath];
      }
    }
  }

  v9 = [v3 path];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_createQueryLogFilePath
{
  v2 = [(EDSQLQueryLogger *)self queryLogDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"Logs"];

  return v3;
}

- (id)_createQueryCountLogFilePath
{
  v2 = [(EDSQLQueryLogger *)self queryLogDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"queryCountLogs_"];

  v4 = EFSystemBuildVersion();
  v5 = [v3 stringByAppendingString:v4];

  v6 = [v5 stringByAppendingPathExtension:@"json.compressed"];

  return v6;
}

- (BOOL)_createFileIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];
  if ((v5 & 1) == 0)
  {
    [v4 createFileAtPath:v3 contents:0 attributes:0];
  }

  return v5 ^ 1;
}

- (void)_recreateFile:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v4 fileExistsAtPath:v6])
  {
    [(EDSQLQueryLogger *)self _removeFile:v6];
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 createFileAtPath:v6 contents:0 attributes:0];
}

- (void)_removeFile:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v9[0] = 0;
  v5 = [v4 removeItemAtPath:v3 error:v9];
  v6 = v9[0];

  if ((v5 & 1) == 0)
  {
    v7 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDSQLQueryLogger _removeFile:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)submitQueryLogData
{
  if (self->_queryLoggingEnabled)
  {
    v3 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__EDSQLQueryLogger_submitQueryLogData__block_invoke;
    v4[3] = &unk_1E8250260;
    v4[4] = self;
    [v3 performBlock:v4];
  }
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v53 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [*(a1 + 32) queryLogFilePath];
  v3 = [v53 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [*(a1 + 32) queryLogFilePath];
    v5 = [v4 stringByAppendingString:@"_processing"];

    v52 = v5;
    if ([v53 fileExistsAtPath:v5])
    {
      v6 = +[EDSQLQueryLogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_2();
      }

      [*(a1 + 32) _removeFile:v5];
    }

    v7 = [*(a1 + 32) queryLogFilePath];
    v61 = 0;
    v8 = [v53 moveItemAtPath:v7 toPath:v5 error:&v61];
    v50 = v61;

    if (v8)
    {
      v9 = [*(a1 + 32) rawQueryLogInputFileHandle];
      [v9 closeFile];

      v10 = *(a1 + 32);
      v11 = [v10 queryLogFilePath];
      [v10 _recreateFile:v11];

      v12 = MEMORY[0x1E696AC00];
      v13 = [*(a1 + 32) queryLogFilePath];
      v14 = [v12 fileHandleForWritingAtPath:v13];
      [*(a1 + 32) setRawQueryLogInputFileHandle:v14];

      v60 = 0;
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v5 encoding:1 error:&v60];
      v49 = v60;
      if (v49)
      {
        v15 = +[EDSQLQueryLogger log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 32) queryLogFilePath];
          objc_claimAutoreleasedReturnValue();
          __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_3();
        }

        goto LABEL_51;
      }

      v15 = [MEMORY[0x1E696AE88] scannerWithString:v51];
      v17 = 0;
      while (([v15 isAtEnd]& 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v59 = v17;
        [v15 scanUpToString:@"}{" intoString:&v59];
        v19 = v59;

        v20 = [v19 mutableCopy];
        if ([v20 length])
        {
          v21 = [v20 substringToIndex:1];
          v22 = [v21 isEqualToString:@"{"];

          if ((v22 & 1) == 0)
          {
            [v20 insertString:@"{" atIndex:0];
          }

          v23 = [v20 substringFromIndex:{objc_msgSend(v20, "length") - 1}];
          v24 = [v23 isEqualToString:@"}"];

          if ((v24 & 1) == 0)
          {
            [v20 appendString:@"}"];
          }

          v25 = [v15 scanLocation];
          if (v25 <= [v51 length] - 2)
          {
            [v15 setScanLocation:[v15 scanLocation]+ 1];
          }

          [*(a1 + 32) _createQueryCountDict:v20];
        }

        else
        {
          v26 = +[EDSQLQueryLogger log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_4(&v57, v58, v26);
          }
        }

        v17 = v19;
        objc_autoreleasePoolPop(v18);
      }

      [*(a1 + 32) _preprocessQueryInfo];
      [*(a1 + 32) _removeFile:v52];
      v27 = [*(a1 + 32) queryStatisticsArray];
      v28 = v27 == 0;

      if (v28)
      {
        v32 = +[EDSQLQueryLogger log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_9();
        }

        goto LABEL_50;
      }

      v29 = MEMORY[0x1E696ACB0];
      v30 = [*(a1 + 32) queryStatisticsArray];
      v56 = 0;
      v31 = [v29 dataWithJSONObject:v30 options:0 error:&v56];
      v32 = v56;

      v33 = [*(a1 + 32) queryStatisticsArray];
      [v33 removeAllObjects];

      if (!v31)
      {
        v34 = +[EDSQLQueryLogger log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [v32 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_8();
        }

        goto LABEL_49;
      }

      v55 = 0;
      v34 = [v31 compressedDataUsingAlgorithm:0 error:&v55];
      v35 = v55;

      if (!v34)
      {
        v39 = +[EDSQLQueryLogger log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 32) queryCountLogFilePath];
          objc_claimAutoreleasedReturnValue();
          [v35 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_7();
        }

        goto LABEL_48;
      }

      v36 = *(a1 + 32);
      v37 = [v36 queryCountLogFilePath];
      [v36 _recreateFile:v37];

      v38 = [*(a1 + 32) queryCountLogFilePath];
      v54 = 0;
      LOBYTE(v37) = [v34 writeToFile:v38 options:1 error:&v54];
      v39 = v54;

      if (v37)
      {
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:34])
        {
LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
          goto LABEL_52;
        }

        v40 = [*(a1 + 32) queryCountLogFilePath];
        v41 = DRSubmitLog();
        v42 = 0;

        if ((v41 & 1) == 0)
        {
          v43 = +[EDSQLQueryLogger log];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [v42 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_6();
          }
        }

        v44 = *(a1 + 32);
        v45 = [v44 queryCountLogFilePath];
        [v44 _removeFile:v45];
      }

      else
      {
        v42 = +[EDSQLQueryLogger log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 32) queryCountLogFilePath];
          objc_claimAutoreleasedReturnValue();
          [v39 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_5();
        }
      }

      goto LABEL_48;
    }

    v16 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v46 = [*(a1 + 32) queryLogFilePath];
      v47 = [v50 ef_publicDescription];
      *buf = 138412802;
      v63 = v46;
      v64 = 2112;
      v65 = v5;
      v66 = 2114;
      v67 = v47;
      _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Failed to rename file from: %@ to %@ due to error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v52 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) queryLogFilePath];
      objc_claimAutoreleasedReturnValue();
      __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_1();
    }
  }

LABEL_52:

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_preprocessQueryInfo
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v3 assertIsExecuting:1];

  v39 = [(EDSQLQueryLogger *)self _sortQueryCountDict];
  v4 = [v39 count];
  v5 = [MEMORY[0x1E699B7B0] currentDevice];
  v6 = [v5 isInternal];

  if (v6)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v39;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v8)
    {
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          v12 = [(EDSQLQueryLogger *)self queryCountDict];
          v13 = [v12 objectForKeyedSubscript:v11];

          [(EDSQLQueryLogger *)self _writeQueryStatistics:v13];
        }

        v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v14 = v4 * 0.1;
    if (v4)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v39;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v18)
    {
      v19 = 0;
      v20 = *v41;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        v23 = v16 >= v19;
        v24 = v16 - v19;
        v38 = v22 + v18;
        if (v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v40 + 1) + 8 * v21);
          v27 = [(EDSQLQueryLogger *)self queryCountDict];
          v28 = [v27 objectForKeyedSubscript:v26];

          if (v25 == v21)
          {

            goto LABEL_28;
          }

          [(EDSQLQueryLogger *)self _writeQueryStatistics:v28];

          ++v21;
        }

        while (v18 != v21);
        v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
        v19 = v38;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v16 < v4)
    {
      do
      {
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [v7 addObject:v29];

        ++v16;
      }

      while (v4 != v16);
    }

    for (j = (v4 * 0.01); j; --j)
    {
      v31 = arc4random_uniform([v7 count] - 1);
      v32 = [v7 objectAtIndexedSubscript:v31];
      v33 = [v32 unsignedIntegerValue];

      v34 = [v17 objectAtIndexedSubscript:v33];
      v35 = [(EDSQLQueryLogger *)self queryCountDict];
      v36 = [v35 objectForKeyedSubscript:v34];
      [(EDSQLQueryLogger *)self _writeQueryStatistics:v36];

      [v7 removeObjectAtIndex:v31];
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_writeQueryStatistics:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v5 assertIsExecuting:1];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "queryCount")}];
  v7 = [MEMORY[0x1E699B858] bucketValueForQueryLogCount:v6 bucketValues:&unk_1F45E7018];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "firstRowMaxExecutionTime")}];
  v24[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "firstRowMinExecutionTime")}];
  v24[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "timePerRowMaxExecutionTime")}];
  v23[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "timePerRowMinExecutionTime")}];
  v23[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "totalMaxExecutionTime")}];
  v22[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "totalMinExecutionTime")}];
  v22[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

  v17 = [v4 queryCountByTransactionLabel];
  v18 = [v4 redactedQuery];
  v19 = [(EDSQLQueryLogger *)self _createQueryStatisticsDictionary:v18 queryCountByTransactionLabel:v17 queryCountNum:v7 firstRowExecutionTimeStats:v10 totalExecutionTimeStats:v16 timePerRowExecutionTimeStats:v13];

  v20 = [(EDSQLQueryLogger *)self queryStatisticsArray];
  [v20 addObject:v19];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_sortQueryCountDict
{
  v3 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v3 assertIsExecuting:1];

  v4 = [(EDSQLQueryLogger *)self queryCountDict];
  v5 = [v4 keysSortedByValueUsingComparator:&__block_literal_global_89];

  return v5;
}

uint64_t __39__EDSQLQueryLogger__sortQueryCountDict__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 queryCount];
  if (v6 <= [v4 queryCount])
  {
    v8 = [v5 queryCount];
    if (v8 >= [v4 queryCount])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_createQueryCountDict:(id)a3
{
  v4 = a3;
  v5 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v5 assertIsExecuting:1];

  v6 = [(EDSQLQueryLogger *)self queryCountDict];
  v7 = [v6 allKeys];

  v8 = [v4 dataUsingEncoding:4];
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:0];
  v10 = v9;
  if (v9)
  {
    v29 = v4;
    v11 = [v9 objectForKeyedSubscript:@"redactedQuery"];
    v31 = [v10 objectForKeyedSubscript:@"firstRowExecutionTime"];
    v12 = [v10 objectForKeyedSubscript:@"totalExecutionTime"];
    v13 = [v10 objectForKeyedSubscript:@"numberOfRows"];
    v14 = MEMORY[0x1E696AD98];
    [v12 doubleValue];
    v16 = v15;
    [v13 doubleValue];
    v30 = [v14 numberWithDouble:v16 / v17];
    v18 = [v10 objectForKeyedSubscript:@"transactionLabel"];
    v19 = v18;
    v20 = @"unnamed transaction";
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    if (v11 && v31 && v12 && v13)
    {
      if ([v7 containsObject:v11])
      {
        v22 = [(EDSQLQueryLogger *)self queryCountDict];
        v23 = [v22 objectForKeyedSubscript:v11];

        [v23 addStatisticWithTransactionLabel:v21 firstRowExecutionTime:v31 timePerRowExecutionTime:v30 totalExecutionTime:v12];
        v24 = [(EDSQLQueryLogger *)self queryCountDict];
        [v24 setObject:v23 forKey:v11];
      }

      else
      {
        v26 = [[EDSQLQueryStatistics alloc] initWithQuery:v11 transactionLabel:v21 firstRowExecutionTime:v31 timePerRowExecutionTime:v30 totalExecutionTime:v12];
        v27 = [v7 arrayByAddingObject:v11];

        v28 = [(EDSQLQueryLogger *)self queryCountDict];
        [v28 setObject:v26 forKey:v11];

        v7 = v27;
      }
    }

    else
    {
      v25 = +[EDSQLQueryLogger log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [EDSQLQueryLogger _createQueryCountDict:];
      }
    }

    v4 = v29;
  }

  else
  {
    v11 = +[EDSQLQueryLogger log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [EDSQLQueryLogger _createQueryCountDict:];
    }
  }
}

- (id)_createQueryStatisticsDictionary:(id)a3 queryCountByTransactionLabel:(id)a4 queryCountNum:(unint64_t)a5 firstRowExecutionTimeStats:(id)a6 totalExecutionTimeStats:(id)a7 timePerRowExecutionTimeStats:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v19 assertIsExecuting:1];

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 setObject:v14 forKeyedSubscript:@"redactedQuery"];
  v21 = [(EDSQLQueryLogger *)self _bucketTransactionLabels:v15];
  [v20 setObject:v21 forKeyedSubscript:@"transactionLabel"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v20 setObject:v22 forKeyedSubscript:@"queryCount"];

  [v20 setObject:v16 forKeyedSubscript:@"firstRowExecutionTimeStats"];
  [v20 setObject:v17 forKeyedSubscript:@"totalExecutionTimeStats"];
  [v20 setObject:v18 forKeyedSubscript:@"timePerRowExecutionTimeStats"];

  return v20;
}

- (id)_bucketTransactionLabels:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v4 = [(EDSQLQueryLogger *)self queryLoggingScheduler];
  [v4 assertIsExecuting:1];

  v5 = [v17 mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v17 allKeys];
  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v17 objectForKey:v10];
        v12 = [MEMORY[0x1E699B858] bucketValueForQueryLogCount:v11 bucketValues:&unk_1F45E7030];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v5 setObject:v13 forKeyedSubscript:v10];
      }

      v6 = obj;
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_queryPerformanceLogDirectory
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DataAccess" isDirectory:1];
  v3 = [v2 path];

  return v3;
}

- (void)logQueryString:(id)a3 executionTime:(double)a4 firstRowExecutionTime:(double)a5 numberOfRows:(unint64_t)a6
{
  v12 = a3;
  performanceLogger = self->_performanceLogger;
  if (performanceLogger)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Long running query took %0.06f seconds, %lu rows returned, first row took %0.06f seconds\n%@", *&a4, a6, *&a5, v12];
    [(EFQueryLogger *)performanceLogger logQueryString:v11];

    [(EFQueryLogger *)self->_performanceLogger flushLogs];
  }
}

- (void)logUniqueQueryString:(id)a3
{
  v4 = a3;
  if (self->_uniqueQueryLogger)
  {
    v6 = v4;
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EXPLAIN QUERY PLAN %@", v4];;
    [(EFQueryLogger *)self->_uniqueQueryLogger logUniqueQueryString:v5];

    v4 = v6;
  }
}

- (void)countQueryString:(id)a3 executionTime:(double)a4
{
  v7 = a3;
  performanceLogger = self->_performanceLogger;
  if (performanceLogger)
  {
    [(EFQueryLogger *)performanceLogger countQueryString:v7 executionTime:a4];
  }
}

- (void)flushLogs
{
  [(EFQueryLogger *)self->_performanceLogger flushLogs];
  uniqueQueryLogger = self->_uniqueQueryLogger;

  [(EFQueryLogger *)uniqueQueryLogger flushLogs];
}

void __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to convert raw log to json data: %{public}@", v5);
}

void __121__EDSQLQueryLogger_logQueryString_label_firstRowExecutionTimeInNanoseconds_totalExecutionTimeInNanoseconds_numberOfRows___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to write raw log: %{public}@", v5);
}

- (void)_createQueryLogDirectoryPath
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to create directory at path: %@", v5);
}

- (void)_removeFile:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to remove processed file at %@ due to error: %{public}@", v4, v5);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to find query log file at file path: %@", v5);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to read query log file at file path: %@", v5);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Detected empty query log", buf, 2u);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to write to file with compressed data at %@ due to error: %{public}@", v5, v6);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to submit logs to diagnostic pipeline %{public}@", v5);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_7()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to compress file at %@ due to error: %{public}@", v5, v6);
}

void __38__EDSQLQueryLogger_submitQueryLogData__block_invoke_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to convert query statistics array to NSData due to error: %{public}@", v5);
}

- (void)_createQueryCountDict:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end