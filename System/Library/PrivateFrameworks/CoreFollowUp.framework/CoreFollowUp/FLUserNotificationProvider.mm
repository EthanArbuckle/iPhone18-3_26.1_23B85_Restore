@interface FLUserNotificationProvider
- (FLUserNotificationProvider)init;
- (NotificationProviderDelegate)delegate;
- (id)_notificationDeliveryQueue;
- (id)actionsForFollowUpItem:(id)item;
- (id)createNotificationCenterWithBundleIdentifier:(id)identifier;
- (id)getNotificationCenterForBundleIdentifier:(id)identifier;
- (id)getNotificationCenterForItem:(id)item;
- (id)userNotificationRequestForFollowUpItem:(id)item;
- (void)addCategoryForFollowUpItem:(id)item;
- (void)postNotificationForFollowUpItem:(id)item;
- (void)setDelegate:(id)delegate;
- (void)shouldUpdateExistingForItem:(id)item completionHandler:(id)handler;
- (void)start;
- (void)tearDownNotificationsForFollowUpItem:(id)item;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation FLUserNotificationProvider

- (FLUserNotificationProvider)init
{
  v11.receiver = self;
  v11.super_class = FLUserNotificationProvider;
  v2 = [(FLUserNotificationProvider *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_noteCentersLock._os_unfair_lock_opaque = 0;
    v4 = FLFollowUpPreferencesBundleIdentifier;
    v5 = [(FLUserNotificationProvider *)v2 createNotificationCenterWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier];
    v6 = [NSMutableDictionary dictionaryWithObject:v5 forKey:v4];
    noteCenters = v3->_noteCenters;
    v3->_noteCenters = v6;

    v8 = objc_alloc_init(FLFoundationNotificationController);
    foundationNotificationController = v3->_foundationNotificationController;
    v3->_foundationNotificationController = v8;
  }

  return v3;
}

- (void)start
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UserNotificationProvider started", v3, 2u);
  }
}

- (id)_notificationDeliveryQueue
{
  if (qword_100026B68 != -1)
  {
    sub_1000103DC();
  }

  v3 = qword_100026B60;

  return v3;
}

- (void)postNotificationForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = os_transaction_create();
  _notificationDeliveryQueue = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045D0;
  block[3] = &unk_100020870;
  v10 = itemCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = itemCopy;
  dispatch_async(_notificationDeliveryQueue, block);
}

- (void)shouldUpdateExistingForItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  notification = [itemCopy notification];
  options = [notification options];
  v10 = [options containsObject:FLNotificationOptionSpringboardAlert];

  if (v10)
  {
    [(FLFoundationNotificationController *)self->_foundationNotificationController shouldUpdateExistingForItem:itemCopy completionHandler:handlerCopy];
  }

  else
  {
    _notificationDeliveryQueue = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000049C0;
    block[3] = &unk_1000208C0;
    v13 = itemCopy;
    selfCopy = self;
    v15 = handlerCopy;
    dispatch_async(_notificationDeliveryQueue, block);
  }
}

- (void)addCategoryForFollowUpItem:(id)item
{
  itemCopy = item;
  categoryIdentifier = [itemCopy categoryIdentifier];

  if (categoryIdentifier)
  {
    categoryIdentifier2 = [itemCopy categoryIdentifier];
    notification = [itemCopy notification];
    options = [notification options];
    if ([options containsObject:FLNotificationOptionLockscreen])
    {
      notification2 = [itemCopy notification];
      options2 = [notification2 options];
      v11 = [options2 containsObject:FLNotificationOptionKeepOnLockscreen];

      if (v11)
      {
        v12 = _FLLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000103F0(itemCopy, v12);
        }

        v13 = [categoryIdentifier2 stringByAppendingString:@"_keepOnLockscreen"];

        v14 = 131073;
        categoryIdentifier2 = v13;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v14 = 1;
LABEL_9:
    v15 = [(FLUserNotificationProvider *)self actionsForFollowUpItem:itemCopy];
    v16 = [UNNotificationCategory categoryWithIdentifier:categoryIdentifier2 actions:v15 intentIdentifiers:&__NSArray0__struct options:v14];

    v17 = [(FLUserNotificationProvider *)self getNotificationCenterForItem:itemCopy];
    notificationCategories = [v17 notificationCategories];
    v19 = [NSMutableSet setWithSet:notificationCategories];

    [v19 addObject:v16];
    [v17 setNotificationCategories:v19];
  }
}

- (id)actionsForFollowUpItem:(id)item
{
  itemCopy = item;
  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  notification = [itemCopy notification];
  activateAction = [notification activateAction];
  label = [activateAction label];

  if ([label length])
  {
    v8 = [UNNotificationAction actionWithIdentifier:UNNotificationDefaultActionIdentifier title:label options:1];
    [v4 addObject:v8];
  }

  notification2 = [itemCopy notification];
  clearAction = [notification2 clearAction];
  label2 = [clearAction label];

  if ([label2 length])
  {
    v12 = [UNNotificationAction actionWithIdentifier:UNNotificationDismissActionIdentifier title:label2 options:1];
    [v4 addObject:v12];
  }

  return v4;
}

- (void)tearDownNotificationsForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = os_transaction_create();
  _notificationDeliveryQueue = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000051D4;
  block[3] = &unk_100020870;
  block[4] = self;
  v10 = itemCopy;
  v11 = v5;
  v7 = v5;
  v8 = itemCopy;
  dispatch_async(_notificationDeliveryQueue, block);
}

- (id)userNotificationRequestForFollowUpItem:(id)item
{
  itemCopy = item;
  targetBundleIdentifier = [itemCopy targetBundleIdentifier];
  v5 = [targetBundleIdentifier isEqualToString:FLFollowUpPreferencesBundleIdentifier];

  if (v5)
  {
    notification = [itemCopy notification];
    v7 = objc_alloc_init(UNMutableNotificationContent);
    title = [notification title];
    [v7 setTitle:title];

    _informativeNotificationTextOrDate = [itemCopy _informativeNotificationTextOrDate];
    [v7 setBody:_informativeNotificationTextOrDate];

    subtitleText = [notification subtitleText];
    [v7 setSubtitle:subtitleText];

    categoryIdentifier = [itemCopy categoryIdentifier];
    [v7 setCategoryIdentifier:categoryIdentifier];

    targetBundleIdentifier2 = [itemCopy targetBundleIdentifier];
    [v7 setThreadIdentifier:targetBundleIdentifier2];

    [v7 setShouldPreventNotificationDismissalAfterDefaultAction:1];
    LOBYTE(targetBundleIdentifier2) = ~[itemCopy displayStyle];
    shouldBackgroundDefaultAction = [notification shouldBackgroundDefaultAction];
    if ((targetBundleIdentifier2 & 0x1A) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = shouldBackgroundDefaultAction;
    }

    [v7 setShouldBackgroundDefaultAction:v14];
    userInfo = [itemCopy userInfo];
    v16 = [userInfo objectForKeyedSubscript:FLFollowUpNotifyingAppIdKey];
    v17 = [v16 isEqualToString:FLFollowUpiCloudBundleIdentifier];

    if (v17)
    {
      v18 = [UNNotificationIcon iconWithUTI:@"com.apple.application-icon.icloud"];
      [v7 setIcon:v18];
    }

    if ([v7 shouldBackgroundDefaultAction])
    {
      v19 = _FLLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Suppressing default notification action, will be handled by extension", v56, 2u);
      }
    }

    expirationDate = [itemCopy expirationDate];

    if (expirationDate)
    {
      _midnightAdjustedDate = [itemCopy _midnightAdjustedDate];
      [v7 setExpirationDate:_midnightAdjustedDate];
    }

    [v7 setShouldSuppressScreenLightUp:1];
    notification2 = [itemCopy notification];
    activateAction = [notification2 activateAction];

    v24 = [activateAction url];

    if (v24)
    {
      v25 = [activateAction url];
      [v7 setDefaultActionURL:v25];

      v26 = _FLLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        defaultActionURL = [v7 defaultActionURL];
        *v56 = 138412290;
        *&v56[4] = defaultActionURL;
        v28 = "Using the activate action URL as the default URL: %@";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, v56, 0xCu);
      }
    }

    else
    {
      if ([v7 shouldBackgroundDefaultAction])
      {
LABEL_24:
        v31 = objc_alloc_init(NSMutableDictionary);
        activateAction2 = [notification activateAction];
        identifier = [activateAction2 identifier];

        if (identifier)
        {
          activateAction3 = [notification activateAction];
          identifier2 = [activateAction3 identifier];
          [v31 setObject:identifier2 forKey:UNNotificationDefaultActionIdentifier];
        }

        clearAction = [notification clearAction];
        identifier3 = [clearAction identifier];

        if (identifier3)
        {
          clearAction2 = [notification clearAction];
          identifier4 = [clearAction2 identifier];
          [v31 setObject:identifier4 forKey:UNNotificationDismissActionIdentifier];
        }

        [v7 setUserInfo:v31];
        options = [notification options];
        v41 = [options containsObject:FLNotificationOptionBannerAlert];

        v42 = v41;
        options2 = [notification options];
        v44 = [options2 containsObject:FLNotificationOptionLockscreen];

        if (v44)
        {
          v42 |= 2uLL;
          categoryIdentifier2 = [itemCopy categoryIdentifier];
          if (categoryIdentifier2)
          {
            v46 = categoryIdentifier2;
            options3 = [notification options];
            v48 = [options3 containsObject:FLNotificationOptionKeepOnLockscreen];

            if (v48)
            {
              categoryIdentifier3 = [itemCopy categoryIdentifier];
              v50 = [categoryIdentifier3 stringByAppendingString:@"_keepOnLockscreen"];
              [v7 setCategoryIdentifier:v50];
            }
          }
        }

        options4 = [notification options];
        v52 = [options4 containsObject:FLNotificationOptionNotificationCenter];

        if (v52)
        {
          v53 = v42 | 4;
        }

        else
        {
          v53 = v42;
        }

        uniqueIdentifier = [itemCopy uniqueIdentifier];
        v29 = [UNNotificationRequest requestWithIdentifier:uniqueIdentifier content:v7 trigger:0 destinations:v53];

        goto LABEL_36;
      }

      v30 = [FLTopLevelViewModel redirectURLForItem:itemCopy withAction:activateAction];
      [v7 setDefaultActionURL:v30];

      v26 = _FLLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        defaultActionURL = [v7 defaultActionURL];
        *v56 = 138412290;
        *&v56[4] = defaultActionURL;
        v28 = "No activate action URL specified, default action will use redirect URL: %@";
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  notification = _FLLogSystem();
  if (os_log_type_enabled(notification, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, notification, OS_LOG_TYPE_DEFAULT, "Target bundle provided identifier is not permitted for notifications, returning nil", v56, 2u);
  }

  v29 = 0;
LABEL_36:

  return v29;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(FLFoundationNotificationController *)self->_foundationNotificationController setDelegate:delegateCopy];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  delegate = [(FLUserNotificationProvider *)self delegate];
  notification = [responseCopy notification];
  request = [notification request];

  content = [request content];
  userInfo = [content userInfo];

  identifier = [request identifier];
  v15 = _FLLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    actionIdentifier = [responseCopy actionIdentifier];
    *buf = 138412546;
    v26 = actionIdentifier;
    v27 = 2112;
    v28 = identifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notification response received with id: %@ (uid: %@)", buf, 0x16u);
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  if ([actionIdentifier2 isEqualToString:UNNotificationDefaultActionIdentifier])
  {
    actionIdentifier3 = [responseCopy actionIdentifier];
    v19 = [userInfo objectForKeyedSubscript:actionIdentifier3];

    if (v19)
    {
      actionIdentifier4 = [responseCopy actionIdentifier];
      v21 = [userInfo objectForKeyedSubscript:actionIdentifier4];
      [delegate provider:0 didActivateNotification:v21 forFollowUpItemWithIdentifier:identifier activationSource:5];

      goto LABEL_9;
    }
  }

  else
  {
  }

  actionIdentifier5 = [responseCopy actionIdentifier];
  v23 = [actionIdentifier5 isEqualToString:UNNotificationDismissActionIdentifier];

  if (!v23)
  {
    [delegate provider:0 didActivateNotificationForFollowUpItemWithIdentifier:identifier activationSource:5];
    goto LABEL_11;
  }

  v24 = identifier;
  actionIdentifier4 = [NSArray arrayWithObjects:&v24 count:1];
  [delegate provider:0 didClearNotificationsForFollowUpItemsWithIdentifiers:actionIdentifier4 activationSource:5];
LABEL_9:

LABEL_11:
  handlerCopy[2](handlerCopy);
}

- (id)createNotificationCenterWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating UNUserNotificationCenter for bundle identifier %@", &v9, 0xCu);
  }

  v6 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:identifierCopy];
  [v6 setDelegate:self];
  [v6 setWantsNotificationResponsesDelivered];
  v7 = +[NSSet set];
  [v6 setNotificationCategories:v7];

  return v6;
}

- (id)getNotificationCenterForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_noteCentersLock);
  v5 = [(NSMutableDictionary *)self->_noteCenters objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [(FLUserNotificationProvider *)self createNotificationCenterWithBundleIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_noteCenters setObject:v5 forKey:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_noteCentersLock);

  return v5;
}

- (id)getNotificationCenterForItem:(id)item
{
  userInfo = [item userInfo];
  v5 = [userInfo objectForKeyedSubscript:FLFollowUpNotifyingAppIdKey];

  if (!v5)
  {
    v5 = FLFollowUpPreferencesBundleIdentifier;
  }

  if (([v5 isEqualToString:FLFollowUpHomeBundleIdentifier] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", FLFollowUpPhotosBundleIdentifier))
  {
    v6 = FLFollowUpiCloudBundleIdentifier;

    v5 = v6;
  }

  v7 = +[FLEnvironment currentEnvironment];
  supportedNotifyingAppIds = [v7 supportedNotifyingAppIds];
  v9 = [supportedNotifyingAppIds containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = _FLLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v12 = FLFollowUpPreferencesBundleIdentifier;
    if (v11)
    {
      sub_100010488(v5, FLFollowUpPreferencesBundleIdentifier, v10);
    }

    v13 = v12;
    v5 = v13;
  }

  v14 = [(FLUserNotificationProvider *)self getNotificationCenterForBundleIdentifier:v5];

  return v14;
}

- (NotificationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end