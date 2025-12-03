@interface ClientInterface
+ (id)_badgeQueue;
+ (id)allApprovedItemsByBundle;
+ (void)_updateBadgeCounts:(BOOL)counts processTelemetry:(id)telemetry;
+ (void)refreshBadgesWithItems:(id)items forBundleIdentifier:(id)identifier;
+ (void)updateBadgeCount:(unint64_t)count bundleID:(id)d;
- (ClientInterface)initWithXPCConnection:(id)connection;
- (id)_predicateForClientIdentifier:(id)identifier;
- (id)_telemetryProcessor;
- (id)itemsForClientIdentifier:(id)identifier;
- (void)_callExtensionPerformUpdateForItem:(id)item shouldCallDidChangeFollowUpItems:(BOOL)items;
- (void)_didChangeFollowUpItems;
- (void)clearNotificationForItem:(id)item completion:(id)completion;
- (void)clearPendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion;
- (void)clearPendingFollowUpItemsForClientIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)countOfPendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion;
- (void)didActivateHSA2LoginNotificationNotification:(id)notification;
- (void)pendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion;
- (void)postFollowUpItem:(id)item completion:(id)completion;
- (void)postHSA2PasswordResetNotification:(id)notification completion:(id)completion;
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

  _telemetryProcessor = [(ClientInterface *)self _telemetryProcessor];
  [ClientInterface _updateBadgeCounts:1 processTelemetry:_telemetryProcessor];

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
  allFollowUpItems = [v2 allFollowUpItems];

  v4 = [allFollowUpItems fl_multiMap:&stru_100020F08];

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

- (ClientInterface)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(ClientInterface *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conn, connection);
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = uUIDString;
  }

  return v7;
}

- (void)countOfPendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v8 = [(ClientInterface *)self itemsForClientIdentifier:identifier];
    (*(completion + 2))(completionCopy, [v8 count], 0);
  }
}

- (void)postFollowUpItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if (completionCopy)
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];

    if (!uniqueIdentifier || ([itemCopy clientIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v27 = FLError();
      completionCopy[2](completionCopy, 0, v27);

      goto LABEL_22;
    }
  }

  v10 = +[FLEnvironment currentEnvironment];
  stressMode = [v10 stressMode];

  if (stressMode)
  {
    v12 = +[ItemStore sharedInstance];
    v13 = [v12 insertFollowUpItem:itemCopy];

    if (!completionCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v14 = [FLItemStoreDecorator alloc];
  clientIdentifier = [itemCopy clientIdentifier];
  v16 = [(FLItemStoreDecorator *)v14 initWithClientIdentifier:clientIdentifier];

  uniqueIdentifier2 = [itemCopy uniqueIdentifier];
  v18 = [(FLItemStoreDecorator *)v16 itemsMatchingIdentifier:uniqueIdentifier2];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000E024;
  v29[3] = &unk_1000209C0;
  v19 = itemCopy;
  v30 = v19;
  [v18 enumerateObjectsUsingBlock:v29];
  notification = [v19 notification];
  [notification recalculateActionDateToAccountForDelay];

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

      _telemetryProcessor = [(ClientInterface *)self _telemetryProcessor];
      [_telemetryProcessor processItemAddition:v19];
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

  if (completionCopy)
  {
LABEL_20:
    (completionCopy)[2](completionCopy, v13, 0);
  }

LABEL_22:
}

- (void)pendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v8 = [(ClientInterface *)self itemsForClientIdentifier:identifier];
    (*(completion + 2))(completionCopy, v8, 0);
  }
}

- (void)clearPendingFollowUpItemsForClientIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v19 = identifierCopy;
  if (identifierCopy)
  {
    v8 = [(ClientInterface *)self itemsForClientIdentifier:identifierCopy];
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
        _telemetryProcessor = [(ClientInterface *)self _telemetryProcessor];
        [_telemetryProcessor processItemRemoval:v15];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)clearNotificationForItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v8 = _FLLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier2 = [itemCopy uniqueIdentifier];
      v18 = 138412290;
      v19 = uniqueIdentifier2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Searching for matching item in store, using identifier: %@", &v18, 0xCu);
    }

    v10 = [FLItemStoreDecorator alloc];
    clientIdentifier = [itemCopy clientIdentifier];
    v12 = [(FLItemStoreDecorator *)v10 initWithClientIdentifier:clientIdentifier];

    uniqueIdentifier3 = [itemCopy uniqueIdentifier];
    v14 = [(FLItemStoreDecorator *)v12 itemsMatchingIdentifier:uniqueIdentifier3];

    if ([v14 count])
    {
      v15 = +[NotificationController sharedController];
      firstObject = [v14 firstObject];
      [v15 tearDownNotificationForItem:firstObject];

      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v17 = FLError();
      (completionCopy)[2](completionCopy, 0, v17);
    }
  }

  else
  {
    v12 = FLError();
    (completionCopy)[2](completionCopy, 0, v12);
  }
}

- (void)clearPendingFollowUpItemsForClientIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v20 = [[FLItemStoreDecorator alloc] initWithClientIdentifier:identifierCopy];
  v11 = [(FLItemStoreDecorator *)v20 itemsMatchingIdentifiers:identifiersCopy];
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
        _telemetryProcessor = [(ClientInterface *)self _telemetryProcessor];
        [_telemetryProcessor processItemRemoval:v16];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (id)itemsForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _FLSignpostCreate();
  v5 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010D5C(v4, v5);
  }

  v6 = [[FLItemStoreDecorator alloc] initWithClientIdentifier:identifierCopy];
  followUpItems = [(FLItemStoreDecorator *)v6 followUpItems];
  Nanoseconds = _FLSignpostGetNanoseconds();
  v9 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100010DD4(Nanoseconds, v4, v9);
  }

  return followUpItems;
}

- (id)_predicateForClientIdentifier:(id)identifier
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E9A0;
  v6[3] = &unk_100020E50;
  identifierCopy = identifier;
  v3 = identifierCopy;
  v4 = [NSPredicate predicateWithBlock:v6];

  return v4;
}

- (void)_callExtensionPerformUpdateForItem:(id)item shouldCallDidChangeFollowUpItems:(BOOL)items
{
  itemsCopy = items;
  itemCopy = item;
  extensionIdentifier = [itemCopy extensionIdentifier];
  if (extensionIdentifier && (v8 = extensionIdentifier, +[FLEnvironment currentEnvironment](FLEnvironment, "currentEnvironment"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 followUpExtensionSupportEnabled], v9, v8, v10))
  {
    v11 = os_transaction_create();
    objc_initWeak(&location, self);
    v12 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EB60;
    block[3] = &unk_100020EA0;
    objc_copyWeak(&v18, &location);
    v13 = itemCopy;
    v19 = itemsCopy;
    v16 = v13;
    v17 = v11;
    v14 = v11;
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else if (itemsCopy)
  {
    [(ClientInterface *)self _didChangeFollowUpItems];
  }
}

+ (void)_updateBadgeCounts:(BOOL)counts processTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v7 = os_transaction_create();
  v8 = +[FLEnvironment currentEnvironment];
  supportedBundleIdentifiers = [v8 supportedBundleIdentifiers];

  v10 = +[ClientInterface allApprovedItemsByBundle];
  v11 = [NSMutableSet setWithArray:supportedBundleIdentifiers];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000F160;
  v28[3] = &unk_100020EC8;
  v20 = v7;
  v29 = v20;
  v12 = v11;
  v30 = v12;
  countsCopy = counts;
  v22 = supportedBundleIdentifiers;
  v31 = v22;
  v21 = telemetryCopy;
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

        [self refreshBadgesWithItems:&__NSArray0__struct forBundleIdentifier:{v18, v20}];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v15);
  }
}

+ (void)refreshBadgesWithItems:(id)items forBundleIdentifier:(id)identifier
{
  itemsCopy = items;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [itemsCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(itemsCopy);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v13 displayStyle] & 0x10;
          if (!(v14 | [v13 displayStyle] & 0x20) && !objc_msgSend(v13, "isExpired"))
          {
            ++v10;
          }
        }

        v9 = [itemsCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [self updateBadgeCount:v10 bundleID:identifierCopy];
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

+ (void)updateBadgeCount:(unint64_t)count bundleID:(id)d
{
  dCopy = d;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    countCopy = count;
    v22 = 2112;
    v23 = dCopy;
    v8 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Badging (%lu, %@)", buf, 0x20u);
  }

  v9 = os_transaction_create();
  _badgeQueue = [self _badgeQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F53C;
  v13[3] = &unk_100020F30;
  countCopy2 = count;
  selfCopy = self;
  v14 = dCopy;
  v15 = v9;
  v11 = v9;
  v12 = dCopy;
  dispatch_async(_badgeQueue, v13);
}

- (void)didActivateHSA2LoginNotificationNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[NotificationController sharedController];
  [v4 didActivateHSA2LoginNotificationNotification:notificationCopy];
}

- (void)postHSA2PasswordResetNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  v13 = objc_alloc_init(FLFollowUpNotification);
  title = [notificationCopy title];
  [v13 setTitle:title];

  informativeText = [notificationCopy informativeText];
  [v13 setInformativeText:informativeText];

  v10 = [NSSet setWithObjects:FLNotificationOptionNotificationCenter, FLNotificationOptionForce, 0];
  [v13 setOptions:v10];

  v11 = objc_alloc_init(FLFollowUpItem);
  [v11 setUniqueIdentifier:@"com.apple.authkit.hsa2-password-reset"];
  [v11 setClientIdentifier:@"com.apple.authkit"];
  [v11 setTargetBundleIdentifier:0];
  [v11 setNotification:v13];
  followUpItemUserInfo = [notificationCopy followUpItemUserInfo];

  [v11 setUserInfo:followUpItemUserInfo];
  [v11 setGroupIdentifier:FLGroupIdentifierAccount];
  [(ClientInterface *)self postFollowUpItem:v11 completion:completionCopy];
}

@end