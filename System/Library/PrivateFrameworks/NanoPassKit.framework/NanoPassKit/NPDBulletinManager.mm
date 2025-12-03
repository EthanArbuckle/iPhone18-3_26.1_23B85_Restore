@interface NPDBulletinManager
- (NPDBulletinManager)init;
- (id)_archivedDelayedNotifications;
- (id)_defaultNotficationIdentifierWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass;
- (id)_delayedUserNotificationWithIdentifier:(id)identifier;
- (id)_userNotificationWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass playSound:(BOOL)sound notificationIdentifier:(id)identifier expirationDate:(id)date;
- (void)_persistDelayedNotificationRequest:(id)request;
- (void)_removeDelayedNotificationRequestWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l delay:(double)delay;
- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)removeBridgeBulletinsForPassWithUniqueID:(id)d;
- (void)removeBridgeBulletinsWithTitle:(id)title message:(id)message actionURL:(id)l;
- (void)removeDeliveredBridgeBulletinsWithNotificationIdentifier:(id)identifier;
@end

@implementation NPDBulletinManager

- (NPDBulletinManager)init
{
  v6.receiver = self;
  v6.super_class = NPDBulletinManager;
  v2 = [(NPDBulletinManager *)&v6 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Bridge"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    PDScheduledActivityClientRegister();
  }

  return v2;
}

- (void)dealloc
{
  PDScheduledActivityClientRemove();
  v3.receiver = self;
  v3.super_class = NPDBulletinManager;
  [(NPDBulletinManager *)&v3 dealloc];
}

- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass
{
  v7 = [(NPDBulletinManager *)self _userNotificationWithTitle:title message:message actionURL:l forPass:pass playSound:0 notificationIdentifier:0 expirationDate:0];
  [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v7 withCompletionHandler:0];
}

- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l delay:(double)delay
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = titleCopy;
      v25 = 2112;
      v26 = messageCopy;
      v27 = 2048;
      delayCopy = delay;
      v16 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested insert notification with title:%@ message:%@ delay:%f", buf, 0x2Au);
    }
  }

  if (delay <= 0.0)
  {
    [(NPDBulletinManager *)self insertBridgeBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:0];
  }

  else
  {
    v17 = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:0];
    v18 = [(NPDBulletinManager *)self _userNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:0 playSound:0 notificationIdentifier:v17 expirationDate:0];
    v19 = [NSDate dateWithTimeIntervalSinceNow:delay];
    v20 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v19];
    PDScheduledActivityRegister();
    [(NPDBulletinManager *)self _persistDelayedNotificationRequest:v18];
  }
}

- (void)removeBridgeBulletinsForPassWithUniqueID:(id)d
{
  dCopy = d;
  notificationCenter = self->_notificationCenter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043674;
  v7[3] = &unk_100072B88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v7];
}

- (void)removeBridgeBulletinsWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = titleCopy;
      v24 = 2112;
      v25 = messageCopy;
      v14 = v21;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested remove notification with title:%@ message:%@", buf, 0x20u);
    }
  }

  v15 = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:0];
  v16 = v15;
  if (v15)
  {
    notificationCenter = self->_notificationCenter;
    v19 = v15;
    v18 = [NSArray arrayWithObjects:&v19 count:1];
    [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v18];

    [(NPDBulletinManager *)self _removeDelayedNotificationRequestWithIdentifier:v16];
    PDScheduledActivityRemove();
  }
}

- (void)removeDeliveredBridgeBulletinsWithNotificationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = identifierCopy;
      v8 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested remove notification with identifier:%@", buf, 0x16u);
    }
  }

  if (identifierCopy)
  {
    notificationCenter = self->_notificationCenter;
    v11 = identifierCopy;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v10];
  }
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  v5 = [(NPDBulletinManager *)self _delayedUserNotificationWithIdentifier:?];
  if (v5)
  {
    [(NPDBulletinManager *)self _removeDelayedNotificationRequestWithIdentifier:identifierCopy];
    [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v5 withCompletionHandler:0];
  }
}

- (void)_persistDelayedNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      identifier = [requestCopy identifier];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: %@: persisted notification with ID:%@", &v16, 0x16u);
    }
  }

  identifier2 = [requestCopy identifier];

  if (identifier2)
  {
    v12 = NPKSecureArchiveObject();
    _archivedDelayedNotifications = [(NPDBulletinManager *)self _archivedDelayedNotifications];
    v14 = [_archivedDelayedNotifications mutableCopy];

    identifier3 = [requestCopy identifier];
    [v14 setObject:v12 forKeyedSubscript:identifier3];

    [(NPDBulletinManager *)self _persistArchivedNotifications:v14];
  }
}

- (id)_delayedUserNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _archivedDelayedNotifications = [(NPDBulletinManager *)self _archivedDelayedNotifications];
  v6 = [_archivedDelayedNotifications objectForKey:identifierCopy];

  objc_opt_class();
  v7 = NPKSecureUnarchiveObject();
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = identifierCopy;
      v11 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: %@: found persisted notification with ID:%@", &v15, 0x16u);
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = identifierCopy;
      v19 = 2048;
      v20 = [0 length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: %@: could not find persisted notification with ID:%@ dataLength:%lu", &v15, 0x20u);
    }
  }

LABEL_9:

  return v7;
}

- (void)_removeDelayedNotificationRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _archivedDelayedNotifications = [(NPDBulletinManager *)self _archivedDelayedNotifications];
  v6 = [_archivedDelayedNotifications mutableCopy];

  [v6 removeObjectForKey:identifierCopy];
  if (![v6 count])
  {

    v6 = 0;
  }

  [(NPDBulletinManager *)self _persistArchivedNotifications:v6];
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = identifierCopy;
      v10 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: %@: removed persisted notification with ID:%@", &v11, 0x16u);
    }
  }
}

- (id)_archivedDelayedNotifications
{
  v2 = NPKPreferencesGetValue();
  if (!v2)
  {
    v2 = +[NSDictionary dictionary];
  }

  return v2;
}

- (id)_userNotificationWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass playSound:(BOOL)sound notificationIdentifier:(id)identifier expirationDate:(id)date
{
  soundCopy = sound;
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  passCopy = pass;
  identifierCopy = identifier;
  dateCopy = date;
  uniqueID = [passCopy uniqueID];
  v22 = uniqueID;
  if (identifierCopy)
  {
    if (!uniqueID)
    {
LABEL_8:
      if (!lCopy)
      {
        lCopy = +[NPKCompanionAgentConnection watchProvisioningURL];
      }

      goto LABEL_10;
    }
  }

  else
  {
    identifierCopy = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:passCopy];
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  if ([passCopy passType] != 1)
  {
    goto LABEL_8;
  }

  if (!lCopy)
  {
    paymentPass = [passCopy paymentPass];
    v32 = paymentPass;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    lCopy = [NPKCompanionAgentConnection watchProvisioningURLForPaymentPasses:v24];
  }

LABEL_10:
  v25 = objc_alloc_init(UNMutableNotificationContent);
  [v25 setTitle:titleCopy];
  [v25 setBody:messageCopy];
  [v25 setDefaultActionURL:lCopy];
  if (v22)
  {
    v30 = PKPassbookBulletinPassUniqueIdentifierKey;
    v31 = v22;
    v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v25 setUserInfo:v26];
  }

  if (dateCopy)
  {
    [v25 setExpirationDate:dateCopy];
  }

  if (soundCopy)
  {
    v27 = +[UNNotificationSound defaultSound];
    [v25 setSound:v27];
  }

  v28 = [UNNotificationRequest requestWithIdentifier:identifierCopy content:v25 trigger:0];

  return v28;
}

- (id)_defaultNotficationIdentifierWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass
{
  passCopy = pass;
  messageCopy = message;
  titleCopy = title;
  v11 = +[NSMutableArray array];
  [v11 npkSafelyAddObject:titleCopy];

  [v11 npkSafelyAddObject:messageCopy];
  uniqueID = [passCopy uniqueID];

  [v11 npkSafelyAddObject:uniqueID];
  v13 = [NSString stringWithFormat:@"wallet-%ld", PKCombinedHash()];

  return v13;
}

@end