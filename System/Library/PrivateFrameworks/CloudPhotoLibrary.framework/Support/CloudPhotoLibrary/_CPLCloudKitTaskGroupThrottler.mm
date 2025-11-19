@interface _CPLCloudKitTaskGroupThrottler
- (BOOL)shouldRunOperationsNow:(id)a3 error:(id *)a4;
- (_CPLCloudKitTaskGroupThrottler)initWithGroupName:(id)a3 minimumThrottlingInterval:(double)a4;
- (id)statusWithNow:(id)a3;
- (void)_adjustThrottlingDateWithNow:(id)a3 andError:(id)a4;
- (void)_incrementThrottledCount;
- (void)operationDidFinishNow:(id)a3 withError:(id)a4;
@end

@implementation _CPLCloudKitTaskGroupThrottler

- (_CPLCloudKitTaskGroupThrottler)initWithGroupName:(id)a3 minimumThrottlingInterval:(double)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = _CPLCloudKitTaskGroupThrottler;
  v7 = [(_CPLCloudKitTaskGroupThrottler *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    groupName = v7->_groupName;
    v7->_groupName = v8;

    v7->_minimumThrottlingInterval = a4;
    v10 = CPLCopyDefaultSerialQueueAttributes();
    v11 = dispatch_queue_create("com.apple.cpl.cloudkit.throttling", v10);
    logQueue = v7->_logQueue;
    v7->_logQueue = v11;

    if ([(NSString *)v7->_groupName hasPrefix:@"Locally Throttled "])
    {
      v13 = +[NSDate date];
      v14 = [v13 dateByAddingTimeInterval:{fmax(v7->_minimumThrottlingInterval, 3600.0)}];
      throttlingDate = v7->_throttlingDate;
      v7->_throttlingDate = v14;

      [(_CPLCloudKitTaskGroupThrottler *)v7 _adjustThrottlingDateWithNow:v13 andError:0];
    }
  }

  return v7;
}

- (void)_adjustThrottlingDateWithNow:(id)a3 andError:(id)a4
{
  v6 = a3;
  v7 = a4;
  throttlingDate = self->_throttlingDate;
  if (!throttlingDate)
  {
    goto LABEL_14;
  }

  [(NSDate *)throttlingDate timeIntervalSinceDate:v6];
  if (v9 <= 0.0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v10 = fmax(self->_minimumThrottlingInterval, 604800.0);
  if (v9 > v10)
  {
    v11 = [v6 dateByAddingTimeInterval:v10];
LABEL_6:
    v12 = self->_throttlingDate;
    self->_throttlingDate = v11;

    throttlingError = self->_throttlingError;
    self->_throttlingError = 0;
  }

  if (self->_throttlingDate && !self->_throttlingError)
  {
    if (v7 && ![v7 isCPLErrorWithCode:1004])
    {
      v14 = @"Server is unavailable for %@";
      v15 = 1000;
    }

    else
    {
      v14 = @"%@ has been throttled";
      v15 = 1004;
    }

    v16 = [[NSString alloc] initWithFormat:v14, self->_groupName];
    v17 = [NSError alloc];
    v18 = CPLErrorDomain;
    v22[0] = CPLErrorRetryAfterDateKey;
    v22[1] = NSLocalizedDescriptionKey;
    v23[0] = self->_throttlingDate;
    v23[1] = v16;
    v22[2] = @"CPLThrottling";
    v23[2] = &__kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v20 = [v17 initWithDomain:v18 code:v15 userInfo:v19];
    v21 = self->_throttlingError;
    self->_throttlingError = v20;
  }

LABEL_14:
}

- (void)_incrementThrottledCount
{
  ++self->_throttledCount;
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040D1C;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_async(logQueue, block);
}

- (void)operationDidFinishNow:(id)a3 withError:(id)a4
{
  v28 = a3;
  v7 = a4;
  if ([CPLCloudKitErrors isOperationThrottledError:v7])
  {
    [(_CPLCloudKitTaskGroupThrottler *)self _incrementThrottledCount];
    throttlingError = self->_throttlingError;
    self->_throttlingError = 0;

    v9 = [v7 userInfo];
    v10 = CPLErrorRetryAfterDateKey;
    v11 = [v9 objectForKeyedSubscript:CPLErrorRetryAfterDateKey];
    throttlingDate = self->_throttlingDate;
    self->_throttlingDate = v11;

    if (self->_throttlingDate)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = self->_throttlingDate;
            *buf = 138412546;
            v30 = v10;
            v31 = 2112;
            v32 = objc_opt_class();
            v15 = v32;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid %@: %@", buf, 0x16u);
          }
        }

        v16 = +[NSAssertionHandler currentHandler];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTaskGate.m"];
        v18 = self->_throttlingDate;
        [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:217 description:{@"Invalid %@: %@", v10, objc_opt_class()}];

        goto LABEL_28;
      }
    }

    else
    {
      v19 = [v7 userInfo];
      v20 = [v19 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v20)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = CKErrorRetryAfterKey;
              v31 = 2112;
              v32 = objc_opt_class();
              v26 = v32;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid %@: %@", buf, 0x16u);
            }
          }

          v16 = +[NSAssertionHandler currentHandler];
          v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTaskGate.m"];
          [v16 handleFailureInMethod:a2 object:self file:v27 lineNumber:213 description:{@"Invalid %@: %@", CKErrorRetryAfterKey, objc_opt_class()}];

LABEL_28:
          abort();
        }

        [v20 doubleValue];
        v21 = [NSDate dateWithTimeIntervalSinceNow:?];
        v22 = self->_throttlingDate;
        self->_throttlingDate = v21;
      }
    }

    if (!self->_throttlingDate)
    {
      v23 = [v28 dateByAddingTimeInterval:3600.0];
      v24 = self->_throttlingDate;
      self->_throttlingDate = v23;
    }

    [(_CPLCloudKitTaskGroupThrottler *)self _adjustThrottlingDateWithNow:v28 andError:v7];
  }

  else if (v7)
  {
    if ([CPLCloudKitErrors isOperationCancelledOrDeferredError:v7])
    {
      ++self->_cancelledCount;
    }

    else
    {
      ++self->_failedCount;
    }
  }
}

- (BOOL)shouldRunOperationsNow:(id)a3 error:(id *)a4
{
  v7 = a3;
  [(_CPLCloudKitTaskGroupThrottler *)self _adjustThrottlingDateWithNow:v7 andError:0];
  if (self->_throttlingDate && [v7 compare:?] == -1)
  {
    [(_CPLCloudKitTaskGroupThrottler *)self _incrementThrottledCount];
    throttlingError = self->_throttlingError;
    if (!throttlingError)
    {
      sub_10019906C(a2, self);
    }

    v8 = 0;
    if (a4)
    {
      *a4 = throttlingError;
    }
  }

  else
  {
    v8 = 1;
  }

  ++self->_count;

  return v8;
}

- (id)statusWithNow:(id)a3
{
  v4 = a3;
  [(_CPLCloudKitTaskGroupThrottler *)self _adjustThrottlingDateWithNow:v4 andError:0];
  v5 = [NSMutableString alloc];
  count = self->_count;
  v7 = objc_msgSend(v5, "initWithFormat:", @"%@: %lu (failed: %lu"), self->_groupName, count, self->_failedCount;
  v8 = v7;
  if (self->_cancelledCount)
  {
    [v7 appendFormat:@" - cancelled: %lu", self->_cancelledCount];
  }

  throttlingDate = self->_throttlingDate;
  if (throttlingDate)
  {
    [(NSDate *)throttlingDate timeIntervalSinceDate:v4];
    v10 = [CPLDateFormatter stringForTimeInterval:?];
    [v8 appendFormat:@" - throttled: %lu - throttled for %@"], self->_throttledCount, v10);
  }

  else if (self->_throttledCount)
  {
    [v8 appendFormat:@" - throttled: %lu - not throttled any more"], self->_throttledCount);
  }

  else
  {
    [v8 appendString:@""]);
  }

  return v8;
}

@end