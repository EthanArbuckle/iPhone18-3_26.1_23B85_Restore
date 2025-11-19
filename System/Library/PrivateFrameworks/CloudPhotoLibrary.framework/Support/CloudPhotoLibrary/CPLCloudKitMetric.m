@interface CPLCloudKitMetric
+ (void)initialize;
- (CPLCloudKitMetric)initWithName:(id)a3;
- (NSString)resultDescription;
- (id)description;
- (id)redactedDescription;
- (void)_submitIfNecessary;
- (void)associateWithOperation:(id)a3;
- (void)associatedOperationDidComplete:(id)a3;
- (void)begin;
- (void)drop;
- (void)end;
- (void)setError:(id)a3;
@end

@implementation CPLCloudKitMetric

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    byte_1002C5640 = [v2 BOOLForKey:@"CPLCloudKitLogMetrics"];

    if (byte_1002C5640 == 1)
    {
      sub_1001AE9FC();
    }
  }
}

- (void)_submitIfNecessary
{
  if (!self->_outstandingBeginCount && ![(NSMutableSet *)self->_outstandingOperations count])
  {
    self->_submitted = 1;
    if (byte_1002C5640 == 1)
    {
      sub_1001AEA6C(self);
    }

    [(CPLCloudKitMetric *)self prepareCKEventMetric:self->_ckEventMetric];
    v3 = [NSNumber numberWithInteger:self->_result];
    [(CKEventMetric *)self->_ckEventMetric setObject:v3 forKeyedSubscript:@"result"];

    ckEventMetric = self->_ckEventMetric;
    v5 = +[NSDate date];
    [(CKEventMetric *)ckEventMetric setEndTime:v5];

    [(CKContainer *)self->_container submitEventMetric:self->_ckEventMetric];
  }
}

- (void)associateWithOperation:(id)a3
{
  v4 = a3;
  if (!self->_submitted)
  {
    if (byte_1002C5640 == 1)
    {
      sub_1001AEB28(self, v4);
    }

    outstandingOperations = self->_outstandingOperations;
    if (outstandingOperations)
    {
      [(NSMutableSet *)outstandingOperations addObject:v4];
    }

    else
    {
      v6 = [[NSMutableSet alloc] initWithObjects:{v4, 0}];
      v7 = self->_outstandingOperations;
      self->_outstandingOperations = v6;
    }
  }
}

- (void)associatedOperationDidComplete:(id)a3
{
  v4 = a3;
  if (!self->_submitted)
  {
    if (byte_1002C5640 == 1)
    {
      sub_1001AEBE8(self, v4);
    }

    if (([(CKEventMetric *)self->_ckEventMetric associateWithCompletedOperation:v4]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_1000ABB78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v4 cplOperationClassDescription];
        v7 = 138412546;
        v8 = self;
        v9 = 2112;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: failed to associate with completed %@", &v7, 0x16u);
      }
    }

    [(NSMutableSet *)self->_outstandingOperations removeObject:v4];
    [(CPLCloudKitMetric *)self _submitIfNecessary];
  }
}

- (void)end
{
  if (!self->_submitted)
  {
    outstandingBeginCount = self->_outstandingBeginCount;
    p_outstandingBeginCount = &self->_outstandingBeginCount;
    v4 = outstandingBeginCount;
    if (!outstandingBeginCount)
    {
      sub_1001AED74(a2, self);
    }

    if (byte_1002C5640 == 1 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001AECA8(p_outstandingBeginCount, self, &v6);
      v4 = v6;
    }

    self->_outstandingBeginCount = v4 - 1;
    [(CPLCloudKitMetric *)self _submitIfNecessary];
  }
}

- (void)setError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 isCPLOperationCancelledError])
    {
      v5 = 2;
    }

    else if ([v6 isCPLOperationDeferredError])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    self->_result = v5;
    v4 = v6;
  }

  else
  {
    self->_result = 0;
  }
}

- (void)drop
{
  self->_submitted = 1;
  self->_outstandingBeginCount = 0;
  outstandingOperations = self->_outstandingOperations;
  self->_outstandingOperations = 0;
}

- (NSString)resultDescription
{
  v2 = self->_result - 1;
  if (v2 > 2)
  {
    return &stru_10027C2F0;
  }

  else
  {
    return *(&off_100276D28 + v2);
  }
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(CPLCloudKitMetric *)self identifier];
  v5 = [(CPLCloudKitMetric *)self resultDescription];
  v6 = [v3 initWithFormat:@"<%@%@>", v4, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = [(CPLCloudKitMetric *)self identifier];
  v5 = [(CPLCloudKitMetric *)self resultDescription];
  v6 = [v3 initWithFormat:@"<%@%@>", v4, v5];

  return v6;
}

- (CPLCloudKitMetric)initWithName:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPLCloudKitMetric;
  v5 = [(CPLCloudKitMetric *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [CKEventMetric alloc];
    v9 = +[NSDate date];
    v10 = [v8 initWithEventName:v4 atTime:v9];
    ckEventMetric = v5->_ckEventMetric;
    v5->_ckEventMetric = v10;

    v12 = byte_1002C5640 == 1 ? [[NSString alloc] initWithFormat:@"%@ #%lu", v5->_name, sub_1000ABACC()] : v5->_name;
    identifier = v5->_identifier;
    v5->_identifier = v12;

    if (byte_1002C5640 == 1 && (_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_1000ABB78();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: starting", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (void)begin
{
  if (!self->_submitted)
  {
    ++self->_outstandingBeginCount;
    if (byte_1002C5640 == 1 && (_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_1000ABB78();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        outstandingBeginCount = self->_outstandingBeginCount;
        v5 = 138412546;
        v6 = self;
        v7 = 2048;
        v8 = outstandingBeginCount;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: begin (%lu)", &v5, 0x16u);
      }
    }
  }
}

@end