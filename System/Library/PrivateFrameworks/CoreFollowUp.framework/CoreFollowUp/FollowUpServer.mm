@interface FollowUpServer
+ (id)_executablePathForPID:(int)d;
- (BOOL)_connectionHasEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FollowUpServer)init;
- (void)_beginObservingLanguageChangeNotfication;
- (void)_stopObservingLanguageChangeNotification;
- (void)dealloc;
- (void)lightStart;
- (void)start;
@end

@implementation FollowUpServer

- (FollowUpServer)init
{
  v7.receiver = self;
  v7.super_class = FollowUpServer;
  v2 = [(FollowUpServer *)&v7 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corefollowup.agent"];
    listener = v2->_listener;
    v2->_listener = v3;

    v5 = +[NSMutableSet set];
    [(FollowUpServer *)v2 setUnentitledClients:v5];
  }

  return v2;
}

- (void)start
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FollowUpServer start", buf, 2u);
  }

  [ClientInterface updateBadgeCounts:1];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [v4 addObserverForName:MCRestrictionChangedNotification object:0 queue:0 usingBlock:&stru_100020F80];
  restrictionNotificationObject = self->_restrictionNotificationObject;
  self->_restrictionNotificationObject = v5;

  v7 = objc_alloc_init(FLUserNotificationProvider);
  v8 = +[NotificationController sharedController];
  [(FLUserNotificationProvider *)v7 setDelegate:v8];

  [(FLUserNotificationProvider *)v7 start];
  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "About to start NotificationController", v17, 2u);
  }

  v10 = +[NotificationController sharedController];
  [v10 setNotificationProvider:v7];

  v11 = +[NotificationController sharedController];
  [v11 start];

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v12 = _FLLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "About to call _beginObservingLanguageChangeNotfication", v16, 2u);
  }

  [(FollowUpServer *)self _beginObservingLanguageChangeNotfication];
  v13 = _FLLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "About to call updateRepeatingActivityState", v15, 2u);
  }

  v14 = +[NotificationController sharedController];
  [v14 updateRepeatingActivityState];
}

- (void)lightStart
{
  [(NSXPCListener *)self->_listener setDelegate:self];
  listener = self->_listener;

  [(NSXPCListener *)listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(FollowUpServer *)self _connectionHasEntitlement:connectionCopy];
  if (v6)
  {
    v7 = [[ClientInterface alloc] initWithXPCConnection:connectionCopy];
    v8 = FLDaemonExportedInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:v7];
    [connectionCopy resume];
  }

  else
  {
    v7 = +[FollowUpServer fl_getProcNameForPID:](FollowUpServer, "fl_getProcNameForPID:", [connectionCopy processIdentifier]);
    processIdentifier = [connectionCopy processIdentifier];

    connectionCopy = [FollowUpServer _executablePathForPID:processIdentifier];
    unentitledClients = [(FollowUpServer *)self unentitledClients];
    LOBYTE(processIdentifier) = [unentitledClients containsObject:v7];

    if ((processIdentifier & 1) == 0)
    {
      connectionCopy = [NSString stringWithFormat:@"Unentitled connection to followupd from %@ at %@", v7, connectionCopy];
      unentitledClients2 = [(FollowUpServer *)self unentitledClients];
      [unentitledClients2 addObject:v7];

      if (qword_100026BB0)
      {
        free(qword_100026BB0);
        qword_100026BB0 = 0;
      }

      qword_100026BB0 = strdup([connectionCopy UTF8String]);
      qword_100026A20 = qword_100026BB0;
      v13 = _FLLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100010EB0(connectionCopy, v13);
      }
    }
  }

  return v6;
}

- (BOOL)_connectionHasEntitlement:(id)entitlement
{
  v3 = [entitlement valueForEntitlement:@"com.apple.private.followup"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)_executablePathForPID:(int)d
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(d encoding:{buffer, 0x1000u), 4}];

  return v3;
}

- (void)dealloc
{
  [(FollowUpServer *)self _stopObservingLanguageChangeNotification];
  v3.receiver = self;
  v3.super_class = FollowUpServer;
  [(FollowUpServer *)&v3 dealloc];
}

- (void)_beginObservingLanguageChangeNotfication
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000100BC, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObservingLanguageChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.language.changed", 0);
}

@end