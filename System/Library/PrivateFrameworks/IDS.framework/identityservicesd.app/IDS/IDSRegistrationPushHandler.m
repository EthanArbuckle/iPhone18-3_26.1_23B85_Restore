@interface IDSRegistrationPushHandler
+ (id)commandToHandlerBlock;
- (NSData)pushToken;
- (id)_pushTopics;
- (void)_acceptIncomingPushes;
- (void)_ignoreIncomingPushes;
- (void)_updateListenerIfNeeded;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)handler:(id)a3 pushTokenChanged:(id)a4;
- (void)removeListener:(id)a3;
- (void)setRegistered:(BOOL)a3;
@end

@implementation IDSRegistrationPushHandler

+ (id)commandToHandlerBlock
{
  if (qword_100CBF0D0 != -1)
  {
    sub_100929CF8();
  }

  v3 = qword_100CBF0C8;

  return v3;
}

- (void)dealloc
{
  v3 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSRegistrationPushHandler;
  [(IDSRegistrationPushHandler *)&v4 dealloc];
}

- (NSData)pushToken
{
  if (self->_registeredForPush)
  {
    v2 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v3 = [v2 pushToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateListenerIfNeeded
{
  if (self->_registeredForPush)
  {
    v4 = objc_autoreleasePoolPush();
    isListening = self->_isListening;
    v6 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v7 = [(IDSRegistrationPushHandler *)self _pushTopics];
    v8 = [NSSet setWithArray:v7];
    if (isListening)
    {
      [v6 setTopics:v8 forListener:self];
    }

    else
    {
      v9 = [objc_opt_class() commandToHandlerBlock];
      v10 = [v9 allKeys];
      v11 = [NSSet setWithArray:v10];
      v12 = im_primary_queue();
      [v6 addListener:self topics:v8 commands:v11 queue:v12];

      self->_isListening = 1;
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_acceptIncomingPushes
{
  if (!self->_registeredForPush)
  {
    self->_registeredForPush = 1;
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSRegistrationPushHandler - Accepting incoming pushes", v4, 2u);
    }

    [(IDSRegistrationPushHandler *)self _updateListenerIfNeeded];
  }
}

- (void)_ignoreIncomingPushes
{
  if (self->_registeredForPush)
  {
    v9 = v2;
    v10 = v3;
    self->_registeredForPush = 0;
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSRegistrationPushHandler - No longer accepting incoming pushes", v8, 2u);
    }

    v6 = objc_autoreleasePoolPush();
    v7 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v7 removeListener:self];

    self->_isListening = 0;
    objc_autoreleasePoolPop(v6);
  }
}

- (void)setRegistered:(BOOL)a3
{
  if (a3)
  {
    [(IDSRegistrationPushHandler *)self _acceptIncomingPushes];
  }

  else
  {
    [(IDSRegistrationPushHandler *)self _ignoreIncomingPushes];
  }
}

- (id)_pushTopics
{
  v2 = objc_alloc_init(NSMutableArray);
  IMGetIDSSettings();
  v3 = 0;
  if ([v3 count])
  {
    [v2 addObjectsFromArray:v3];
  }

  return v2;
}

- (void)addListener:(id)a3
{
  v7 = a3;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = +[NSMutableArray nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)removeListener:(id)a3
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v12 = a4;
  v8 = objc_opt_class();
  v9 = sub_10001B808(v8, v12, @"c");
  if (v9)
  {
    v10 = [objc_opt_class() commandToHandlerBlock];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      (v11)[2](v11, self, v12);
    }
  }
}

- (void)handler:(id)a3 pushTokenChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handler:self pushTokenChanged:{v7, v14}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end