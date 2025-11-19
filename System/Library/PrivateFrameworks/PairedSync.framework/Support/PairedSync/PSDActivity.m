@interface PSDActivity
- (BOOL)_shouldPrelaunchWithBackboard;
- (PSDActivity)initWithActivityInfo:(id)a3 queue:(id)a4;
- (PSDActivityDelegate)delegate;
- (id)_prelaunchBundleIdentifier;
- (id)_remoteServiceWithErrorHandler:(id)a3;
- (id)description;
- (void)_abortSyncJustDoItWithCompletion:(id)a3 interruptionHandler:(id)a4;
- (void)_beginSyncJustDoItWithOptions:(id)a3 completion:(id)a4 interruptionHandler:(id)a5;
- (void)_handleInterruptionWithError:(id)a3 interruptionHandler:(id)a4;
- (void)_preloadAppWithBundleID:(id)a3 inBackboardWithCompletion:(id)a4;
- (void)_startConnectionIfNeeded;
- (void)abortSyncWithCompletion:(id)a3 interruptionHandler:(id)a4;
- (void)beginSyncWithOptions:(id)a3 completion:(id)a4 interruptionHandler:(id)a5;
- (void)progressDelegateDidCompleteSending;
- (void)progressDelegateDidUpdateProgress:(float)a3;
@end

@implementation PSDActivity

- (PSDActivity)initWithActivityInfo:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PSDActivity;
  v9 = [(PSDActivity *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityInfo, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = +[NSMutableSet set];
    requestedServiceNames = v10->_requestedServiceNames;
    v10->_requestedServiceNames = v11;

    v13 = objc_alloc_init(PSDServiceProgressDelegate);
    progressDelegate = v10->_progressDelegate;
    v10->_progressDelegate = v13;

    [(PSDServiceProgressDelegate *)v10->_progressDelegate setService:v10];
  }

  return v10;
}

- (void)_startConnectionIfNeeded
{
  if (!self->_connection)
  {
    objc_initWeak(&location, self);
    v3 = [NSXPCConnection alloc];
    v4 = [(PSYActivityInfo *)self->_activityInfo machServiceName];
    v5 = [v3 initWithMachServiceName:v4 options:4096];
    connection = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    v8 = PSYActivityXPCInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    v9 = self->_connection;
    v10 = PSYActivityProgressXPCInterface();
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    [(NSXPCConnection *)self->_connection setExportedObject:self->_progressDelegate];
    v11 = self->_connection;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000192B8;
    v18 = &unk_10002CED8;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:&v15];
    v12 = psd_log();
    LODWORD(v9) = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_connection;
        *buf = 138543362;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PSDActivity - Creating new connection: %{public}@", buf, 0xCu);
      }
    }

    [(NSXPCConnection *)self->_connection resume:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)beginSyncWithOptions:(id)a3 completion:(id)a4 interruptionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PSDActivity *)self queue];
  dispatch_assert_queue_V2(v11);

  if ([(PSDActivity *)self _shouldPrelaunchWithBackboard])
  {
    v12 = [(PSDActivity *)self _prelaunchBundleIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001958C;
    v13[3] = &unk_10002CF28;
    v13[4] = self;
    v15 = v10;
    v14 = v8;
    v16 = v9;
    [(PSDActivity *)self _preloadAppWithBundleID:v12 inBackboardWithCompletion:v13];
  }

  else
  {
    [(PSDActivity *)self _beginSyncJustDoItWithOptions:v8 completion:v9 interruptionHandler:v10];
  }
}

- (void)abortSyncWithCompletion:(id)a3 interruptionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSDActivity *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([(PSDActivity *)self _shouldPrelaunchWithBackboard])
  {
    v9 = [(PSDActivity *)self _prelaunchBundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000197CC;
    v10[3] = &unk_10002CF78;
    v10[4] = self;
    v11 = v7;
    v12 = v6;
    [(PSDActivity *)self _preloadAppWithBundleID:v9 inBackboardWithCompletion:v10];
  }

  else
  {
    [(PSDActivity *)self _abortSyncJustDoItWithCompletion:v6 interruptionHandler:v7];
  }
}

- (void)_handleInterruptionWithError:(id)a3 interruptionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3);
  }
}

- (void)_beginSyncJustDoItWithOptions:(id)a3 completion:(id)a4 interruptionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(PSDActivity *)self _startConnectionIfNeeded];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100019A24;
  v16[3] = &unk_10002CFA0;
  v16[4] = self;
  v17 = v9;
  v11 = v9;
  v12 = [(PSDActivity *)self _remoteServiceWithErrorHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100019AFC;
  v14[3] = &unk_10002CFF0;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v12 beginSyncWithOptions:v10 completion:v14];
}

- (void)_abortSyncJustDoItWithCompletion:(id)a3 interruptionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PSDActivity *)self _startConnectionIfNeeded];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100019DEC;
  v13[3] = &unk_10002CFA0;
  v13[4] = self;
  v14 = v7;
  v8 = v7;
  v9 = [(PSDActivity *)self _remoteServiceWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019EC4;
  v11[3] = &unk_10002CFF0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 abortSyncWithCompletion:v11];
}

- (id)_remoteServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PSDActivity *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)progressDelegateDidCompleteSending
{
  v3 = [(PSDActivity *)self delegate];
  [v3 activityDidCompleteSending:self];
}

- (void)progressDelegateDidUpdateProgress:(float)a3
{
  v6 = [(PSDActivity *)self delegate];
  *&v5 = a3;
  [v6 activity:self didUpdateProgress:v5];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PSDActivity *)self activityInfo];
  v6 = [v5 label];
  v7 = [NSString stringWithFormat:@"<%@ %p label=%@>", v4, self, v6];;

  return v7;
}

- (BOOL)_shouldPrelaunchWithBackboard
{
  v2 = [(PSDActivity *)self activityInfo];
  v3 = [v2 backboardPrelaunchBundleIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (void)_preloadAppWithBundleID:(id)a3 inBackboardWithCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = psd_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PSDActivity Preloading application with backboard - %{public}@", buf, 0xCu);
    }
  }

  v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v13 = FBSOpenApplicationOptionKeyActivateSuspended;
  v14 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [FBSOpenApplicationOptions optionsWithDictionary:v11];

  [v10 openApplication:v5 withOptions:v12 completion:v6];
}

- (id)_prelaunchBundleIdentifier
{
  v2 = [(PSDActivity *)self activityInfo];
  v3 = [v2 backboardPrelaunchBundleIdentifier];

  return v3;
}

- (PSDActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end