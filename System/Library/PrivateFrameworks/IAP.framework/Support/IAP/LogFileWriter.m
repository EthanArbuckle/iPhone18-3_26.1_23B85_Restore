@interface LogFileWriter
- (BOOL)_log:(id)a3;
- (id)initFor:(id)a3 fileLabel:(id)a4;
- (void)_flush;
- (void)createFilePath;
- (void)dealloc;
- (void)flush;
- (void)log:(id)a3;
- (void)log:(id)a3 data:(id)a4;
- (void)logRawData:(id)a3;
- (void)scheduleFlush;
- (void)timerFlush:(id)a3;
- (void)unscheduleFlush;
@end

@implementation LogFileWriter

- (id)initFor:(id)a3 fileLabel:(id)a4
{
  v8.receiver = self;
  v8.super_class = LogFileWriter;
  v6 = [(LogFileWriter *)&v8 init];
  if (!v6)
  {
    return v6;
  }

  result = objc_alloc_init(NSMutableArray);
  if (((v6 + 8) & 7) == 0)
  {
    v6->_logData = result;
    result = dispatch_queue_create("com.apple.iapLogWriter", 0);
    if (((v6 + 56) & 7) == 0)
    {
      v6->_logQueue = result;
      if (((v6 + 16) & 7) == 0)
      {
        v6->_filenamePrefix = a3;
        if ((&v6->_fileLabel & 7) == 0)
        {
          v6->_fileLabel = a4;
          return v6;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  [(LogFileWriter *)self unscheduleFlush];
  if (((self + 16) & 7) != 0 || (self->_filenamePrefix = 0, ((self + 24) & 7) != 0) || (self->_filePath = 0, ((self + 48) & 7) != 0) || (self->_flushTimer = 0, ((self + 8) & 7) != 0) || (self->_logData = 0, ((self + 32) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    self->_fileLabel = 0;
    v3.receiver = self;
    v3.super_class = LogFileWriter;
    [(LogFileWriter *)&v3 dealloc];
  }
}

- (void)logRawData:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  p_logQueue = &self->_logQueue;
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_9;
  }

  v5 = *p_logQueue;
  if (!*p_logQueue)
  {
LABEL_9:
    __break(0x5510u);
    goto LABEL_10;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF860;
  block[3] = &unk_100114638;
  block[4] = self;
  block[5] = a3;
  block[6] = &v8;
  dispatch_sync(v5, block);
  v6 = *(v9 + 24);
  if (v6 >= 2)
  {
LABEL_10:
    __break(0x550Au);
    return;
  }

  if (v6)
  {
    [(LogFileWriter *)self flush];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush];
  }

  _Block_object_dispose(&v8, 8);
}

- (BOOL)_log:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  if (!v4)
  {
    NSLog(@"ERROR!!!: _log: dataUsingEncoding returned nil!");
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = v4;
  v6 = [v4 length];
  p_logDataSize = &self->_logDataSize;
  if ((&self->_logDataSize & 7) != 0)
  {
    goto LABEL_7;
  }

  if (__CFADD__(*p_logDataSize, v6))
  {
LABEL_8:
    __break(0x5500u);
    return v6;
  }

  self->_logDataSize = v6 + *p_logDataSize;
  if ((&self->_logData & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    goto LABEL_8;
  }

  [(NSMutableArray *)self->_logData addObject:v5];
  LOBYTE(v6) = *p_logDataSize >> 10 > 4;
  return v6;
}

- (void)log:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v6 = [v5 stringFromDate:{+[NSDate date](NSDate, "date")}];

  v7 = [NSString stringWithFormat:@"%@ %@\n", v6, a3];
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_9;
  }

  logQueue = self->_logQueue;
  if (!logQueue)
  {
LABEL_9:
    __break(0x5510u);
    goto LABEL_10;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFB04;
  block[3] = &unk_1001144B8;
  block[5] = v7;
  block[6] = &v11;
  block[4] = self;
  dispatch_sync(logQueue, block);
  v9 = *(v12 + 24);
  if (v9 >= 2)
  {
LABEL_10:
    __break(0x550Au);
    return;
  }

  if (v9)
  {
    [(LogFileWriter *)self flush];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush];
  }

  _Block_object_dispose(&v11, 8);
}

- (void)log:(id)a3 data:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v8 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];

  p_logQueue = &self->_logQueue;
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_9;
  }

  v10 = *p_logQueue;
  if (!*p_logQueue)
  {
LABEL_9:
    __break(0x5510u);
    goto LABEL_10;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFC9C;
  block[3] = &unk_100119B08;
  block[4] = v8;
  block[5] = a3;
  block[7] = a4;
  block[8] = &v13;
  block[6] = self;
  dispatch_sync(v10, block);
  v11 = *(v14 + 24);
  if (v11 >= 2)
  {
LABEL_10:
    __break(0x550Au);
    return;
  }

  if (v11)
  {
    [(LogFileWriter *)self flush];
  }

  else
  {
    [(LogFileWriter *)self scheduleFlush];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)createFilePath
{
  p_filePath = &self->_filePath;
  if ((&self->_filePath & 7) != 0 || (self->_filePath, v4 = -[NSString stringByAppendingPathComponent:](NSHomeDirectory(), "stringByAppendingPathComponent:", @"Library/Logs/CrashReporter/"), v5 = objc_alloc_init(NSDateFormatter), [v5 setDateFormat:@"yyyy-MM-dd-HHmmss"], v6 = objc_msgSend(v5, "stringFromDate:", +[NSDate date](NSDate, "date")), (&self->_filenamePrefix & 7) != 0) || (&self->_fileLabel & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    fileLabel = self->_fileLabel;
    if (!fileLabel)
    {
      fileLabel = @"packets";
    }

    *p_filePath = [(NSString *)v4 stringByAppendingPathComponent:[NSString stringWithFormat:@"%@-%@-%@.log.ips", self->_filenamePrefix, fileLabel, v6]];

    v8 = *p_filePath;

    v9 = v8;
  }
}

- (void)_flush
{
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    logQueue = self->_logQueue;
    if (logQueue)
    {
      block[5] = v2;
      block[6] = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DFF60;
      block[3] = &unk_100111C88;
      block[4] = self;
      dispatch_sync(logQueue, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)flush
{
  [(LogFileWriter *)self _flush];

  [(LogFileWriter *)self unscheduleFlush];
}

- (void)scheduleFlush
{
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    logQueue = self->_logQueue;
    if (logQueue)
    {
      block[5] = v2;
      block[6] = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0208;
      block[3] = &unk_100111C88;
      block[4] = self;
      dispatch_sync(logQueue, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)unscheduleFlush
{
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    logQueue = self->_logQueue;
    if (logQueue)
    {
      block[5] = v2;
      block[6] = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0348;
      block[3] = &unk_100111C88;
      block[4] = self;
      dispatch_sync(logQueue, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)timerFlush:(id)a3
{
  p_logQueue = &self->_logQueue;
  if ((&self->_logQueue & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = *p_logQueue;
    if (*p_logQueue)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000E0480;
      v6[3] = &unk_100114558;
      v6[4] = a3;
      v6[5] = self;
      dispatch_sync(v5, v6);
      [(LogFileWriter *)self performSelectorInBackground:"_flush" withObject:0];
      return;
    }
  }

  __break(0x5510u);
}

@end