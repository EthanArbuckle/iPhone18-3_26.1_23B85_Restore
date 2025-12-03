@interface LakituRequest
- (NSMutableURLRequest)urlRequest;
- (NSString)loggingDescription;
- (id)sessionConfig;
- (id)validateInput;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)performRequestWithHandler:(id)handler;
@end

@implementation LakituRequest

- (NSString)loggingDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)validateInput
{
  if (qword_100084AD0)
  {
    [qword_100084AD0 timeIntervalSinceNow];
    v3 = v2;
    v4 = CloudServicesLog();
    v5 = v4;
    if (v3 <= 0.0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clearing retry-after date", buf, 2u);
      }

      v7 = 0;
      v6 = qword_100084AD0;
      qword_100084AD0 = 0;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10004D41C(v5);
      }

      v6 = [CSDateUtilities localStringFromDate:qword_100084AD0];
      v7 = [CloudServicesError errorWithCode:304 format:@"retry-after date has not passed, throttling calls to escrow proxy until %@", v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSMutableURLRequest)urlRequest
{
  v3 = [NSURL alloc];
  urlString = [(LakituRequest *)self urlString];
  v5 = [v3 initWithString:urlString];

  if (v5)
  {
    v6 = [[NSMutableURLRequest alloc] initWithURL:v5];
    [v6 ak_addDeviceUDIDHeader];
    [v6 ak_addClientInfoHeader];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  activity = [(LakituRequest *)self activity];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100032F08;
  v20[3] = &unk_100075A40;
  v21 = taskCopy;
  v22 = requestCopy;
  v23 = redirectionCopy;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = redirectionCopy;
  v18 = requestCopy;
  v19 = taskCopy;
  os_activity_apply(activity, v20);
}

- (id)sessionConfig
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = objc_alloc_init(AKAppleIDSession);
  [v3 set_appleIDContext:v4];

  [v3 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleEscrowProxyService];
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:@"application/x-apple-plist" forKeyedSubscript:@"Content-Type"];
  authorizationHeader = [(LakituRequest *)self authorizationHeader];
  [v5 setObject:authorizationHeader forKeyedSubscript:@"Authorization"];

  additionalHeaders = [(LakituRequest *)self additionalHeaders];
  [v5 addEntriesFromDictionary:additionalHeaders];

  [v3 setHTTPAdditionalHeaders:v5];

  return v3;
}

- (void)performRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  validateInput = [(LakituRequest *)self validateInput];
  if (validateInput)
  {
    handlerCopy[2](handlerCopy, 0, validateInput);
  }

  else
  {
    sessionConfig = [(LakituRequest *)self sessionConfig];
    v7 = [NSURLSession sessionWithConfiguration:sessionConfig delegate:self delegateQueue:0];
    urlRequest = [(LakituRequest *)self urlRequest];
    v9 = _os_activity_create(&_mh_execute_header, "start data task", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    [(LakituRequest *)self setActivity:v9];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000333DC;
    v14[3] = &unk_100075AB8;
    v15 = v9;
    selfCopy = self;
    v17 = handlerCopy;
    v10 = v9;
    v11 = [v7 dataTaskWithRequest:urlRequest completionHandler:v14];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      loggingDescription = [(LakituRequest *)self loggingDescription];
      *buf = 138412546;
      v19 = loggingDescription;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: starting escrow proxy request (%@)", buf, 0x16u);
    }

    [v11 resume];
    [v7 finishTasksAndInvalidate];
  }
}

@end