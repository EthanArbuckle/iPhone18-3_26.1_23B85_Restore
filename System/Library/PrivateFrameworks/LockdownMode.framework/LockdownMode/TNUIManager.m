@interface TNUIManager
+ (TNUIManager)sharedInstance;
- (TNUIManager)init;
- (void)_clearCache;
- (void)_modifyThreatNotificationCFU;
- (void)_registerCFUReceiptIfNeededWithLDMEnabled:(BOOL)a3;
- (void)_startListener;
- (void)dealloc;
@end

@implementation TNUIManager

- (TNUIManager)init
{
  v13.receiver = self;
  v13.super_class = TNUIManager;
  v2 = [(TNUIManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_cfuNotifyToken = -1;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v6;

    v8 = os_log_create("com.apple.LockdownMode", "ThreatNotification");
    logger = v3->_logger;
    v3->_logger = v8;

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ThreatNotificationUI.FollowUpExtension"];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v10;

    [(TNUIManager *)v3 _startListener];
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel(self + 8);
  v3.receiver = self;
  v3.super_class = TNUIManager;
  [(TNUIManager *)&v3 dealloc];
}

+ (TNUIManager)sharedInstance
{
  if (qword_100043038[0] != -1)
  {
    sub_10002F6E8();
  }

  v3 = qword_100043030;

  return v3;
}

- (void)_startListener
{
  p_cfuNotifyToken = &self->_cfuNotifyToken;
  if (self->_cfuNotifyToken == -1)
  {
    objc_initWeak(&location, self);
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000023BC;
    block[3] = &unk_10003CFA8;
    objc_copyWeak(&v9, &location);
    dispatch_async(dispatchQueue, block);
    v5 = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100002400;
    v6[3] = &unk_10003CFD0;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    notify_register_dispatch("com.apple.corefollowup.items_changed", p_cfuNotifyToken, v5, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_modifyThreatNotificationCFU
{
  if (!objc_opt_class())
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002F7E4(logger, v17, v18, v19, v20, v21, v22, v23);
    }

    return;
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  controller = self->_controller;
  if (!controller)
  {
    v4 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.authkit"];
    v5 = self->_controller;
    self->_controller = v4;

    controller = self->_controller;
  }

  v57 = 0;
  v6 = [(FLFollowUpController *)controller pendingFollowUpItems:&v57];
  v7 = v57;
  if (v7 || ![v6 count])
  {
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002F7AC(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    [(TNUIManager *)self _clearCache];
    goto LABEL_41;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = v6;
  v25 = [v24 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = v25;
  v27 = *v54;
  while (2)
  {
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v54 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v53 + 1) + 8 * i);
      v30 = [v29 uniqueIdentifier];
      v31 = [v30 isEqualToString:@"com.apple.ThreatNotificationUI.FollowUpItem.general"];

      if (v31)
      {
        v32 = v29;

        if (!v32)
        {
          goto LABEL_25;
        }

        v33 = +[LockdownModeManager shared];
        v34 = [v33 enabled];

        [(TNUIManager *)self _registerCFUReceiptIfNeededWithLDMEnabled:v34];
        if (v34 && [(TNUIManager *)self _cfuViewed])
        {
          if (([v32 displayStyle] & 0x10) == 0)
          {
            v35 = [v32 displayStyle] | 0x10;
            v36 = 1;
            goto LABEL_32;
          }
        }

        else if (([v32 displayStyle] & 0x10) != 0)
        {
          v36 = 0;
          v35 = [v32 displayStyle] & 0xFFFFFFFFFFFFFFEFLL;
LABEL_32:
          [v32 setDisplayStyle:v35];
          v49 = self->_controller;
          v52 = 0;
          [(FLFollowUpController *)v49 postFollowUpItem:v32 error:&v52];
          v50 = v52;
          v51 = self->_logger;
          if (v50)
          {
            v7 = v50;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_10002F6FC(v7, v51);
            }

            goto LABEL_41;
          }

          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v59 = v36;
            v46 = "Updated CFU to omit badge: %d";
            v47 = v51;
            v48 = 8;
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        v45 = self->_logger;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v46 = "Threat Notification CFU configured correctly";
          v47 = v45;
          v48 = 2;
LABEL_38:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    v26 = [v24 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_25:
  v37 = self->_logger;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_10002F774(v37, v38, v39, v40, v41, v42, v43, v44);
  }

  [(TNUIManager *)self _clearCache];
LABEL_40:
  v7 = 0;
LABEL_41:
}

- (void)_clearCache
{
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"com.apple.ThreatNotificationUI.storage.analyticsCache"];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"com.apple.ThreatNotificationUI.storage.threatNotificationTimestamp"];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"com.apple.ThreatNotificationUI.storage.cfuViewed"];
  userDefaults = self->_userDefaults;

  [(NSUserDefaults *)userDefaults synchronize];
}

- (void)_registerCFUReceiptIfNeededWithLDMEnabled:(BOOL)a3
{
  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"com.apple.ThreatNotificationUI.storage.threatNotificationTimestamp"];
  if (v4)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "CFU Receipt already exists", buf, 2u);
    }
  }

  else
  {
    userDefaults = self->_userDefaults;
    v7 = +[NSDate now];
    [v7 timeIntervalSince1970];
    v8 = [NSNumber numberWithDouble:?];
    [(NSUserDefaults *)userDefaults setObject:v8 forKey:@"com.apple.ThreatNotificationUI.storage.threatNotificationTimestamp"];

    [(NSUserDefaults *)self->_userDefaults synchronize];
    AnalyticsSendEventLazy();
  }
}

@end