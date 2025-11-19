@interface FindMyDeviceEmergencyCallInfoPublisherXPCService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_processServerStatusCode:(int64_t)a3;
- (id)_requestHeaders;
- (id)_requestURLWithServerHostStr:(id)a3;
- (id)_session;
- (void)_baaRequestWithServerHost:(id)a3 emergencyCallInfoDict:(id)a4 completionBlock:(id)a5;
- (void)_requestWithInfo:(id)a3 completionBlock:(id)a4;
- (void)publishInfo:(id)a3 completion:(id)a4;
@end

@implementation FindMyDeviceEmergencyCallInfoPublisherXPCService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_100001F6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceEmergencyCallInfoPublisherXPCInterface];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v8, v9, v10, v11, objc_opt_class(), 0];
  [v7 setClasses:v12 forSelector:"publishInfo:completion:" argumentIndex:0 ofReply:0];
  [v5 setExportedInterface:v7];
  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)publishInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001F6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[FindMyDeviceEmergencyCallInfoPublisherXPCService publishInfo:completion:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s with %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EC4;
  v10[3] = &unk_10000D088;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(FindMyDeviceEmergencyCallInfoPublisherXPCService *)self _requestWithInfo:v6 completionBlock:v10];
}

- (void)_requestWithInfo:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"kFMDEmergencyCallInfoPublisherConfigKey"];
  v9 = [v8 serverHost];
  v10 = [v7 objectForKeyedSubscript:@"kFMDEmergencyCallInfoPublisherInfoKey"];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = kFMDErrorDomain;
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"Missing info arguments";
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [NSError errorWithDomain:v12 code:1 userInfo:v13];

    v6[2](v6, 0, v14);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000033B0;
    v15[3] = &unk_10000D0B0;
    v16 = v6;
    [(FindMyDeviceEmergencyCallInfoPublisherXPCService *)self _baaRequestWithServerHost:v9 emergencyCallInfoDict:v10 completionBlock:v15];
    v14 = v16;
  }
}

- (id)_requestURLWithServerHostStr:(id)a3
{
  v3 = [NSString stringWithFormat:@"%@://%@%@", @"https", a3, @"/fmipservice/findme/test_path"];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)_requestHeaders
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 productType];
  v5 = +[FMSystemInfo sharedInstance];
  v6 = [v5 osBuildVersion];
  v7 = [NSString stringWithFormat:@"FindMyDeviceEmergencyCallInfoPublisher/%@/%@", v4, v6];
  [v2 setObject:v7 forKeyedSubscript:@"User-Agent"];

  v8 = +[FMSystemInfo sharedInstance];
  v9 = [v8 deviceUDID];
  [v2 setObject:v9 forKeyedSubscript:@"X-Mme-Device-Id"];

  v10 = +[FMSystemInfo sharedInstance];
  v11 = [v10 osVersion];
  [v2 setObject:v11 forKeyedSubscript:@"X-Apple-Find-API-Ver"];

  v12 = +[NSTimeZone systemTimeZone];
  v13 = [v12 name];
  [v2 setObject:v13 forKeyedSubscript:@"X-Apple-I-TimeZone"];

  v14 = +[NSLocale autoupdatingCurrentLocale];
  v15 = [v14 localeIdentifier];
  [v2 setObject:v15 forKeyedSubscript:@"X-Apple-I-Locale"];

  v16 = objc_alloc_init(NSDateFormatter);
  [v16 setDateStyle:2];
  [v16 setTimeStyle:2];
  v17 = +[NSDate date];
  v18 = [v16 stringFromDate:v17];
  [v2 setObject:v18 forKeyedSubscript:@"X-Apple-I-Client-Time"];

  v19 = [v2 copy];

  return v19;
}

- (void)_baaRequestWithServerHost:(id)a3 emergencyCallInfoDict:(id)a4 completionBlock:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v25 = 0;
  v10 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v25];
  v11 = v25;
  if (v11)
  {
    v12 = sub_100001F6C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error: Can't parse emergencyCallInfo", buf, 2u);
    }

    v9[2](v9, 0, v11);
  }

  else
  {
    v13 = v10;
    v14 = v13;
    CC_SHA256([v13 bytes], objc_msgSend(v13, "length"), buf);
    v15 = [NSData dataWithBytes:buf length:32];
    v16 = [[FMDIdentitySigningRequest alloc] initWithData:v15];
    v17 = objc_alloc_init(FMDDeviceIdentityFactory);
    v18 = sub_100001F6C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 134217984;
      v27 = 60;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sign Using BAA with timeout: %lu seconds", v26, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000039F4;
    v21[3] = &unk_10000D0D8;
    v21[4] = self;
    v22 = v20;
    v23 = v13;
    v24 = v9;
    v19 = v13;
    [v17 baaIdentityAttestationForSigningRequest:v16 completion:v21];
  }
}

- (id)_session
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v3 = [FMDURLSessionFactory sessionWithConfiguration:v2];

  return v3;
}

- (id)_processServerStatusCode:(int64_t)a3
{
  v4 = sub_100001F6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FindMyDeviceEmergencyCallInfoPublisherXPCService response's status code %li", buf, 0xCu);
  }

  if (a3 > 499)
  {
    if (a3 == 500)
    {
      v11 = NSLocalizedFailureReasonErrorKey;
      v12 = @"Internal server error";
      v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v6 = 3;
      goto LABEL_13;
    }

    if (a3 == 503)
    {
      v9 = NSLocalizedFailureReasonErrorKey;
      v10 = @"Service unavailable";
      v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v6 = 4;
      goto LABEL_13;
    }

LABEL_10:
    v7 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.FindMyDeviceEmergencyCallInfoPublisherXPCService" code:1 userInfo:0];
    goto LABEL_14;
  }

  if (a3 == 200)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (a3 != 400)
  {
    goto LABEL_10;
  }

  v13 = NSLocalizedFailureReasonErrorKey;
  v14 = @"Bad request";
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = 2;
LABEL_13:
  v7 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.FindMyDeviceEmergencyCallInfoPublisherXPCService" code:v6 userInfo:v5];

LABEL_14:

  return v7;
}

@end