@interface FLUserNotificationProvider
- (FLUserNotificationProvider)init;
- (NotificationProviderDelegate)delegate;
- (id)_notificationDeliveryQueue;
- (id)actionsForFollowUpItem:(id)a3;
- (id)createNotificationCenterWithBundleIdentifier:(id)a3;
- (id)getNotificationCenterForBundleIdentifier:(id)a3;
- (id)getNotificationCenterForItem:(id)a3;
- (id)userNotificationRequestForFollowUpItem:(id)a3;
- (void)addCategoryForFollowUpItem:(id)a3;
- (void)postNotificationForFollowUpItem:(id)a3;
- (void)setDelegate:(id)a3;
- (void)shouldUpdateExistingForItem:(id)a3 completionHandler:(id)a4;
- (void)start;
- (void)tearDownNotificationsForFollowUpItem:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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

- (void)postNotificationForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045D0;
  block[3] = &unk_100020870;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)shouldUpdateExistingForItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 notification];
  v9 = [v8 options];
  v10 = [v9 containsObject:FLNotificationOptionSpringboardAlert];

  if (v10)
  {
    [(FLFoundationNotificationController *)self->_foundationNotificationController shouldUpdateExistingForItem:v6 completionHandler:v7];
  }

  else
  {
    v11 = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000049C0;
    block[3] = &unk_1000208C0;
    v13 = v6;
    v14 = self;
    v15 = v7;
    dispatch_async(v11, block);
  }
}

- (void)addCategoryForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = [v4 categoryIdentifier];

  if (v5)
  {
    v6 = [v4 categoryIdentifier];
    v7 = [v4 notification];
    v8 = [v7 options];
    if ([v8 containsObject:FLNotificationOptionLockscreen])
    {
      v9 = [v4 notification];
      v10 = [v9 options];
      v11 = [v10 containsObject:FLNotificationOptionKeepOnLockscreen];

      if (v11)
      {
        v12 = _FLLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000103F0(v4, v12);
        }

        v13 = [v6 stringByAppendingString:@"_keepOnLockscreen"];

        v14 = 131073;
        v6 = v13;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v14 = 1;
LABEL_9:
    v15 = [(FLUserNotificationProvider *)self actionsForFollowUpItem:v4];
    v16 = [UNNotificationCategory categoryWithIdentifier:v6 actions:v15 intentIdentifiers:&__NSArray0__struct options:v14];

    v17 = [(FLUserNotificationProvider *)self getNotificationCenterForItem:v4];
    v18 = [v17 notificationCategories];
    v19 = [NSMutableSet setWithSet:v18];

    [v19 addObject:v16];
    [v17 setNotificationCategories:v19];
  }
}

- (id)actionsForFollowUpItem:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  v5 = [v3 notification];
  v6 = [v5 activateAction];
  v7 = [v6 label];

  if ([v7 length])
  {
    v8 = [UNNotificationAction actionWithIdentifier:UNNotificationDefaultActionIdentifier title:v7 options:1];
    [v4 addObject:v8];
  }

  v9 = [v3 notification];
  v10 = [v9 clearAction];
  v11 = [v10 label];

  if ([v11 length])
  {
    v12 = [UNNotificationAction actionWithIdentifier:UNNotificationDismissActionIdentifier title:v11 options:1];
    [v4 addObject:v12];
  }

  return v4;
}

- (void)tearDownNotificationsForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(FLUserNotificationProvider *)self _notificationDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000051D4;
  block[3] = &unk_100020870;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (id)userNotificationRequestForFollowUpItem:(id)a3
{
  v3 = a3;
  v4 = [v3 targetBundleIdentifier];
  v5 = [v4 isEqualToString:FLFollowUpPreferencesBundleIdentifier];

  if (v5)
  {
    v6 = [v3 notification];
    v7 = objc_alloc_init(UNMutableNotificationContent);
    v8 = [v6 title];
    [v7 setTitle:v8];

    v9 = [v3 _informativeNotificationTextOrDate];
    [v7 setBody:v9];

    v10 = [v6 subtitleText];
    [v7 setSubtitle:v10];

    v11 = [v3 categoryIdentifier];
    [v7 setCategoryIdentifier:v11];

    v12 = [v3 targetBundleIdentifier];
    [v7 setThreadIdentifier:v12];

    [v7 setShouldPreventNotificationDismissalAfterDefaultAction:1];
    LOBYTE(v12) = ~[v3 displayStyle];
    v13 = [v6 shouldBackgroundDefaultAction];
    if ((v12 & 0x1A) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    [v7 setShouldBackgroundDefaultAction:v14];
    v15 = [v3 userInfo];
    v16 = [v15 objectForKeyedSubscript:FLFollowUpNotifyingAppIdKey];
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

    v20 = [v3 expirationDate];

    if (v20)
    {
      v21 = [v3 _midnightAdjustedDate];
      [v7 setExpirationDate:v21];
    }

    [v7 setShouldSuppressScreenLightUp:1];
    v22 = [v3 notification];
    v23 = [v22 activateAction];

    v24 = [v23 url];

    if (v24)
    {
      v25 = [v23 url];
      [v7 setDefaultActionURL:v25];

      v26 = _FLLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v7 defaultActionURL];
        *v56 = 138412290;
        *&v56[4] = v27;
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
        v32 = [v6 activateAction];
        v33 = [v32 identifier];

        if (v33)
        {
          v34 = [v6 activateAction];
          v35 = [v34 identifier];
          [v31 setObject:v35 forKey:UNNotificationDefaultActionIdentifier];
        }

        v36 = [v6 clearAction];
        v37 = [v36 identifier];

        if (v37)
        {
          v38 = [v6 clearAction];
          v39 = [v38 identifier];
          [v31 setObject:v39 forKey:UNNotificationDismissActionIdentifier];
        }

        [v7 setUserInfo:v31];
        v40 = [v6 options];
        v41 = [v40 containsObject:FLNotificationOptionBannerAlert];

        v42 = v41;
        v43 = [v6 options];
        v44 = [v43 containsObject:FLNotificationOptionLockscreen];

        if (v44)
        {
          v42 |= 2uLL;
          v45 = [v3 categoryIdentifier];
          if (v45)
          {
            v46 = v45;
            v47 = [v6 options];
            v48 = [v47 containsObject:FLNotificationOptionKeepOnLockscreen];

            if (v48)
            {
              v49 = [v3 categoryIdentifier];
              v50 = [v49 stringByAppendingString:@"_keepOnLockscreen"];
              [v7 setCategoryIdentifier:v50];
            }
          }
        }

        v51 = [v6 options];
        v52 = [v51 containsObject:FLNotificationOptionNotificationCenter];

        if (v52)
        {
          v53 = v42 | 4;
        }

        else
        {
          v53 = v42;
        }

        v54 = [v3 uniqueIdentifier];
        v29 = [UNNotificationRequest requestWithIdentifier:v54 content:v7 trigger:0 destinations:v53];

        goto LABEL_36;
      }

      v30 = [FLTopLevelViewModel redirectURLForItem:v3 withAction:v23];
      [v7 setDefaultActionURL:v30];

      v26 = _FLLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v7 defaultActionURL];
        *v56 = 138412290;
        *&v56[4] = v27;
        v28 = "No activate action URL specified, default action will use redirect URL: %@";
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Target bundle provided identifier is not permitted for notifications, returning nil", v56, 2u);
  }

  v29 = 0;
LABEL_36:

  return v29;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(FLFoundationNotificationController *)self->_foundationNotificationController setDelegate:v4];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(FLUserNotificationProvider *)self delegate];
  v10 = [v7 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = [v11 identifier];
  v15 = _FLLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v7 actionIdentifier];
    *buf = 138412546;
    v26 = v16;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notification response received with id: %@ (uid: %@)", buf, 0x16u);
  }

  v17 = [v7 actionIdentifier];
  if ([v17 isEqualToString:UNNotificationDefaultActionIdentifier])
  {
    v18 = [v7 actionIdentifier];
    v19 = [v13 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = [v7 actionIdentifier];
      v21 = [v13 objectForKeyedSubscript:v20];
      [v9 provider:0 didActivateNotification:v21 forFollowUpItemWithIdentifier:v14 activationSource:5];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v22 = [v7 actionIdentifier];
  v23 = [v22 isEqualToString:UNNotificationDismissActionIdentifier];

  if (!v23)
  {
    [v9 provider:0 didActivateNotificationForFollowUpItemWithIdentifier:v14 activationSource:5];
    goto LABEL_11;
  }

  v24 = v14;
  v20 = [NSArray arrayWithObjects:&v24 count:1];
  [v9 provider:0 didClearNotificationsForFollowUpItemsWithIdentifiers:v20 activationSource:5];
LABEL_9:

LABEL_11:
  v8[2](v8);
}

- (id)createNotificationCenterWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating UNUserNotificationCenter for bundle identifier %@", &v9, 0xCu);
  }

  v6 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v4];
  [v6 setDelegate:self];
  [v6 setWantsNotificationResponsesDelivered];
  v7 = +[NSSet set];
  [v6 setNotificationCategories:v7];

  return v6;
}

- (id)getNotificationCenterForBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_noteCentersLock);
  v5 = [(NSMutableDictionary *)self->_noteCenters objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(FLUserNotificationProvider *)self createNotificationCenterWithBundleIdentifier:v4];
    [(NSMutableDictionary *)self->_noteCenters setObject:v5 forKey:v4];
  }

  os_unfair_lock_unlock(&self->_noteCentersLock);

  return v5;
}

- (id)getNotificationCenterForItem:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:FLFollowUpNotifyingAppIdKey];

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
  v8 = [v7 supportedNotifyingAppIds];
  v9 = [v8 containsObject:v5];

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