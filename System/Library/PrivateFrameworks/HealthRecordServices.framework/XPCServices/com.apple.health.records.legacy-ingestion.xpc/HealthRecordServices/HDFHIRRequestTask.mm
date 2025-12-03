@interface HDFHIRRequestTask
- (HDFHIRRequestTask)init;
- (HDFHIRRequestTask)initWithSession:(id)session;
- (NSString)resourceType;
- (id)errorForRequest:(id)request response:(id)response data:(id)data;
- (int64_t)interactionType;
- (void)createURLRequestWithCompletion:(id)completion;
- (void)resume;
- (void)startTaskWithRequest:(id)request completion:(id)completion;
@end

@implementation HDFHIRRequestTask

- (HDFHIRRequestTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRRequestTask)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = HDFHIRRequestTask;
  v6 = [(HDFHIRRequestTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = dispatch_group_create();
    group = v7->_group;
    v7->_group = v8;
  }

  return v7;
}

- (void)resume
{
  if (!self->_resumed || (sub_10000C23C(a2, self, &self->_resumed) & 1) == 0)
  {
    self->_resumed = 1;
    dispatch_group_enter(self->_group);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009858;
    v6[3] = &unk_100018738;
    v6[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100009864;
    v4[3] = &unk_100018760;
    v4[4] = self;
    v5 = objc_retainBlock(v6);
    v3 = v5;
    [(HDFHIRRequestTask *)self createURLRequestWithCompletion:v4];
  }
}

- (void)startTaskWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (!requestCopy)
  {
    sub_10000C2AC();
  }

  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C324(v9, self, requestCopy);
  }

  session = [(HDFHIRRequestTask *)self session];
  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11;
  uRLSession = [session URLSession];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100009B5C;
  v17[3] = &unk_100018788;
  v17[4] = self;
  v18 = requestCopy;
  v21 = v12;
  v19 = completionCopy;
  v20 = a2;
  v14 = completionCopy;
  v15 = requestCopy;
  v16 = [uRLSession dataTaskWithRequest:v15 completionHandler:v17];

  [v16 resume];
}

- (NSString)resourceType
{
  sub_1000035AC();
  objc_opt_class();
  sub_10000A574();
  return 0;
}

- (int64_t)interactionType
{
  sub_1000035AC();
  objc_opt_class();
  sub_10000A574();
  return 0;
}

- (void)createURLRequestWithCompletion:(id)completion
{
  sub_1000035AC();
  v4 = v3;
  objc_opt_class();
  sub_10000A574();
  (*(v4 + 2))(v4, 0, 0);
}

- (id)errorForRequest:(id)request response:(id)response data:(id)data
{
  sub_1000035AC();
  objc_opt_class();
  sub_10000A574();
  return 0;
}

@end