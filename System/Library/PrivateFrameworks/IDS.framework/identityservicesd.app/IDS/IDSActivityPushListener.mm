@interface IDSActivityPushListener
- (IDSActivityPushListener)initWithQueue:(id)queue shouldDowngradeOnLock:(BOOL)lock;
- (IDSActivityPushListenerDelegate)delegate;
- (id)_nonWakingTopics;
- (id)_opportunisticTopics;
- (void)_configurePushHandler:(BOOL)handler;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
- (void)setShouldListen:(BOOL)listen;
- (void)setTopicsToListenOn:(id)on;
@end

@implementation IDSActivityPushListener

- (IDSActivityPushListener)initWithQueue:(id)queue shouldDowngradeOnLock:(BOOL)lock
{
  lockCopy = lock;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = IDSActivityPushListener;
  v8 = [(IDSActivityPushListener *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = +[IDSPushHandler sharedInstance];
    pushHandler = v9->_pushHandler;
    v9->_pushHandler = v10;

    v12 = +[NSSet set];
    topicsToListenOn = v9->_topicsToListenOn;
    v9->_topicsToListenOn = v12;

    v9->_downgradeOnLock = lockCopy;
    if (lockCopy)
    {
      v14 = +[IMSystemMonitor sharedInstance];
      systemMonitor = v9->_systemMonitor;
      v9->_systemMonitor = v14;

      [(IMSystemMonitor *)v9->_systemMonitor addListener:v9];
    }
  }

  return v9;
}

- (void)setTopicsToListenOn:(id)on
{
  onCopy = on;
  topicsToListenOn = self->_topicsToListenOn;
  if (topicsToListenOn != onCopy)
  {
    v7 = onCopy;
    if (!onCopy || !topicsToListenOn || (topicsToListenOn = [(NSSet *)topicsToListenOn isEqualToSet:onCopy], onCopy = v7, (topicsToListenOn & 1) == 0))
    {
      objc_storeStrong(&self->_topicsToListenOn, on);
      topicsToListenOn = [(IDSActivityPushListener *)self _configurePushHandler:0];
      onCopy = v7;
    }
  }

  _objc_release_x1(topicsToListenOn, onCopy);
}

- (void)setShouldListen:(BOOL)listen
{
  if (self->_shouldListen != listen)
  {
    self->_shouldListen = listen;
    [(IDSActivityPushListener *)self _configurePushHandler:0];
  }
}

- (void)_configurePushHandler:(BOOL)handler
{
  v4 = self->_listening && !handler;
  if (v4 || !self->_shouldListen)
  {
    if ([(NSSet *)self->_topicsToListenOn count]&& self->_shouldListen)
    {
      pushHandler = self->_pushHandler;
      _opportunisticTopics = [(IDSActivityPushListener *)self _opportunisticTopics];
      _nonWakingTopics = [(IDSActivityPushListener *)self _nonWakingTopics];
      [(IDSPushHandler *)pushHandler setWakingTopics:0 opportunisticTopics:_opportunisticTopics nonWakingTopics:_nonWakingTopics forListener:self];
    }

    else
    {
      [(IDSPushHandler *)self->_pushHandler removeListener:self];
      self->_listening = 0;
    }
  }

  else if ([(NSSet *)self->_topicsToListenOn count])
  {
    v5 = self->_pushHandler;
    _opportunisticTopics2 = [(IDSActivityPushListener *)self _opportunisticTopics];
    _nonWakingTopics2 = [(IDSActivityPushListener *)self _nonWakingTopics];
    v8 = [NSSet setWithObjects:&off_100C3C6E8, 0];
    [(IDSPushHandler *)v5 addListener:self wakingTopics:0 opportunisticTopics:_opportunisticTopics2 nonWakingTopics:_nonWakingTopics2 commands:v8 queue:self->_queue];

    self->_listening = 1;
  }
}

- (id)_opportunisticTopics
{
  if (self->_downgradeOnLock && ([(IMSystemMonitor *)self->_systemMonitor isSystemLocked]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSSet *)self->_topicsToListenOn copy];
  }

  return v3;
}

- (id)_nonWakingTopics
{
  if (self->_downgradeOnLock)
  {
    if ([(IMSystemMonitor *)self->_systemMonitor isSystemLocked])
    {
      v4 = [(NSSet *)self->_topicsToListenOn copy];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  messageCopy = message;
  topicCopy = topic;
  v11 = [messageCopy _numberForKey:@"c"];
  integerValue = [v11 integerValue];

  if (integerValue == 223)
  {
    delegate = [(IDSActivityPushListener *)self delegate];

    if (delegate)
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = messageCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received update message: %@", &v22, 0xCu);
      }

      v15 = objc_alloc_init(IDSActivityUpdatePush);
      [(IDSActivityUpdatePush *)v15 setActivityTopic:topicCopy];
      v16 = [messageCopy _numberForKey:@"pS"];
      -[IDSActivityUpdatePush setActivityStatus:](v15, "setActivityStatus:", [v16 BOOLValue]);

      v17 = [messageCopy _dataForKey:@"pT"];
      [(IDSActivityUpdatePush *)v15 setToken:v17];

      v18 = [messageCopy _dataForKey:@"pAM"];
      [(IDSActivityUpdatePush *)v15 setMetadataBlob:v18];

      v19 = [messageCopy _numberForKey:@"pTs"];
      -[IDSActivityUpdatePush setActivityTimestamp:](v15, "setActivityTimestamp:", [v19 integerValue]);

      v20 = [messageCopy _stringForKey:@"pSa"];
      [(IDSActivityUpdatePush *)v15 setActivitySubActivity:v20];

      delegate2 = [(IDSActivityPushListener *)self delegate];
      [delegate2 pushListener:self receivedUpdatePush:v15];
    }
  }
}

- (IDSActivityPushListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end