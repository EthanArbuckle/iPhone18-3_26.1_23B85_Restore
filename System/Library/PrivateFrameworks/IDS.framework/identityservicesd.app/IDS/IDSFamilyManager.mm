@interface IDSFamilyManager
+ (IDSFamilyManager)sharedInstance;
- (IDSFamilyManager)init;
- (IDSFamilyManager)initWithFamilyRequest:(id)request;
- (id)handlesFromFamilyMember:(id)member;
- (void)_familyDidUpdate:(id)update;
- (void)_notifyFamilyServicesOfUpdate;
- (void)fetchFamilyWithFamilyRequest:(id)request;
- (void)forceFamilyFetch;
@end

@implementation IDSFamilyManager

+ (IDSFamilyManager)sharedInstance
{
  if (qword_100CBD380 != -1)
  {
    sub_10091F604();
  }

  v3 = qword_100CBD388;

  return v3;
}

- (id)handlesFromFamilyMember:(id)member
{
  memberCopy = member;
  v4 = objc_alloc_init(NSMutableSet);
  appleID = [memberCopy appleID];
  [v4 addObject:appleID];

  dictionary = [memberCopy dictionary];
  v7 = [dictionary objectForKey:@"member-appleID-aliases"];

  if (v7 && [v7 count])
  {
    v8 = [NSSet setWithArray:v7];
    [v4 unionSet:v8];
  }

  dictionary2 = [memberCopy dictionary];
  v10 = [dictionary2 objectForKey:@"member-phone-numbers"];

  if (v10 && [v10 length])
  {
    v11 = [v10 componentsSeparatedByString:{@", "}];
    v12 = [NSSet setWithArray:v11];
    [v4 unionSet:v12];
  }

  return v4;
}

- (void)fetchFamilyWithFamilyRequest:(id)request
{
  requestCopy = request;
  self->_isPendingFetch = 1;
  [(NSMutableSet *)self->_familyHandles removeAllObjects];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching Family", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004480FC;
  v6[3] = &unk_100BDC5D0;
  v6[4] = self;
  [requestCopy startRequestWithCompletionHandler:v6];
}

- (IDSFamilyManager)init
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing IDS Family Manager", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = objc_alloc_init(IMWeakLinkClass());
  v5 = [(IDSFamilyManager *)self initWithFamilyRequest:v4];

  return v5;
}

- (IDSFamilyManager)initWithFamilyRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = IDSFamilyManager;
  v5 = [(IDSFamilyManager *)&v10 init];
  if (v5)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_familyDidUpdate:" name:@"com.apple.family.family_updated" object:0];

    v7 = objc_alloc_init(NSMutableSet);
    familyHandles = v5->_familyHandles;
    v5->_familyHandles = v7;

    v5->_storedIncomingFamilyMessage = 0;
    v5->currentFetchCount = 0;
    *&v5->allowForceFetch = 1;
    [(IDSFamilyManager *)v5 fetchFamilyWithFamilyRequest:requestCopy];
  }

  return v5;
}

- (void)forceFamilyFetch
{
  if (self->_isPendingFetch)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "We're doing a  Forced Fetch already, we'll let that continue", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    ++self->currentFetchCount;
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      currentFetchCount = self->currentFetchCount;
      *buf = 67109120;
      v8 = currentFetchCount;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Forced Fetch. Fetch count is now at: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = objc_alloc_init(IMWeakLinkClass());
    [(IDSFamilyManager *)self fetchFamilyWithFamilyRequest:v6];
  }
}

- (void)_familyDidUpdate:(id)update
{
  updateCopy = update;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notification received for family update.", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  self->currentFetchCount = 0;
  self->allowForceFetch = 1;
  v6 = objc_alloc_init(IMWeakLinkClass());
  [(IDSFamilyManager *)self fetchFamilyWithFamilyRequest:v6];
}

- (void)_notifyFamilyServicesOfUpdate
{
  v3 = objc_alloc_init(NSMutableArray);
  allObjects = [(NSMutableSet *)self->_familyHandles allObjects];
  v5 = [allObjects copy];

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[IDSDServiceController sharedInstance];
  allFamilyServices = [v7 allFamilyServices];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_familyMembers;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        dictionaryRepresentation = [v14 dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];

        objc_autoreleasePoolPop(v15);
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v11);
  }

  v29 = v5;
  [v6 setObject:v5 forKey:IDSFamilyHandlesKey];
  v30 = v3;
  [v6 setObject:v3 forKey:IDSFamilyMembersKey];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = allFamilyServices;
  v17 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        v22 = objc_alloc_init(IMMessageContext);
        v23 = +[IDSDaemon sharedInstance];
        pushTopic = [v21 pushTopic];
        v25 = [v23 broadcasterForTopic:pushTopic messageContext:v22];

        v26 = +[IMRGLog registration];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          pushTopic2 = [v21 pushTopic];
          *buf = 138412290;
          v41 = pushTopic2;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "broadcasting family update on %@", buf, 0xCu);
        }

        pushTopic3 = [v21 pushTopic];
        [v25 service:pushTopic3 familyInfoUpdated:v6];
      }

      v18 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v18);
  }
}

@end