@interface CPLCloudKitPushNotificationCenter
- (CPLCloudKitCoordinator)delegate;
- (CPLCloudKitPushNotificationCenter)init;
- (void)_setPushRegistrationStatus:(id)a3 error:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)setClientIsForeground:(BOOL)a3;
- (void)startWaitingForPushNotificationsForContainer:(id)a3;
- (void)stopWaitingForPushNotifications;
- (void)unregisterFromPushNotifications;
@end

@implementation CPLCloudKitPushNotificationCenter

- (CPLCloudKitPushNotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = CPLCloudKitPushNotificationCenter;
  v2 = [(CPLCloudKitPushNotificationCenter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    pushRegistrationStatus = v2->_pushRegistrationStatus;
    v2->_pushRegistrationStatus = @"not registered";
  }

  return v3;
}

- (void)setClientIsForeground:(BOOL)a3
{
  if (self->_clientIsForeground != a3)
  {
    v3 = a3;
    pushConnection = self->_pushConnection;
    p_pushConnection = &self->_pushConnection;
    v6 = pushConnection;
    *(p_pushConnection + 89) = v3;
    if (v3)
    {
      if (v6)
      {
        if (self->_pushEnvironment)
        {
          sub_10018437C(p_pushConnection, self, v6);
        }
      }
    }

    else if (v6 && self->_pushEnvironment)
    {
      sub_100184294(p_pushConnection, self, v6);
    }
  }
}

- (void)startWaitingForPushNotificationsForContainer:(id)a3
{
  self->_stoppedWaitingForPush = 0;
  v5 = a3;
  [(CPLCloudKitPushNotificationCenter *)self _setPushRegistrationStatus:@"registering" error:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009B68;
  v6[3] = &unk_100271D90;
  v6[4] = self;
  v6[5] = a2;
  [v5 serverPreferredPushEnvironmentWithCompletionHandler:v6];
}

- (void)stopWaitingForPushNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  pushConnection = self->_pushConnection;
  self->_stoppedWaitingForPush = 1;
  if (pushConnection)
  {
    sub_100184930(&self->_pushConnection, pushConnection, self);
  }
}

- (void)unregisterFromPushNotifications
{
  objc_storeStrong(&self->_pushEnvironment, APSEnvironmentProduction);
  v3 = [[APSConnection alloc] initWithEnvironmentName:self->_pushEnvironment namedDelegatePort:@"com.apple.photos.cloud.pushnotification" queue:self->_queue];
  pushConnection = self->_pushConnection;
  self->_pushConnection = v3;

  [(APSConnection *)self->_pushConnection setDelegate:self];
  [(APSConnection *)self->_pushConnection _setEnabledTopics:&__NSArray0__struct];
  self->_ignorePushNotifications = 1;

  [(CPLCloudKitPushNotificationCenter *)self stopWaitingForPushNotifications];
}

- (void)_setPushRegistrationStatus:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  pushRegistrationStatus = self->_pushRegistrationStatus;
  self->_pushRegistrationStatus = v7;

  v9 = [v6 copy];
  pushRegistrationError = self->_pushRegistrationError;
  self->_pushRegistrationError = v9;
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A188;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A8C4;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (CPLCloudKitCoordinator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_pushConnection == v6 && (_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_100009A78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000033B4();
      sub_10000AF80();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_ignorePushNotifications)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100009A78();
      if (sub_1000033C0(v10))
      {
        v11 = [v9 topic];
        sub_10000AF90();
        v12 = "Received unexpected push notification for %@";
        v13 = v4;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, v33, 0xCu);
LABEL_36:

        goto LABEL_37;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (self->_pushConnection == v7)
  {
    v4 = [v8 topic];
    v11 = [v9 userInfo];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_100009A78();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *v33 = 138412802;
        *&v33[4] = v4;
        sub_1000033B4();
        *&v33[14] = v11;
        v34 = v16;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Received incoming message for topic %@ info %@ for APSConnection %@", v33, 0x20u);
      }
    }

    v17 = +[NSDate date];
    lastPushNotificationDate = self->_lastPushNotificationDate;
    self->_lastPushNotificationDate = v17;

    v19 = [v9 topic];
    lastPushTopic = self->_lastPushTopic;
    self->_lastPushTopic = v19;

    if (self->_lastStartOfPushNotificationBurst && ([(NSDate *)self->_lastPushNotificationDate timeIntervalSinceDate:?], v21 <= 10.0) && [(NSDate *)self->_lastStartOfPushNotificationBurst compare:self->_lastPushNotificationDate]!= 1)
    {
      v22 = self->_countOfPushNotificationBurst + 1;
    }

    else
    {
      objc_storeStrong(&self->_lastStartOfPushNotificationBurst, self->_lastPushNotificationDate);
      v22 = 1;
    }

    self->_countOfPushNotificationBurst = v22;
    lastPushNotification = self->_lastPushNotification;
    self->_lastPushNotification = 0;

    if (v11)
    {
      v24 = [CKNotification notificationFromRemoteNotificationDictionary:v11];
      v25 = self->_lastPushNotification;
      self->_lastPushNotification = v24;
    }

    if (self->_lastPushNotification)
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      if (!v4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v27 = @"push notification of unknown kind";
      if (!v4)
      {
        goto LABEL_31;
      }
    }

    if ([(NSArray *)self->_pushTopics containsObject:v4])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = sub_100009A78();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = [v9 userInfo];
          *v33 = 138412546;
          *&v33[4] = v27;
          sub_1000033B4();
          *&v33[14] = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Received %@ %@", v33, 0x16u);
        }
      }

      if (self->_lastPushNotification)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained center:self didReceivePushNotification:self->_lastPushNotification];
      }

      else
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_35;
        }

        WeakRetained = sub_100009A78();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          v32 = [v9 userInfo];
          sub_10000AF90();
          _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Invalid CloudKit push notification %@", v33, 0xCu);
        }
      }

      goto LABEL_34;
    }

LABEL_31:
    if (_CPLSilentLogging)
    {
LABEL_35:

      goto LABEL_36;
    }

    WeakRetained = sub_100009A78();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412546;
      *&v33[4] = v27;
      sub_1000033B4();
      *&v33[14] = v4;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Discarding unexpected %@ with topic %@", v33, 0x16u);
    }

LABEL_34:

    goto LABEL_35;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100009A78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 topic];
      sub_10000AF90();
      v12 = "Discarding unexpected push notification with topic %@";
      v13 = v4;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }

LABEL_37:
  }

LABEL_38:
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_pushConnection == v10 && (_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_100009A78();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138413058;
      v17 = v11;
      sub_1000033B4();
      v18 = v12;
      v19 = v15;
      v20 = v13;
      v21 = v15;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received token %@ for topic %@ with identifier %@ for APSConnection %@", &v16, 0x2Au);
    }
  }
}

@end