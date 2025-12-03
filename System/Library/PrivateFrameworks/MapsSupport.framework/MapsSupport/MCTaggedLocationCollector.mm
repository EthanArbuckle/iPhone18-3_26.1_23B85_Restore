@interface MCTaggedLocationCollector
+ (id)sharedCollector;
- (BOOL)uploadRequest:(id)request;
- (MCTaggedLocationCollector)init;
- (id)collectorUploadSession;
- (id)geocorrectiondUploadDir;
- (id)getLastRunTime;
- (id)startTimeFromUploadFileName:(id)name;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)collectIfReady:(id)ready;
- (void)storeLastRunTime:(id)time;
@end

@implementation MCTaggedLocationCollector

+ (id)sharedCollector
{
  if (qword_100023310 != -1)
  {
    sub_10000F9F8();
  }

  v3 = qword_100023308;

  return v3;
}

- (MCTaggedLocationCollector)init
{
  v12.receiver = self;
  v12.super_class = MCTaggedLocationCollector;
  v2 = [(MCTaggedLocationCollector *)&v12 init];
  v3 = v2;
  if (v2)
  {
    getLastRunTime = [(MCTaggedLocationCollector *)v2 getLastRunTime];
    lastRunTime = v3->_lastRunTime;
    v3->_lastRunTime = getLastRunTime;

    v6 = geo_dispatch_queue_create_with_qos();
    workQueue = v3->_workQueue;
    v3->_workQueue = v6;

    v3->_pendingCompletion = 0;
    v8 = v3->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009BAC;
    block[3] = &unk_10001C650;
    v11 = v3;
    dispatch_async(v8, block);
  }

  return v3;
}

- (void)collectIfReady:(id)ready
{
  readyCopy = ready;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F20;
  v7[3] = &unk_10001D7F8;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
  dispatch_async(workQueue, v7);
}

- (id)getLastRunTime
{
  GEOConfigGetDouble();

  return [NSDate dateWithTimeIntervalSinceReferenceDate:?];
}

- (void)storeLastRunTime:(id)time
{
  timeCopy = time;
  [(NSDate *)timeCopy timeIntervalSinceReferenceDate];
  GEOConfigSetDouble();
  lastRunTime = self->_lastRunTime;
  self->_lastRunTime = timeCopy;
}

- (id)collectorUploadSession
{
  v3 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.geocorrectiond.taggedloc"];
  [v3 set_allowsExpensiveAccess:0];
  [v3 set_requiresPowerPluggedIn:1];
  [v3 setDiscretionary:1];
  [v3 setAllowsConstrainedNetworkAccess:0];
  [v3 setSessionSendsLaunchEvents:1];
  v4 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:0];

  return v4;
}

- (id)startTimeFromUploadFileName:(id)name
{
  v3 = [name componentsSeparatedByString:@"_"];
  if ([v3 count] == 2 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"taggedLocUpload"), v4, v5))
  {
    v6 = objc_alloc_init(NSNumberFormatter);
    [v6 setNumberStyle:0];
    v7 = [v3 objectAtIndexedSubscript:1];
    v8 = [v6 numberFromString:v7];

    if (v8)
    {
      [v8 doubleValue];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)geocorrectiondUploadDir
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.geocorrectiond"];
  v5 = [v4 stringByAppendingPathComponent:@"upload"];
  v15 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v15];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = +[NSFileManager defaultManager];
  v14 = 0;
  v9 = [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v14];
  v10 = v14;

  if (v9)
  {

LABEL_4:
    v11 = v5;
    goto LABEL_8;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "unable to create cache dir %@ (%@)", buf, 0x16u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)uploadRequest:(id)request
{
  requestCopy = request;
  v5 = GEOGetURL();
  if (v5)
  {
    buildUploadFileName = [(MCTaggedLocationCollector *)self buildUploadFileName];
    geocorrectiondUploadDir = [(MCTaggedLocationCollector *)self geocorrectiondUploadDir];
    if (geocorrectiondUploadDir)
    {
      geocorrectiondUploadDir2 = [(MCTaggedLocationCollector *)self geocorrectiondUploadDir];
      v9 = [geocorrectiondUploadDir2 stringByAppendingPathComponent:buildUploadFileName];

      v21[1] = 0;
      v10 = GEOCreateBodyDataForProtocolBufferRequest();
      v11 = 0;
      v12 = v11;
      if (v10)
      {
        v21[0] = 0;
        v13 = [v11 writeToFile:v9 options:0 error:v21];
        v14 = v21[0];
        if (v13)
        {
          v15 = [NSMutableURLRequest requestWithURL:v5];
          [v15 setHTTPMethod:@"POST"];
          collectorUploadSession = [(MCTaggedLocationCollector *)self collectorUploadSession];
          v16 = [NSURL fileURLWithPath:v9];
          v17 = [collectorUploadSession uploadTaskWithRequest:v15 fromFile:v16];

          [v17 setTaskDescription:buildUploadFileName];
          GEOConfigGetDouble();
          [v17 set_timeoutIntervalForResource:?];
          [v17 resume];
          v18 = v17 != 0;
        }

        else
        {
          v15 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v9;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "could not write request to %@ : (%@)", buf, 0x16u);
          }

          v18 = 0;
        }
      }

      else
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "could not serialize request", buf, 2u);
        }

        v18 = 0;
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "missing upload dir", buf, 2u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  taskDescription = [task taskDescription];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AF5C;
  block[3] = &unk_10001D848;
  block[4] = self;
  v13 = taskDescription;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = taskDescription;
  dispatch_async(workQueue, block);
}

@end