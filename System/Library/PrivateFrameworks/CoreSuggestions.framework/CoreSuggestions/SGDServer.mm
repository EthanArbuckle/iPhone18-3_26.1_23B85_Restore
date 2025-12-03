@interface SGDServer
+ (id)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SGDServer)init;
- (id)_daemonManagerForConnection:(id)connection protocol:(id)protocol;
- (void)_localeChanged:(id)changed;
- (void)dealloc;
- (void)setupWithConnectionListener:(id)listener protocol:(id)protocol entitlement:(id)entitlement;
- (void)shutdown;
@end

@implementation SGDServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMapTable *)selfCopy->_xpcListeners objectForKey:listenerCopy];
  objc_sync_exit(selfCopy);

  if (!v9)
  {
    v18 = 0;
    goto LABEL_13;
  }

  protocol = [v9 protocol];
  entitlement = [v9 entitlement];
  sgd_clientName = [connectionCopy sgd_clientName];
  v13 = ii_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *v30 = protocol_getName(protocol);
    *&v30[8] = 2080;
    *&v30[10] = [(__CFString *)sgd_clientName UTF8String];
    *&v30[18] = 1024;
    *&v30[20] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "New %s connection from %s (%d)", buf, 0x1Cu);
  }

  v14 = [connectionCopy valueForEntitlement:entitlement];
  if (!v14 || (objc_opt_respondsToSelector() & 1) == 0 || ([v14 BOOLValue] & 1) == 0)
  {
    v15 = ii_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      processIdentifier = [connectionCopy processIdentifier];
      if (sgd_clientName)
      {
        v21 = sgd_clientName;
      }

      else
      {
        v21 = @"(client name was nil)";
      }

      if (entitlement)
      {
        v22 = entitlement;
      }

      else
      {
        v22 = @"(expected entitlement key was nil)";
      }

      Name = protocol_getName(protocol);
      *buf = 67109890;
      *v30 = processIdentifier;
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

  v15 = [(SGDServer *)selfCopy _daemonManagerForConnection:connectionCopy protocol:protocol];
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

  v16 = [SGDSuggestManagerInterface xpcInterfaceForProtocol:protocol];
  [connectionCopy setExportedInterface:v16];

  [connectionCopy setExportedObject:v15];
  objc_initWeak(buf, connectionCopy);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100002CEC;
  v25[3] = &unk_10000C568;
  objc_copyWeak(&v28, buf);
  v26 = protocol;
  v27 = selfCopy;
  [connectionCopy setInvalidationHandler:v25];
  v17 = selfCopy;
  objc_sync_enter(v17);
  [v17[2] addObject:connectionCopy];
  [connectionCopy resume];
  objc_sync_exit(v17);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  v18 = 1;
LABEL_11:

LABEL_13:
  return v18;
}

- (id)_daemonManagerForConnection:(id)connection protocol:(id)protocol
{
  connectionCopy = connection;
  sgd_clientName = [connectionCopy sgd_clientName];
  v6 = [sgd_clientName isEqualToString:@"com.apple.imdpersistenceagent"];
  v7 = [SGDSuggestManager alloc];
  if (v6)
  {
    v8 = +[SGSqlEntityStore defaultHarvestStore];
    v9 = [v7 initWithMessagesConnection:connectionCopy store:v8];
  }

  else
  {
    v8 = +[SGSqlEntityStore defaultStore];
    v9 = [v7 initWithConnection:connectionCopy store:v8];
  }

  v10 = v9;

  v11 = [[SGDSuggestManagerSettingsDecorator alloc] initWithManager:v10];

  return v11;
}

- (void)_localeChanged:(id)changed
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = selfCopy->_coreSuggestionClients;
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

  [(NSMutableArray *)selfCopy->_coreSuggestionClients removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)setupWithConnectionListener:(id)listener protocol:(id)protocol entitlement:(id)entitlement
{
  listenerCopy = listener;
  protocolCopy = protocol;
  entitlementCopy = entitlement;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMapTable *)selfCopy->_xpcListeners objectForKey:listenerCopy];

  if (!v11)
  {
    v12 = objc_opt_new();
    [v12 setEntitlement:entitlementCopy];
    [v12 setProtocol:protocolCopy];
    [(NSMapTable *)selfCopy->_xpcListeners setObject:v12 forKey:listenerCopy];
    [listenerCopy setDelegate:selfCopy];
    [listenerCopy resume];
  }

  objc_sync_exit(selfCopy);
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