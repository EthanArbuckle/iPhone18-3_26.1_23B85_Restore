@interface MRDXPCUIController
- (BOOL)hasUIAssertions;
- (MRDXPCUIController)initWithDelegate:(id)delegate;
- (MRUIServerXPCProtocol)server;
- (NSXPCConnection)xpcConnection;
- (id)acquireQuickControlsAssertion;
- (id)delegate;
- (id)synchronousServer;
- (void)_updateTransaction;
- (void)acquireGroupSessionLowPowerPlatterAssertion;
- (void)acquireGroupSessionNearbyAssertionForSession:(id)session;
- (void)acquireLockScreenControlsAssertion;
- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)identifiers;
- (void)acquireScreenMirroringQuickControlsAssertion;
- (void)dealloc;
- (void)nearbyGroupSessionDismissed:(id)dismissed;
- (void)releaseGroupSessionLowPowerPlatterAssertion;
- (void)releaseGroupSessionNearbyAssertion;
- (void)releaseLockScreenControlsAssertion;
- (void)releaseQuickControlsAssertion;
- (void)releaseRouteRecommendationAssertion;
- (void)releaseScreenMirroringQuickControlsAssertion;
- (void)routeRecommendationDismissed;
@end

@implementation MRDXPCUIController

- (MRDXPCUIController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MRDXPCUIController;
  v5 = [(MRDXPCUIController *)&v8 init];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Initializing XPC controller.", buf, 0xCu);
    }

    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Dealloc.", buf, 0xCu);
  }

  server = [(MRDXPCUIController *)self server];
  if ([(MRDXPCUIController *)self hasLockScreenControlsAssertion])
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003B03CC();
    }

    [server releaseLockScreenControlsAssertionWithReply:&stru_1004C10A0];
  }

  if ([(MRDXPCUIController *)self hasQuickControlsAssertion])
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0434();
    }

    [server releaseQuickControlsAssertionWithReply:&stru_1004C10C0];
  }

  if ([(MRDXPCUIController *)self hasScreenMirroringQuickControlsAssertion])
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003B049C();
    }

    [server releaseScreenMirroringQuickControlsAssertionWithReply:&stru_1004C10E0];
  }

  if ([(MRDXPCUIController *)self hasRouteRecommendationAssertion])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0504();
    }

    [server releaseRouteRecommendationAssertionWithReply:&stru_1004C1100];
  }

  if ([(MRDXPCUIController *)self hasGroupSessionLowPowerAssertion])
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003B056C();
    }

    [server releaseGroupSessionLowPowerPlatterAssertionWithReply:&stru_1004C1120];
  }

  xpcConnection = [(MRDXPCUIController *)self xpcConnection];
  [xpcConnection invalidate];

  v11.receiver = self;
  v11.super_class = MRDXPCUIController;
  [(MRDXPCUIController *)&v11 dealloc];
}

- (void)_updateTransaction
{
  if ([(MRDXPCUIController *)self hasUIAssertions])
  {
    v3 = [MROSTransaction alloc];
    v4 = [NSString stringWithFormat:@"com.apple.mediaremoted.UIController.%p", self];
    v5 = [v3 initWithName:v4];
    [(MRDXPCUIController *)self setTransaction:v5];

    transaction = [(MRDXPCUIController *)self transaction];
    MRRegisterTransaction();
  }

  else
  {

    [(MRDXPCUIController *)self setTransaction:0];
  }
}

- (BOOL)hasUIAssertions
{
  if ([(MRDXPCUIController *)self hasQuickControlsAssertion]|| [(MRDXPCUIController *)self hasScreenMirroringQuickControlsAssertion]|| [(MRDXPCUIController *)self hasLockScreenControlsAssertion])
  {
    return 1;
  }

  return [(MRDXPCUIController *)self hasRouteRecommendationAssertion];
}

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = +[MRDUIServer sharedServer];
    listener = [v4 listener];
    endpoint = [listener endpoint];

    v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpoint];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSMutableSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v11 = MSVPropertyListDataClasses();
    [v10 unionSet:v11];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRUIClientXPCProtocol];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRUIServerXPCProtocol];
    [v13 setClasses:v10 forSelector:"acquireGroupSessionNearbyAssertionForSession:withReply:" argumentIndex:0 ofReply:0];
    [v12 setClasses:v10 forSelector:"nearbyGroupSessionDismissed:" argumentIndex:0 ofReply:0];
    v14 = [MSVWeakProxy proxyWithObject:self protocol:&OBJC_PROTOCOL___MRUIClientXPCProtocol];
    [(NSXPCConnection *)v7 setExportedObject:v14];

    [(NSXPCConnection *)v7 setExportedInterface:v12];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v13];
    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001A79B4;
    v20[3] = &unk_1004B8280;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001A7A80;
    v18[3] = &unk_1004B8280;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v7 setInvalidationHandler:v18];
    [(NSXPCConnection *)v7 resume];
    v15 = self->_xpcConnection;
    self->_xpcConnection = v7;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    xpcConnection = self->_xpcConnection;
  }

  v16 = xpcConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v16;
}

- (MRUIServerXPCProtocol)server
{
  xpcConnection = [(MRDXPCUIController *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A7BF8;
  v6[3] = &unk_1004B6FC0;
  v6[4] = self;
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (id)synchronousServer
{
  xpcConnection = [(MRDXPCUIController *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A7D68;
  v6[3] = &unk_1004B6FC0;
  v6[4] = self;
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)acquireLockScreenControlsAssertion
{
  v3 = +[MRSharedSettings currentSettings];
  supportManyRecommendationsPlatters = [v3 supportManyRecommendationsPlatters];

  if ((supportManyRecommendationsPlatters & 1) == 0 && [(MRDXPCUIController *)self hasRouteRecommendationAssertion])
  {
    [(MRDXPCUIController *)self releaseRouteRecommendationAssertion];
  }

  [(MRDXPCUIController *)self setHasLockScreenControlsAssertion:1];
  server = [(MRDXPCUIController *)self server];
  [server acquireLockScreenControlsAssertionWithReply:&stru_1004C1140];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)releaseLockScreenControlsAssertion
{
  [(MRDXPCUIController *)self setHasLockScreenControlsAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseLockScreenControlsAssertionWithReply:&stru_1004C1160];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)routeRecommendationDismissed
{
  delegate = [(MRDXPCUIController *)self delegate];
  [delegate routeRecommendationDismissed];
}

- (id)acquireQuickControlsAssertion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003528C;
  v11 = sub_100035AFC;
  v12 = 0;
  synchronousServer = [(MRDXPCUIController *)self synchronousServer];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A809C;
  v6[3] = &unk_1004C1188;
  v6[4] = &v7;
  [synchronousServer acquireQuickControlsAssertionWithReply:v6];

  [(MRDXPCUIController *)self _updateTransaction];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)releaseQuickControlsAssertion
{
  [(MRDXPCUIController *)self setHasQuickControlsAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseQuickControlsAssertionWithReply:&stru_1004C11A8];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)acquireScreenMirroringQuickControlsAssertion
{
  [(MRDXPCUIController *)self setHasScreenMirroringQuickControlsAssertion:1];
  server = [(MRDXPCUIController *)self server];
  [server acquireScreenMirroringQuickControlsAssertionWithReply:&stru_1004C11C8];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)releaseScreenMirroringQuickControlsAssertion
{
  [(MRDXPCUIController *)self setHasScreenMirroringQuickControlsAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseScreenMirroringQuickControlsAssertionWithReply:&stru_1004C11E8];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)acquireGroupSessionNearbyAssertionForSession:(id)session
{
  sessionCopy = session;
  [(MRDXPCUIController *)self setHasGroupSessionNearbyAssertion:1];
  server = [(MRDXPCUIController *)self server];
  [server acquireGroupSessionNearbyAssertionForSession:sessionCopy withReply:&stru_1004C1208];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)releaseGroupSessionNearbyAssertion
{
  [(MRDXPCUIController *)self setHasGroupSessionNearbyAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseGroupSessionNearbyAssertionWithReply:&stru_1004C1228];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)acquireGroupSessionLowPowerPlatterAssertion
{
  [(MRDXPCUIController *)self setHasGroupSessionLowPowerAssertion:1];
  server = [(MRDXPCUIController *)self server];
  [server acquireGroupSessionLowPowerPlatterAssertionWithReply:&stru_1004C1248];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)releaseGroupSessionLowPowerPlatterAssertion
{
  [(MRDXPCUIController *)self setHasGroupSessionLowPowerAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseGroupSessionLowPowerPlatterAssertionWithReply:&stru_1004C1268];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (void)nearbyGroupSessionDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  delegate = [(MRDXPCUIController *)self delegate];
  [delegate nearbyGroupSessionDismissed:dismissedCopy];
}

- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = +[MRSharedSettings currentSettings];
  supportManyRecommendationsPlatters = [v4 supportManyRecommendationsPlatters];

  if ((supportManyRecommendationsPlatters & 1) != 0 || ![(MRDXPCUIController *)self hasLockScreenControlsAssertion])
  {
    [(MRDXPCUIController *)self setHasRouteRecommendationAssertion:1];
    server = [(MRDXPCUIController *)self server];
    [server acquireRouteRecommendationAssertionForIdentifiers:identifiersCopy withReply:&stru_1004C1288];

    [(MRDXPCUIController *)self _updateTransaction];
  }
}

- (void)releaseRouteRecommendationAssertion
{
  [(MRDXPCUIController *)self setHasRouteRecommendationAssertion:0];
  server = [(MRDXPCUIController *)self server];
  [server releaseRouteRecommendationAssertionWithReply:&stru_1004C12A8];

  [(MRDXPCUIController *)self _updateTransaction];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end