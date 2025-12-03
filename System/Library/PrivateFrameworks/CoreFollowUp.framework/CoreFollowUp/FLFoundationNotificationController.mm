@interface FLFoundationNotificationController
- (BOOL)_unsafe_hasAlertForItem:(id)item;
- (FLFoundationNotificationController)init;
- (NotificationProviderDelegate)delegate;
- (__CFUserNotification)_createUserNotificationWithItem:(id)item;
- (void)_receiveResponseFromNotification:(__CFUserNotification *)notification handler:(id)handler;
- (void)_showNotification:(__CFUserNotification *)notification identifier:(id)identifier item:(id)item;
- (void)postNotificationForFollowUpItem:(id)item;
- (void)tearDownNotificationsForFollowUpItem:(id)item;
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

- (void)postNotificationForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to post springboard alert for item: %@", &buf, 0xCu);
  }

  uniqueIdentifier = [itemCopy uniqueIdentifier];
  if (uniqueIdentifier)
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
    selfCopy = self;
    v8 = itemCopy;
    v16 = v8;
    p_buf = &buf;
    v9 = uniqueIdentifier;
    v17 = v9;
    dispatch_sync(notificationSerializationQueue, &v11);
    [(FLFoundationNotificationController *)self _showNotification:*(*(&buf + 1) + 24) identifier:v9 item:v8, v11, v12, v13, v14, selfCopy];

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

- (void)_showNotification:(__CFUserNotification *)notification identifier:(id)identifier item:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  if (notification)
  {
    v10 = os_transaction_create();
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003748;
    v12[3] = &unk_100020790;
    v13 = identifierCopy;
    objc_copyWeak(&v17, &location);
    selfCopy = self;
    v15 = itemCopy;
    v11 = v10;
    v16 = v11;
    [(FLFoundationNotificationController *)self _receiveResponseFromNotification:notification handler:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_unsafe_hasAlertForItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(self->_notificationSerializationQueue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v6 = [(NSMutableDictionary *)self->_notificationsByID objectForKeyedSubscript:uniqueIdentifier];
    *(v21 + 24) = v6 != 0;

    if ((v21[3] & 1) == 0)
    {
      v7 = [FLTopLevelViewModel alloc];
      clientIdentifier = [itemCopy clientIdentifier];
      v9 = [v7 initWithIdentifier:clientIdentifier];

      allPendingItems = [v9 allPendingItems];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100003B80;
      v16[3] = &unk_1000207B8;
      v17 = uniqueIdentifier;
      v11 = itemCopy;
      v18 = v11;
      v19 = &v20;
      [allPendingItems enumerateObjectsUsingBlock:v16];
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

- (void)tearDownNotificationsForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to teardown springboard alert for item: %@", buf, 0xCu);
  }

  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v7 = uniqueIdentifier;
  if (uniqueIdentifier)
  {
    notificationSerializationQueue = self->_notificationSerializationQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003D40;
    v9[3] = &unk_100020768;
    v9[4] = self;
    v10 = uniqueIdentifier;
    dispatch_sync(notificationSerializationQueue, v9);
  }
}

- (void)_receiveResponseFromNotification:(__CFUserNotification *)notification handler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E54;
  v8[3] = &unk_1000207E0;
  v9 = handlerCopy;
  notificationCopy = notification;
  v7 = handlerCopy;
  dispatch_async(v6, v8);
}

- (__CFUserNotification)_createUserNotificationWithItem:(id)item
{
  itemCopy = item;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will display user notification...", v29, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  notification = [itemCopy notification];
  title = [notification title];

  if (title)
  {
    notification2 = [itemCopy notification];
    title2 = [notification2 title];
    [v5 setObject:title2 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  notification3 = [itemCopy notification];
  informativeText = [notification3 informativeText];

  if (informativeText)
  {
    notification4 = [itemCopy notification];
    informativeText2 = [notification4 informativeText];
    [v5 setObject:informativeText2 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  notification5 = [itemCopy notification];
  activateAction = [notification5 activateAction];
  label = [activateAction label];

  if (label)
  {
    notification6 = [itemCopy notification];
    activateAction2 = [notification6 activateAction];
    label2 = [activateAction2 label];
    [v5 setObject:label2 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  else
  {
    notification6 = _FLLogSystem();
    if (os_log_type_enabled(notification6, OS_LOG_TYPE_ERROR))
    {
      sub_100010364(itemCopy, notification6);
    }
  }

  notification7 = [itemCopy notification];
  clearAction = [notification7 clearAction];
  label3 = [clearAction label];

  if (label3)
  {
    notification8 = [itemCopy notification];
    clearAction2 = [notification8 clearAction];
    label4 = [clearAction2 label];
    [v5 setObject:label4 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  else
  {
    notification8 = FLLoc();
    [v5 setObject:notification8 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  v26 = +[NotificationController sharedController];
  [v26 updateNotificationDeliveryDateForItem:itemCopy];

  v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v5);
  return v27;
}

- (NotificationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end