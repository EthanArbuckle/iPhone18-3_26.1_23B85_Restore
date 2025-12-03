@interface MBRestoreNetworkAccessPrompt
+ (id)connection;
- (MBRestoreNetworkAccessPrompt)init;
- (void)_cancelWithBlocking:(BOOL)blocking;
- (void)_finishXPCWithError:(id)error;
- (void)_firePromptWithDict:(id)dict retryCount:(unint64_t)count completion:(id)completion;
- (void)dealloc;
- (void)fireCellularPromptWithEstimate:(unint64_t)estimate completion:(id)completion;
- (void)fireWiFiPromptWithCompletion:(id)completion;
@end

@implementation MBRestoreNetworkAccessPrompt

- (MBRestoreNetworkAccessPrompt)init
{
  v13.receiver = self;
  v13.super_class = MBRestoreNetworkAccessPrompt;
  v2 = [(MBRestoreNetworkAccessPrompt *)&v13 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    cancelGroup = v2->_cancelGroup;
    v2->_cancelGroup = v3;

    atomic_store(0, &v2->_isPromptInFlight);
    atomic_store(0, &v2->_cancellationInProgress);
    atomic_store(0, &v2->_isCancellable);
    objc_storeStrong(&v2->_notificationQueue, &_dispatch_main_q);
    connection = [objc_opt_class() connection];
    if (!connection)
    {
      __assert_rtn("[MBRestoreNetworkAccessPrompt init]", "MBRestoreNetworkAccessPrompt.m", 40, "connection != nil");
    }

    v6 = connection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001072E8;
    v11[3] = &unk_1003BC010;
    v7 = v2;
    v12 = v7;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v11];
    proxy = v7->_proxy;
    v7->_proxy = v8;

    if (!v7->_proxy)
    {
      __assert_rtn("[MBRestoreNetworkAccessPrompt init]", "MBRestoreNetworkAccessPrompt.m", 45, "_proxy != nil");
    }
  }

  return v2;
}

- (void)dealloc
{
  [(MBRestoreNetworkAccessPrompt *)self _cancelWithBlocking:0];
  v3.receiver = self;
  v3.super_class = MBRestoreNetworkAccessPrompt;
  [(MBRestoreNetworkAccessPrompt *)&v3 dealloc];
}

- (void)_cancelWithBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = blockingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to cancel restore network prompt, blocking:%d", buf, 8u);
    _MBLog();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_notificationRef;
  notificationRef = selfCopy->_notificationRef;
  selfCopy->_notificationRef = 0;

  objc_sync_exit(selfCopy);
  if (v7)
  {
    atomic_store(1u, &selfCopy->_cancellationInProgress);
    CFUserNotificationCancel(v7);
    if (blockingCopy)
    {
      dispatch_group_wait(selfCopy->_cancelGroup, 0xFFFFFFFFFFFFFFFFLL);
    }

    atomic_store(0, &selfCopy->_cancellationInProgress);
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cancelled active restore network prompt", buf, 2u);
LABEL_10:
      _MBLog();
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No active network prompt to cancel", buf, 2u);
      goto LABEL_10;
    }
  }
}

- (void)fireCellularPromptWithEstimate:(unint64_t)estimate completion:(id)completion
{
  completionCopy = completion;
  if (atomic_exchange(&self->_isPromptInFlight._Value, 1u))
  {
    v7 = [MBError errorWithCode:3 format:@"A prompt is already in-flight"];
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating cellular prompt", buf, 2u);
      _MBLog();
    }

    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = sub_1001078BC;
    v23 = sub_1001078CC;
    v24 = &stru_1003C3430;
    proxy = self->_proxy;
    if (!proxy)
    {
      __assert_rtn("[MBRestoreNetworkAccessPrompt fireCellularPromptWithEstimate:completion:]", "MBRestoreNetworkAccessPrompt.m", 91, "_proxy != nil");
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001078D4;
    v18[3] = &unk_1003BC038;
    v18[4] = buf;
    [(MBHelperServiceProtocol *)proxy localizedStringFromByteCount:estimate countStyle:0 reply:v18];
    v10 = MBLocalizedStringFromTable();
    v15 = *(v20 + 5);
    v11 = MBLocalizedStringWithSubstitutions();
    v12 = MBLocalizedStringFromTable();
    v13 = MBLocalizedStringFromTable();
    v25[0] = kCFUserNotificationAlertHeaderKey;
    v25[1] = kCFUserNotificationAlertMessageKey;
    v26[0] = v10;
    v26[1] = v11;
    v25[2] = kCFUserNotificationDefaultButtonTitleKey;
    v25[3] = kCFUserNotificationAlternateButtonTitleKey;
    v26[2] = v12;
    v26[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4, v15];
    dispatch_group_enter(self->_cancelGroup);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001079C8;
    v16[3] = &unk_1003BEBD8;
    v16[4] = self;
    v17 = completionCopy;
    [(MBRestoreNetworkAccessPrompt *)self _firePromptWithDict:v14 retryCount:1 completion:v16];

    _Block_object_dispose(buf, 8);
  }
}

- (void)fireWiFiPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  if (atomic_exchange(&self->_isPromptInFlight._Value, 1u))
  {
    v5 = [MBError errorWithCode:3 format:@"A prompt is already in-flight"];
    completionCopy[2](completionCopy, 0, v5);
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating WiFi prompt", buf, 2u);
      _MBLog();
    }

    mb_stringByAppendingGreenteaSuffix = [@"MBS_WIFI_NEEDED_ALERT_TITLE" mb_stringByAppendingGreenteaSuffix];
    v8 = MBLocalizedStringFromTable();

    mb_stringByAppendingGreenteaSuffix2 = [@"MBS_WIFI_NEEDED_ALERT_DESCRIPTION" mb_stringByAppendingGreenteaSuffix];
    v10 = MBLocalizedStringFromTable();

    mb_stringByAppendingGreenteaSuffix3 = [@"MBS_WIFI_NEEDED_ALERT_SETTINGS_BUTTON" mb_stringByAppendingGreenteaSuffix];
    v12 = MBLocalizedStringFromTable();

    v13 = MBLocalizedStringFromTable();
    v18[0] = kCFUserNotificationAlertHeaderKey;
    v18[1] = kCFUserNotificationAlertMessageKey;
    v19[0] = v8;
    v19[1] = v10;
    v18[2] = kCFUserNotificationDefaultButtonTitleKey;
    v18[3] = kCFUserNotificationAlternateButtonTitleKey;
    v19[2] = v12;
    v19[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
    dispatch_group_enter(self->_cancelGroup);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100107D24;
    v15[3] = &unk_1003BEBD8;
    v15[4] = self;
    v16 = completionCopy;
    [(MBRestoreNetworkAccessPrompt *)self _firePromptWithDict:v14 retryCount:1 completion:v15];
  }
}

- (void)_firePromptWithDict:(id)dict retryCount:(unint64_t)count completion:(id)completion
{
  dictCopy = dict;
  completionCopy = completion;
  v10 = 10;
  if (count == 1)
  {
    v10 = 0;
  }

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107ED0;
  block[3] = &unk_1003BEC00;
  v12 = 1000000000 * v10;
  v18 = completionCopy;
  countCopy = count;
  v16 = dictCopy;
  selfCopy = self;
  v20 = v10;
  v13 = completionCopy;
  v14 = dictCopy;
  dispatch_after(v12, notificationQueue, block);
}

+ (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_100421760)
  {
    v3 = qword_100421760;
  }

  else
  {
    if (qword_100421770 != -1)
    {
      dispatch_once(&qword_100421770, &stru_1003BEC20);
    }

    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileBackup.MBHelperService"];
    [v4 setRemoteObjectInterface:qword_100421768];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010834C;
    v6[3] = &unk_1003BBFE8;
    v6[4] = selfCopy;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_100421760, v4);
    [v4 resume];
    v3 = qword_100421760;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_finishXPCWithError:(id)error
{
  errorCopy = error;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = errorCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MBPrebuddyFollowUpController finish XPC with error: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

@end