@interface LogFileWriter
- (BOOL)_log:(id)a3;
- (id)initFor:(id)a3 fileLabel:(id)a4;
- (void)_flush;
- (void)createFilePath;
- (void)dealloc;
- (void)flush;
- (void)log:(id)a3;
- (void)log:(id)a3 data:(id)a4;
- (void)log:(id)a3 data:(id)a4 limit:(unint64_t)a5;
- (void)logRawData:(id)a3;
- (void)scheduleFlush;
- (void)timerFlush:(id)a3;
- (void)unscheduleFlush;
@end

@implementation LogFileWriter

- (id)initFor:(id)a3 fileLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = LogFileWriter;
  v9 = [(LogFileWriter *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    logData = v9->_logData;
    v9->_logData = v10;

    v12 = dispatch_queue_create("com.apple.accessoryd.LogWriter", 0);
    logQueue = v9->_logQueue;
    v9->_logQueue = v12;

    objc_storeStrong(&v9->_filenamePrefix, a3);
    objc_storeStrong(&v9->_fileLabel, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(LogFileWriter *)self unscheduleFlush];
  filenamePrefix = self->_filenamePrefix;
  self->_filenamePrefix = 0;

  filePath = self->_filePath;
  self->_filePath = 0;

  flushTimer = self->_flushTimer;
  self->_flushTimer = 0;

  logData = self->_logData;
  self->_logData = 0;

  fileLabel = self->_fileLabel;
  self->_fileLabel = 0;

  v8.receiver = self;
  v8.super_class = LogFileWriter;
  [(LogFileWriter *)&v8 dealloc];
}

- (void)logRawData:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__LogFileWriter_logRawData___block_invoke;
  block[3] = &unk_100225990;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(logQueue, block);
  if (*(v11 + 24) == 1)
  {
    [(LogFileWriter *)self flush];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush];
  }

  _Block_object_dispose(&v10, 8);
}

id __28__LogFileWriter_logRawData___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) += [*(a1 + 40) length];
  result = [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 40) >> 10 > 4uLL;
  return result;
}

- (BOOL)_log:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = v4;
  if (v4)
  {
    self->_logDataSize += [v4 length];
    [(NSMutableArray *)self->_logData addObject:v5];
    v6 = self->_logDataSize >> 10 > 4;
  }

  else
  {
    NSLog(@"ERROR!!!: _log: dataUsingEncoding returned nil!");
    v6 = 0;
  }

  return v6;
}

- (void)log:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v6 = +[NSDate date];
  v7 = [v5 stringFromDate:v6];

  v8 = [NSString stringWithFormat:@"%@ %@\n", v7, v4];

  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__LogFileWriter_log___block_invoke;
  block[3] = &unk_1002259B8;
  v13 = &v14;
  block[4] = self;
  v10 = v8;
  v12 = v10;
  dispatch_sync(logQueue, block);
  if (*(v15 + 24) == 1)
  {
    [(LogFileWriter *)self flush];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush];
  }

  _Block_object_dispose(&v14, 8);
}

id __21__LogFileWriter_log___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _log:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)log:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[LogFileWriter log:data:limit:](self, "log:data:limit:", v7, v6, [v6 length]);
}

- (void)log:(id)a3 data:(id)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v11 = +[NSDate date];
  v12 = [v10 stringFromDate:v11];

  logQueue = self->_logQueue;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __32__LogFileWriter_log_data_limit___block_invoke;
  v20 = &unk_1002259E0;
  v14 = v12;
  v21 = v14;
  v15 = v8;
  v25 = &v27;
  v22 = v15;
  v23 = self;
  v16 = v9;
  v24 = v16;
  v26 = a5;
  dispatch_sync(logQueue, &v17);
  if (*(v28 + 24) == 1)
  {
    [(LogFileWriter *)self flush:v17];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush:v17];
  }

  _Block_object_dispose(&v27, 8);
}

void __32__LogFileWriter_log_data_limit___block_invoke(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%@ %@<", *(a1 + 32), *(a1 + 40)];
  *(*(*(a1 + 64) + 8) + 24) |= [*(a1 + 48) _log:v2];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [v3 bytes];
    v5 = [*(a1 + 56) length];
    v6 = v5;
    v7 = *(a1 + 72);
    if (v5 >= v7)
    {
      v8 = *(a1 + 72);
    }

    else
    {
      v8 = v5;
    }

    if (v8)
    {
      do
      {
        v9 = *v4++;
        v14 = [NSString stringWithFormat:@"%02x ", v9];

        v10 = [*(a1 + 48) _log:v14];
        v11 = *(*(a1 + 64) + 8);
        v12 = *(v11 + 24) | v10;
        v13 = v14;
        *(v11 + 24) = v12;
        v2 = v14;
        --v8;
      }

      while (v8);
    }

    else
    {
      v13 = v2;
    }

    v15 = v13;
    if (v6 > v7)
    {
      *(*(*(a1 + 64) + 8) + 24) |= [*(a1 + 48) _log:@"... "];
    }
  }

  else
  {
    v15 = v2;
  }

  *(*(*(a1 + 64) + 8) + 24) |= [*(a1 + 48) _log:@">\n"];
}

- (void)createFilePath
{
  filePath = self->_filePath;
  self->_filePath = 0;

  v4 = NSHomeDirectory();
  v12 = [v4 stringByAppendingPathComponent:@"Library/Logs/CrashReporter/"];

  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v6 = +[NSDate date];
  v7 = [v5 stringFromDate:v6];

  fileLabel = self->_fileLabel;
  if (!fileLabel)
  {
    fileLabel = @"packets";
  }

  v9 = [NSString stringWithFormat:@"%@-%@-%@.log.ips", self->_filenamePrefix, fileLabel, v7];
  v10 = [v12 stringByAppendingPathComponent:v9];
  v11 = self->_filePath;
  self->_filePath = v10;
}

- (void)_flush
{
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__LogFileWriter__flush__block_invoke;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_sync(logQueue, block);
}

void __23__LogFileWriter__flush__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSFileManager defaultManager];
  v4 = *(a1 + 32);
  if (v4[3])
  {
    if ([v3 fileExistsAtPath:?])
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
  }

  [v4 createFilePath];
  v5 = fopen([*(*(a1 + 32) + 24) fileSystemRepresentation], "a");
  if (v5)
  {
    fclose(v5);
  }

LABEL_6:
  v6 = [NSFileHandle fileHandleForWritingAtPath:*(*(a1 + 32) + 24)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(*(a1 + 32) + 8);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        [v6 seekToEndOfFile];
        [v6 writeData:v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [*(*(a1 + 32) + 8) removeAllObjects];
  *(*(a1 + 32) + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)flush
{
  [(LogFileWriter *)self _flush];

  [(LogFileWriter *)self unscheduleFlush];
}

- (void)scheduleFlush
{
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __30__LogFileWriter_scheduleFlush__block_invoke;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_sync(logQueue, block);
}

void __30__LogFileWriter_scheduleFlush__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v3 = [NSTimer timerWithTimeInterval:"timerWithTimeInterval:target:selector:userInfo:repeats:" target:3.0 selector:? userInfo:? repeats:?];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    Main = CFRunLoopGetMain();
    v7 = *(*(a1 + 32) + 48);

    CFRunLoopAddTimer(Main, v7, kCFRunLoopCommonModes);
  }
}

- (void)unscheduleFlush
{
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __32__LogFileWriter_unscheduleFlush__block_invoke;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_sync(logQueue, block);
}

void __32__LogFileWriter_unscheduleFlush__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveTimer(Main, *(*(a1 + 32) + 48), kCFRunLoopCommonModes);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

- (void)timerFlush:(id)a3
{
  v4 = a3;
  logQueue = self->_logQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __28__LogFileWriter_timerFlush___block_invoke;
  v10 = &unk_100225A08;
  v11 = v4;
  v12 = self;
  v6 = v4;
  dispatch_sync(logQueue, &v7);
  [(LogFileWriter *)self performSelectorInBackground:"_flush" withObject:0, v7, v8, v9, v10];
}

void __28__LogFileWriter_timerFlush___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 48);
  if (v2 == v3)
  {
    *(v1 + 48) = 0;
  }
}

@end