@interface FAFetchFamilyCircleOperation
- (BOOL)_isCacheValid:(id)a3;
- (BOOL)_shouldFetchFromServer:(id)a3;
- (BOOL)_signedInAccountMatchesApproverRequirementsFromCache:(id)a3;
- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)a3 cache:(id)a4 marqueeCacheHanlder:(id)a5 requestCoalescer:(id)a6 familyRefreshActivityScheduler:(id)a7;
- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)a3 cache:(id)a4 marqueeCacheHanlder:(id)a5 requestCoalescer:(id)a6 familyRefreshActivityScheduler:(id)a7 rateLimiter:(id)a8;
- (id)_accountStore;
- (id)_familyCircleWithResponse:(id)a3;
- (id)_fetchCircleRequestWithCacheResponse:(id)a3;
- (id)_renewCredentials;
- (id)cachePolicyString;
- (id)fetchCircleFromServerWithCacheResponse:(id)a3;
- (id)fetchFamilyCircle;
- (id)username;
- (void)familyCircleWithServerResponse:(id)a3 responseHeaders:(id)a4 completion:(id)a5;
- (void)updateUserDefaultsWithFamilyCircle:(id)a3;
@end

@implementation FAFetchFamilyCircleOperation

- (id)fetchFamilyCircle
{
  v3 = [(FANetworkClient *)self networkService];
  v4 = [v3 ensureDeviceUnlockedSinceBoot];
  v5 = [v4 then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002D04;
  v14[3] = &unk_1000A5F78;
  v14[4] = self;
  v6 = (v5)[2](v5, v14);
  v7 = [v6 then];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002FB8;
  v13[3] = &unk_1000A5FE0;
  v13[4] = self;
  v8 = (v7)[2](v7, v13);
  v9 = [v8 then];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000330C;
  v12[3] = &unk_1000A6030;
  v12[4] = self;
  v10 = (v9)[2](v9, v12);

  return v10;
}

- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)a3 cache:(id)a4 marqueeCacheHanlder:(id)a5 requestCoalescer:(id)a6 familyRefreshActivityScheduler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[FARateLimiter alloc] initWithIdentifier:@"FAFetchFamilyCircleOperation"];
  v18 = [(FAFetchFamilyCircleOperation *)self initWithNetworkService:v16 cache:v15 marqueeCacheHanlder:v14 requestCoalescer:v13 familyRefreshActivityScheduler:v12 rateLimiter:v17];

  return v18;
}

- (FAFetchFamilyCircleOperation)initWithNetworkService:(id)a3 cache:(id)a4 marqueeCacheHanlder:(id)a5 requestCoalescer:(id)a6 familyRefreshActivityScheduler:(id)a7 rateLimiter:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = FAFetchFamilyCircleOperation;
  v18 = [(FANetworkClient *)&v23 initWithNetworkService:a3];
  v19 = v18;
  if (v18)
  {
    v18->_cachePolicy = 1;
    objc_storeStrong(&v18->_cache, a4);
    objc_storeStrong(&v19->_requestCoalescer, a6);
    objc_storeStrong(&v19->_marqueeCacheHandler, a5);
    objc_storeStrong(&v19->_familyRefreshActivityScheduler, a7);
    objc_storeStrong(&v19->_rateLimiter, a8);
  }

  return v19;
}

- (id)username
{
  v2 = [(FANetworkClient *)self networkService];
  v3 = [v2 account];
  v4 = [v3 aa_personID];

  return v4;
}

- (BOOL)_shouldFetchFromServer:(id)a3
{
  v5 = a3;
  v6 = [(FAFetchFamilyCircleOperation *)self cachePolicy];
  if (v6 > 1)
  {
    if (v6 == 1000)
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

    if (v6 == 2)
    {
      v8 = _FALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to fetch the family circle from the server because cachePolicy=FACachePolicyReloadIgnoringCache", buf, 2u);
      }

      v9 = [(FAFetchFamilyCircleOperation *)self rateLimiter];
      v10 = [(FAFetchFamilyCircleOperation *)self clientProcess];
      v3 = [v9 isAllowedWithClientName:v10];
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 familyCircle];

      if (v7)
      {
        v3 = ![(FAFetchFamilyCircleOperation *)self _isCacheValid:v5];
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

- (BOOL)_isCacheValid:(id)a3
{
  v4 = a3;
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
    v7 = [v4 familyCircleIfFresh];
    v6 = [(FAFetchFamilyCircleOperation *)self _signedInAccountMatchesApproverRequirementsFromCache:v7];
  }

  return v6;
}

- (BOOL)_signedInAccountMatchesApproverRequirementsFromCache:(id)a3
{
  v4 = a3;
  if ([(FAFetchFamilyCircleOperation *)self signedInAccountShouldBeApprover])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 members];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([v9 isMe])
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v10 = [v6 isParent];
    v11 = _FALogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
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

  LOBYTE(v10) = 1;
LABEL_20:

  return v10;
}

- (id)fetchCircleFromServerWithCacheResponse:(id)a3
{
  v4 = a3;
  v5 = [(FAFetchFamilyCircleOperation *)self cachePolicy]== 1000 || [(FAFetchFamilyCircleOperation *)self cachePolicy]== 2;
  v6 = [(FAFetchFamilyCircleOperation *)self rateLimiter];
  v7 = [(FAFetchFamilyCircleOperation *)self clientProcess];
  [v6 recordCallWithClientName:v7];

  requestCoalescer = self->_requestCoalescer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006C74;
  v12[3] = &unk_1000A60D0;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [(FARequestCoalescer *)requestCoalescer performBlockForKey:@"FAFetchFamilyCircleOperationKey" force:v5 block:v12];

  return v10;
}

- (id)_fetchCircleRequestWithCacheResponse:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000070A8;
  v12[3] = &unk_1000A6120;
  v12[4] = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 initWithBlock:v12];
  v8 = [v7 then];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007718;
  v11[3] = &unk_1000A6148;
  v11[4] = self;
  v9 = (v8)[2](v8, v11);

  return v9;
}

- (id)_familyCircleWithResponse:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000077EC;
  v9[3] = &unk_1000A6120;
  v10 = v4;
  v11 = self;
  v6 = v4;
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
  v2 = [(FAFetchFamilyCircleOperation *)self cachePolicy];
  if (v2 > 2)
  {
    return @"Internal-Reload-Ignoring-Cache";
  }

  else
  {
    return off_1000A61E0[v2];
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

- (void)updateUserDefaultsWithFamilyCircle:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 members];
  v6 = [v5 count];

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

    v9 = [v3 members];
    v10 = [v9 count];
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
    v11 = [v3 pendingMembers];
    v12 = [v11 count];

    v13 = [v3 pendingInvitesOnly];
    v14 = [v13 count];

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

- (void)familyCircleWithServerResponse:(id)a3 responseHeaders:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"status"];
  if (v11 && (v12 = v11, [v8 objectForKeyedSubscript:@"status"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v12, !v14))
  {
    v15 = [[FAFamilyCircle alloc] initWithServerResponse:v8];
    [(FAFetchFamilyCircleOperation *)self updateUserDefaultsWithFamilyCircle:v15];
    if (v15)
    {
      cache = self->_cache;
      v23 = [v9 objectForKeyedSubscript:@"X-Apple-Cache-ServerTag"];
      v24 = [(FAFamilyCircleCacheProtocol *)cache updateWithFamilyCircle:v15 serverTag:v23];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100008488;
      v25[3] = &unk_1000A61C0;
      v25[4] = self;
      v27 = v10;
      v15 = v15;
      v26 = v15;
      [v24 onComplete:v25];
    }

    else
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = [v8 objectForKeyedSubscript:@"status-message"];

    if (v16)
    {
      v17 = [v8 objectForKeyedSubscript:@"status-message"];
      [v15 setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    v18 = [v8 objectForKeyedSubscript:@"status"];
    v19 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"FAFetchFamilyCircleErrorDomain", [v18 integerValue], v15);

    v20 = _FALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = v8;
      v21 = v29;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: Error in server response - %@", buf, 0x16u);
    }

    (*(v10 + 2))(v10, 0, v19);
  }
}

@end