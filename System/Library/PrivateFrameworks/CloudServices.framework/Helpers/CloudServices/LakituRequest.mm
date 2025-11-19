@interface LakituRequest
- (NSMutableURLRequest)urlRequest;
- (NSString)loggingDescription;
- (id)sessionConfig;
- (id)validateInput;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)performRequestWithHandler:(id)a3;
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
  v4 = [(LakituRequest *)self urlString];
  v5 = [v3 initWithString:v4];

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

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(LakituRequest *)self activity];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100032F08;
  v20[3] = &unk_100075A40;
  v21 = v11;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  v19 = v11;
  os_activity_apply(v15, v20);
}

- (id)sessionConfig
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = objc_alloc_init(AKAppleIDSession);
  [v3 set_appleIDContext:v4];

  [v3 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleEscrowProxyService];
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:@"application/x-apple-plist" forKeyedSubscript:@"Content-Type"];
  v6 = [(LakituRequest *)self authorizationHeader];
  [v5 setObject:v6 forKeyedSubscript:@"Authorization"];

  v7 = [(LakituRequest *)self additionalHeaders];
  [v5 addEntriesFromDictionary:v7];

  [v3 setHTTPAdditionalHeaders:v5];

  return v3;
}

- (void)performRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(LakituRequest *)self validateInput];
  if (v5)
  {
    v4[2](v4, 0, v5);
  }

  else
  {
    v6 = [(LakituRequest *)self sessionConfig];
    v7 = [NSURLSession sessionWithConfiguration:v6 delegate:self delegateQueue:0];
    v8 = [(LakituRequest *)self urlRequest];
    v9 = _os_activity_create(&_mh_execute_header, "start data task", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    [(LakituRequest *)self setActivity:v9];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000333DC;
    v14[3] = &unk_100075AB8;
    v15 = v9;
    v16 = self;
    v17 = v4;
    v10 = v9;
    v11 = [v7 dataTaskWithRequest:v8 completionHandler:v14];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(LakituRequest *)self loggingDescription];
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: starting escrow proxy request (%@)", buf, 0x16u);
    }

    [v11 resume];
    [v7 finishTasksAndInvalidate];
  }
}

@end