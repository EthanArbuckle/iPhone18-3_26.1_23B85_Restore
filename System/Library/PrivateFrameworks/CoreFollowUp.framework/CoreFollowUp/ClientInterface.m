@interface ClientInterface
+ (id)_badgeQueue;
+ (id)allApprovedItemsByBundle;
+ (void)_updateBadgeCounts:(BOOL)a3 processTelemetry:(id)a4;
+ (void)refreshBadgesWithItems:(id)a3 forBundleIdentifier:(id)a4;
+ (void)updateBadgeCount:(unint64_t)a3 bundleID:(id)a4;
- (ClientInterface)initWithXPCConnection:(id)a3;
- (id)_predicateForClientIdentifier:(id)a3;
- (id)_telemetryProcessor;
- (id)itemsForClientIdentifier:(id)a3;
- (void)_callExtensionPerformUpdateForItem:(id)a3 shouldCallDidChangeFollowUpItems:(BOOL)a4;
- (void)_didChangeFollowUpItems;
- (void)clearNotificationForItem:(id)a3 completion:(id)a4;
- (void)clearPendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4;
- (void)clearPendingFollowUpItemsForClientIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5;
- (void)countOfPendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4;
- (void)didActivateHSA2LoginNotificationNotification:(id)a3;
- (void)pendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4;
- (void)postFollowUpItem:(id)a3 completion:(id)a4;
- (void)postHSA2PasswordResetNotification:(id)a3 completion:(id)a4;
@end

@implementation ClientInterface

- (void)_didChangeFollowUpItems
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_didChangeFollowUpItems begin", buf, 2u);
  }

  v4 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v4;

  v6 = [(ClientInterface *)self _telemetryProcessor];
  [ClientInterface _updateBadgeCounts:1 processTelemetry:v6];

  v7 = +[NotificationController sharedController];
  [v7 updateRepeatingActivityState];

  notify_post("com.apple.corefollowup.items_changed");
  v8 = self->_transaction;
  self->_transaction = 0;

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_didChangeFollowUpItems end", v10, 2u);
  }
}

+ (id)allApprovedItemsByBundle
{
  v2 = +[ItemStore sharedInstance];
  v3 = [v2 allFollowUpItems];

  v4 = [v3 fl_multiMap:&stru_100020F08];

  return v4;
}

- (id)_telemetryProcessor
{
  v2 = [FLTelemetryProcessor alloc];
  v3 = +[FLTelemetryFactory sharedTelemetryController];
  v4 = [v2 initWithController:v3];

  return v4;
}

+ (id)_badgeQueue
{
  if (qword_100026BA8 != -1)
  {
    sub_100010CD0();
  }

  v3 = qword_100026BA0;

  return v3;
}

- (ClientInterface)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v6 = [(ClientInterface *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conn, a3);
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v9;
  }

  return v7;
}

- (void)countOfPendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v8 = [(ClientInterface *)self itemsForClientIdentifier:a3];
    (*(a4 + 2))(v7, [v8 count], 0);
  }
}

- (void)postFollowUpItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 uniqueIdentifier];

    if (!v8 || ([v6 clientIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v27 = FLError();
      v7[2](v7, 0, v27);

      goto LABEL_22;
    }
  }

  v10 = +[FLEnvironment currentEnvironment];
  v11 = [v10 stressMode];

  if (v11)
  {
    v12 = +[ItemStore sharedInstance];
    v13 = [v12 insertFollowUpItem:v6];

    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v14 = [FLItemStoreDecorator alloc];
  v15 = [v6 clientIdentifier];
  v16 = [(FLItemStoreDecorator *)v14 initWithClientIdentifier:v15];

  v17 = [v6 uniqueIdentifier];
  v18 = [(FLItemStoreDecorator *)v16 itemsMatchingIdentifier:v17];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000E024;
  v29[3] = &unk_1000209C0;
  v19 = v6;
  v30 = v19;
  [v18 enumerateObjectsUsingBlock:v29];
  v20 = [v19 notification];
  [v20 recalculateActionDateToAccountForDelay];

  v21 = +[ItemStore sharedInstance];
  v13 = [v21 insertFollowUpItem:v19];

  if (v13)
  {
    if (![v18 count])
    {
      v22 = _FLLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Inserting a new follow up", &v28, 2u);
      }

      v23 = [(ClientInterface *)self _telemetryProcessor];
      [v23 processItemAddition:v19];
    }

    v24 = +[FLApprovedItemsFilter sharedFilter];
    v25 = [v24 approvalStatusForItem:v19];

    if (!v25)
    {
      [FLApprovedItemsDecorator decorateUnknownItem:v19];
    }

    [(ClientInterface *)self _callExtensionPerformUpdateForItem:v19 shouldCallDidChangeFollowUpItems:1];
  }

  else
  {
    v26 = _FLLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100010CE4(self, v26);
    }
  }

  if (v7)
  {
LABEL_20:
    (v7)[2](v7, v13, 0);
  }

LABEL_22:
}

- (void)pendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v8 = [(ClientInterface *)self itemsForClientIdentifier:a3];
    (*(a4 + 2))(v7, v8, 0);
  }
}

- (void)clearPendingFollowUpItemsForClientIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = v6;
  if (v6)
  {
    v8 = [(ClientInterface *)self itemsForClientIdentifier:v6];
  }

  else
  {
    v9 = +[ItemStore sharedInstance];
    v8 = [v9 safeSelectFollowUpItemsWithUniqueIdentifiers:0];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(ClientInterface *)self _telemetryProcessor];
        [v16 processItemRemoval:v15];

        v17 = +[ItemStore sharedInstance];
        [v17 deleteFollowUpItem:v15];

        v18 = +[NotificationController sharedController];
        [v18 tearDownNotificationForItem:v15];

        [(ClientInterface *)self _callExtensionPerformUpdateForItem:v15 shouldCallDidChangeFollowUpItems:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if ([v10 count])
  {
    [(ClientInterface *)self _didChangeFollowUpItems];
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)clearNotificationForItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 uniqueIdentifier];

  if (v7)
  {
    v8 = _FLLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueIdentifier];
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Searching for matching item in store, using identifier: %@", &v18, 0xCu);
    }

    v10 = [FLItemStoreDecorator alloc];
    v11 = [v5 clientIdentifier];
    v12 = [(FLItemStoreDecorator *)v10 initWithClientIdentifier:v11];

    v13 = [v5 uniqueIdentifier];
    v14 = [(FLItemStoreDecorator *)v12 itemsMatchingIdentifier:v13];

    if ([v14 count])
    {
      v15 = +[NotificationController sharedController];
      v16 = [v14 firstObject];
      [v15 tearDownNotificationForItem:v16];

      v6[2](v6, 1, 0);
    }

    else
    {
      v17 = FLError();
      (v6)[2](v6, 0, v17);
    }
  }

  else
  {
    v12 = FLError();
    (v6)[2](v6, 0, v12);
  }
}

- (void)clearPendingFollowUpItemsForClientIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = [[FLItemStoreDecorator alloc] initWithClientIdentifier:v8];
  v11 = [(FLItemStoreDecorator *)v20 itemsMatchingIdentifiers:v9];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [(ClientInterface *)self _telemetryProcessor];
        [v17 processItemRemoval:v16];

        v18 = +[ItemStore sharedInstance];
        [v18 deleteFollowUpItem:v16];

        v19 = +[NotificationController sharedController];
        [v19 tearDownNotificationForItem:v16];

        [(ClientInterface *)self _callExtensionPerformUpdateForItem:v16 shouldCallDidChangeFollowUpItems:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    [(ClientInterface *)self _didChangeFollowUpItems];
  }

  if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (id)itemsForClientIdentifier:(id)a3
{
  v3 = a3;
  v4 = _FLSignpostCreate();
  v5 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010D5C(v4, v5);
  }

  v6 = [[FLItemStoreDecorator alloc] initWithClientIdentifier:v3];
  v7 = [(FLItemStoreDecorator *)v6 followUpItems];
  Nanoseconds = _FLSignpostGetNanoseconds();
  v9 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100010DD4(Nanoseconds, v4, v9);
  }

  return v7;
}

- (id)_predicateForClientIdentifier:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E9A0;
  v6[3] = &unk_100020E50;
  v7 = a3;
  v3 = v7;
  v4 = [NSPredicate predicateWithBlock:v6];

  return v4;
}

- (void)_callExtensionPerformUpdateForItem:(id)a3 shouldCallDidChangeFollowUpItems:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 extensionIdentifier];
  if (v7 && (v8 = v7, +[FLEnvironment currentEnvironment](FLEnvironment, "currentEnvironment"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 followUpExtensionSupportEnabled], v9, v8, v10))
  {
    v11 = os_transaction_create();
    objc_initWeak(&location, self);
    v12 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EB60;
    block[3] = &unk_100020EA0;
    objc_copyWeak(&v18, &location);
    v13 = v6;
    v19 = v4;
    v16 = v13;
    v17 = v11;
    v14 = v11;
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    [(ClientInterface *)self _didChangeFollowUpItems];
  }
}

+ (void)_updateBadgeCounts:(BOOL)a3 processTelemetry:(id)a4
{
  v6 = a4;
  v7 = os_transaction_create();
  v8 = +[FLEnvironment currentEnvironment];
  v9 = [v8 supportedBundleIdentifiers];

  v10 = +[ClientInterface allApprovedItemsByBundle];
  v11 = [NSMutableSet setWithArray:v9];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000F160;
  v28[3] = &unk_100020EC8;
  v20 = v7;
  v29 = v20;
  v12 = v11;
  v30 = v12;
  v33 = a3;
  v22 = v9;
  v31 = v22;
  v21 = v6;
  v32 = v21;
  v23 = v10;
  [v10 enumerateKeysAndObjectsUsingBlock:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = _FLLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No items found for bundle ID, %@, ensuring badge count is 0", buf, 0xCu);
        }

        [a1 refreshBadgesWithItems:&__NSArray0__struct forBundleIdentifier:{v18, v20}];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v15);
  }
}

+ (void)refreshBadgesWithItems:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v13 displayStyle] & 0x10;
          if (!(v14 | [v13 displayStyle] & 0x20) && !objc_msgSend(v13, "isExpired"))
          {
            ++v10;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [a1 updateBadgeCount:v10 bundleID:v7];
  }

  else
  {
    v15 = _FLLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No bundle identifier, nothing to badge...", buf, 2u);
    }
  }
}

+ (void)updateBadgeCount:(unint64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = a3;
    v22 = 2112;
    v23 = v6;
    v8 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Badging (%lu, %@)", buf, 0x20u);
  }

  v9 = os_transaction_create();
  v10 = [a1 _badgeQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F53C;
  v13[3] = &unk_100020F30;
  v16 = a3;
  v17 = a1;
  v14 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v6;
  dispatch_async(v10, v13);
}

- (void)didActivateHSA2LoginNotificationNotification:(id)a3
{
  v3 = a3;
  v4 = +[NotificationController sharedController];
  [v4 didActivateHSA2LoginNotificationNotification:v3];
}

- (void)postHSA2PasswordResetNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = objc_alloc_init(FLFollowUpNotification);
  v8 = [v7 title];
  [v13 setTitle:v8];

  v9 = [v7 informativeText];
  [v13 setInformativeText:v9];

  v10 = [NSSet setWithObjects:FLNotificationOptionNotificationCenter, FLNotificationOptionForce, 0];
  [v13 setOptions:v10];

  v11 = objc_alloc_init(FLFollowUpItem);
  [v11 setUniqueIdentifier:@"com.apple.authkit.hsa2-password-reset"];
  [v11 setClientIdentifier:@"com.apple.authkit"];
  [v11 setTargetBundleIdentifier:0];
  [v11 setNotification:v13];
  v12 = [v7 followUpItemUserInfo];

  [v11 setUserInfo:v12];
  [v11 setGroupIdentifier:FLGroupIdentifierAccount];
  [(ClientInterface *)self postFollowUpItem:v11 completion:v6];
}

@end