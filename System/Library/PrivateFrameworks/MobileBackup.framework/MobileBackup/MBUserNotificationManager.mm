@interface MBUserNotificationManager
+ (id)sharedManager;
- (BOOL)_shouldInformUserWithNotification:(id)a3 account:(id)a4;
- (MBUserNotificationManager)init;
- (__CFUserNotification)_createCFUserNotificationFromMBUserNotification:(id)a3;
- (id)_dateOfLastNagForIdentifier:(id)a3 account:(id)a4;
- (id)_descriptionForResponse:(unint64_t)a3;
- (id)_mbNotificationForCFNotification:(__CFUserNotification *)a3;
- (id)_mbNotificationForIdentifier:(id)a3;
- (id)_propertiesForMBUserNotification:(id)a3;
- (void)_setupIsDone;
- (void)_updateDidInformUserWithNotification:(id)a3 account:(id)a4;
- (void)_userDidRespondToNotification:(__CFUserNotification *)a3 withFlags:(unint64_t)a4;
- (void)cancelNotificationWithIdentifier:(id)a3 account:(id)a4;
- (void)clearDidInformUserWithNotificationIdentifier:(id)a3 account:(id)a4;
- (void)dealloc;
- (void)deferUntilAfterSetupIsDone:(id)a3;
- (void)presentUserNotification:(id)a3 account:(id)a4 completion:(id)a5;
@end

@implementation MBUserNotificationManager

- (id)_descriptionForResponse:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"kMBAlternateButton";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"kMBDefaultButton";
  }
}

+ (id)sharedManager
{
  if (qword_100421B78 != -1)
  {
    dispatch_once(&qword_100421B78, &stru_1003C2588);
  }

  v3 = qword_100421B70;

  return v3;
}

- (MBUserNotificationManager)init
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100256BB8;
  v17[4] = sub_100256BC8;
  v18 = self;
  v16.receiver = v18;
  v16.super_class = MBUserNotificationManager;
  v2 = [(MBUserNotificationManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSMutableArray);
    afterSetupIsDoneBlocks = v2->_afterSetupIsDoneBlocks;
    v2->_afterSetupIsDoneBlocks = v7;

    v9 = v2->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100256BD0;
    handler[3] = &unk_1003C1028;
    handler[4] = v17;
    notify_register_dispatch("com.apple.purplebuddy.setupdone", &v2->_setupIsDoneNotificationToken, v9, handler);
    v10 = objc_alloc_init(NSMutableArray);
    notifications = v2->_notifications;
    v2->_notifications = v10;

    v12 = objc_alloc_init(NSMapTable);
    runLoopSources = v2->_runLoopSources;
    v2->_runLoopSources = v12;
  }

  _Block_object_dispose(v17, 8);

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_setupIsDoneNotificationToken);
  v3.receiver = self;
  v3.super_class = MBUserNotificationManager;
  [(MBUserNotificationManager *)&v3 dealloc];
}

- (void)_setupIsDone
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_afterSetupIsDoneBlocks count];
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Buddy setup complete, sleeping for 1 second then running %lu deferred blocks", buf, 0xCu);
    [(NSMutableArray *)self->_afterSetupIsDoneBlocks count];
    _MBLog();
  }

  sleep(1u);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_afterSetupIsDoneBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_afterSetupIsDoneBlocks removeAllObjects];
}

- (void)deferUntilAfterSetupIsDone:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100256E44;
  v7[3] = &unk_1003BE9A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_propertiesForMBUserNotification:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v12[0] = kCFUserNotificationAlertHeaderKey;
  v5 = [v3 title];
  v13[0] = v5;
  v12[1] = kCFUserNotificationAlertMessageKey;
  v6 = [v3 body];
  v13[1] = v6;
  v12[2] = kCFUserNotificationDefaultButtonTitleKey;
  v7 = [v3 button];
  v13[2] = v7;
  v13[3] = &__kCFBooleanTrue;
  v12[3] = kCFUserNotificationAlertTopMostKey;
  v12[4] = SBUserNotificationDontDismissOnUnlock;
  v13[4] = &__kCFBooleanTrue;
  v13[5] = &__kCFBooleanTrue;
  v12[5] = SBUserNotificationPendInSetupIfNotAllowedKey;
  v12[6] = SBUserNotificationDismissOnLock;
  v13[6] = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
  [v4 addEntriesFromDictionary:v8];

  v9 = [v3 alternateButton];

  if (v9)
  {
    v10 = [v3 alternateButton];
    [v4 setObject:v10 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  return v4;
}

- (__CFUserNotification)_createCFUserNotificationFromMBUserNotification:(id)a3
{
  v3 = [(MBUserNotificationManager *)self _propertiesForMBUserNotification:a3];
  v4 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 2uLL, 0, v3);

  return v4;
}

- (id)_mbNotificationForCFNotification:(__CFUserNotification *)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_notifications;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 cfUserNotification] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_mbNotificationForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_notifications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_userDidRespondToNotification:(__CFUserNotification *)a3 withFlags:(unint64_t)a4
{
  v4 = a4;
  v8 = [(MBUserNotificationManager *)self _mbNotificationForCFNotification:?];
  if ((v4 & 3) == 1)
  {
    v11 = 1;
  }

  else
  {
    if ((v4 & 3) == 3)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 identifier];
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User notification %@ canceled", buf, 0xCu);

        v18 = [v8 identifier];
        _MBLog();
      }

      goto LABEL_11;
    }

    v11 = 0;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MBUserNotificationManager *)self _descriptionForResponse:v11];
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "User response: %@", buf, 0xCu);

    v19 = [(MBUserNotificationManager *)self _descriptionForResponse:v11];
    _MBLog();
  }

  v14 = [v8 completionBlock];

  if (v14)
  {
    v9 = [v8 completionBlock];
    (*(v9 + 16))(v9, v11);
LABEL_11:
  }

  v15 = NSMapGet(self->_runLoopSources, a3);
  Main = CFRunLoopGetMain();
  CFRunLoopRemoveSource(Main, v15, kCFRunLoopDefaultMode);
  NSMapRemove(self->_runLoopSources, a3);
  [(NSMutableArray *)self->_notifications removeObject:v8];
  v17 = +[MBDaemon sharedDaemon];
  [v17 releaseWorkAssertion:a2];
}

- (void)presentUserNotification:(id)a3 account:(id)a4 completion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100257724;
  block[3] = &unk_1003C25B0;
  block[4] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a2;
  v8 = v13;
  v9 = v14;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cancelNotificationWithIdentifier:(id)a3 account:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100257F8C;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_dateOfLastNagForIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 persona];
  v7 = [v6 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];

  v8 = [v7 objectForKeyedSubscript:v5];

  return v8;
}

- (BOOL)_shouldInformUserWithNotification:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(MBUserNotificationManager *)self _dateOfLastNagForIdentifier:v8 account:v7];

  if (v9)
  {
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;
    [v6 interval];
    v14 = v12 > v13;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)_updateDidInformUserWithNotification:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 persona];
  v12 = [v7 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];

  v8 = [v12 mutableCopy];
  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = +[NSDate date];
  v10 = [v6 identifier];

  [v8 setObject:v9 forKeyedSubscript:v10];
  v11 = [v5 persona];

  [v11 setPreferencesValue:v8 forKey:@"UserNotificationEvents"];
}

- (void)clearDidInformUserWithNotificationIdentifier:(id)a3 account:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 persona];
  v7 = [v6 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];

  v8 = [v7 mutableCopy];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 objectForKeyedSubscript:v12];

    if (v10)
    {
      [v9 removeObjectForKey:v12];
    }
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];
  }

  v11 = [v5 persona];
  [v11 setPreferencesValue:v9 forKey:@"UserNotificationEvents"];
}

@end