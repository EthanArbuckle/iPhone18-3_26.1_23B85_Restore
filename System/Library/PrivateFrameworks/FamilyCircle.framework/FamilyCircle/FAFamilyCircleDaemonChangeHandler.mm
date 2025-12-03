@interface FAFamilyCircleDaemonChangeHandler
+ (BOOL)handleURLResponse:(id)response networkService:(id)service familyRefreshActivityScheduler:(id)scheduler completion:(id)completion;
+ (void)_refetchFamilyWithNetworkService:(id)service familyRefreshActivityScheduler:(id)scheduler context:(id)context completion:(id)completion;
+ (void)handleDidRemoveMemberWithNetworkService:(id)service completion:(id)completion;
+ (void)handleDidUpdateMemberFlagWithNetworkService:(id)service completion:(id)completion;
@end

@implementation FAFamilyCircleDaemonChangeHandler

+ (BOOL)handleURLResponse:(id)response networkService:(id)service familyRefreshActivityScheduler:(id)scheduler completion:(id)completion
{
  responseCopy = response;
  serviceCopy = service;
  schedulerCopy = scheduler;
  completionCopy = completion;
  allHeaderFields = [responseCopy allHeaderFields];
  v15 = [allHeaderFields objectForKey:@"X-Apple-Family-Changed"];

  if (v15)
  {
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FAFamilyCircleDaemonChangeHandler - Family state has changed", buf, 2u);
    }

    [self _refetchFamilyWithNetworkService:serviceCopy familyRefreshActivityScheduler:schedulerCopy context:@"family_changed_header" completion:completionCopy];
  }

  allHeaderFields2 = [responseCopy allHeaderFields];
  v18 = [allHeaderFields2 objectForKey:@"X-Apple-Family-Subscription-Changed"];

  v19 = _FALogSystem();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Family subscription properties changed:", v23, 2u);
    }

    +[FABroadcaster broadcastServicesChangedNotification];
  }

  else
  {
    if (v20)
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FAFamilyCircleDaemonChangeHandler - No change header detected... Skipping family refresh update.", v22, 2u);
    }
  }

  return v15 != 0;
}

+ (void)handleDidRemoveMemberWithNetworkService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  familyRefreshActivityScheduler = [serviceCopy familyRefreshActivityScheduler];
  [self _refetchFamilyWithNetworkService:serviceCopy familyRefreshActivityScheduler:familyRefreshActivityScheduler context:@"removed_family_member" completion:completionCopy];
}

+ (void)handleDidUpdateMemberFlagWithNetworkService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  familyRefreshActivityScheduler = [serviceCopy familyRefreshActivityScheduler];
  [self _refetchFamilyWithNetworkService:serviceCopy familyRefreshActivityScheduler:familyRefreshActivityScheduler context:@"update_member_flag" completion:completionCopy];
}

+ (void)_refetchFamilyWithNetworkService:(id)service familyRefreshActivityScheduler:(id)scheduler context:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  schedulerCopy = scheduler;
  serviceCopy = service;
  v13 = _FALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412546;
    v33 = v15;
    v34 = 2080;
    v35 = "+[FAFamilyCircleDaemonChangeHandler _refetchFamilyWithNetworkService:familyRefreshActivityScheduler:context:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ %s: Not clearing family cache upon family changes", buf, 0x16u);
  }

  v16 = [FAFamilyCircleCache alloc];
  account = [serviceCopy account];
  v18 = [(FAFamilyCircleCache *)v16 initWithAccount:account];

  v19 = objc_alloc_init(FAMarqueeUpdateHandler);
  v20 = [FAFetchFamilyCircleOperation alloc];
  v21 = +[FARequestCoalescer sharedInstance];
  v22 = [(FAFetchFamilyCircleOperation *)v20 initWithNetworkService:serviceCopy cache:v18 marqueeCacheHanlder:v19 requestCoalescer:v21 familyRefreshActivityScheduler:schedulerCopy];

  [(FAFetchFamilyCircleOperation *)v22 setSignedInAccountShouldBeApprover:0];
  [(FAFetchFamilyCircleOperation *)v22 setCachePolicy:1000];
  v23 = +[NSProcessInfo processInfo];
  processName = [v23 processName];
  [(FAFetchFamilyCircleOperation *)v22 setClientProcess:processName];

  [(FAFetchFamilyCircleOperation *)v22 setContext:contextCopy];
  [(FAFetchFamilyCircleOperation *)v22 setPromptUserToResolveAuthenticatonFailure:0];
  fetchFamilyCircle = [(FAFetchFamilyCircleOperation *)v22 fetchFamilyCircle];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000217E0;
  v30[3] = &unk_1000A6C70;
  v31 = completionCopy;
  v26 = completionCopy;
  [fetchFamilyCircle onComplete:v30];

  v27 = _FALogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 138412546;
    v33 = v29;
    v34 = 2080;
    v35 = "+[FAFamilyCircleDaemonChangeHandler _refetchFamilyWithNetworkService:familyRefreshActivityScheduler:context:completion:]";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ %s done", buf, 0x16u);
  }
}

@end