@interface IDSActivityPushListener
- (IDSActivityPushListener)initWithQueue:(id)a3 shouldDowngradeOnLock:(BOOL)a4;
- (IDSActivityPushListenerDelegate)delegate;
- (id)_nonWakingTopics;
- (id)_opportunisticTopics;
- (void)_configurePushHandler:(BOOL)a3;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)setShouldListen:(BOOL)a3;
- (void)setTopicsToListenOn:(id)a3;
@end

@implementation IDSActivityPushListener

- (IDSActivityPushListener)initWithQueue:(id)a3 shouldDowngradeOnLock:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v17.receiver = self;
  v17.super_class = IDSActivityPushListener;
  v8 = [(IDSActivityPushListener *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v10 = +[IDSPushHandler sharedInstance];
    pushHandler = v9->_pushHandler;
    v9->_pushHandler = v10;

    v12 = +[NSSet set];
    topicsToListenOn = v9->_topicsToListenOn;
    v9->_topicsToListenOn = v12;

    v9->_downgradeOnLock = v4;
    if (v4)
    {
      v14 = +[IMSystemMonitor sharedInstance];
      systemMonitor = v9->_systemMonitor;
      v9->_systemMonitor = v14;

      [(IMSystemMonitor *)v9->_systemMonitor addListener:v9];
    }
  }

  return v9;
}

- (void)setTopicsToListenOn:(id)a3
{
  v5 = a3;
  topicsToListenOn = self->_topicsToListenOn;
  if (topicsToListenOn != v5)
  {
    v7 = v5;
    if (!v5 || !topicsToListenOn || (topicsToListenOn = [(NSSet *)topicsToListenOn isEqualToSet:v5], v5 = v7, (topicsToListenOn & 1) == 0))
    {
      objc_storeStrong(&self->_topicsToListenOn, a3);
      topicsToListenOn = [(IDSActivityPushListener *)self _configurePushHandler:0];
      v5 = v7;
    }
  }

  _objc_release_x1(topicsToListenOn, v5);
}

- (void)setShouldListen:(BOOL)a3
{
  if (self->_shouldListen != a3)
  {
    self->_shouldListen = a3;
    [(IDSActivityPushListener *)self _configurePushHandler:0];
  }
}

- (void)_configurePushHandler:(BOOL)a3
{
  v4 = self->_listening && !a3;
  if (v4 || !self->_shouldListen)
  {
    if ([(NSSet *)self->_topicsToListenOn count]&& self->_shouldListen)
    {
      pushHandler = self->_pushHandler;
      v11 = [(IDSActivityPushListener *)self _opportunisticTopics];
      v10 = [(IDSActivityPushListener *)self _nonWakingTopics];
      [(IDSPushHandler *)pushHandler setWakingTopics:0 opportunisticTopics:v11 nonWakingTopics:v10 forListener:self];
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
    v6 = [(IDSActivityPushListener *)self _opportunisticTopics];
    v7 = [(IDSActivityPushListener *)self _nonWakingTopics];
    v8 = [NSSet setWithObjects:&off_100C3C6E8, 0];
    [(IDSPushHandler *)v5 addListener:self wakingTopics:0 opportunisticTopics:v6 nonWakingTopics:v7 commands:v8 queue:self->_queue];

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

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = [v9 _numberForKey:@"c"];
  v12 = [v11 integerValue];

  if (v12 == 223)
  {
    v13 = [(IDSActivityPushListener *)self delegate];

    if (v13)
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received update message: %@", &v22, 0xCu);
      }

      v15 = objc_alloc_init(IDSActivityUpdatePush);
      [(IDSActivityUpdatePush *)v15 setActivityTopic:v10];
      v16 = [v9 _numberForKey:@"pS"];
      -[IDSActivityUpdatePush setActivityStatus:](v15, "setActivityStatus:", [v16 BOOLValue]);

      v17 = [v9 _dataForKey:@"pT"];
      [(IDSActivityUpdatePush *)v15 setToken:v17];

      v18 = [v9 _dataForKey:@"pAM"];
      [(IDSActivityUpdatePush *)v15 setMetadataBlob:v18];

      v19 = [v9 _numberForKey:@"pTs"];
      -[IDSActivityUpdatePush setActivityTimestamp:](v15, "setActivityTimestamp:", [v19 integerValue]);

      v20 = [v9 _stringForKey:@"pSa"];
      [(IDSActivityUpdatePush *)v15 setActivitySubActivity:v20];

      v21 = [(IDSActivityPushListener *)self delegate];
      [v21 pushListener:self receivedUpdatePush:v15];
    }
  }
}

- (IDSActivityPushListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end