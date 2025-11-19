@interface FAPushHelperService
+ (id)sharedInstance;
- (FAPushHelperService)init;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connectionDidReconnect:(id)a3;
- (void)dealloc;
- (void)start;
- (void)startNewConnection;
- (void)stop;
@end

@implementation FAPushHelperService

+ (id)sharedInstance
{
  if (qword_1000B9938 != -1)
  {
    sub_1000785E0();
  }

  v3 = qword_1000B9930;

  return v3;
}

- (FAPushHelperService)init
{
  v20.receiver = self;
  v20.super_class = FAPushHelperService;
  v2 = [(FAPushHelperService *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(FAEventPushHandler);
    eventPushHandler = v2->_eventPushHandler;
    v2->_eventPushHandler = v3;

    v5 = objc_alloc_init(FAParentalControlsPushHandler);
    parentalControlsPushHandler = v2->_parentalControlsPushHandler;
    v2->_parentalControlsPushHandler = v5;

    v7 = [NSSet setWithObjects:@"com.icloud.family", 0];
    pushTpoics = v2->_pushTpoics;
    v2->_pushTpoics = v7;

    v9 = v2->_eventPushHandler;
    v10 = v2->_parentalControlsPushHandler;
    v11 = objc_alloc_init(FAFollowupPushHandler);
    v12 = [NSArray arrayWithObjects:v9, v10, v11, 0];
    pushHandlers = v2->_pushHandlers;
    v2->_pushHandlers = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.family.aps_queue", v14);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v15;

    v17 = [[FAFamilyNotifier alloc] initWithIdentifier:@"com.apple.familycircled" machServiceName:@"com.apple.family.notifier"];
    familyNotifier = v2->_familyNotifier;
    v2->_familyNotifier = v17;
  }

  return v2;
}

- (void)dealloc
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down APS connection.", buf, 2u);
  }

  [(FAPushHelperService *)self stop];
  v4.receiver = self;
  v4.super_class = FAPushHelperService;
  [(FAPushHelperService *)&v4 dealloc];
}

- (void)start
{
  if (self->_connection)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "APS connection is already active.", v4, 2u);
    }
  }

  else
  {

    [(FAPushHelperService *)self startNewConnection];
  }
}

- (void)stop
{
  [(APSConnection *)self->_connection shutdown];
  [(APSConnection *)self->_connection setDelegate:0];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)startNewConnection
{
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E5AC;
  block[3] = &unk_1000A6858;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 base64EncodedStringWithOptions:0];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APS public token received: %@", &v7, 0xCu);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 topic];
    v8 = [v5 userInfo];
    *buf = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new incoming message from APS. %@ - %@", buf, 0x16u);
  }

  v9 = [[FAPushMessage alloc] initWithMessage:v5];
  if ([(FAPushMessage *)v9 isValid])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->_pushHandlers;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([v15 shouldProcess:{v9, v17}])
          {
            v16 = _FALogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found a handler, processing push.", buf, 2u);
            }

            [v15 process:v9];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      sub_1000786A8(&v10->super);
    }
  }
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v4 = a4;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APS connection status changed! isConnected: %@", &v7, 0xCu);
  }
}

- (void)connectionDidReconnect:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "APS connection reconnected.", v4, 2u);
  }
}

@end