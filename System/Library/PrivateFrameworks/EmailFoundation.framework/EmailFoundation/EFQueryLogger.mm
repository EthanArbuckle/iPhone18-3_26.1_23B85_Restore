@interface EFQueryLogger
+ (id)_logQueue;
- (EFQueryLogger)initWithBaseFilename:(id)filename directory:(id)directory;
- (void)_moveLogFileContentsAtPath:(id)path;
- (void)_moveLogFileContentsWithoutDateAtPath:(id)path;
- (void)_openLookasideFile;
- (void)_sortAndWriteQueries:(id)queries forCount:(unint64_t)count totalCount:(unint64_t)totalCount queryCountMap:(id)map;
- (void)countQueryString:(id)string executionTime:(double)time;
- (void)flushLogs;
- (void)flushLogsWithoutDate;
- (void)logPlainTextData:(id)data;
- (void)logQueryString:(id)string;
- (void)logUniqueQueryString:(id)string;
@end

@implementation EFQueryLogger

+ (id)_logQueue
{
  if (_logQueue_onceToken != -1)
  {
    +[EFQueryLogger _logQueue];
  }

  v3 = _logQueue_logQueue;

  return v3;
}

void __26__EFQueryLogger__logQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.email.EFQueryLoggerQueue", 0);
  v1 = _logQueue_logQueue;
  _logQueue_logQueue = v0;
}

- (EFQueryLogger)initWithBaseFilename:(id)filename directory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = EFQueryLogger;
  v9 = [(EFQueryLogger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseFileName, filename);
    objc_storeStrong(&v10->_logDirectory, directory);
  }

  return v10;
}

- (void)_openLookasideFile
{
  if (!self->_lookasideFileHandle)
  {
    if (self->_lookasideFilePath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EFQueryLogger.m" lineNumber:55 description:@"_lookasideFilePath is not nil in _openTempLogFile"];
    }

    v15 = NSTemporaryDirectory();
    if (v15)
    {
      v3 = getpid();
      v4 = _openLookasideFile_sResponseNumber++;
      v5 = [v15 stringByAppendingFormat:@"%d-%d", v3, v4];
      lookasideFilePath = self->_lookasideFilePath;
      self->_lookasideFilePath = v5;

      v7 = open([(NSString *)self->_lookasideFilePath fileSystemRepresentation], 522, 384);
      if ((v7 & 0x80000000) != 0)
      {
        fileSystemRepresentation = [(NSString *)self->_lookasideFilePath fileSystemRepresentation];
        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        NSLog(&cfstr_WarningCouldnT.isa, fileSystemRepresentation, v11, v13);
        lookasideFileHandle = self->_lookasideFilePath;
        self->_lookasideFilePath = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v7 closeOnDealloc:1];
        lookasideFileHandle = self->_lookasideFileHandle;
        self->_lookasideFileHandle = v8;
      }
    }
  }
}

- (void)_moveLogFileContentsAtPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E69998C8] filenameWithBasename:self->_baseFileName];
  v6 = [[EFFileLogger alloc] initWithFilename:v5 directory:self->_logDirectory];
  Current = CFAbsoluteTimeGetCurrent();
  v8 = @"\n";
  v9 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  v10 = v9;
  if (v9)
  {
    memset(v17, 170, sizeof(v17));
    v16 = -1431655766;
    v11 = CFCalendarDecomposeAbsoluteTime(v9, Current, "yMdHms", &v17[4], &v17[3], &v17[2], &v17[1], v17, &v16);
    CFRelease(v10);
    if (!v11)
    {
      v8 = @"\n";
      if (pathCopy)
      {
        goto LABEL_5;
      }

LABEL_7:
      v14 = objc_opt_new();
      [v14 appendBytes:-[__CFString UTF8String](v8 length:{"UTF8String"), -[__CFString lengthOfBytesUsingEncoding:](v8, "lengthOfBytesUsingEncoding:", 4)}];
      [(EFFileLogger *)v6 logSnippet:v14];

      goto LABEL_8;
    }

    v12 = modf(Current, &__y);
    v13 = &unk_1C61CC000;
    LODWORD(v13) = vcvtmd_s64_f64(v12 * 1000.0);
    v8 = [@"\n" stringByAppendingFormat:@"<<%04d-%02d-%02d %02d:%02d:%02d.%03d>>", v17[4], v17[3], v17[2], v17[1], v17[0], v16, v13];
  }

  if (!pathCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  [(EFFileLogger *)v6 slurpAndRemoveLookasideFile:pathCopy prefixString:v8 suffixString:0];
LABEL_8:
}

- (void)_moveLogFileContentsWithoutDateAtPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x1E69998C8] filenameWithBasename:self->_baseFileName];
  v5 = [[EFFileLogger alloc] initWithFilename:v4 directory:self->_logDirectory];
  v6 = v5;
  if (pathCopy)
  {
    [(EFFileLogger *)v5 slurpAndRemoveLookasideFile:pathCopy prefixString:@"\n" suffixString:0];
  }

  else
  {
    v7 = objc_opt_new();
    [v7 appendBytes:objc_msgSend(@"\n" length:{"UTF8String"), objc_msgSend(@"\n", "lengthOfBytesUsingEncoding:", 4)}];
    [(EFFileLogger *)v6 logSnippet:v7];
  }
}

- (void)flushLogs
{
  objc_initWeak(&location, self);
  v2 = +[EFQueryLogger _logQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__EFQueryLogger_flushLogs__block_invoke;
  v3[3] = &unk_1E8248558;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __26__EFQueryLogger_flushLogs__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1])
  {
    v4 = WeakRetained;
    [WeakRetained _moveLogFileContentsAtPath:WeakRetained[2]];
    v2 = v4[1];
    v4[1] = 0;

    v3 = v4[2];
    v4[2] = 0;

    WeakRetained = v4;
  }
}

- (void)flushLogsWithoutDate
{
  objc_initWeak(&location, self);
  v2 = +[EFQueryLogger _logQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__EFQueryLogger_flushLogsWithoutDate__block_invoke;
  v3[3] = &unk_1E8248558;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __37__EFQueryLogger_flushLogsWithoutDate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1])
  {
    v4 = WeakRetained;
    [WeakRetained _moveLogFileContentsWithoutDateAtPath:WeakRetained[2]];
    v2 = v4[1];
    v4[1] = 0;

    v3 = v4[2];
    v4[2] = 0;

    WeakRetained = v4;
  }
}

- (void)logPlainTextData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    objc_initWeak(&location, self);
    v6 = +[EFQueryLogger _logQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__EFQueryLogger_logPlainTextData___block_invoke;
    block[3] = &unk_1E8249A48;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __34__EFQueryLogger_logPlainTextData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    if (v2 || ([WeakRetained _openLookasideFile], (v2 = WeakRetained[1]) != 0))
    {
      write([v2 fileDescriptor], objc_msgSend(*(a1 + 32), "bytes"), objc_msgSend(*(a1 + 32), "length"));
    }
  }
}

- (void)logQueryString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  [(EFQueryLogger *)self logPlainTextData:?];
}

- (void)logUniqueQueryString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    objc_initWeak(&location, self);
    v6 = +[EFQueryLogger _logQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__EFQueryLogger_logUniqueQueryString___block_invoke;
    block[3] = &unk_1E8249A48;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __38__EFQueryLogger_logUniqueQueryString___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!_block_invoke_uniqueQuerySet)
    {
      v2 = objc_opt_new();
      v3 = _block_invoke_uniqueQuerySet;
      _block_invoke_uniqueQuerySet = v2;

      [WeakRetained logQueryString:@"Starting a new session for logging unique queries"];
      [WeakRetained flushLogs];
    }

    v4 = [EFPrivacy redactedQueryStringForQueryString:*(a1 + 32)];
    if (([_block_invoke_uniqueQuerySet containsObject:v4] & 1) == 0)
    {
      [_block_invoke_uniqueQuerySet addObject:v4];
      [WeakRetained logQueryString:*(a1 + 32)];
      [WeakRetained flushLogsWithoutDate];
    }
  }
}

- (void)countQueryString:(id)string executionTime:(double)time
{
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    objc_initWeak(&location, self);
    v8 = +[EFQueryLogger _logQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__EFQueryLogger_countQueryString_executionTime___block_invoke;
    v9[3] = &unk_1E8249A90;
    objc_copyWeak(v11, &location);
    v10 = v7;
    v11[1] = *&time;
    dispatch_async(v8, v9);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __48__EFQueryLogger_countQueryString_executionTime___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v26 = WeakRetained;
    if (!_block_invoke_2_queryCountMap)
    {
      v4 = objc_opt_new();
      v5 = _block_invoke_2_queryCountMap;
      _block_invoke_2_queryCountMap = v4;
    }

    v25 = [EFPrivacy redactedQueryStringForQueryString:*(a1 + 32)];
    v6 = [_block_invoke_2_queryCountMap objectForKeyedSubscript:?];
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    [v6 setCount:{objc_msgSend(v6, "count") + 1}];
    [v6 totalExecutionTime];
    [v6 setTotalExecutionTime:v7 + *(a1 + 48)];
    [_block_invoke_2_queryCountMap setObject:v6 forKeyedSubscript:v25];
    if (++_block_invoke_2_logCount >> 4 >= 0x271)
    {
      v24 = [_block_invoke_2_queryCountMap keysSortedByValueUsingComparator:&__block_literal_global_48];
      if (v3[1] || ([v3 _openLookasideFile], v3[1]))
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nTotal query count: %lu, Unique query count: %lu", _block_invoke_2_logCount, objc_msgSend(v24, "count")];
        v23 = [v22 dataUsingEncoding:4];
        write([v3[1] fileDescriptor], objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"));
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v24;
        v9 = 0;
        v10 = 0;
        v11 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          v12 = *v28;
          do
          {
            v13 = 0;
            do
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v27 + 1) + 8 * v13);
              v15 = objc_autoreleasePoolPush();
              v16 = [_block_invoke_2_queryCountMap objectForKeyedSubscript:v14];

              v6 = v16;
              if ([v16 count] == v9)
              {
                [v10 addObject:v14];
              }

              else
              {
                [v26 _sortAndWriteQueries:v10 forCount:v9 totalCount:_block_invoke_2_logCount queryCountMap:_block_invoke_2_queryCountMap];
                v17 = objc_opt_new();

                [v17 addObject:v14];
                v9 = [v6 count];
                v10 = v17;
              }

              objc_autoreleasePoolPop(v15);
              ++v13;
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v11);
        }

        [v26 _sortAndWriteQueries:v10 forCount:v9 totalCount:_block_invoke_2_logCount queryCountMap:_block_invoke_2_queryCountMap];
        [v26 _moveLogFileContentsAtPath:v26[2]];
        v18 = v26[1];
        v26[1] = 0;

        v19 = v26[2];
        v26[2] = 0;
      }

      v20 = _block_invoke_2_queryCountMap;
      _block_invoke_2_queryCountMap = 0;

      _block_invoke_2_logCount = 0;
    }

    v3 = v26;
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __48__EFQueryLogger_countQueryString_executionTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 count];
  if (v8 >= [v7 count])
  {
    v10 = [v6 count];
    if (v10 <= [v7 count])
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_sortAndWriteQueries:(id)queries forCount:(unint64_t)count totalCount:(unint64_t)totalCount queryCountMap:(id)map
{
  v30 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  mapCopy = map;
  v22 = queriesCopy;
  if (queriesCopy && [queriesCopy count])
  {
    [queriesCopy sortUsingSelector:sel_caseInsensitiveCompare_];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = queriesCopy;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [mapCopy objectForKeyedSubscript:v14];
          v16 = MEMORY[0x1E696AEC0];
          [v15 totalExecutionTime];
          v18 = [v16 stringWithFormat:@"\nCount: %lu, Percentage of total: %.2f%%, Average Execution Time: %0.06f seconds\n%@", count, count * 100.0 / totalCount, v17 / count, v14];
          v19 = [v18 dataUsingEncoding:4];
          LODWORD(v14) = [(NSFileHandle *)self->_lookasideFileHandle fileDescriptor];
          v20 = v19;
          write(v14, [v19 bytes], objc_msgSend(v19, "length"));
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end