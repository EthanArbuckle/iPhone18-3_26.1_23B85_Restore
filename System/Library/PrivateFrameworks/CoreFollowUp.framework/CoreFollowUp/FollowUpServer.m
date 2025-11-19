@interface FollowUpServer
+ (id)_executablePathForPID:(int)a3;
- (BOOL)_connectionHasEntitlement:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(FollowUpServer *)self _connectionHasEntitlement:v5];
  if (v6)
  {
    v7 = [[ClientInterface alloc] initWithXPCConnection:v5];
    v8 = FLDaemonExportedInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:v7];
    [v5 resume];
  }

  else
  {
    v7 = +[FollowUpServer fl_getProcNameForPID:](FollowUpServer, "fl_getProcNameForPID:", [v5 processIdentifier]);
    v9 = [v5 processIdentifier];

    v5 = [FollowUpServer _executablePathForPID:v9];
    v10 = [(FollowUpServer *)self unentitledClients];
    LOBYTE(v9) = [v10 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      v11 = [NSString stringWithFormat:@"Unentitled connection to followupd from %@ at %@", v7, v5];
      v12 = [(FollowUpServer *)self unentitledClients];
      [v12 addObject:v7];

      if (qword_100026BB0)
      {
        free(qword_100026BB0);
        qword_100026BB0 = 0;
      }

      qword_100026BB0 = strdup([v11 UTF8String]);
      qword_100026A20 = qword_100026BB0;
      v13 = _FLLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100010EB0(v11, v13);
      }
    }
  }

  return v6;
}

- (BOOL)_connectionHasEntitlement:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.followup"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_executablePathForPID:(int)a3
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(a3 encoding:{buffer, 0x1000u), 4}];

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