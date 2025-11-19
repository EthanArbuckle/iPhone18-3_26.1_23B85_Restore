@interface FLFoundationNotificationController
- (BOOL)_unsafe_hasAlertForItem:(id)a3;
- (FLFoundationNotificationController)init;
- (NotificationProviderDelegate)delegate;
- (__CFUserNotification)_createUserNotificationWithItem:(id)a3;
- (void)_receiveResponseFromNotification:(__CFUserNotification *)a3 handler:(id)a4;
- (void)_showNotification:(__CFUserNotification *)a3 identifier:(id)a4 item:(id)a5;
- (void)postNotificationForFollowUpItem:(id)a3;
- (void)tearDownNotificationsForFollowUpItem:(id)a3;
@end

@implementation FLFoundationNotificationController

- (FLFoundationNotificationController)init
{
  v8.receiver = self;
  v8.super_class = FLFoundationNotificationController;
  v2 = [(FLFoundationNotificationController *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    notificationsByID = v2->_notificationsByID;
    v2->_notificationsByID = v3;

    v5 = dispatch_queue_create("com.apple.followup.cfnotificationqueue", 0);
    notificationSerializationQueue = v2->_notificationSerializationQueue;
    v2->_notificationSerializationQueue = v5;
  }

  return v2;
}

- (void)postNotificationForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to post springboard alert for item: %@", &buf, 0xCu);
  }

  v6 = [v4 uniqueIdentifier];
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    notificationSerializationQueue = self->_notificationSerializationQueue;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100003544;
    v14 = &unk_100020740;
    v15 = self;
    v8 = v4;
    v16 = v8;
    p_buf = &buf;
    v9 = v6;
    v17 = v9;
    dispatch_sync(notificationSerializationQueue, &v11);
    [(FLFoundationNotificationController *)self _showNotification:*(*(&buf + 1) + 24) identifier:v9 item:v8, v11, v12, v13, v14, v15];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = _FLLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100010320(v10);
    }
  }
}

- (void)_showNotification:(__CFUserNotification *)a3 identifier:(id)a4 item:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = os_transaction_create();
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003748;
    v12[3] = &unk_100020790;
    v13 = v8;
    objc_copyWeak(&v17, &location);
    v14 = self;
    v15 = v9;
    v11 = v10;
    v16 = v11;
    [(FLFoundationNotificationController *)self _receiveResponseFromNotification:a3 handler:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_unsafe_hasAlertForItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_notificationSerializationQueue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [v4 uniqueIdentifier];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_notificationsByID objectForKeyedSubscript:v5];
    *(v21 + 24) = v6 != 0;

    if ((v21[3] & 1) == 0)
    {
      v7 = [FLTopLevelViewModel alloc];
      v8 = [v4 clientIdentifier];
      v9 = [v7 initWithIdentifier:v8];

      v10 = [v9 allPendingItems];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100003B80;
      v16[3] = &unk_1000207B8;
      v17 = v5;
      v11 = v4;
      v18 = v11;
      v19 = &v20;
      [v10 enumerateObjectsUsingBlock:v16];
      v12 = _FLLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v21 + 24);
        *buf = 138412546;
        v25 = v11;
        v26 = 1024;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Verified item status: %@, hasAlert: %d", buf, 0x12u);
      }
    }
  }

  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v14 & 1;
}

- (void)tearDownNotificationsForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to teardown springboard alert for item: %@", buf, 0xCu);
  }

  v6 = [v4 uniqueIdentifier];
  v7 = v6;
  if (v6)
  {
    notificationSerializationQueue = self->_notificationSerializationQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003D40;
    v9[3] = &unk_100020768;
    v9[4] = self;
    v10 = v6;
    dispatch_sync(notificationSerializationQueue, v9);
  }
}

- (void)_receiveResponseFromNotification:(__CFUserNotification *)a3 handler:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E54;
  v8[3] = &unk_1000207E0;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (__CFUserNotification)_createUserNotificationWithItem:(id)a3
{
  v3 = a3;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will display user notification...", v29, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v3 notification];
  v7 = [v6 title];

  if (v7)
  {
    v8 = [v3 notification];
    v9 = [v8 title];
    [v5 setObject:v9 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  v10 = [v3 notification];
  v11 = [v10 informativeText];

  if (v11)
  {
    v12 = [v3 notification];
    v13 = [v12 informativeText];
    [v5 setObject:v13 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  v14 = [v3 notification];
  v15 = [v14 activateAction];
  v16 = [v15 label];

  if (v16)
  {
    v17 = [v3 notification];
    v18 = [v17 activateAction];
    v19 = [v18 label];
    [v5 setObject:v19 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  else
  {
    v17 = _FLLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100010364(v3, v17);
    }
  }

  v20 = [v3 notification];
  v21 = [v20 clearAction];
  v22 = [v21 label];

  if (v22)
  {
    v23 = [v3 notification];
    v24 = [v23 clearAction];
    v25 = [v24 label];
    [v5 setObject:v25 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  else
  {
    v23 = FLLoc();
    [v5 setObject:v23 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  v26 = +[NotificationController sharedController];
  [v26 updateNotificationDeliveryDateForItem:v3];

  v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v5);
  return v27;
}

- (NotificationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end