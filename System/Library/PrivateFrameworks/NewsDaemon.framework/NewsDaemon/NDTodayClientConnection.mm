@interface NDTodayClientConnection
- (NDTodayClientConnection)init;
- (NDTodayClientConnection)initWithClient:(id)a3 contentContext:(id)a4 fetchQueue:(id)a5;
- (void)fetchLatestResultsWithParameters:(id)a3 completion:(id)a4;
- (void)fetchModuleDescriptorsWithCompletion:(id)a3;
- (void)fetchPlaceholderResultsWithOperationInfo:(id)a3 syncCompletion:(id)a4;
- (void)markAnalyticsElement:(id)a3 asReadAtDate:(id)a4 withCompletion:(id)a5;
- (void)markAnalyticsElements:(id)a3 asSeenAtDate:(id)a4 withCompletion:(id)a5;
@end

@implementation NDTodayClientConnection

- (NDTodayClientConnection)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDTodayClientConnection init]";
    v8 = 2080;
    v9 = "NDTodayClientConnection.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDTodayClientConnection init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDTodayClientConnection)initWithClient:(id)a3 contentContext:(id)a4 fetchQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000522A8();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052370();
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052438();
  }

  v19.receiver = self;
  v19.super_class = NDTodayClientConnection;
  v11 = [(NDTodayClientConnection *)&v19 init];
  if (v11)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005D88;
    block[3] = &unk_100071DB0;
    v17 = v9;
    v18 = v10;
    if (qword_10007F700 != -1)
    {
      dispatch_once(&qword_10007F700, block);
    }

    objc_storeStrong(&v11->_accessQueue, qword_10007F6F8);
    objc_initWeak(&location, v8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005E64;
    v13[3] = &unk_100071DD8;
    objc_copyWeak(&v14, &location);
    [qword_10007F6F0 setNewResultsHandler:v13];
    objc_storeStrong(&v11->_todayContext, qword_10007F6F0);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)fetchModuleDescriptorsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052500();
  }

  v5 = [(NDTodayClientConnection *)self todayContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005F70;
  v7[3] = &unk_100071E00;
  v8 = v4;
  v6 = v4;
  [v5 fetchModuleDescriptorsWithCompletion:v7];
}

- (void)fetchLatestResultsWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000525C4();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052688();
  }

LABEL_6:
  v8 = [(NDTodayClientConnection *)self todayContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006090;
  v10[3] = &unk_100071E28;
  v11 = v7;
  v9 = v7;
  [v8 fetchLatestResultsWithOperationInfo:v6 completion:v10];
}

- (void)fetchPlaceholderResultsWithOperationInfo:(id)a3 syncCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005274C();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052810();
  }

LABEL_6:
  v8 = [(NDTodayClientConnection *)self todayContext];
  v9 = [v8 placeholderResultsWithOperationInfo:v6];

  v7[2](v7, v9);
}

- (void)markAnalyticsElements:(id)a3 asSeenAtDate:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000528D4();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052998();
  }

LABEL_6:
  v11 = [(NDTodayClientConnection *)self accessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006364;
  v15[3] = &unk_100071C40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)markAnalyticsElement:(id)a3 asReadAtDate:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052A5C();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052B20();
  }

LABEL_6:
  v11 = [(NDTodayClientConnection *)self accessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006514;
  v15[3] = &unk_100071C40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

@end