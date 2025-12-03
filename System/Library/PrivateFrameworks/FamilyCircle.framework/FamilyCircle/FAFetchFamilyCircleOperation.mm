@interface FAFetchFamilyCircleOperation
- (BOOL)_isCacheValid:(id)valid;
- (BOOL)_shouldFetchFromServer:(id)server;
- (BOOL)_signedInAccountMatchesApproverRequirementsFromCache:(id)cache;
- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)service cache:(id)cache marqueeCacheHanlder:(id)hanlder requestCoalescer:(id)coalescer familyRefreshActivityScheduler:(id)scheduler;
- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)service cache:(id)cache marqueeCacheHanlder:(id)hanlder requestCoalescer:(id)coalescer familyRefreshActivityScheduler:(id)scheduler rateLimiter:(id)limiter;
- (id)_accountStore;
- (id)_familyCircleWithResponse:(id)response;
- (id)_fetchCircleRequestWithCacheResponse:(id)response;
- (id)_renewCredentials;
- (id)cachePolicyString;
- (id)fetchCircleFromServerWithCacheResponse:(id)response;
- (id)fetchFamilyCircle;
- (id)username;
- (void)familyCircleWithServerResponse:(id)response responseHeaders:(id)headers completion:(id)completion;
- (void)updateUserDefaultsWithFamilyCircle:(id)circle;
@end

@implementation FAFetchFamilyCircleOperation

- (id)fetchFamilyCircle
{
  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002D04;
  v14[3] = &unk_1000A5F78;
  v14[4] = self;
  v6 = (then)[2](then, v14);
  then2 = [v6 then];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002FB8;
  v13[3] = &unk_1000A5FE0;
  v13[4] = self;
  v8 = (then2)[2](then2, v13);
  then3 = [v8 then];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000330C;
  v12[3] = &unk_1000A6030;
  v12[4] = self;
  v10 = (then3)[2](then3, v12);

  return v10;
}

- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)service cache:(id)cache marqueeCacheHanlder:(id)hanlder requestCoalescer:(id)coalescer familyRefreshActivityScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  coalescerCopy = coalescer;
  hanlderCopy = hanlder;
  cacheCopy = cache;
  serviceCopy = service;
  v17 = [[FARateLimiter alloc] initWithIdentifier:@"FAFetchFamilyCircleOperation"];
  v18 = [(FAFetchFamilyCircleOperation *)self initWithNetworkService:serviceCopy cache:cacheCopy marqueeCacheHanlder:hanlderCopy requestCoalescer:coalescerCopy familyRefreshActivityScheduler:schedulerCopy rateLimiter:v17];

  return v18;
}

- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)service cache:(id)cache marqueeCacheHanlder:(id)hanlder requestCoalescer:(id)coalescer familyRefreshActivityScheduler:(id)scheduler rateLimiter:(id)limiter
{
  cacheCopy = cache;
  hanlderCopy = hanlder;
  coalescerCopy = coalescer;
  schedulerCopy = scheduler;
  limiterCopy = limiter;
  v23.receiver = self;
  v23.super_class = FAFetchFamilyCircleOperation;
  v18 = [(FANetworkClient *)&v23 initWithNetworkService:service];
  v19 = v18;
  if (v18)
  {
    v18->_cachePolicy = 1;
    objc_storeStrong(&v18->_cache, cache);
    objc_storeStrong(&v19->_requestCoalescer, coalescer);
    objc_storeStrong(&v19->_marqueeCacheHandler, hanlder);
    objc_storeStrong(&v19->_familyRefreshActivityScheduler, scheduler);
    objc_storeStrong(&v19->_rateLimiter, limiter);
  }

  return v19;
}

- (id)username
{
  networkService = [(FANetworkClient *)self networkService];
  account = [networkService account];
  aa_personID = [account aa_personID];

  return aa_personID;
}

- (BOOL)_shouldFetchFromServer:(id)server
{
  serverCopy = server;
  cachePolicy = [(FAFetchFamilyCircleOperation *)self cachePolicy];
  if (cachePolicy > 1)
  {
    if (cachePolicy == 1000)
    {
      v12 = _FALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v13 = "Attempting to fetch the family circle from the server because cachePolicy=FACachePolicyInternalReloadIgnoringCache";
        v14 = &v18;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      }

LABEL_19:

      v3 = 1;
      goto LABEL_20;
    }

    if (cachePolicy == 2)
    {
      v8 = _FALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to fetch the family circle from the server because cachePolicy=FACachePolicyReloadIgnoringCache", buf, 2u);
      }

      rateLimiter = [(FAFetchFamilyCircleOperation *)self rateLimiter];
      clientProcess = [(FAFetchFamilyCircleOperation *)self clientProcess];
      v3 = [rateLimiter isAllowedWithClientName:clientProcess];
    }
  }

  else if (cachePolicy)
  {
    if (cachePolicy == 1)
    {
      familyCircle = [serverCopy familyCircle];

      if (familyCircle)
      {
        v3 = ![(FAFetchFamilyCircleOperation *)self _isCacheValid:serverCopy];
        goto LABEL_20;
      }

      v12 = _FALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v13 = "Attempting to fetch the family circle from the server because there is no cache";
        v14 = &v16;
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping fetching the family circle from the server because cachePolicy=FACachePolicyReturnCacheDontLoad", v17, 2u);
    }

    v3 = 0;
  }

LABEL_20:

  return v3 & 1;
}

- (BOOL)_isCacheValid:(id)valid
{
  validCopy = valid;
  if (CFPreferencesGetAppBooleanValue(@"AlwaysUseCache", @"com.apple.familycircle", 0))
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Skipping cache validation for family circle due to preferences override", v9, 2u);
    }

    v6 = 1;
  }

  else
  {
    familyCircleIfFresh = [validCopy familyCircleIfFresh];
    v6 = [(FAFetchFamilyCircleOperation *)self _signedInAccountMatchesApproverRequirementsFromCache:familyCircleIfFresh];
  }

  return v6;
}

- (BOOL)_signedInAccountMatchesApproverRequirementsFromCache:(id)cache
{
  cacheCopy = cache;
  if ([(FAFetchFamilyCircleOperation *)self signedInAccountShouldBeApprover])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    members = [cacheCopy members];
    v6 = [members countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(members);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([v9 isMe])
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [members countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    isParent = [v6 isParent];
    v11 = _FALogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isParent)
    {
      if (v12)
      {
        *buf = 138412290;
        v20 = v6;
        v13 = "The is-me member %@ is a parent/approver as expected in the cached family circle";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v20 = v6;
      v13 = "Forcing a server fetch of the family circle because the is-me member %@ is not a parent/approver";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  LOBYTE(isParent) = 1;
LABEL_20:

  return isParent;
}

- (id)fetchCircleFromServerWithCacheResponse:(id)response
{
  responseCopy = response;
  v5 = [(FAFetchFamilyCircleOperation *)self cachePolicy]== 1000 || [(FAFetchFamilyCircleOperation *)self cachePolicy]== 2;
  rateLimiter = [(FAFetchFamilyCircleOperation *)self rateLimiter];
  clientProcess = [(FAFetchFamilyCircleOperation *)self clientProcess];
  [rateLimiter recordCallWithClientName:clientProcess];

  requestCoalescer = self->_requestCoalescer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006C74;
  v12[3] = &unk_1000A60D0;
  v12[4] = self;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = [(FARequestCoalescer *)requestCoalescer performBlockForKey:@"FAFetchFamilyCircleOperationKey" force:v5 block:v12];

  return v10;
}

- (id)_fetchCircleRequestWithCacheResponse:(id)response
{
  responseCopy = response;
  v5 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000070A8;
  v12[3] = &unk_1000A6120;
  v12[4] = self;
  v13 = responseCopy;
  v6 = responseCopy;
  v7 = [v5 initWithBlock:v12];
  then = [v7 then];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007718;
  v11[3] = &unk_1000A6148;
  v11[4] = self;
  v9 = (then)[2](then, v11);

  return v9;
}

- (id)_familyCircleWithResponse:(id)response
{
  responseCopy = response;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000077EC;
  v9[3] = &unk_1000A6120;
  v10 = responseCopy;
  selfCopy = self;
  v6 = responseCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)_renewCredentials
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000079D8;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)cachePolicyString
{
  cachePolicy = [(FAFetchFamilyCircleOperation *)self cachePolicy];
  if (cachePolicy > 2)
  {
    return @"Internal-Reload-Ignoring-Cache";
  }

  else
  {
    return off_1000A61E0[cachePolicy];
  }
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)updateUserDefaultsWithFamilyCircle:(id)circle
{
  circleCopy = circle;
  v4 = +[NSUserDefaults standardUserDefaults];
  members = [circleCopy members];
  v6 = [members count];

  v7 = _FALogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v21 = 136315138;
      v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: cache family count more than 0", &v21, 0xCu);
    }

    members2 = [circleCopy members];
    v10 = [members2 count];
    [v4 setInteger:v10 forKey:FAFamilySettingRowFamilyCountKey];
  }

  else
  {
    if (v8)
    {
      v21 = 136315138;
      v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: delete cached family count", &v21, 0xCu);
    }

    [v4 removeObjectForKey:FAFamilySettingRowFamilyCountKey];
  }

  if (_os_feature_enabled_impl())
  {
    pendingMembers = [circleCopy pendingMembers];
    v12 = [pendingMembers count];

    pendingInvitesOnly = [circleCopy pendingInvitesOnly];
    v14 = [pendingInvitesOnly count];

    v15 = _FALogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v12 < 1)
    {
      if (v16)
      {
        v21 = 136315138;
        v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: delete cached invitation count count", &v21, 0xCu);
      }

      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 removeObjectForKey:FAFamilySettingRowPendingInvitesKey];
    }

    else
    {
      if (v16)
      {
        v21 = 136315138;
        v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: cache pending invites count more than 1", &v21, 0xCu);
      }

      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 setInteger:v12 forKey:FAFamilySettingRowPendingInvitesKey];
    }

    v18 = _FALogSystem();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v14 < 1)
    {
      if (v19)
      {
        v21 = 136315138;
        v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: delete cached  count count", &v21, 0xCu);
      }

      v20 = +[NSUserDefaults standardUserDefaults];
      [v20 removeObjectForKey:FAFamilyInvitationsReceivedKey];
    }

    else
    {
      if (v19)
      {
        v21 = 136315138;
        v22 = "[FAFetchFamilyCircleOperation updateUserDefaultsWithFamilyCircle:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: cache inviters count more than 1", &v21, 0xCu);
      }

      v20 = +[NSUserDefaults standardUserDefaults];
      [v20 setInteger:v14 forKey:FAFamilyInvitationsReceivedKey];
    }
  }
}

- (void)familyCircleWithServerResponse:(id)response responseHeaders:(id)headers completion:(id)completion
{
  responseCopy = response;
  headersCopy = headers;
  completionCopy = completion;
  v11 = [responseCopy objectForKeyedSubscript:@"status"];
  if (v11 && (v12 = v11, [responseCopy objectForKeyedSubscript:@"status"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v12, !v14))
  {
    v15 = [[FAFamilyCircle alloc] initWithServerResponse:responseCopy];
    [(FAFetchFamilyCircleOperation *)self updateUserDefaultsWithFamilyCircle:v15];
    if (v15)
    {
      cache = self->_cache;
      v23 = [headersCopy objectForKeyedSubscript:@"X-Apple-Cache-ServerTag"];
      v24 = [(FAFamilyCircleCacheProtocol *)cache updateWithFamilyCircle:v15 serverTag:v23];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100008488;
      v25[3] = &unk_1000A61C0;
      v25[4] = self;
      v27 = completionCopy;
      v15 = v15;
      v26 = v15;
      [v24 onComplete:v25];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = [responseCopy objectForKeyedSubscript:@"status-message"];

    if (v16)
    {
      v17 = [responseCopy objectForKeyedSubscript:@"status-message"];
      [v15 setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    v18 = [responseCopy objectForKeyedSubscript:@"status"];
    v19 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"FAFetchFamilyCircleErrorDomain", [v18 integerValue], v15);

    v20 = _FALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = responseCopy;
      v21 = v29;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: Error in server response - %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

@end