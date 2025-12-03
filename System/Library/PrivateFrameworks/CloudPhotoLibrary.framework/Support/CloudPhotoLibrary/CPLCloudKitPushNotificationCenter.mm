@interface CPLCloudKitPushNotificationCenter
- (CPLCloudKitCoordinator)delegate;
- (CPLCloudKitPushNotificationCenter)init;
- (void)_setPushRegistrationStatus:(id)status error:(id)error;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)setClientIsForeground:(BOOL)foreground;
- (void)startWaitingForPushNotificationsForContainer:(id)container;
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

- (void)setClientIsForeground:(BOOL)foreground
{
  if (self->_clientIsForeground != foreground)
  {
    foregroundCopy = foreground;
    pushConnection = self->_pushConnection;
    p_pushConnection = &self->_pushConnection;
    v6 = pushConnection;
    *(p_pushConnection + 89) = foregroundCopy;
    if (foregroundCopy)
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

- (void)startWaitingForPushNotificationsForContainer:(id)container
{
  self->_stoppedWaitingForPush = 0;
  containerCopy = container;
  [(CPLCloudKitPushNotificationCenter *)self _setPushRegistrationStatus:@"registering" error:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009B68;
  v6[3] = &unk_100271D90;
  v6[4] = self;
  v6[5] = a2;
  [containerCopy serverPreferredPushEnvironmentWithCompletionHandler:v6];
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

- (void)_setPushRegistrationStatus:(id)status error:(id)error
{
  errorCopy = error;
  v7 = [status copy];
  pushRegistrationStatus = self->_pushRegistrationStatus;
  self->_pushRegistrationStatus = v7;

  v9 = [errorCopy copy];
  pushRegistrationError = self->_pushRegistrationError;
  self->_pushRegistrationError = v9;
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A188;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A8C4;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (CPLCloudKitCoordinator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (self->_pushConnection == connectionCopy && (_CPLSilentLogging & 1) == 0)
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

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = messageCopy;
  if (self->_ignorePushNotifications)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100009A78();
      if (sub_1000033C0(v10))
      {
        topic = [v9 topic];
        sub_10000AF90();
        v12 = "Received unexpected push notification for %@";
        v13 = topic2;
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

  if (self->_pushConnection == connectionCopy)
  {
    topic2 = [messageCopy topic];
    topic = [v9 userInfo];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_100009A78();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *v33 = 138412802;
        *&v33[4] = topic2;
        sub_1000033B4();
        *&v33[14] = topic;
        v34 = v16;
        v35 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Received incoming message for topic %@ info %@ for APSConnection %@", v33, 0x20u);
      }
    }

    v17 = +[NSDate date];
    lastPushNotificationDate = self->_lastPushNotificationDate;
    self->_lastPushNotificationDate = v17;

    topic3 = [v9 topic];
    lastPushTopic = self->_lastPushTopic;
    self->_lastPushTopic = topic3;

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

    if (topic)
    {
      v24 = [CKNotification notificationFromRemoteNotificationDictionary:topic];
      v25 = self->_lastPushNotification;
      self->_lastPushNotification = v24;
    }

    if (self->_lastPushNotification)
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      if (!topic2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v27 = @"push notification of unknown kind";
      if (!topic2)
      {
        goto LABEL_31;
      }
    }

    if ([(NSArray *)self->_pushTopics containsObject:topic2])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = sub_100009A78();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          userInfo = [v9 userInfo];
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
          userInfo2 = [v9 userInfo];
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
      *&v33[14] = topic2;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Discarding unexpected %@ with topic %@", v33, 0x16u);
    }

LABEL_34:

    goto LABEL_35;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    topic2 = sub_100009A78();
    if (os_log_type_enabled(topic2, OS_LOG_TYPE_DEFAULT))
    {
      topic = [v9 topic];
      sub_10000AF90();
      v12 = "Discarding unexpected push notification with topic %@";
      v13 = topic2;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }

LABEL_37:
  }

LABEL_38:
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  if (self->_pushConnection == connectionCopy && (_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_100009A78();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138413058;
      v17 = tokenCopy;
      sub_1000033B4();
      v18 = topicCopy;
      v19 = v15;
      v20 = identifierCopy;
      v21 = v15;
      v22 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received token %@ for topic %@ with identifier %@ for APSConnection %@", &v16, 0x2Au);
    }
  }
}

@end