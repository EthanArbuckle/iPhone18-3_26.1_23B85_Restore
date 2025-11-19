@interface _MFUserNotificationCenterSummaryClient
- (MFUserNotificationCenterController)observer;
- (NSString)ef_publicDescription;
- (_MFUserNotificationCenterSummaryClient)initWithObserver:(id)a3 message:(id)a4;
- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4;
- (void)notifyContentsUnavailableForMessage:(id)a3 error:(id)a4;
@end

@implementation _MFUserNotificationCenterSummaryClient

- (_MFUserNotificationCenterSummaryClient)initWithObserver:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MFUserNotificationCenterSummaryClient;
  v8 = [(_MFUserNotificationCenterSummaryClient *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeStrong(&v9->_message, a4);
    v9->_priority = [(_MFUserNotificationCenterSummaryClient *)v9 _calculatePriority];
    v9->_ordering = [(_MFUserNotificationCenterSummaryClient *)v9 _calculateOrdering];
    v10 = v9;
  }

  return v9;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = [(MFLibraryMessage *)self->_message ef_publicDescription];
  v5 = [NSString stringWithFormat:@"<%@: %p :: message=%@, attempts=%lu, priority=%ld>", v3, self, v4, self->_attempts, self->_priority];

  return v5;
}

- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_message != v8)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MFUserNotificationCenterController.m" lineNumber:1373 description:@"Invalid message"];
  }

  if (!v7)
  {
    v7 = &stru_10015BEC8;
  }

  v9 = MSUserNotificationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MFLibraryMessage *)v8 ef_publicDescription];
    sub_1000D54B0(v10, [(__CFString *)v7 length], &v13);
  }

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained updateMessage:self->_message withSummary:v7];
}

- (void)notifyContentsUnavailableForMessage:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_message != v7)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFUserNotificationCenterController.m" lineNumber:1386 description:@"Invalid message"];
  }

  v9 = [(_MFUserNotificationCenterSummaryClient *)self observer];
  if (v9)
  {
    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(MFLibraryMessage *)v7 ef_publicDescription];
      sub_1000D5514(v11, buf, v10);
    }

    v12 = self->_attempts + 1;
    self->_attempts = v12;
    if (v12 > 2)
    {
      v15 = MSUserNotificationsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [(MFLibraryMessage *)v7 ef_publicDescription];
        sub_1000D556C(v16, v22, v15);
      }

      [v9 updateMessage:self->_message withSummary:&stru_10015BEC8];
    }

    else
    {
      self->_ordering = [(_MFUserNotificationCenterSummaryClient *)self _calculateOrdering];
      self->_priority = [(_MFUserNotificationCenterSummaryClient *)self _calculatePriority];
      v13 = dispatch_time(0, 5000000000);
      v14 = [v9 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A4CF0;
      block[3] = &unk_1001573C0;
      v19 = v7;
      v20 = self;
      v21 = v9;
      dispatch_after(v13, v14, block);
    }
  }
}

- (MFUserNotificationCenterController)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end