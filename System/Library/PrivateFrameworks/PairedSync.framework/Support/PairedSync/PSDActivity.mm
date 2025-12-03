@interface PSDActivity
- (BOOL)_shouldPrelaunchWithBackboard;
- (PSDActivity)initWithActivityInfo:(id)info queue:(id)queue;
- (PSDActivityDelegate)delegate;
- (id)_prelaunchBundleIdentifier;
- (id)_remoteServiceWithErrorHandler:(id)handler;
- (id)description;
- (void)_abortSyncJustDoItWithCompletion:(id)completion interruptionHandler:(id)handler;
- (void)_beginSyncJustDoItWithOptions:(id)options completion:(id)completion interruptionHandler:(id)handler;
- (void)_handleInterruptionWithError:(id)error interruptionHandler:(id)handler;
- (void)_preloadAppWithBundleID:(id)d inBackboardWithCompletion:(id)completion;
- (void)_startConnectionIfNeeded;
- (void)abortSyncWithCompletion:(id)completion interruptionHandler:(id)handler;
- (void)beginSyncWithOptions:(id)options completion:(id)completion interruptionHandler:(id)handler;
- (void)progressDelegateDidCompleteSending;
- (void)progressDelegateDidUpdateProgress:(float)progress;
@end

@implementation PSDActivity

- (PSDActivity)initWithActivityInfo:(id)info queue:(id)queue
{
  infoCopy = info;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = PSDActivity;
  v9 = [(PSDActivity *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityInfo, info);
    objc_storeStrong(&v10->_queue, queue);
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
    machServiceName = [(PSYActivityInfo *)self->_activityInfo machServiceName];
    v5 = [v3 initWithMachServiceName:machServiceName options:4096];
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

- (void)beginSyncWithOptions:(id)options completion:(id)completion interruptionHandler:(id)handler
{
  optionsCopy = options;
  completionCopy = completion;
  handlerCopy = handler;
  queue = [(PSDActivity *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(PSDActivity *)self _shouldPrelaunchWithBackboard])
  {
    _prelaunchBundleIdentifier = [(PSDActivity *)self _prelaunchBundleIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001958C;
    v13[3] = &unk_10002CF28;
    v13[4] = self;
    v15 = handlerCopy;
    v14 = optionsCopy;
    v16 = completionCopy;
    [(PSDActivity *)self _preloadAppWithBundleID:_prelaunchBundleIdentifier inBackboardWithCompletion:v13];
  }

  else
  {
    [(PSDActivity *)self _beginSyncJustDoItWithOptions:optionsCopy completion:completionCopy interruptionHandler:handlerCopy];
  }
}

- (void)abortSyncWithCompletion:(id)completion interruptionHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  queue = [(PSDActivity *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(PSDActivity *)self _shouldPrelaunchWithBackboard])
  {
    _prelaunchBundleIdentifier = [(PSDActivity *)self _prelaunchBundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000197CC;
    v10[3] = &unk_10002CF78;
    v10[4] = self;
    v11 = handlerCopy;
    v12 = completionCopy;
    [(PSDActivity *)self _preloadAppWithBundleID:_prelaunchBundleIdentifier inBackboardWithCompletion:v10];
  }

  else
  {
    [(PSDActivity *)self _abortSyncJustDoItWithCompletion:completionCopy interruptionHandler:handlerCopy];
  }
}

- (void)_handleInterruptionWithError:(id)error interruptionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, error);
  }
}

- (void)_beginSyncJustDoItWithOptions:(id)options completion:(id)completion interruptionHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  optionsCopy = options;
  [(PSDActivity *)self _startConnectionIfNeeded];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100019A24;
  v16[3] = &unk_10002CFA0;
  v16[4] = self;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = [(PSDActivity *)self _remoteServiceWithErrorHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100019AFC;
  v14[3] = &unk_10002CFF0;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 beginSyncWithOptions:optionsCopy completion:v14];
}

- (void)_abortSyncJustDoItWithCompletion:(id)completion interruptionHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  [(PSDActivity *)self _startConnectionIfNeeded];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100019DEC;
  v13[3] = &unk_10002CFA0;
  v13[4] = self;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(PSDActivity *)self _remoteServiceWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019EC4;
  v11[3] = &unk_10002CFF0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 abortSyncWithCompletion:v11];
}

- (id)_remoteServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(PSDActivity *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)progressDelegateDidCompleteSending
{
  delegate = [(PSDActivity *)self delegate];
  [delegate activityDidCompleteSending:self];
}

- (void)progressDelegateDidUpdateProgress:(float)progress
{
  delegate = [(PSDActivity *)self delegate];
  *&v5 = progress;
  [delegate activity:self didUpdateProgress:v5];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  activityInfo = [(PSDActivity *)self activityInfo];
  label = [activityInfo label];
  v7 = [NSString stringWithFormat:@"<%@ %p label=%@>", v4, self, label];;

  return v7;
}

- (BOOL)_shouldPrelaunchWithBackboard
{
  activityInfo = [(PSDActivity *)self activityInfo];
  backboardPrelaunchBundleIdentifier = [activityInfo backboardPrelaunchBundleIdentifier];
  v4 = backboardPrelaunchBundleIdentifier != 0;

  return v4;
}

- (void)_preloadAppWithBundleID:(id)d inBackboardWithCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = psd_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PSDActivity Preloading application with backboard - %{public}@", buf, 0xCu);
    }
  }

  v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v13 = FBSOpenApplicationOptionKeyActivateSuspended;
  v14 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [FBSOpenApplicationOptions optionsWithDictionary:v11];

  [v10 openApplication:dCopy withOptions:v12 completion:completionCopy];
}

- (id)_prelaunchBundleIdentifier
{
  activityInfo = [(PSDActivity *)self activityInfo];
  backboardPrelaunchBundleIdentifier = [activityInfo backboardPrelaunchBundleIdentifier];

  return backboardPrelaunchBundleIdentifier;
}

- (PSDActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end