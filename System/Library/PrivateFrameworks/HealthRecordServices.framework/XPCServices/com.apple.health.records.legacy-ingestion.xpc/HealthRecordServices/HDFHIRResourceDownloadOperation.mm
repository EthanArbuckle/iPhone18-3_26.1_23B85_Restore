@interface HDFHIRResourceDownloadOperation
+ (id)FHIRDateStringFromDate:(id)date;
+ (id)FHIRDateTimeStringFromDate:(id)date;
+ (id)_schemaVariableBindingsWithLastFetchDate:(id)date;
+ (id)operationWithDownloadRequest:(id)request session:(id)session error:(id *)error downloadCompletion:(id)completion;
- (HDFHIRResourceDownloadOperation)init;
- (HDFHIRResourceDownloadOperation)initWithDownloadRequest:(id)request session:(id)session resourceSchema:(id)schema downloadCompletion:(id)completion;
- (id)_performPreflightChecks;
- (id)_requestResultWithError:(id)error;
- (id)_requestResultWithResourceBundleData:(id)data;
- (id)_schemaVariableBindings;
- (id)assembleEndStates;
- (id)logDescription;
- (void)_handlePreflightError:(id)error;
- (void)_handleTaskCompletedWithData:(id)data endState:(id)state;
- (void)_handleTaskError:(id)error retryCount:(int64_t)count endState:(id)state;
- (void)_performFetchWithURL:(id)l retryCount:(int64_t)count;
- (void)consumeEndState:(id)state;
- (void)main;
@end

@implementation HDFHIRResourceDownloadOperation

- (HDFHIRResourceDownloadOperation)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRResourceDownloadOperation)initWithDownloadRequest:(id)request session:(id)session resourceSchema:(id)schema downloadCompletion:(id)completion
{
  requestCopy = request;
  sessionCopy = session;
  schemaCopy = schema;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = HDFHIRResourceDownloadOperation;
  v14 = [(HDFHIRResourceDownloadOperation *)&v24 init];
  if (v14)
  {
    v15 = [requestCopy copy];
    request = v14->_request;
    v14->_request = v15;

    v17 = [completionCopy copy];
    downloadCompletion = v14->_downloadCompletion;
    v14->_downloadCompletion = v17;

    objc_storeStrong(&v14->_session, session);
    v19 = [schemaCopy copy];
    resourceSchema = v14->_resourceSchema;
    v14->_resourceSchema = v19;

    v21 = dispatch_group_create();
    fetchGroup = v14->_fetchGroup;
    v14->_fetchGroup = v21;
  }

  return v14;
}

+ (id)operationWithDownloadRequest:(id)request session:(id)session error:(id *)error downloadCompletion:(id)completion
{
  requestCopy = request;
  sessionCopy = session;
  completionCopy = completion;
  resourceSchemaDefinition = [requestCopy resourceSchemaDefinition];
  context = [requestCopy context];
  accountInformation = [context accountInformation];
  authentication = [accountInformation authentication];
  v17 = [(HDFHIREndpointSchema *)HDFHIRResourceSchema schemaWithDefinition:resourceSchemaDefinition authenticationInformation:authentication error:error];

  if (v17)
  {
    v18 = [[self alloc] initWithDownloadRequest:requestCopy session:sessionCopy resourceSchema:v17 downloadCompletion:completionCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)main
{
  _performPreflightChecks = [(HDFHIRResourceDownloadOperation *)self _performPreflightChecks];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (_performPreflightChecks)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      logDescription = [(HDFHIRResourceDownloadOperation *)self logDescription];
      name = [(HDFHIREndpointSchema *)self->_resourceSchema name];
      v12 = 138543874;
      v13 = logDescription;
      v14 = 2114;
      v15 = name;
      v16 = 2114;
      v17 = _performPreflightChecks;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will skip download for %{public}@: %{public}@", &v12, 0x20u);
    }

    [(HDFHIRResourceDownloadOperation *)self _handlePreflightError:_performPreflightChecks];
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B480(v4, self);
    }

    v8 = objc_alloc_init(NSMutableArray);
    [(HDFHIRResourceDownloadOperation *)self setEndStates:v8];

    _defaultRetryCount = [(HDFHIRResourceDownloadOperation *)self _defaultRetryCount];
    fullRequestURL = [(HKFHIRResourceDownloadRequest *)self->_request fullRequestURL];
    [(HDFHIRResourceDownloadOperation *)self _performFetchWithURL:fullRequestURL retryCount:_defaultRetryCount];

    dispatch_group_wait(self->_fetchGroup, 0xFFFFFFFFFFFFFFFFLL);
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B518(v11, self);
    }
  }
}

- (id)_performPreflightChecks
{
  if ([(HDFHIREndpointSchema *)self->_resourceSchema isEnabled])
  {
    v3 = 0;
  }

  else
  {
    name = [(HDFHIREndpointSchema *)self->_resourceSchema name];
    v3 = [NSError hk_error:125 format:@"resource schema %@ is not enabled", name];
  }

  return v3;
}

- (void)_performFetchWithURL:(id)l retryCount:(int64_t)count
{
  lCopy = l;
  if (count < 0)
  {
    sub_10000B5B0();
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000029A4;
  v39[3] = &unk_100018488;
  v39[4] = self;
  v39[5] = count;
  v7 = objc_retainBlock(v39);
  dispatch_group_enter(self->_fetchGroup);
  context = [(HKFHIRResourceDownloadRequest *)self->_request context];
  options = [context options];

  if ((options & 2) != 0)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      logDescription = [(HDFHIRResourceDownloadOperation *)self logDescription];
      *buf = 138543362;
      v41 = logDescription;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ BYPASSING FHIR REQUEST, this FHIR resource download request has the skip web request option set.", buf, 0xCu);
    }

    v16 = [@"{resourceType: Bundle entry:{"dataUsingEncoding:", 4} []}"];
    if (lCopy)
    {
      v20 = lCopy;
      v21 = 4;
    }

    else
    {
      resourceType = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
      v29 = [NSString stringWithFormat:@"http://127.0.0.1/FHIR/%@", resourceType];
      v20 = [NSURL URLWithString:v29];

      v21 = 5;
    }

    resourceType2 = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
    v31 = [HKFHIRRequestTaskEndState endStateForCanceledRequestAtURL:v20 resourceType:resourceType2 interactionType:v21];

    (v7[2])(v7, v16, v31, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    v11 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG);
    if (lCopy)
    {
      if (v11)
      {
        v32 = v10;
        logDescription2 = [(HDFHIRResourceDownloadOperation *)self logDescription];
        resourceType3 = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
        *buf = 138543874;
        v41 = logDescription2;
        v42 = 2114;
        v43 = resourceType3;
        v44 = 2048;
        countCopy = count;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}@ fetching %{public}@ resources with %zd retry(ies) remaining", buf, 0x20u);
      }

      v12 = [HDFHIRResourceRequestTask alloc];
      session = self->_session;
      resourceSchema = self->_resourceSchema;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100002A30;
      v35[3] = &unk_1000184B0;
      v15 = &v36;
      v36 = v7;
      v16 = [(HDFHIRResourceRequestTask *)v12 initWithCredentialedSession:session resourceSchema:resourceSchema requestURL:lCopy completion:v35];
    }

    else
    {
      if (v11)
      {
        sub_10000B624(v10, self, count);
      }

      v22 = [HDFHIRResourceQueryTask alloc];
      v23 = self->_session;
      v24 = self->_resourceSchema;
      context2 = [(HKFHIRResourceDownloadRequest *)self->_request context];
      queryMode = [context2 queryMode];
      _schemaVariableBindings = [(HDFHIRResourceDownloadOperation *)self _schemaVariableBindings];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100002A20;
      v37[3] = &unk_1000184B0;
      v15 = &v38;
      v38 = v7;
      v16 = [(HDFHIRResourceQueryTask *)v22 initWithCredentialedSession:v23 resourceSchema:v24 queryMode:queryMode bindings:_schemaVariableBindings completion:v37];
    }

    [(HDFHIRRequestTask *)v16 resume];
  }
}

- (void)_handlePreflightError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (!errorCopy)
  {
    sub_10000B6E4();
    errorCopy = 0;
  }

  downloadCompletion = self->_downloadCompletion;
  v6 = [(HDFHIRResourceDownloadOperation *)self _requestResultWithError:errorCopy];
  downloadCompletion[2](downloadCompletion, v6);
}

- (void)_handleTaskError:(id)error retryCount:(int64_t)count endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  if (!errorCopy)
  {
    sub_10000B758();
    if ((count & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_10000B7CC(a2, self, stateCopy);
    goto LABEL_10;
  }

  if (count < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  [(HDFHIRResourceDownloadOperation *)self consumeEndState:stateCopy];
  if (count)
  {
    session = [(HDFHIRResourceDownloadOperation *)self session];
    specification = [session specification];
    v13 = [specification shouldRetryFailedResourceTaskWithError:errorCopy];

    if (v13)
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        logDescription = [(HDFHIRResourceDownloadOperation *)self logDescription];
        hrs_safelyLoggableDescription = [errorCopy hrs_safelyLoggableDescription];
        v21 = 138543874;
        v22 = logDescription;
        v23 = 2114;
        v24 = hrs_safelyLoggableDescription;
        v25 = 2048;
        countCopy = count;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching encountered error: %{public}@. %zd retry(ies) remaining", &v21, 0x20u);
      }

      fullRequestURL = [(HKFHIRResourceDownloadRequest *)self->_request fullRequestURL];
      [(HDFHIRResourceDownloadOperation *)self _performFetchWithURL:fullRequestURL retryCount:count - 1];
      goto LABEL_13;
    }
  }

LABEL_10:
  _HKInitializeLogging();
  v19 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_10000B860(v19, self, errorCopy);
  }

  downloadCompletion = self->_downloadCompletion;
  fullRequestURL = [(HDFHIRResourceDownloadOperation *)self _requestResultWithError:errorCopy];
  downloadCompletion[2](downloadCompletion, fullRequestURL);
LABEL_13:
}

- (void)_handleTaskCompletedWithData:(id)data endState:(id)state
{
  dataCopy = data;
  [(HDFHIRResourceDownloadOperation *)self consumeEndState:state];
  downloadCompletion = self->_downloadCompletion;
  v8 = [(HDFHIRResourceDownloadOperation *)self _requestResultWithResourceBundleData:dataCopy];

  downloadCompletion[2](downloadCompletion, v8);
}

- (id)_schemaVariableBindings
{
  v3 = objc_opt_class();
  context = [(HKFHIRResourceDownloadRequest *)self->_request context];
  lastFetchDate = [context lastFetchDate];
  v6 = [v3 _schemaVariableBindingsWithLastFetchDate:lastFetchDate];

  return v6;
}

+ (id)_schemaVariableBindingsWithLastFetchDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v5 = dateCopy;
    v6 = objc_alloc_init(NSDateComponents);
    [v6 setDay:-1];
    v7 = +[NSCalendar hk_gregorianCalendarWithUTCTimeZone];
    v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];
  }

  else
  {
    v8 = +[NSDate distantPast];
  }

  v9 = [self FHIRDateStringFromDate:v8];
  v10 = [self FHIRDateTimeStringFromDate:v8];
  v11 = [NSString stringWithFormat:@"ge%@", v9];
  v12 = [NSString stringWithFormat:@"ge%@", v10];
  v15[0] = HKFHIREndpointSchemaVariableGreaterEqualLastFetchDate;
  v15[1] = HKFHIREndpointSchemaVariableGreaterEqualLastFetchDateTime;
  v16[0] = v11;
  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v13;
}

- (id)_requestResultWithResourceBundleData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    sub_10000B934();
  }

  v5 = [HKFHIRResourceDownloadRequestResult alloc];
  assembleEndStates = [(HDFHIRResourceDownloadOperation *)self assembleEndStates];
  consumeRefreshResult = [(HDFHIRCredentialedSession *)self->_session consumeRefreshResult];
  v8 = [v5 initWithResourceBundleData:dataCopy endStates:assembleEndStates refreshResult:consumeRefreshResult];

  return v8;
}

- (id)_requestResultWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    sub_10000B9A8();
  }

  v5 = [HKFHIRResourceDownloadRequestResult alloc];
  assembleEndStates = [(HDFHIRResourceDownloadOperation *)self assembleEndStates];
  consumeRefreshResult = [(HDFHIRCredentialedSession *)self->_session consumeRefreshResult];
  v8 = [v5 initWithError:errorCopy endStates:assembleEndStates refreshResult:consumeRefreshResult];

  return v8;
}

- (void)consumeEndState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (!stateCopy)
  {
    sub_10000BA1C();
    stateCopy = 0;
  }

  [(NSMutableArray *)self->_endStates addObject:stateCopy];
}

- (id)assembleEndStates
{
  v3 = [HKFHIRRequestTaskEndStates alloc];
  if (self->_endStates)
  {
    endStates = self->_endStates;
  }

  else
  {
    endStates = &__NSArray0__struct;
  }

  v5 = [v3 initWithEndStates:endStates];

  return v5;
}

- (id)logDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(HDFHIREndpointSchema *)self->_resourceSchema name];
  v6 = [NSString stringWithFormat:@"%@ resource: %@", v4, name];

  return v6;
}

+ (id)FHIRDateStringFromDate:(id)date
{
  v3 = qword_10001EF78;
  dateCopy = date;
  if (v3 != -1)
  {
    sub_10000BA90();
  }

  v5 = [qword_10001EF70 stringFromDate:dateCopy];

  return v5;
}

+ (id)FHIRDateTimeStringFromDate:(id)date
{
  v3 = qword_10001EF88;
  dateCopy = date;
  if (v3 != -1)
  {
    sub_10000BAA4();
  }

  v5 = [qword_10001EF80 stringFromDate:dateCopy];

  return v5;
}

@end