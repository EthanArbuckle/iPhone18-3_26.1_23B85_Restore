@interface NDTodayClientConnection
- (NDTodayClientConnection)init;
- (NDTodayClientConnection)initWithClient:(id)client contentContext:(id)context fetchQueue:(id)queue;
- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion;
- (void)fetchModuleDescriptorsWithCompletion:(id)completion;
- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion;
- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion;
- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion;
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

- (NDTodayClientConnection)initWithClient:(id)client contentContext:(id)context fetchQueue:(id)queue
{
  clientCopy = client;
  contextCopy = context;
  queueCopy = queue;
  if (!clientCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000522A8();
    if (contextCopy)
    {
      goto LABEL_6;
    }
  }

  else if (contextCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052370();
  }

LABEL_6:
  if (!queueCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
    v17 = contextCopy;
    v18 = queueCopy;
    if (qword_10007F700 != -1)
    {
      dispatch_once(&qword_10007F700, block);
    }

    objc_storeStrong(&v11->_accessQueue, qword_10007F6F8);
    objc_initWeak(&location, clientCopy);
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

- (void)fetchModuleDescriptorsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052500();
  }

  todayContext = [(NDTodayClientConnection *)self todayContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005F70;
  v7[3] = &unk_100071E00;
  v8 = completionCopy;
  v6 = completionCopy;
  [todayContext fetchModuleDescriptorsWithCompletion:v7];
}

- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  if (!parametersCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000525C4();
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052688();
  }

LABEL_6:
  todayContext = [(NDTodayClientConnection *)self todayContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006090;
  v10[3] = &unk_100071E28;
  v11 = completionCopy;
  v9 = completionCopy;
  [todayContext fetchLatestResultsWithOperationInfo:parametersCopy completion:v10];
}

- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005274C();
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052810();
  }

LABEL_6:
  todayContext = [(NDTodayClientConnection *)self todayContext];
  v9 = [todayContext placeholderResultsWithOperationInfo:infoCopy];

  completionCopy[2](completionCopy, v9);
}

- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion
{
  elementsCopy = elements;
  dateCopy = date;
  completionCopy = completion;
  if (!elementsCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000528D4();
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052998();
  }

LABEL_6:
  accessQueue = [(NDTodayClientConnection *)self accessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006364;
  v15[3] = &unk_100071C40;
  v15[4] = self;
  v16 = elementsCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = elementsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion
{
  elementCopy = element;
  dateCopy = date;
  completionCopy = completion;
  if (!elementCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052A5C();
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052B20();
  }

LABEL_6:
  accessQueue = [(NDTodayClientConnection *)self accessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006514;
  v15[3] = &unk_100071C40;
  v15[4] = self;
  v16 = elementCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = elementCopy;
  dispatch_async(accessQueue, v15);
}

@end