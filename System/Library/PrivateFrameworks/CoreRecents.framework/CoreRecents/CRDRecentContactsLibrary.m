@interface CRDRecentContactsLibrary
+ (id)os_log;
- (CRDRecentContactsLibrary)initWithClient:(id)a3;
- (void)countRecentsUsingQuery:(id)a3 completion:(id)a4;
- (void)postNotificationIfNecessaryForUpdatedDomain:(id)a3;
- (void)recentContactsWithIDs:(id)a3 completion:(id)a4;
- (void)recordContactEvents:(id)a3 domain:(id)a4 sendingAddress:(id)a5 source:(id)a6 completion:(id)a7;
- (void)removeRecentContactsWithRecentIDs:(id)a3 syncKeys:(id)a4 domain:(id)a5 completion:(id)a6;
- (void)searchRecentsUsingQuery:(id)a3 completion:(id)a4;
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

- (CRDRecentContactsLibrary)initWithClient:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CRDRecentContactsLibrary;
  v6 = [(CRDRecentContactsLibrary *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
    v8 = [v5 library];
    library = v7->_library;
    v7->_library = v8;

    v10 = v7;
  }

  return v7;
}

- (void)searchRecentsUsingQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CRDRecentContactsLibrary os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuid];
    v10 = [(CRDClient *)self->_client bundleIdentifier];
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will execute query %{public}@ for %{public}@", buf, 0x16u);
  }

  if (self->_library)
  {
    v11 = +[CNTimeProvider defaultProvider];
    [v11 timestamp];
    v13 = v12;

    library = self->_library;
    v25 = 0;
    v15 = [(_CRRecentsLibrary *)library copyRecentsForQuery:v6 error:&v25];
    v16 = v25;
    if (v15)
    {
      v7[2](v7, v15, 0);
      v17 = +[CNTimeProvider defaultProvider];
      [v17 timestamp];
      v19 = v18;

      v20 = [CNTimeIntervalFormatter stringForTimeInterval:v19 - v13];
      v21 = +[CRDRecentContactsLibrary os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v6 uuid];
        *buf = 138543618;
        v27 = v22;
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
        sub_100018808(v6, v16, v24);
      }

      (v7)[2](v7, 0, v16);
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
    (v7)[2](v7, 0, v16);
  }
}

- (void)countRecentsUsingQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CRDRecentContactsLibrary os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuid];
    v10 = [(CRDClient *)self->_client bundleIdentifier];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will count recents for query %{public}@ for %{public}@", buf, 0x16u);
  }

  if (self->_library)
  {
    v11 = +[CNTimeProvider defaultProvider];
    [v11 timestamp];
    v13 = v12;

    library = self->_library;
    v24 = 0;
    v15 = [(_CRRecentsLibrary *)library countOfRecentsForQuery:v6 error:&v24];
    v16 = v24;
    v7[2](v7, v15, v16);
    v17 = +[CNTimeProvider defaultProvider];
    [v17 timestamp];
    v19 = v18;

    v20 = [CNTimeIntervalFormatter stringForTimeInterval:v19 - v13];
    v21 = +[CRDRecentContactsLibrary os_log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v6 uuid];
      *buf = 138543874;
      v26 = v22;
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
    v7[2](v7, 0, v16);
  }
}

- (void)recordContactEvents:(id)a3 domain:(id)a4 sendingAddress:(id)a5 source:(id)a6 completion:(id)a7
{
  library = self->_library;
  v13 = a7;
  v14 = a4;
  [(_CRRecentsLibrary *)library recordContactEvents:a3 recentsDomain:v14 sendingAddress:a5 source:a6];
  v13[2](v13, 0);

  [(CRDRecentContactsLibrary *)self postNotificationIfNecessaryForUpdatedDomain:v14];
}

- (void)removeRecentContactsWithRecentIDs:(id)a3 syncKeys:(id)a4 domain:(id)a5 completion:(id)a6
{
  library = self->_library;
  v16 = 0;
  v11 = a6;
  v12 = a5;
  LODWORD(a4) = [(_CRRecentsLibrary *)library removeRecentContactsWithRecentIDs:a3 syncKeys:a4 domain:v12 removeInUbiquitousStore:1 error:&v16];
  v13 = v16;
  v14 = v13;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  (v11)[2](v11, v15);

  [(CRDRecentContactsLibrary *)self postNotificationIfNecessaryForUpdatedDomain:v12];
}

- (void)recentContactsWithIDs:(id)a3 completion:(id)a4
{
  library = self->_library;
  v6 = a4;
  v7 = [(_CRRecentsLibrary *)library copyRecentContactsWithIDs:a3];
  v6[2](v6, v7, 0);
}

- (void)postNotificationIfNecessaryForUpdatedDomain:(id)a3
{
  if ([a3 isEqualToString:CRRecentsDomainAcceptedIntroductions])
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