@interface SGDServer
+ (id)sharedServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SGDServer)init;
- (id)_daemonManagerForConnection:(id)a3 protocol:(id)a4;
- (void)_localeChanged:(id)a3;
- (void)dealloc;
- (void)setupWithConnectionListener:(id)a3 protocol:(id)a4 entitlement:(id)a5;
- (void)shutdown;
@end

@implementation SGDServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)v8->_xpcListeners objectForKey:v6];
  objc_sync_exit(v8);

  if (!v9)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v10 = [v9 protocol];
  v11 = [v9 entitlement];
  v12 = [v7 sgd_clientName];
  v13 = ii_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *v30 = protocol_getName(v10);
    *&v30[8] = 2080;
    *&v30[10] = [(__CFString *)v12 UTF8String];
    *&v30[18] = 1024;
    *&v30[20] = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "New %s connection from %s (%d)", buf, 0x1Cu);
  }

  v14 = [v7 valueForEntitlement:v11];
  if (!v14 || (objc_opt_respondsToSelector() & 1) == 0 || ([v14 BOOLValue] & 1) == 0)
  {
    v15 = ii_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = [v7 processIdentifier];
      if (v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = @"(client name was nil)";
      }

      if (v11)
      {
        v22 = v11;
      }

      else
      {
        v22 = @"(expected entitlement key was nil)";
      }

      Name = protocol_getName(v10);
      *buf = 67109890;
      *v30 = v24;
      *&v30[4] = 2112;
      *&v30[6] = v21;
      *&v30[14] = 2112;
      *&v30[16] = v22;
      v31 = 2080;
      v32 = Name;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received a connection without suggestions entitlement, rejecting; pid: %d, name: %@, entitlementKey: %@, protocol: %s", buf, 0x26u);
    }

    goto LABEL_10;
  }

  v15 = [(SGDServer *)v8 _daemonManagerForConnection:v7 protocol:v10];
  if (!v15)
  {
    v20 = ii_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Suggestions daemon manager failed to initialize", buf, 2u);
    }

    v15 = 0;
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v16 = [SGDSuggestManagerInterface xpcInterfaceForProtocol:v10];
  [v7 setExportedInterface:v16];

  [v7 setExportedObject:v15];
  objc_initWeak(buf, v7);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100002CEC;
  v25[3] = &unk_10000C568;
  objc_copyWeak(&v28, buf);
  v26 = v10;
  v27 = v8;
  [v7 setInvalidationHandler:v25];
  v17 = v8;
  objc_sync_enter(v17);
  [v17[2] addObject:v7];
  [v7 resume];
  objc_sync_exit(v17);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  v18 = 1;
LABEL_11:

LABEL_13:
  return v18;
}

- (id)_daemonManagerForConnection:(id)a3 protocol:(id)a4
{
  v4 = a3;
  v5 = [v4 sgd_clientName];
  v6 = [v5 isEqualToString:@"com.apple.imdpersistenceagent"];
  v7 = [SGDSuggestManager alloc];
  if (v6)
  {
    v8 = +[SGSqlEntityStore defaultHarvestStore];
    v9 = [v7 initWithMessagesConnection:v4 store:v8];
  }

  else
  {
    v8 = +[SGSqlEntityStore defaultStore];
    v9 = [v7 initWithConnection:v4 store:v8];
  }

  v10 = v9;

  v11 = [[SGDSuggestManagerSettingsDecorator alloc] initWithManager:v10];

  return v11;
}

- (void)_localeChanged:(id)a3
{
  v3 = ii_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Locale changed. Terminating daemon.", v4, 2u);
  }

  xpc_transaction_exit_clean();
}

- (void)shutdown
{
  v3 = ii_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "suggestd shutting down, bye!", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4->_coreSuggestionClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)v4->_coreSuggestionClients removeAllObjects];
  objc_sync_exit(v4);
}

- (void)setupWithConnectionListener:(id)a3 protocol:(id)a4 entitlement:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMapTable *)v10->_xpcListeners objectForKey:v13];

  if (!v11)
  {
    v12 = objc_opt_new();
    [v12 setEntitlement:v9];
    [v12 setProtocol:v8];
    [(NSMapTable *)v10->_xpcListeners setObject:v12 forKey:v13];
    [v13 setDelegate:v10];
    [v13 resume];
  }

  objc_sync_exit(v10);
}

- (void)dealloc
{
  v3 = ii_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "suggestd is going away now. K BYE!", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SGDServer;
  [(SGDServer *)&v4 dealloc];
}

- (SGDServer)init
{
  v11.receiver = self;
  v11.super_class = SGDServer;
  v2 = [(SGDServer *)&v11 init];
  if (v2)
  {
    v3 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:1];
    xpcListeners = v2->_xpcListeners;
    v2->_xpcListeners = v3;

    v5 = objc_opt_new();
    coreSuggestionClients = v2->_coreSuggestionClients;
    v2->_coreSuggestionClients = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_localeChanged:" name:NSCurrentLocaleDidChangeNotification object:0];

    [SGPreferenceStorage setFirstPartyMailAppIsInstalled:sub_100003440(SGBundleIdentifierMail)];
    [SGPreferenceStorage setFirstPartyCalendarAppIsInstalled:sub_100003440(SGBundleIdentifierCalendar)];
    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_receivedInstallNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];

    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_receivedUninstallNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }

  return v2;
}

+ (id)sharedServer
{
  if (qword_100011C88 != -1)
  {
    dispatch_once(&qword_100011C88, &stru_10000C540);
  }

  v3 = qword_100011C80;

  return v3;
}

@end