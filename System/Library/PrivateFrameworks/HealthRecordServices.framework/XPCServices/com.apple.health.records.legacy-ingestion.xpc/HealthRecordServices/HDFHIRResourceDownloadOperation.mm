@interface HDFHIRResourceDownloadOperation
+ (id)FHIRDateStringFromDate:(id)a3;
+ (id)FHIRDateTimeStringFromDate:(id)a3;
+ (id)_schemaVariableBindingsWithLastFetchDate:(id)a3;
+ (id)operationWithDownloadRequest:(id)a3 session:(id)a4 error:(id *)a5 downloadCompletion:(id)a6;
- (HDFHIRResourceDownloadOperation)init;
- (HDFHIRResourceDownloadOperation)initWithDownloadRequest:(id)a3 session:(id)a4 resourceSchema:(id)a5 downloadCompletion:(id)a6;
- (id)_performPreflightChecks;
- (id)_requestResultWithError:(id)a3;
- (id)_requestResultWithResourceBundleData:(id)a3;
- (id)_schemaVariableBindings;
- (id)assembleEndStates;
- (id)logDescription;
- (void)_handlePreflightError:(id)a3;
- (void)_handleTaskCompletedWithData:(id)a3 endState:(id)a4;
- (void)_handleTaskError:(id)a3 retryCount:(int64_t)a4 endState:(id)a5;
- (void)_performFetchWithURL:(id)a3 retryCount:(int64_t)a4;
- (void)consumeEndState:(id)a3;
- (void)main;
@end

@implementation HDFHIRResourceDownloadOperation

- (HDFHIRResourceDownloadOperation)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRResourceDownloadOperation)initWithDownloadRequest:(id)a3 session:(id)a4 resourceSchema:(id)a5 downloadCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HDFHIRResourceDownloadOperation;
  v14 = [(HDFHIRResourceDownloadOperation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    request = v14->_request;
    v14->_request = v15;

    v17 = [v13 copy];
    downloadCompletion = v14->_downloadCompletion;
    v14->_downloadCompletion = v17;

    objc_storeStrong(&v14->_session, a4);
    v19 = [v12 copy];
    resourceSchema = v14->_resourceSchema;
    v14->_resourceSchema = v19;

    v21 = dispatch_group_create();
    fetchGroup = v14->_fetchGroup;
    v14->_fetchGroup = v21;
  }

  return v14;
}

+ (id)operationWithDownloadRequest:(id)a3 session:(id)a4 error:(id *)a5 downloadCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 resourceSchemaDefinition];
  v14 = [v10 context];
  v15 = [v14 accountInformation];
  v16 = [v15 authentication];
  v17 = [(HDFHIREndpointSchema *)HDFHIRResourceSchema schemaWithDefinition:v13 authenticationInformation:v16 error:a5];

  if (v17)
  {
    v18 = [[a1 alloc] initWithDownloadRequest:v10 session:v11 resourceSchema:v17 downloadCompletion:v12];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)main
{
  v3 = [(HDFHIRResourceDownloadOperation *)self _performPreflightChecks];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (v3)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(HDFHIRResourceDownloadOperation *)self logDescription];
      v7 = [(HDFHIREndpointSchema *)self->_resourceSchema name];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will skip download for %{public}@: %{public}@", &v12, 0x20u);
    }

    [(HDFHIRResourceDownloadOperation *)self _handlePreflightError:v3];
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B480(v4, self);
    }

    v8 = objc_alloc_init(NSMutableArray);
    [(HDFHIRResourceDownloadOperation *)self setEndStates:v8];

    v9 = [(HDFHIRResourceDownloadOperation *)self _defaultRetryCount];
    v10 = [(HKFHIRResourceDownloadRequest *)self->_request fullRequestURL];
    [(HDFHIRResourceDownloadOperation *)self _performFetchWithURL:v10 retryCount:v9];

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
    v4 = [(HDFHIREndpointSchema *)self->_resourceSchema name];
    v3 = [NSError hk_error:125 format:@"resource schema %@ is not enabled", v4];
  }

  return v3;
}

- (void)_performFetchWithURL:(id)a3 retryCount:(int64_t)a4
{
  v6 = a3;
  if (a4 < 0)
  {
    sub_10000B5B0();
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000029A4;
  v39[3] = &unk_100018488;
  v39[4] = self;
  v39[5] = a4;
  v7 = objc_retainBlock(v39);
  dispatch_group_enter(self->_fetchGroup);
  v8 = [(HKFHIRResourceDownloadRequest *)self->_request context];
  v9 = [v8 options];

  if ((v9 & 2) != 0)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(HDFHIRResourceDownloadOperation *)self logDescription];
      *buf = 138543362;
      v41 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ BYPASSING FHIR REQUEST, this FHIR resource download request has the skip web request option set.", buf, 0xCu);
    }

    v16 = [@"{resourceType: Bundle entry:{"dataUsingEncoding:", 4} []}"];
    if (v6)
    {
      v20 = v6;
      v21 = 4;
    }

    else
    {
      v28 = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
      v29 = [NSString stringWithFormat:@"http://127.0.0.1/FHIR/%@", v28];
      v20 = [NSURL URLWithString:v29];

      v21 = 5;
    }

    v30 = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
    v31 = [HKFHIRRequestTaskEndState endStateForCanceledRequestAtURL:v20 resourceType:v30 interactionType:v21];

    (v7[2])(v7, v16, v31, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    v11 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v11)
      {
        v32 = v10;
        v33 = [(HDFHIRResourceDownloadOperation *)self logDescription];
        v34 = [(HKFHIRResourceDownloadRequest *)self->_request resourceType];
        *buf = 138543874;
        v41 = v33;
        v42 = 2114;
        v43 = v34;
        v44 = 2048;
        v45 = a4;
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
      v16 = [(HDFHIRResourceRequestTask *)v12 initWithCredentialedSession:session resourceSchema:resourceSchema requestURL:v6 completion:v35];
    }

    else
    {
      if (v11)
      {
        sub_10000B624(v10, self, a4);
      }

      v22 = [HDFHIRResourceQueryTask alloc];
      v23 = self->_session;
      v24 = self->_resourceSchema;
      v25 = [(HKFHIRResourceDownloadRequest *)self->_request context];
      v26 = [v25 queryMode];
      v27 = [(HDFHIRResourceDownloadOperation *)self _schemaVariableBindings];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100002A20;
      v37[3] = &unk_1000184B0;
      v15 = &v38;
      v38 = v7;
      v16 = [(HDFHIRResourceQueryTask *)v22 initWithCredentialedSession:v23 resourceSchema:v24 queryMode:v26 bindings:v27 completion:v37];
    }

    [(HDFHIRRequestTask *)v16 resume];
  }
}

- (void)_handlePreflightError:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    sub_10000B6E4();
    v4 = 0;
  }

  downloadCompletion = self->_downloadCompletion;
  v6 = [(HDFHIRResourceDownloadOperation *)self _requestResultWithError:v4];
  downloadCompletion[2](downloadCompletion, v6);
}

- (void)_handleTaskError:(id)a3 retryCount:(int64_t)a4 endState:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    sub_10000B758();
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_10000B7CC(a2, self, v10);
    goto LABEL_10;
  }

  if (a4 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  [(HDFHIRResourceDownloadOperation *)self consumeEndState:v10];
  if (a4)
  {
    v11 = [(HDFHIRResourceDownloadOperation *)self session];
    v12 = [v11 specification];
    v13 = [v12 shouldRetryFailedResourceTaskWithError:v9];

    if (v13)
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [(HDFHIRResourceDownloadOperation *)self logDescription];
        v17 = [v9 hrs_safelyLoggableDescription];
        v21 = 138543874;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        v25 = 2048;
        v26 = a4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching encountered error: %{public}@. %zd retry(ies) remaining", &v21, 0x20u);
      }

      v18 = [(HKFHIRResourceDownloadRequest *)self->_request fullRequestURL];
      [(HDFHIRResourceDownloadOperation *)self _performFetchWithURL:v18 retryCount:a4 - 1];
      goto LABEL_13;
    }
  }

LABEL_10:
  _HKInitializeLogging();
  v19 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_10000B860(v19, self, v9);
  }

  downloadCompletion = self->_downloadCompletion;
  v18 = [(HDFHIRResourceDownloadOperation *)self _requestResultWithError:v9];
  downloadCompletion[2](downloadCompletion, v18);
LABEL_13:
}

- (void)_handleTaskCompletedWithData:(id)a3 endState:(id)a4
{
  v6 = a3;
  [(HDFHIRResourceDownloadOperation *)self consumeEndState:a4];
  downloadCompletion = self->_downloadCompletion;
  v8 = [(HDFHIRResourceDownloadOperation *)self _requestResultWithResourceBundleData:v6];

  downloadCompletion[2](downloadCompletion, v8);
}

- (id)_schemaVariableBindings
{
  v3 = objc_opt_class();
  v4 = [(HKFHIRResourceDownloadRequest *)self->_request context];
  v5 = [v4 lastFetchDate];
  v6 = [v3 _schemaVariableBindingsWithLastFetchDate:v5];

  return v6;
}

+ (id)_schemaVariableBindingsWithLastFetchDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(NSDateComponents);
    [v6 setDay:-1];
    v7 = +[NSCalendar hk_gregorianCalendarWithUTCTimeZone];
    v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];
  }

  else
  {
    v8 = +[NSDate distantPast];
  }

  v9 = [a1 FHIRDateStringFromDate:v8];
  v10 = [a1 FHIRDateTimeStringFromDate:v8];
  v11 = [NSString stringWithFormat:@"ge%@", v9];
  v12 = [NSString stringWithFormat:@"ge%@", v10];
  v15[0] = HKFHIREndpointSchemaVariableGreaterEqualLastFetchDate;
  v15[1] = HKFHIREndpointSchemaVariableGreaterEqualLastFetchDateTime;
  v16[0] = v11;
  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v13;
}

- (id)_requestResultWithResourceBundleData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10000B934();
  }

  v5 = [HKFHIRResourceDownloadRequestResult alloc];
  v6 = [(HDFHIRResourceDownloadOperation *)self assembleEndStates];
  v7 = [(HDFHIRCredentialedSession *)self->_session consumeRefreshResult];
  v8 = [v5 initWithResourceBundleData:v4 endStates:v6 refreshResult:v7];

  return v8;
}

- (id)_requestResultWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10000B9A8();
  }

  v5 = [HKFHIRResourceDownloadRequestResult alloc];
  v6 = [(HDFHIRResourceDownloadOperation *)self assembleEndStates];
  v7 = [(HDFHIRCredentialedSession *)self->_session consumeRefreshResult];
  v8 = [v5 initWithError:v4 endStates:v6 refreshResult:v7];

  return v8;
}

- (void)consumeEndState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    sub_10000BA1C();
    v4 = 0;
  }

  [(NSMutableArray *)self->_endStates addObject:v4];
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
  v5 = [(HDFHIREndpointSchema *)self->_resourceSchema name];
  v6 = [NSString stringWithFormat:@"%@ resource: %@", v4, v5];

  return v6;
}

+ (id)FHIRDateStringFromDate:(id)a3
{
  v3 = qword_10001EF78;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10000BA90();
  }

  v5 = [qword_10001EF70 stringFromDate:v4];

  return v5;
}

+ (id)FHIRDateTimeStringFromDate:(id)a3
{
  v3 = qword_10001EF88;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10000BAA4();
  }

  v5 = [qword_10001EF80 stringFromDate:v4];

  return v5;
}

@end