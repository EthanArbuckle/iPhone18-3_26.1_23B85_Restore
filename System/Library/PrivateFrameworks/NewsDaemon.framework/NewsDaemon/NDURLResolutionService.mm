@interface NDURLResolutionService
- (NDURLResolutionService)init;
- (NDURLResolutionService)initWithContentContext:(id)context;
- (void)_determineWhetherResolutionIsAllowedWithCompletion:(id)completion;
- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)completion;
- (void)resolveNewsURL:(id)l withCompletion:(id)completion;
- (void)resolveWebURL:(id)l withCompletion:(id)completion;
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

- (NDURLResolutionService)initWithContentContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = NDURLResolutionService;
  v6 = [(NDURLResolutionService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
    contentDirectory = [contextCopy contentDirectory];
    v9 = [NSURL fileURLWithPath:contentDirectory];

    v10 = [FCWebURLResolutionEndpointConnection alloc];
    configurationManager = [contextCopy configurationManager];
    v12 = +[FCNetworkReachability sharedNetworkReachability];
    v13 = [v10 initWithConfigurationManager:configurationManager cachesDirectoryURL:v9 networkReachability:v12];
    endpointConnection = v7->_endpointConnection;
    v7->_endpointConnection = v13;
  }

  return v7;
}

- (void)resolveNewsURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CB28;
  v9[3] = &unk_1000721A0;
  selfCopy = self;
  completionCopy = completion;
  v10 = lCopy;
  v7 = lCopy;
  v8 = completionCopy;
  [(NDURLResolutionService *)self _determineWhetherResolutionIsAllowedWithCompletion:v9];
}

- (void)resolveWebURL:(id)l withCompletion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CEE8;
  v8[3] = &unk_1000721A0;
  lCopy = l;
  completionCopy = completion;
  v8[4] = self;
  v6 = lCopy;
  v7 = completionCopy;
  [(NDURLResolutionService *)self _determineWhetherResolutionIsAllowedWithCompletion:v8];
}

- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D1BC;
  v4[3] = &unk_1000721F0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(NDURLResolutionService *)selfCopy _determineWhetherResolutionIsAllowedWithCompletion:v4];
}

- (void)_determineWhetherResolutionIsAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053250();
  }

  v4 = [[FCNewsAvailabilityMonitor alloc] initWithProcessVariant:1];
  if ([v4 isNewsAvailable])
  {
    v5 = +[FCNetworkReachability sharedNetworkReachability];
    isCloudKitReachable = [v5 isCloudKitReachable];

    if (isCloudKitReachable)
    {
      +[FCAppleAccount sharedAccount];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000D508;
      v9 = v8[3] = &unk_100071F18;
      v10 = completionCopy;
      v7 = v9;
      [v7 loadStoreFrontWithCompletionHandler:v8];
    }

    else
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_10000D4F4;
      v14 = &unk_100071BC8;
      v15 = completionCopy;
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
    v20 = completionCopy;
    v20[2](v20, 0);
    v7 = v20;
  }
}

@end