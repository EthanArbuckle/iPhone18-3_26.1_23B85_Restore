@interface CPLCloudKitMetric
+ (void)initialize;
- (CPLCloudKitMetric)initWithName:(id)name;
- (NSString)resultDescription;
- (id)description;
- (id)redactedDescription;
- (void)_submitIfNecessary;
- (void)associateWithOperation:(id)operation;
- (void)associatedOperationDidComplete:(id)complete;
- (void)begin;
- (void)drop;
- (void)end;
- (void)setError:(id)error;
@end

@implementation CPLCloudKitMetric

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (void)associateWithOperation:(id)operation
{
  operationCopy = operation;
  if (!self->_submitted)
  {
    if (byte_1002C5640 == 1)
    {
      sub_1001AEB28(self, operationCopy);
    }

    outstandingOperations = self->_outstandingOperations;
    if (outstandingOperations)
    {
      [(NSMutableSet *)outstandingOperations addObject:operationCopy];
    }

    else
    {
      v6 = [[NSMutableSet alloc] initWithObjects:{operationCopy, 0}];
      v7 = self->_outstandingOperations;
      self->_outstandingOperations = v6;
    }
  }
}

- (void)associatedOperationDidComplete:(id)complete
{
  completeCopy = complete;
  if (!self->_submitted)
  {
    if (byte_1002C5640 == 1)
    {
      sub_1001AEBE8(self, completeCopy);
    }

    if (([(CKEventMetric *)self->_ckEventMetric associateWithCompletedOperation:completeCopy]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_1000ABB78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        cplOperationClassDescription = [completeCopy cplOperationClassDescription];
        v7 = 138412546;
        selfCopy = self;
        v9 = 2112;
        v10 = cplOperationClassDescription;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: failed to associate with completed %@", &v7, 0x16u);
      }
    }

    [(NSMutableSet *)self->_outstandingOperations removeObject:completeCopy];
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

- (void)setError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v6 = errorCopy;
    if ([errorCopy isCPLOperationCancelledError])
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
    errorCopy = v6;
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
  identifier = [(CPLCloudKitMetric *)self identifier];
  resultDescription = [(CPLCloudKitMetric *)self resultDescription];
  v6 = [v3 initWithFormat:@"<%@%@>", identifier, resultDescription];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  identifier = [(CPLCloudKitMetric *)self identifier];
  resultDescription = [(CPLCloudKitMetric *)self resultDescription];
  v6 = [v3 initWithFormat:@"<%@%@>", identifier, resultDescription];

  return v6;
}

- (CPLCloudKitMetric)initWithName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CPLCloudKitMetric;
  v5 = [(CPLCloudKitMetric *)&v16 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [CKEventMetric alloc];
    v9 = +[NSDate date];
    v10 = [v8 initWithEventName:nameCopy atTime:v9];
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
        selfCopy = self;
        v7 = 2048;
        v8 = outstandingBeginCount;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: begin (%lu)", &v5, 0x16u);
      }
    }
  }
}

@end