@interface NotificationController
+ (id)sharedController;
- (double)_timeTilNextActivityForItems:(id)items;
- (id)_activityCriteriaWithFrequency:(double)frequency;
- (id)_itemsWithEligibleNotifications;
- (id)xpcConnectionForClientWithMachServiceName:(id)name;
- (void)_deliverNotificationsForItem:(id)item forceDelivery:(BOOL)delivery;
- (void)_handleActivateActionFromSource:(unint64_t)source item:(id)item;
- (void)_handleExtensionAction:(id)action forItem:(id)item;
- (void)_handleNotificationAction:(id)action forItem:(id)item activationSource:(unint64_t)source;
- (void)_monitorUnlockEvents;
- (void)_processFollowUpItemNotificationWithExtension:(id)extension activatedAction:(id)action;
- (void)_processPendingItem:(id)item completion:(id)completion;
- (void)_processPendingNotifications:(id)notifications;
- (void)_registerActivityForItems:(id)items;
- (void)didActivateHSA2LoginNotificationNotification:(id)notification;
- (void)provider:(id)provider didActivateNotification:(id)notification forFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source;
- (void)provider:(id)provider didActivateNotificationForFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source;
- (void)provider:(id)provider didClearNotificationsForFollowUpItemsWithIdentifiers:(id)identifiers activationSource:(unint64_t)source;
- (void)provider:(id)provider didDismissNotificationForFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source;
- (void)start;
- (void)tearDownNotificationForItem:(id)item;
- (void)updateNotificationDeliveryDateForItem:(id)item;
- (void)updateRepeatingActivityState;
@end

@implementation NotificationController

- (void)updateRepeatingActivityState
{
  _itemsWithEligibleNotifications = [(NotificationController *)self _itemsWithEligibleNotifications];
  if ([_itemsWithEligibleNotifications count])
  {
    [(NotificationController *)self _registerActivityForItems:_itemsWithEligibleNotifications];
    [(NotificationController *)self _processPendingItem:_itemsWithEligibleNotifications completion:0];
  }

  else
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistering any active activities", v5, 2u);
    }

    xpc_activity_unregister("com.apple.followup.notify");
  }
}

+ (id)sharedController
{
  if (qword_100026B78 != -1)
  {
    sub_100010510();
  }

  v3 = qword_100026B70;

  return v3;
}

- (id)_itemsWithEligibleNotifications
{
  v3 = [NSPredicate predicateWithBlock:&stru_100020948];
  v4 = [(FLItemStoreDecorator *)self->_itemStoreDecorator itemsMatchingPredicate:v3];

  return v4;
}

- (void)start
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting notification controller...", buf, 2u);
  }

  [(NotificationController *)self _monitorUnlockEvents];
  v4 = os_transaction_create();
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006150;
  v7[3] = &unk_100020768;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_monitorUnlockEvents
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001748;
  handler[3] = &unk_100020908;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

- (double)_timeTilNextActivityForItems:(id)items
{
  itemsCopy = items;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100001428;
  v29 = sub_1000015B0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000650C;
  v16[3] = &unk_100020970;
  v16[4] = &v21;
  v16[5] = &v17;
  v16[6] = &v25;
  [itemsCopy enumerateObjectsUsingBlock:v16];
  v4 = v26[5];
  v5 = v22;
  if (v4)
  {
    v6 = v22[3];
    if (v6 == 0.0)
    {
LABEL_5:
      [v4 timeIntervalSinceNow];
      v5 = v22;
      *(v22 + 3) = v8;
      goto LABEL_6;
    }

    [v4 timeIntervalSinceNow];
    if (v6 > v7)
    {
      v4 = v26[5];
      goto LABEL_5;
    }

    v5 = v22;
  }

LABEL_6:
  v9 = v5[3];
  v10 = +[FLEnvironment currentEnvironment];
  [v10 oneDayTimeInterval];
  if (v9 <= v11)
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = *(v18 + 24);

  if (v12 == 1)
  {
    v10 = +[FLEnvironment currentEnvironment];
    [v10 oneDayTimeInterval];
    *(v22 + 3) = v13;
    goto LABEL_9;
  }

LABEL_10:
  v14 = v22[3];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)_registerActivityForItems:(id)items
{
  itemsCopy = items;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = itemsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting a repeating activity based on items: %@", buf, 0xCu);
  }

  [(NotificationController *)self _timeTilNextActivityForItems:itemsCopy];
  if (v6 <= 0.0)
  {
    v9 = _FLLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unregistering any active activities", buf, 2u);
    }

    xpc_activity_unregister("com.apple.followup.notify");
  }

  else
  {
    v7 = [(NotificationController *)self _activityCriteriaWithFrequency:?];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006990;
    handler[3] = &unk_100020908;
    handler[4] = self;
    xpc_activity_register("com.apple.followup.notify", v7, handler);

    v8 = _FLLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered for XPC events", buf, 2u);
    }
  }
}

- (id)_activityCriteriaWithFrequency:(double)frequency
{
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    frequencyCopy = frequency;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scheduling XPC activity with interval %f", &v8, 0xCu);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  frequencyCopy2 = XPC_ACTIVITY_INTERVAL_1_DAY;
  if (XPC_ACTIVITY_INTERVAL_1_DAY > frequency)
  {
    frequencyCopy2 = frequency;
  }

  xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, frequencyCopy2);
  xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);

  return v5;
}

- (void)_processPendingNotifications:(id)notifications
{
  itemStoreDecorator = self->_itemStoreDecorator;
  notificationsCopy = notifications;
  followUpItems = [(FLItemStoreDecorator *)itemStoreDecorator followUpItems];
  [(NotificationController *)self _processPendingItem:followUpItems completion:notificationsCopy];
}

- (void)_processPendingItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing pending notifications...", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F50;
  v10[3] = &unk_1000209C0;
  v10[4] = self;
  [itemCopy enumerateObjectsUsingBlock:v10];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, [itemCopy count]);
  }

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processed pending notifications...", buf, 2u);
  }
}

- (void)_deliverNotificationsForItem:(id)item forceDelivery:(BOOL)delivery
{
  itemCopy = item;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    *buf = 138412290;
    v18 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deliverying notification for item with identifier: %@", buf, 0xCu);
  }

  notification = [itemCopy notification];
  if (notification && ([itemCopy isExpired] & 1) == 0)
  {
    v10 = [(NotificationController *)self providerForFollowUpItem:itemCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007114;
    v12[3] = &unk_1000209E8;
    deliveryCopy = delivery;
    v13 = notification;
    v14 = v10;
    v15 = itemCopy;
    v11 = v10;
    [v11 shouldUpdateExistingForItem:v15 completionHandler:v12];
  }

  else
  {
    [(NotificationController *)self tearDownNotificationForItem:itemCopy];
  }
}

- (void)tearDownNotificationForItem:(id)item
{
  itemCopy = item;
  v5 = [(NotificationController *)self providerForFollowUpItem:itemCopy];
  [v5 tearDownNotificationsForFollowUpItem:itemCopy];
}

- (void)provider:(id)provider didActivateNotification:(id)notification forFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source
{
  notificationCopy = notification;
  identifierCopy = identifier;
  v11 = _FLLogSystem();
  v12 = v11;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activated notification for %@ - %@", buf, 0x16u);
    }

    v13 = [(FLItemStoreDecorator *)self->_itemStoreDecorator itemsMatchingIdentifier:identifierCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007360;
    v14[3] = &unk_100020A10;
    v15 = notificationCopy;
    selfCopy = self;
    sourceCopy = source;
    [v13 enumerateObjectsUsingBlock:v14];

    v12 = v15;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000105A4();
  }
}

- (void)provider:(id)provider didActivateNotificationForFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source
{
  identifierCopy = identifier;
  v8 = _FLLogSystem();
  v9 = v8;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activated notification for %@", buf, 0xCu);
    }

    v9 = [(FLItemStoreDecorator *)self->_itemStoreDecorator itemsMatchingIdentifier:identifierCopy];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007634;
    v10[3] = &unk_100020A38;
    v10[4] = self;
    v10[5] = source;
    [v9 enumerateObjectsUsingBlock:v10];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000105A4();
  }
}

- (void)_handleActivateActionFromSource:(unint64_t)source item:(id)item
{
  itemCopy = item;
  v6 = +[FLTelemetryFactory sharedTelemetryController];
  [v6 captureActionForItem:itemCopy withEvent:2 source:source];

  notification = [itemCopy notification];
  options = [notification options];
  v9 = [options containsObject:FLNotificationOptionExtensionActions];

  notification2 = [itemCopy notification];
  activateAction = [notification2 activateAction];
  if (v9)
  {
    [(NotificationController *)self _handleExtensionAction:activateAction forItem:itemCopy];
  }

  else
  {
    [(NotificationController *)self _handleNotificationAction:activateAction forItem:itemCopy activationSource:source];
  }
}

- (void)provider:(id)provider didClearNotificationsForFollowUpItemsWithIdentifiers:(id)identifiers activationSource:(unint64_t)source
{
  identifiersCopy = identifiers;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing notifications for %@", buf, 0xCu);
  }

  v9 = [(FLItemStoreDecorator *)self->_itemStoreDecorator itemsMatchingIdentifiers:identifiersCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000078BC;
  v10[3] = &unk_100020A38;
  v10[4] = self;
  v10[5] = source;
  [v9 enumerateObjectsUsingBlock:v10];
}

- (void)provider:(id)provider didDismissNotificationForFollowUpItemWithIdentifier:(id)identifier activationSource:(unint64_t)source
{
  identifierCopy = identifier;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissing notification: %@", buf, 0xCu);
  }

  v9 = [(FLItemStoreDecorator *)self->_itemStoreDecorator itemsMatchingIdentifier:identifierCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007A90;
  v10[3] = &unk_100020A38;
  v10[4] = self;
  v10[5] = source;
  [v9 enumerateObjectsUsingBlock:v10];
}

- (void)_handleNotificationAction:(id)action forItem:(id)item activationSource:(unint64_t)source
{
  actionCopy = action;
  itemCopy = item;
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    *buf = 138412546;
    v26 = actionCopy;
    v27 = 2112;
    v28 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handling notification action %@ for item identifier %@", buf, 0x16u);
  }

  [(NotificationController *)self updateNotificationDeliveryDateForItem:itemCopy];
  extensionIdentifier = [itemCopy extensionIdentifier];
  if (extensionIdentifier && (v13 = extensionIdentifier, +[FLEnvironment currentEnvironment](FLEnvironment, "currentEnvironment"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 followUpExtensionSupportEnabled], v14, v13, v15))
  {
    v16 = os_transaction_create();
    v17 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007D50;
    block[3] = &unk_100020A88;
    sourceCopy = source;
    v20 = itemCopy;
    selfCopy = self;
    v22 = actionCopy;
    v23 = v16;
    v18 = v16;
    dispatch_async(v17, block);
  }

  else if (source == 5)
  {
    [(NotificationController *)self _processFollowUpItemNotificationWithExtension:itemCopy activatedAction:actionCopy];
  }
}

- (void)_handleExtensionAction:(id)action forItem:(id)item
{
  actionCopy = action;
  itemCopy = item;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    *buf = 138412546;
    *&buf[4] = actionCopy;
    *&buf[12] = 2112;
    *&buf[14] = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling notification action %@ for item identifier %@", buf, 0x16u);
  }

  notification = [itemCopy notification];
  options = [notification options];
  v12 = [options mutableCopy];

  [v12 removeObject:FLNotificationOptionForce];
  notification2 = [itemCopy notification];
  [notification2 setOptions:v12];

  [(NotificationController *)self updateNotificationDeliveryDateForItem:itemCopy];
  if (actionCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = sub_100001428;
    v22 = sub_1000015B0;
    v23 = [[FLHeadlessActionHandler alloc] initWithItem:itemCopy];
    v14 = os_transaction_create();
    [actionCopy setEventSource:1];
    v15 = *(*&buf[8] + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000081F4;
    v17[3] = &unk_100020AB0;
    v19 = buf;
    v16 = v14;
    v18 = v16;
    [v15 handleAction:actionCopy completion:v17];

    _Block_object_dispose(buf, 8);
  }
}

- (void)_processFollowUpItemNotificationWithExtension:(id)extension activatedAction:(id)action
{
  extensionCopy = extension;
  actionCopy = action;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = extensionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_processFollowUpItemNotificationWithExtension: %@ ", &v12, 0xCu);
  }

  v8 = actionCopy;
  if (([v8 _loadActionURL] & 1) == 0)
  {
    v9 = _FLLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = extensionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did not handle action url trying redirect for item: %@", &v12, 0xCu);
    }

    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [FLTopLevelViewModel redirectURLForItem:extensionCopy withAction:v8];
    [v10 openSensitiveURL:v11 withOptions:0];
  }
}

- (void)updateNotificationDeliveryDateForItem:(id)item
{
  itemCopy = item;
  notification = [itemCopy notification];
  if (notification)
  {
    v5 = _FLLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting notification target date to now", v8, 2u);
    }

    v6 = +[NSDate date];
    [notification setPreviousNotificationActionDate:v6];

    v7 = +[ItemStore sharedInstance];
    [v7 updateNotificationForFollowUpItem:itemCopy];
  }
}

- (void)didActivateHSA2LoginNotificationNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(NotificationController *)self xpcConnectionForClientWithMachServiceName:@"com.apple.akd.followup"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008570;
  v7[3] = &unk_100020AD8;
  v7[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
  [v6 didActivateHSA2LoginNotification:notificationCopy];
}

- (id)xpcConnectionForClientWithMachServiceName:(id)name
{
  nameCopy = name;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:4096];

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FLFollowUpControllerDelegate];
  [v4 setRemoteObjectInterface:v5];
  [v4 resume];

  return v4;
}

@end