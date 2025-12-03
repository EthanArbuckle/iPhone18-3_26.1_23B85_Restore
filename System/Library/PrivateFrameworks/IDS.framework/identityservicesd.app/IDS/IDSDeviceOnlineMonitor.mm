@interface IDSDeviceOnlineMonitor
- (IDSDeviceOnlineMonitor)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier queue:(id)queue;
- (void)_assertPresence;
- (void)_releasePresence;
- (void)_subscribe;
- (void)_unsubscribe;
- (void)assertPresence;
- (void)initSKPresenceObject;
- (void)invitedHandlesChangedForPresence:(id)presence;
- (void)presenceAssertionForPresence:(id)presence completedSuccessfully:(BOOL)successfully error:(id)error;
- (void)presenceDaemonDisconnected:(id)disconnected;
- (void)presentDevicesChangedForPresence:(id)presence;
- (void)releasePresence;
- (void)releaseSKPresenceObjectIfPossible;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation IDSDeviceOnlineMonitor

- (IDSDeviceOnlineMonitor)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier queue:(id)queue
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = IDSDeviceOnlineMonitor;
  v12 = [(IDSDeviceOnlineMonitor *)&v25 init];
  if (v12)
  {
    v13 = IMWeakLinkClass();
    v14 = IMWeakLinkClass();
    if (v13 && (v15 = v14) != 0)
    {
      identifierCopy = [NSString stringWithFormat:@"%@.%@", @"com.apple.ids.OnlineMonitor", identifierCopy];
      presenceID = v12->_presenceID;
      v12->_presenceID = identifierCopy;

      v18 = [[v15 alloc] initWithServiceIdentifier:@"com.apple.ids.OnlineMonitor"];
      [v18 setIsPersonal:1];
      v19 = [[v13 alloc] initWithPresenceIdentifier:v12->_presenceID options:v18];
      presence = v12->_presence;
      v12->_presence = v19;

      [(SKPresence *)v12->_presence addDelegate:v12 queue:queueCopy];
      v12->_isMonitoring = 0;
      v12->_status = 1;
    }

    else
    {
      v21 = +[IDSFoundationLog IPsecLink];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IDSDeviceOnlineMonitor: StatusKit framework not available on this platform", buf, 2u);
      }

      v22 = v12->_presence;
      v12->_presence = 0;

      v12->_isMonitoring = 0;
      v12->_status = 1;
    }

    objc_storeStrong(&v12->_delegate, delegate);
    objc_storeStrong(&v12->_queue, queue);
  }

  return v12;
}

- (void)startMonitoring
{
  queue = [(IDSDeviceOnlineMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050AADC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopMonitoring
{
  queue = [(IDSDeviceOnlineMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050ABCC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)assertPresence
{
  queue = [(IDSDeviceOnlineMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050ACBC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)releasePresence
{
  queue = [(IDSDeviceOnlineMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050ADAC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)initSKPresenceObject
{
  queue = [(IDSDeviceOnlineMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = IMWeakLinkClass();
  v5 = IMWeakLinkClass();
  if (v4 && v5)
  {
    v6 = [[v5 alloc] initWithServiceIdentifier:@"com.apple.ids.OnlineMonitor"];
    [v6 setIsPersonal:1];
    v7 = [[v4 alloc] initWithPresenceIdentifier:self->_presenceID options:v6];
    presence = self->_presence;
    self->_presence = v7;

    [(SKPresence *)self->_presence addDelegate:self queue:self->_queue];
    v9 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_presence;
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "initSKPresenceObject: new SKPresence object %@", &v11, 0xCu);
    }
  }

  else
  {
    v6 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSDeviceOnlineMonitor: StatusKit framework not available on this platform", &v11, 2u);
    }
  }
}

- (void)releaseSKPresenceObjectIfPossible
{
  presence = [(IDSDeviceOnlineMonitor *)self presence];
  if (presence)
  {
    v5 = presence;
    if ([(IDSDeviceOnlineMonitor *)self isMonitoring])
    {
      presence = v5;
    }

    else
    {
      isAssertingPresence = [(IDSDeviceOnlineMonitor *)self isAssertingPresence];

      if (isAssertingPresence)
      {
        return;
      }

      presence = self->_presence;
      self->_presence = 0;
    }
  }
}

- (void)_assertPresence
{
  presence = self->_presence;
  if (presence)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10050B0B8;
    v4[3] = &unk_100BD9F28;
    v4[4] = self;
    [(SKPresence *)presence assertPresenceWithCompletion:v4];
  }
}

- (void)_releasePresence
{
  presence = self->_presence;
  if (presence)
  {
    presenceIdentifier = [(SKPresence *)presence presenceIdentifier];
    v5 = self->_presence;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10050B340;
    v7[3] = &unk_100BD9F28;
    v8 = presenceIdentifier;
    v6 = presenceIdentifier;
    [(SKPresence *)v5 releasePresenceWithCompletion:v7];
  }
}

- (void)_subscribe
{
  presence = self->_presence;
  if (presence)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10050B4AC;
    v4[3] = &unk_100BD9F28;
    v4[4] = self;
    [(SKPresence *)presence retainTransientSubscriptionAssertionWithCompletion:v4];
  }
}

- (void)_unsubscribe
{
  presence = self->_presence;
  if (presence)
  {
    presenceIdentifier = [(SKPresence *)presence presenceIdentifier];
    v5 = self->_presence;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10050B7A0;
    v7[3] = &unk_100BD9F28;
    v8 = presenceIdentifier;
    v6 = presenceIdentifier;
    [(SKPresence *)v5 releaseTransientSubscriptionAssertionWithCompletion:v7];
  }
}

- (void)presentDevicesChangedForPresence:(id)presence
{
  presenceCopy = presence;
  v5 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    presentDevices = [presenceCopy presentDevices];
    v13 = 138412290;
    v14 = presentDevices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presence: list of present devices changed: %@", &v13, 0xCu);
  }

  self->_status = 1;
  presentDevices2 = [presenceCopy presentDevices];
  v8 = [presentDevices2 count];

  if (v8 == 2)
  {
    v9 = 3;
  }

  else
  {
    presentDevices3 = [presenceCopy presentDevices];
    v11 = [presentDevices3 count];

    if (v11 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  self->_status = v9;
  delegate = [(IDSDeviceOnlineMonitor *)self delegate];
  [delegate idsDeviceOnlineMonitor:self statusChanged:self->_status];
}

- (void)presenceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v5 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = disconnectedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presence: daemon disconnected for %@", &v6, 0xCu);
  }

  self->_status = 1;
  *&self->_isMonitoring = 0;
}

- (void)invitedHandlesChangedForPresence:(id)presence
{
  presenceCopy = presence;
  v4 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = presenceCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "presence: invitedHandlesChangedForPresence called for %@", &v5, 0xCu);
  }
}

- (void)presenceAssertionForPresence:(id)presence completedSuccessfully:(BOOL)successfully error:(id)error
{
  presenceCopy = presence;
  v6 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = presenceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "presenceAssertionForPresence called for %@", &v7, 0xCu);
  }
}

@end