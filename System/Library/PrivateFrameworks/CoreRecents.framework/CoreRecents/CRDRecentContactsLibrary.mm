@interface CRDRecentContactsLibrary
+ (id)os_log;
- (CRDRecentContactsLibrary)initWithClient:(id)client;
- (void)countRecentsUsingQuery:(id)query completion:(id)completion;
- (void)postNotificationIfNecessaryForUpdatedDomain:(id)domain;
- (void)recentContactsWithIDs:(id)ds completion:(id)completion;
- (void)recordContactEvents:(id)events domain:(id)domain sendingAddress:(id)address source:(id)source completion:(id)completion;
- (void)removeRecentContactsWithRecentIDs:(id)ds syncKeys:(id)keys domain:(id)domain completion:(id)completion;
- (void)searchRecentsUsingQuery:(id)query completion:(id)completion;
@end

@implementation CRDRecentContactsLibrary

+ (id)os_log
{
  if (qword_100034330 != -1)
  {
    sub_1000187F4();
  }

  v3 = qword_100034338;

  return v3;
}

- (CRDRecentContactsLibrary)initWithClient:(id)client
{
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = CRDRecentContactsLibrary;
  v6 = [(CRDRecentContactsLibrary *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    library = [clientCopy library];
    library = v7->_library;
    v7->_library = library;

    v10 = v7;
  }

  return v7;
}

- (void)searchRecentsUsingQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = +[CRDRecentContactsLibrary os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [queryCopy uuid];
    bundleIdentifier = [(CRDClient *)self->_client bundleIdentifier];
    *buf = 138543618;
    v27 = uuid;
    v28 = 2114;
    v29 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will execute query %{public}@ for %{public}@", buf, 0x16u);
  }

  if (self->_library)
  {
    v11 = +[CNTimeProvider defaultProvider];
    [v11 timestamp];
    v13 = v12;

    library = self->_library;
    v25 = 0;
    v15 = [(_CRRecentsLibrary *)library copyRecentsForQuery:queryCopy error:&v25];
    v16 = v25;
    if (v15)
    {
      completionCopy[2](completionCopy, v15, 0);
      v17 = +[CNTimeProvider defaultProvider];
      [v17 timestamp];
      v19 = v18;

      v20 = [CNTimeIntervalFormatter stringForTimeInterval:v19 - v13];
      v21 = +[CRDRecentContactsLibrary os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [queryCopy uuid];
        *buf = 138543618;
        v27 = uuid2;
        v28 = 2114;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Did execute query %{public}@ (%{public}@)", buf, 0x16u);
      }
    }

    else
    {
      v24 = +[CRDRecentContactsLibrary os_log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100018808(queryCopy, v16, v24);
      }

      (completionCopy)[2](completionCopy, 0, v16);
    }
  }

  else
  {
    v23 = +[CRDRecentContactsLibrary os_log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000188B8(v23);
    }

    v16 = [NSError errorWithDomain:CRRecentContactsErrorDomain code:4 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v16);
  }
}

- (void)countRecentsUsingQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = +[CRDRecentContactsLibrary os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [queryCopy uuid];
    bundleIdentifier = [(CRDClient *)self->_client bundleIdentifier];
    *buf = 138543618;
    v26 = uuid;
    v27 = 2114;
    v28 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will count recents for query %{public}@ for %{public}@", buf, 0x16u);
  }

  if (self->_library)
  {
    v11 = +[CNTimeProvider defaultProvider];
    [v11 timestamp];
    v13 = v12;

    library = self->_library;
    v24 = 0;
    v15 = [(_CRRecentsLibrary *)library countOfRecentsForQuery:queryCopy error:&v24];
    v16 = v24;
    completionCopy[2](completionCopy, v15, v16);
    v17 = +[CNTimeProvider defaultProvider];
    [v17 timestamp];
    v19 = v18;

    v20 = [CNTimeIntervalFormatter stringForTimeInterval:v19 - v13];
    v21 = +[CRDRecentContactsLibrary os_log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [queryCopy uuid];
      *buf = 138543874;
      v26 = uuid2;
      v27 = 2114;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Did execute count recents for query %{public}@ (%{public}@) error: %@", buf, 0x20u);
    }
  }

  else
  {
    v23 = +[CRDRecentContactsLibrary os_log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000188B8(v23);
    }

    v16 = [NSError errorWithDomain:CRRecentContactsErrorDomain code:4 userInfo:0];
    completionCopy[2](completionCopy, 0, v16);
  }
}

- (void)recordContactEvents:(id)events domain:(id)domain sendingAddress:(id)address source:(id)source completion:(id)completion
{
  library = self->_library;
  completionCopy = completion;
  domainCopy = domain;
  [(_CRRecentsLibrary *)library recordContactEvents:events recentsDomain:domainCopy sendingAddress:address source:source];
  completionCopy[2](completionCopy, 0);

  [(CRDRecentContactsLibrary *)self postNotificationIfNecessaryForUpdatedDomain:domainCopy];
}

- (void)removeRecentContactsWithRecentIDs:(id)ds syncKeys:(id)keys domain:(id)domain completion:(id)completion
{
  library = self->_library;
  v16 = 0;
  completionCopy = completion;
  domainCopy = domain;
  LODWORD(keys) = [(_CRRecentsLibrary *)library removeRecentContactsWithRecentIDs:ds syncKeys:keys domain:domainCopy removeInUbiquitousStore:1 error:&v16];
  v13 = v16;
  v14 = v13;
  if (keys)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  (completionCopy)[2](completionCopy, v15);

  [(CRDRecentContactsLibrary *)self postNotificationIfNecessaryForUpdatedDomain:domainCopy];
}

- (void)recentContactsWithIDs:(id)ds completion:(id)completion
{
  library = self->_library;
  completionCopy = completion;
  v7 = [(_CRRecentsLibrary *)library copyRecentContactsWithIDs:ds];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)postNotificationIfNecessaryForUpdatedDomain:(id)domain
{
  if ([domain isEqualToString:CRRecentsDomainAcceptedIntroductions])
  {
    if (qword_100034340 != -1)
    {
      sub_1000188FC();
    }

    v3 = qword_100034348;

    [v3 handleEvent];
  }
}

@end