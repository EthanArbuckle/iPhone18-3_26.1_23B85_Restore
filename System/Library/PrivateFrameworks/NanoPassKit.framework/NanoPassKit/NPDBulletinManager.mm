@interface NPDBulletinManager
- (NPDBulletinManager)init;
- (id)_archivedDelayedNotifications;
- (id)_defaultNotficationIdentifierWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6;
- (id)_delayedUserNotificationWithIdentifier:(id)a3;
- (id)_userNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6 playSound:(BOOL)a7 notificationIdentifier:(id)a8 expirationDate:(id)a9;
- (void)_persistDelayedNotificationRequest:(id)a3;
- (void)_removeDelayedNotificationRequestWithIdentifier:(id)a3;
- (void)dealloc;
- (void)insertBridgeBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 delay:(double)a6;
- (void)insertBridgeBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)removeBridgeBulletinsForPassWithUniqueID:(id)a3;
- (void)removeBridgeBulletinsWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (void)removeDeliveredBridgeBulletinsWithNotificationIdentifier:(id)a3;
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

- (void)insertBridgeBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6
{
  v7 = [(NPDBulletinManager *)self _userNotificationWithTitle:a3 message:a4 actionURL:a5 forPass:a6 playSound:0 notificationIdentifier:0 expirationDate:0];
  [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v7 withCompletionHandler:0];
}

- (void)insertBridgeBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 delay:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2048;
      v28 = a6;
      v16 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested insert notification with title:%@ message:%@ delay:%f", buf, 0x2Au);
    }
  }

  if (a6 <= 0.0)
  {
    [(NPDBulletinManager *)self insertBridgeBulletinWithTitle:v10 message:v11 actionURL:v12 forPass:0];
  }

  else
  {
    v17 = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:v10 message:v11 actionURL:v12 forPass:0];
    v18 = [(NPDBulletinManager *)self _userNotificationWithTitle:v10 message:v11 actionURL:v12 forPass:0 playSound:0 notificationIdentifier:v17 expirationDate:0];
    v19 = [NSDate dateWithTimeIntervalSinceNow:a6];
    v20 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v19];
    PDScheduledActivityRegister();
    [(NPDBulletinManager *)self _persistDelayedNotificationRequest:v18];
  }
}

- (void)removeBridgeBulletinsForPassWithUniqueID:(id)a3
{
  v4 = a3;
  notificationCenter = self->_notificationCenter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043674;
  v7[3] = &unk_100072B88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v7];
}

- (void)removeBridgeBulletinsWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v14 = v21;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested remove notification with title:%@ message:%@", buf, 0x20u);
    }
  }

  v15 = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:v8 message:v9 actionURL:v10 forPass:0];
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

- (void)removeDeliveredBridgeBulletinsWithNotificationIdentifier:(id)a3
{
  v4 = a3;
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
      v15 = v4;
      v8 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: %@: requested remove notification with identifier:%@", buf, 0x16u);
    }
  }

  if (v4)
  {
    notificationCenter = self->_notificationCenter;
    v11 = v4;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v10];
  }
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v6 = a3;
  v5 = [(NPDBulletinManager *)self _delayedUserNotificationWithIdentifier:?];
  if (v5)
  {
    [(NPDBulletinManager *)self _removeDelayedNotificationRequestWithIdentifier:v6];
    [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v5 withCompletionHandler:0];
  }
}

- (void)_persistDelayedNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v4 identifier];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: %@: persisted notification with ID:%@", &v16, 0x16u);
    }
  }

  v11 = [v4 identifier];

  if (v11)
  {
    v12 = NPKSecureArchiveObject();
    v13 = [(NPDBulletinManager *)self _archivedDelayedNotifications];
    v14 = [v13 mutableCopy];

    v15 = [v4 identifier];
    [v14 setObject:v12 forKeyedSubscript:v15];

    [(NPDBulletinManager *)self _persistArchivedNotifications:v14];
  }
}

- (id)_delayedUserNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPDBulletinManager *)self _archivedDelayedNotifications];
  v6 = [v5 objectForKey:v4];

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
      v18 = v4;
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
      v18 = v4;
      v19 = 2048;
      v20 = [0 length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: %@: could not find persisted notification with ID:%@ dataLength:%lu", &v15, 0x20u);
    }
  }

LABEL_9:

  return v7;
}

- (void)_removeDelayedNotificationRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPDBulletinManager *)self _archivedDelayedNotifications];
  v6 = [v5 mutableCopy];

  [v6 removeObjectForKey:v4];
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
      v14 = v4;
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

- (id)_userNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6 playSound:(BOOL)a7 notificationIdentifier:(id)a8 expirationDate:(id)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = [v18 uniqueID];
  v22 = v21;
  if (v19)
  {
    if (!v21)
    {
LABEL_8:
      if (!v17)
      {
        v17 = +[NPKCompanionAgentConnection watchProvisioningURL];
      }

      goto LABEL_10;
    }
  }

  else
  {
    v19 = [(NPDBulletinManager *)self _defaultNotficationIdentifierWithTitle:v15 message:v16 actionURL:v17 forPass:v18];
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  if ([v18 passType] != 1)
  {
    goto LABEL_8;
  }

  if (!v17)
  {
    v23 = [v18 paymentPass];
    v32 = v23;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    v17 = [NPKCompanionAgentConnection watchProvisioningURLForPaymentPasses:v24];
  }

LABEL_10:
  v25 = objc_alloc_init(UNMutableNotificationContent);
  [v25 setTitle:v15];
  [v25 setBody:v16];
  [v25 setDefaultActionURL:v17];
  if (v22)
  {
    v30 = PKPassbookBulletinPassUniqueIdentifierKey;
    v31 = v22;
    v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v25 setUserInfo:v26];
  }

  if (v20)
  {
    [v25 setExpirationDate:v20];
  }

  if (v10)
  {
    v27 = +[UNNotificationSound defaultSound];
    [v25 setSound:v27];
  }

  v28 = [UNNotificationRequest requestWithIdentifier:v19 content:v25 trigger:0];

  return v28;
}

- (id)_defaultNotficationIdentifierWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5 forPass:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[NSMutableArray array];
  [v11 npkSafelyAddObject:v10];

  [v11 npkSafelyAddObject:v9];
  v12 = [v8 uniqueID];

  [v11 npkSafelyAddObject:v12];
  v13 = [NSString stringWithFormat:@"wallet-%ld", PKCombinedHash()];

  return v13;
}

@end