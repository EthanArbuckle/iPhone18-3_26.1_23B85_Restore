@interface NDURLResolutionService
- (NDURLResolutionService)init;
- (NDURLResolutionService)initWithContentContext:(id)a3;
- (void)_determineWhetherResolutionIsAllowedWithCompletion:(id)a3;
- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)a3;
- (void)resolveNewsURL:(id)a3 withCompletion:(id)a4;
- (void)resolveWebURL:(id)a3 withCompletion:(id)a4;
@end

@implementation NDURLResolutionService

- (NDURLResolutionService)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDURLResolutionService init]";
    v8 = 2080;
    v9 = "NDURLResolutionService.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDURLResolutionService init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDURLResolutionService)initWithContentContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = NDURLResolutionService;
  v6 = [(NDURLResolutionService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, a3);
    v8 = [v5 contentDirectory];
    v9 = [NSURL fileURLWithPath:v8];

    v10 = [FCWebURLResolutionEndpointConnection alloc];
    v11 = [v5 configurationManager];
    v12 = +[FCNetworkReachability sharedNetworkReachability];
    v13 = [v10 initWithConfigurationManager:v11 cachesDirectoryURL:v9 networkReachability:v12];
    endpointConnection = v7->_endpointConnection;
    v7->_endpointConnection = v13;
  }

  return v7;
}

- (void)resolveNewsURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CB28;
  v9[3] = &unk_1000721A0;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [(NDURLResolutionService *)self _determineWhetherResolutionIsAllowedWithCompletion:v9];
}

- (void)resolveWebURL:(id)a3 withCompletion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CEE8;
  v8[3] = &unk_1000721A0;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(NDURLResolutionService *)self _determineWhetherResolutionIsAllowedWithCompletion:v8];
}

- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D1BC;
  v4[3] = &unk_1000721F0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NDURLResolutionService *)v5 _determineWhetherResolutionIsAllowedWithCompletion:v4];
}

- (void)_determineWhetherResolutionIsAllowedWithCompletion:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053250();
  }

  v4 = [[FCNewsAvailabilityMonitor alloc] initWithProcessVariant:1];
  if ([v4 isNewsAvailable])
  {
    v5 = +[FCNetworkReachability sharedNetworkReachability];
    v6 = [v5 isCloudKitReachable];

    if (v6)
    {
      +[FCAppleAccount sharedAccount];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000D508;
      v9 = v8[3] = &unk_100071F18;
      v10 = v3;
      v7 = v9;
      [v7 loadStoreFrontWithCompletionHandler:v8];
    }

    else
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_10000D4F4;
      v14 = &unk_100071BC8;
      v15 = v3;
      v15[2](v15, 0);
      v7 = v15;
    }
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000D4E0;
    v19 = &unk_100071BC8;
    v20 = v3;
    v20[2](v20, 0);
    v7 = v20;
  }
}

@end