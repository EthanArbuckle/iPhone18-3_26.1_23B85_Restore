@interface FAUserNotificationProvider
- (BOOL)customCategoryForNotification:(id)notification;
- (FAUserNotificationProvider)init;
- (FAUserNotificationProviderDelegate)delegate;
- (id)_actionsForNotification:(id)notification;
- (id)_categoryForNotification:(id)notification;
- (id)_customCategoryIdentifierForNotification:(id)notification;
- (id)_defaultNotificationCategories;
- (id)_notificationContent:(id)content;
- (void)_addCategoryForNotification:(id)notification;
- (void)_notifyDelegateOfAction:(id)action forNote:(id)note;
- (void)deliveredNotifications:(id)notifications;
- (void)postNotification:(id)notification;
- (void)tearDownNotificationWithIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation FAUserNotificationProvider

- (FAUserNotificationProvider)init
{
  v10.receiver = self;
  v10.super_class = FAUserNotificationProvider;
  v2 = [(FAUserNotificationProvider *)&v10 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.familynotifications"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v5 = v2->_notificationCenter;
    _defaultNotificationCategories = [(FAUserNotificationProvider *)v2 _defaultNotificationCategories];
    [(UNUserNotificationCenter *)v5 setNotificationCategories:_defaultNotificationCategories];

    v7 = objc_alloc_init(NSLock);
    categoryLock = v2->_categoryLock;
    v2->_categoryLock = v7;
  }

  return v2;
}

- (id)_defaultNotificationCategories
{
  v2 = [[NSMutableSet alloc] initWithCapacity:1];
  v3 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.familynotifications.default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  [v2 addObject:v3];

  return v2;
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(FAUserNotificationProvider *)self _notificationContent:notificationCopy];
  identifier = [notificationCopy identifier];

  v7 = [UNNotificationRequest requestWithIdentifier:identifier content:v5 trigger:0];

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting notification request %@", &v9, 0xCu);
  }

  [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v7 withCompletionHandler:&stru_100008400];
}

- (id)_notificationContent:(id)content
{
  contentCopy = content;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Generating notification content", &v24, 2u);
  }

  v6 = objc_alloc_init(UNMutableNotificationContent);
  if ([contentCopy hasHeader])
  {
    v7 = [NSString localizedUserNotificationStringForKey:@"FAFamilyHeader" arguments:0];
    [v6 setHeader:v7];
  }

  title = [contentCopy title];
  [v6 setTitle:title];

  informativeText = [contentCopy informativeText];
  [v6 setBody:informativeText];

  relevanceDate = [contentCopy relevanceDate];
  [v6 setDate:relevanceDate];

  expiryDate = [contentCopy expiryDate];
  [v6 setExpirationDate:expiryDate];

  v12 = +[UNNotificationSound defaultSound];
  [v6 setSound:v12];

  [v6 setShouldBackgroundDefaultAction:1];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:{objc_msgSend(contentCopy, "shouldPersistWhenActivated")}];
  if ([(FAUserNotificationProvider *)self customCategoryForNotification:contentCopy])
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notification calls for custom action buttons", &v24, 2u);
    }

    v14 = [(FAUserNotificationProvider *)self _customCategoryIdentifierForNotification:contentCopy];
    [v6 setCategoryIdentifier:v14];

    [(FAUserNotificationProvider *)self _addCategoryForNotification:contentCopy];
  }

  else
  {
    [v6 setCategoryIdentifier:@"com.apple.familynotifications.default"];
  }

  v26[0] = @"FAFamilyNotificationUUIDKey";
  uuid = [contentCopy uuid];
  v26[1] = @"FAFamilyNotificationAsDictionaryKey";
  v27[0] = uuid;
  cacheDictionaryRepresentation = [contentCopy cacheDictionaryRepresentation];
  v27[1] = cacheDictionaryRepresentation;
  v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v6 setUserInfo:v17];

  iconName = [contentCopy iconName];

  if (iconName)
  {
    v19 = _FALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      iconName2 = [contentCopy iconName];
      v24 = 138412290;
      v25 = iconName2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting icon for notification with name: %@", &v24, 0xCu);
    }

    iconName3 = [contentCopy iconName];
    v22 = [UNNotificationIcon iconForApplicationIdentifier:iconName3];

    [v6 setIcon:v22];
  }

  return v6;
}

- (void)tearDownNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tearing down notification %@:", buf, 0xCu);
  }

  notificationCenter = self->_notificationCenter;
  v11 = identifierCopy;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v7];

  v8 = self->_notificationCenter;
  v10 = identifierCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(UNUserNotificationCenter *)v8 removeDeliveredNotificationsWithIdentifiers:v9];
}

- (void)deliveredNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching delivered notifications", buf, 2u);
  }

  notificationCenter = self->_notificationCenter;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002CE8;
  v8[3] = &unk_1000082A0;
  v9 = notificationsCopy;
  v7 = notificationsCopy;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v8];
}

- (id)_categoryForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(FAUserNotificationProvider *)self _customCategoryIdentifierForNotification:notificationCopy];
  v6 = [(FAUserNotificationProvider *)self _actionsForNotification:notificationCopy];

  v7 = [UNNotificationCategory categoryWithIdentifier:v5 actions:v6 intentIdentifiers:&__NSArray0__struct options:1];

  return v7;
}

- (id)_customCategoryIdentifierForNotification:(id)notification
{
  uuid = [notification uuid];
  v4 = [NSString stringWithFormat:@"%@.%@", @"com.apple.familynotifications", uuid];

  return v4;
}

- (void)_addCategoryForNotification:(id)notification
{
  categoryLock = self->_categoryLock;
  notificationCopy = notification;
  [(NSLock *)categoryLock lock];
  notificationCategories = [(UNUserNotificationCenter *)self->_notificationCenter notificationCategories];
  v8 = [notificationCategories mutableCopy];

  v7 = [(FAUserNotificationProvider *)self _categoryForNotification:notificationCopy];

  [v8 addObject:v7];
  [(UNUserNotificationCenter *)self->_notificationCenter setNotificationCategories:v8];
  [(NSLock *)self->_categoryLock unlock];
}

- (BOOL)customCategoryForNotification:(id)notification
{
  notificationCopy = notification;
  actionButtonLabel = [notificationCopy actionButtonLabel];
  if (actionButtonLabel)
  {
    v5 = 1;
  }

  else
  {
    otherButtonLabel = [notificationCopy otherButtonLabel];
    v5 = otherButtonLabel != 0;
  }

  return v5;
}

- (id)_actionsForNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  actionButtonLabel = [notificationCopy actionButtonLabel];

  if (actionButtonLabel)
  {
    actionButtonLabel2 = [notificationCopy actionButtonLabel];
    v7 = [UNNotificationAction actionWithIdentifier:UNNotificationDefaultActionIdentifier title:actionButtonLabel2 options:0];

    [v4 addObject:v7];
  }

  otherButtonLabel = [notificationCopy otherButtonLabel];

  if (otherButtonLabel)
  {
    otherButtonLabel2 = [notificationCopy otherButtonLabel];
    v10 = [UNNotificationAction actionWithIdentifier:UNNotificationDismissActionIdentifier title:otherButtonLabel2 options:0];

    [v4 addObject:v10];
  }

  return v4;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = _FALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = responseCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received notification response - %@", &v18, 0xCu);
  }

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];

  userInfo = [content userInfo];

  if (userInfo)
  {
    userInfo2 = [content userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"FAFamilyNotificationAsDictionaryKey"];

    v16 = [[FAFamilyNotification alloc] initWithCacheDictionaryRepresentation:v15];
    if (v16)
    {
      actionIdentifier = [responseCopy actionIdentifier];
      [(FAUserNotificationProvider *)self _notifyDelegateOfAction:actionIdentifier forNote:v16];
    }

    else
    {
      actionIdentifier = _FALogSystem();
      if (os_log_type_enabled(actionIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_10000367C(actionIdentifier);
      }
    }
  }

  handlerCopy[2](handlerCopy);
}

- (void)_notifyDelegateOfAction:(id)action forNote:(id)note
{
  actionCopy = action;
  noteCopy = note;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to notifying delegate of action %@", &v10, 0xCu);
  }

  if ([actionCopy isEqualToString:UNNotificationDefaultActionIdentifier])
  {
    delegate = [(FAUserNotificationProvider *)self delegate];
    [delegate provider:self didActivateNotification:noteCopy];
  }

  else if ([actionCopy isEqualToString:UNNotificationDismissActionIdentifier])
  {
    delegate = [(FAUserNotificationProvider *)self delegate];
    [delegate provider:self didDismissNotification:noteCopy];
  }

  else
  {
    delegate = _FALogSystem();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      sub_1000036C0(delegate);
    }
  }
}

- (FAUserNotificationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end