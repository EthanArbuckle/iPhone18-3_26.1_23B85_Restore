@interface ACCUserNotificationManager
+ (id)sharedManager;
- (ACCUserNotificationManager)init;
- (id)userNotificationWithUUID:(id)a3;
- (void)dismissAllNotifications;
- (void)dismissNotification:(id)a3;
- (void)dismissNotificationWithIdentifier:(id)a3;
- (void)dismissNotificationsWithGroupIdentifier:(id)a3;
- (void)presentNotification:(id)a3 completionHandler:(id)a4;
- (void)removeUserNotification:(id)a3;
- (void)updateNotification:(id)a3;
@end

@implementation ACCUserNotificationManager

- (ACCUserNotificationManager)init
{
  v14.receiver = self;
  v14.super_class = ACCUserNotificationManager;
  v2 = [(ACCUserNotificationManager *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[NSMutableSet set];
    userNotifications = v2->_userNotifications;
    v2->_userNotifications = v7;

    v9 = +[NSMutableDictionary dictionary];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v9;

    v11 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v11;
  }

  return v2;
}

- (void)presentNotification:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 identifier];

    if (v8)
    {
      v9 = [v6 identifier];
      [(ACCUserNotificationManager *)self dismissNotificationWithIdentifier:v9];
    }

    v10 = [(ACCUserNotificationManager *)self lock];
    [v10 lock];

    v11 = [(ACCUserNotificationManager *)self userNotifications];
    [v11 addObject:v6];

    if (v7)
    {
      v12 = [(ACCUserNotificationManager *)self completionHandlers];
      v13 = objc_retainBlock(v7);
      v14 = [v6 uuid];
      [v12 setObject:v13 forKey:v14];
    }

    v15 = [(ACCUserNotificationManager *)self lock];
    [v15 unlock];

    [v6 createBackingUserNotification];
    v16 = [v6 userNotificationCFDict];

    if (v16)
    {
      v17 = [v6 type] - 1;
      if (v17 > 2)
      {
        v18 = 3;
      }

      else
      {
        v18 = qword_1001C3E38[v17];
      }

      error = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v19 = [v6 userNotificationCFDict];
      v20 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v18, &error, v19);

      v38 = v20;
      if (error || !v36[3])
      {
        v21 = [(ACCUserNotificationManager *)self lock];
        [v21 lock];

        [v6 setUserNotificationCF:0];
        v22 = [(ACCUserNotificationManager *)self lock];
        [v22 unlock];

        v23 = v36[3];
        if (v23)
        {
          CFRelease(v23);
          v36[3] = 0;
        }
      }

      else
      {
        v24 = [(ACCUserNotificationManager *)self lock];
        [v24 lock];

        [v6 setUserNotificationCF:v36[3]];
        v25 = [(ACCUserNotificationManager *)self lock];
        [v25 unlock];

        [v6 timeout];
        if (v26 > 0.0)
        {
          [v6 timeout];
          v28 = dispatch_time(0, (v27 * 1000000000.0));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke;
          block[3] = &unk_100225A08;
          block[4] = self;
          v34 = v6;
          dispatch_after(v28, &_dispatch_main_q, block);
        }

        v29 = [(ACCUserNotificationManager *)self queue];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke_2;
        v30[3] = &unk_1002259B8;
        v32 = &v35;
        v30[4] = self;
        v31 = v6;
        dispatch_async(v29, v30);
      }

      _Block_object_dispose(&v35, 8);
    }
  }
}

void __68__ACCUserNotificationManager_presentNotification_completionHandler___block_invoke_2(uint64_t a1)
{
  responseFlags = 3;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 48) + 8) + 24), 0.0, &responseFlags);
  v2 = responseFlags;
  v3 = [*(a1 + 32) lock];
  [v3 lock];

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [*(a1 + 40) uuid];
  v6 = [v4 objectForKey:v5];

  [*(a1 + 40) setUserNotificationCF:0];
  v7 = [*(a1 + 32) lock];
  [v7 unlock];

  if (v6)
  {
    if (v2 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6[2](v6, v9);
  }

  CFRelease(*(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = 0;
  [*(a1 + 32) removeUserNotification:*(a1 + 40)];
}

- (void)dismissNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(ACCUserNotificationManager *)self lock];
    [v5 lock];

    v6 = [v10 userNotificationCF];
    if (v6)
    {
      v7 = v6;
      CFRetain(v6);
      v8 = [(ACCUserNotificationManager *)self lock];
      [v8 unlock];

      CFUserNotificationCancel(v7);
      CFRelease(v7);
    }

    else
    {
      v9 = [(ACCUserNotificationManager *)self lock];
      [v9 unlock];
    }

    v4 = v10;
  }
}

- (void)dismissNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCUserNotificationManager *)self lock];
    [v5 lock];

    v6 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(ACCUserNotificationManager *)self userNotifications];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ACCUserNotificationManager *)self dismissNotification:*(*(&v21 + 1) + 8 * j), v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    v20 = [(ACCUserNotificationManager *)self lock];
    [v20 unlock];
  }
}

- (void)dismissNotificationsWithGroupIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCUserNotificationManager *)self lock];
    [v5 lock];

    v6 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(ACCUserNotificationManager *)self userNotifications];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 groupIdentifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ACCUserNotificationManager *)self dismissNotification:*(*(&v21 + 1) + 8 * j), v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    v20 = [(ACCUserNotificationManager *)self lock];
    [v20 unlock];
  }
}

- (void)dismissAllNotifications
{
  v3 = [(ACCUserNotificationManager *)self lock];
  [v3 lock];

  v4 = [(ACCUserNotificationManager *)self userNotifications];
  v5 = [v4 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ACCUserNotificationManager *)self dismissNotification:*(*(&v12 + 1) + 8 * v10), v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [(ACCUserNotificationManager *)self lock];
  [v11 unlock];
}

- (id)userNotificationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCUserNotificationManager *)self lock];
  [v5 lock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(ACCUserNotificationManager *)self userNotifications];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [(ACCUserNotificationManager *)self lock];
  [v13 unlock];

  return v7;
}

- (void)removeUserNotification:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ACCUserNotificationManager *)self lock];
    [v5 lock];

    v6 = [(ACCUserNotificationManager *)self userNotifications];
    [v6 removeObject:v4];

    v7 = [(ACCUserNotificationManager *)self completionHandlers];
    v8 = [v4 uuid];
    [v7 removeObjectForKey:v8];

    [v4 setUserNotificationCF:0];
    v9 = [(ACCUserNotificationManager *)self lock];
    [v9 unlock];
  }
}

- (void)updateNotification:(id)a3
{
  v10 = a3;
  v4 = [(ACCUserNotificationManager *)self lock];
  [v4 lock];

  [v10 updateBackingUserNotification];
  v5 = [v10 type] - 1;
  if (v5 > 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = qword_1001C3E38[v5];
  }

  v7 = [v10 userNotificationCF];
  v8 = [v10 userNotificationCFDict];
  CFUserNotificationUpdate(v7, 0.0, v6, v8);

  v9 = [(ACCUserNotificationManager *)self lock];
  [v9 unlock];
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__ACCUserNotificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_5 != -1)
  {
    dispatch_once(&sharedManager_once_5, block);
  }

  v2 = sharedManager_sharedInstance_5;

  return v2;
}

uint64_t __43__ACCUserNotificationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_5 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

@end