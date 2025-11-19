@interface BLNotificationService
- (BLNotificationService)initWithAutomaticDownloadProcessor:(id)a3;
- (void)_handleBagChangedNotification:(id)a3;
- (void)_handleCheckDownloadQueueMessage:(id)a3;
- (void)_handleNotification:(id)a3 notificationType:(id)a4;
- (void)_handlePreorderAvailableNotificationForMessage:(id)a3;
- (void)_initializeConnections;
- (void)connection:(id)a3 didRecieveMessage:(id)a4;
@end

@implementation BLNotificationService

- (BLNotificationService)initWithAutomaticDownloadProcessor:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = BLNotificationService;
  v6 = [(BLNotificationService *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BLNotificationConnection.Dispatch", v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    v10 = objc_alloc_init(AMSPushConfiguration);
    [v10 setUserNotificationExtensionId:@"books-notification-extension"];
    v11 = [AMSPushHandler alloc];
    v12 = +[BUBag defaultBag];
    v13 = [v11 initWithConfiguration:v10 bag:v12];
    pushHandler = v6->_pushHandler;
    v6->_pushHandler = v13;

    objc_storeStrong(&v6->_automaticDownloadProcessor, a3);
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v6 selector:"_handleBagChangedNotification:" name:AMSBagChangedNotification object:0];

    v16 = v6->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000640AC;
    block[3] = &unk_10011CFE8;
    v19 = v6;
    dispatch_async(v16, block);
  }

  return v6;
}

- (void)_initializeConnections
{
  v3 = +[BUBag defaultBag];
  v4 = [v3 pushNotificationsEnvironment];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006415C;
  v5[3] = &unk_10011D0A0;
  v5[4] = self;
  [v4 valueWithCompletion:v5];
}

- (void)_handleBagChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064564;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)connection:(id)a3 didRecieveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064630;
  block[3] = &unk_10011D0C8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleCheckDownloadQueueMessage:(id)a3
{
  v4 = a3;
  v5 = +[BUAccountsProvider sharedProvider];
  v6 = [v5 activeStoreAccount];
  v7 = [v6 ams_DSID];

  v8 = [v4 accountID];
  LODWORD(v6) = [v7 isEqualToNumber:v8];

  if (v6)
  {
    v9 = _os_activity_create(&_mh_execute_header, "checkDownloadQueue notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064A34;
    block[3] = &unk_10011CFE8;
    block[4] = self;
    os_activity_apply(v9, block);
  }

  else
  {
    v9 = BLServiceNotificationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 accountID];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received checkDownloadQueue notification for account %@ but active account is %@, so ignoring it", buf, 0x16u);
    }
  }
}

- (void)_handleNotification:(id)a3 notificationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"aps"];
  v10 = [v9 objectForKeyedSubscript:@"_mt"];
  v11 = [v10 objectForKeyedSubscript:@"details"];
  v12 = [v11 objectForKeyedSubscript:@"contentAdamId"];
  v13 = BUDynamicCast();

  if (v13 && [v13 length])
  {
    v14 = _os_activity_create(&_mh_execute_header, "Handle notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D80;
    block[3] = &unk_10011D130;
    v17 = v7;
    v18 = v13;
    v19 = self;
    v20 = v6;
    os_activity_apply(v14, block);
  }

  else
  {
    v14 = BLServiceNotificationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "storeID is empty", v15, 2u);
    }
  }
}

- (void)_handlePreorderAvailableNotificationForMessage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"aps"];
  v6 = [v5 objectForKeyedSubscript:@"_mt"];
  v7 = [v6 objectForKeyedSubscript:@"details"];
  v8 = [v7 objectForKeyedSubscript:@"contentAdamId"];
  v9 = BUDynamicCast();

  if (v9 && [v9 length])
  {
    v10 = objc_opt_new();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006504C;
    v11[3] = &unk_10011D158;
    v12 = v9;
    [v10 addStoreIDtoWantToReadList:v12 withCompletion:v11];
  }
}

@end