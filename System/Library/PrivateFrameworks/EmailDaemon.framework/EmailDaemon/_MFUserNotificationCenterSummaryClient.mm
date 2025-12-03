@interface _MFUserNotificationCenterSummaryClient
- (MFUserNotificationCenterController)observer;
- (NSString)ef_publicDescription;
- (_MFUserNotificationCenterSummaryClient)initWithObserver:(id)observer message:(id)message;
- (void)notifyContentsAvailable:(id)available forMessage:(id)message;
- (void)notifyContentsUnavailableForMessage:(id)message error:(id)error;
@end

@implementation _MFUserNotificationCenterSummaryClient

- (_MFUserNotificationCenterSummaryClient)initWithObserver:(id)observer message:(id)message
{
  observerCopy = observer;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = _MFUserNotificationCenterSummaryClient;
  v8 = [(_MFUserNotificationCenterSummaryClient *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_message, message);
    v9->_priority = [(_MFUserNotificationCenterSummaryClient *)v9 _calculatePriority];
    v9->_ordering = [(_MFUserNotificationCenterSummaryClient *)v9 _calculateOrdering];
    v10 = v9;
  }

  return v9;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  ef_publicDescription = [(MFLibraryMessage *)self->_message ef_publicDescription];
  v5 = [NSString stringWithFormat:@"<%@: %p :: message=%@, attempts=%lu, priority=%ld>", v3, self, ef_publicDescription, self->_attempts, self->_priority];

  return v5;
}

- (void)notifyContentsAvailable:(id)available forMessage:(id)message
{
  availableCopy = available;
  messageCopy = message;
  if (self->_message != messageCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MFUserNotificationCenterController.m" lineNumber:1373 description:@"Invalid message"];
  }

  if (!availableCopy)
  {
    availableCopy = &stru_10015BEC8;
  }

  v9 = MSUserNotificationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    ef_publicDescription = [(MFLibraryMessage *)messageCopy ef_publicDescription];
    sub_1000D54B0(ef_publicDescription, [(__CFString *)availableCopy length], &v13);
  }

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained updateMessage:self->_message withSummary:availableCopy];
}

- (void)notifyContentsUnavailableForMessage:(id)message error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  if (self->_message != messageCopy)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFUserNotificationCenterController.m" lineNumber:1386 description:@"Invalid message"];
  }

  observer = [(_MFUserNotificationCenterSummaryClient *)self observer];
  if (observer)
  {
    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [(MFLibraryMessage *)messageCopy ef_publicDescription];
      sub_1000D5514(ef_publicDescription, buf, v10);
    }

    v12 = self->_attempts + 1;
    self->_attempts = v12;
    if (v12 > 2)
    {
      v15 = MSUserNotificationsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        ef_publicDescription2 = [(MFLibraryMessage *)messageCopy ef_publicDescription];
        sub_1000D556C(ef_publicDescription2, v22, v15);
      }

      [observer updateMessage:self->_message withSummary:&stru_10015BEC8];
    }

    else
    {
      self->_ordering = [(_MFUserNotificationCenterSummaryClient *)self _calculateOrdering];
      self->_priority = [(_MFUserNotificationCenterSummaryClient *)self _calculatePriority];
      v13 = dispatch_time(0, 5000000000);
      queue = [observer queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A4CF0;
      block[3] = &unk_1001573C0;
      v19 = messageCopy;
      selfCopy = self;
      v21 = observer;
      dispatch_after(v13, queue, block);
    }
  }
}

- (MFUserNotificationCenterController)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end