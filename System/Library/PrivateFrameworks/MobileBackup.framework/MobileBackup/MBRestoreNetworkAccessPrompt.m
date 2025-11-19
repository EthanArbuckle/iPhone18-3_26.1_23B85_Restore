@interface MBRestoreNetworkAccessPrompt
+ (id)connection;
- (MBRestoreNetworkAccessPrompt)init;
- (void)_cancelWithBlocking:(BOOL)a3;
- (void)_finishXPCWithError:(id)a3;
- (void)_firePromptWithDict:(id)a3 retryCount:(unint64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)fireCellularPromptWithEstimate:(unint64_t)a3 completion:(id)a4;
- (void)fireWiFiPromptWithCompletion:(id)a3;
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
    v5 = [objc_opt_class() connection];
    if (!v5)
    {
      __assert_rtn("[MBRestoreNetworkAccessPrompt init]", "MBRestoreNetworkAccessPrompt.m", 40, "connection != nil");
    }

    v6 = v5;
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

- (void)_cancelWithBlocking:(BOOL)a3
{
  v3 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to cancel restore network prompt, blocking:%d", buf, 8u);
    _MBLog();
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_notificationRef;
  notificationRef = v6->_notificationRef;
  v6->_notificationRef = 0;

  objc_sync_exit(v6);
  if (v7)
  {
    atomic_store(1u, &v6->_cancellationInProgress);
    CFUserNotificationCancel(v7);
    if (v3)
    {
      dispatch_group_wait(v6->_cancelGroup, 0xFFFFFFFFFFFFFFFFLL);
    }

    atomic_store(0, &v6->_cancellationInProgress);
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

- (void)fireCellularPromptWithEstimate:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (atomic_exchange(&self->_isPromptInFlight._Value, 1u))
  {
    v7 = [MBError errorWithCode:3 format:@"A prompt is already in-flight"];
    v6[2](v6, 0, v7);
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
    [(MBHelperServiceProtocol *)proxy localizedStringFromByteCount:a3 countStyle:0 reply:v18];
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
    v17 = v6;
    [(MBRestoreNetworkAccessPrompt *)self _firePromptWithDict:v14 retryCount:1 completion:v16];

    _Block_object_dispose(buf, 8);
  }
}

- (void)fireWiFiPromptWithCompletion:(id)a3
{
  v4 = a3;
  if (atomic_exchange(&self->_isPromptInFlight._Value, 1u))
  {
    v5 = [MBError errorWithCode:3 format:@"A prompt is already in-flight"];
    v4[2](v4, 0, v5);
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

    v7 = [@"MBS_WIFI_NEEDED_ALERT_TITLE" mb_stringByAppendingGreenteaSuffix];
    v8 = MBLocalizedStringFromTable();

    v9 = [@"MBS_WIFI_NEEDED_ALERT_DESCRIPTION" mb_stringByAppendingGreenteaSuffix];
    v10 = MBLocalizedStringFromTable();

    v11 = [@"MBS_WIFI_NEEDED_ALERT_SETTINGS_BUTTON" mb_stringByAppendingGreenteaSuffix];
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
    v16 = v4;
    [(MBRestoreNetworkAccessPrompt *)self _firePromptWithDict:v14 retryCount:1 completion:v15];
  }
}

- (void)_firePromptWithDict:(id)a3 retryCount:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = 10;
  if (a4 == 1)
  {
    v10 = 0;
  }

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107ED0;
  block[3] = &unk_1003BEC00;
  v12 = 1000000000 * v10;
  v18 = v9;
  v19 = a4;
  v16 = v8;
  v17 = self;
  v20 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_after(v12, notificationQueue, block);
}

+ (id)connection
{
  v2 = a1;
  objc_sync_enter(v2);
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
    v6[4] = v2;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_100421760, v4);
    [v4 resume];
    v3 = qword_100421760;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)_finishXPCWithError:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MBPrebuddyFollowUpController finish XPC with error: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

@end