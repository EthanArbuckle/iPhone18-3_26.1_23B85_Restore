@interface DaemonSnapshotInvalidator
+ (OS_os_log)log;
- (DaemonSnapshotInvalidationHandler)invalidationHandler;
- (DaemonSnapshotInvalidator)initWithApplicationBundleIdentifier:(id)identifier hookRegistry:(id)registry remoteClientsProvider:(id)provider focusController:(id)controller invalidationHandler:(id)handler;
- (void)accountsChanged:(id)changed;
- (void)accountsRemoved:(id)removed;
- (void)currentFocusChanged:(id)changed;
- (void)deleteSnapshotsForBundleIdentifier:(id)identifier;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation DaemonSnapshotInvalidator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BC79C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185B78 != -1)
  {
    dispatch_once(&qword_100185B78, block);
  }

  v2 = qword_100185B70;

  return v2;
}

- (DaemonSnapshotInvalidator)initWithApplicationBundleIdentifier:(id)identifier hookRegistry:(id)registry remoteClientsProvider:(id)provider focusController:(id)controller invalidationHandler:(id)handler
{
  identifierCopy = identifier;
  registryCopy = registry;
  providerCopy = provider;
  controllerCopy = controller;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = DaemonSnapshotInvalidator;
  v17 = [(DaemonSnapshotInvalidator *)&v22 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    applicationBundleID = v17->_applicationBundleID;
    v17->_applicationBundleID = v18;

    objc_storeStrong(&v17->_remoteClientsProvider, provider);
    [registryCopy registerAccountChangeHookResponder:v17];
    objc_storeWeak(&v17->_invalidationHandler, handlerCopy);
    v20 = [controllerCopy addObserver:v17 currentFocus:0];
    [(DaemonSnapshotInvalidator *)v17 setEnabled:1];
  }

  return v17;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    v5 = +[DaemonSnapshotInvalidator log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      applicationBundleID = [(DaemonSnapshotInvalidator *)self applicationBundleID];
      v7 = applicationBundleID;
      v8 = @"Disabled";
      if (enabledCopy)
      {
        v8 = @"Enabled";
      }

      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = applicationBundleID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ monitoring for snapshot invalidation events for bundleID %{public}@", &v9, 0x16u);
    }

    self->_enabled = enabledCopy;
  }
}

- (void)deleteSnapshotsForBundleIdentifier:(id)identifier
{
  remoteClientsProvider = [(DaemonSnapshotInvalidator *)self remoteClientsProvider];
  remoteClients = [remoteClientsProvider remoteClients];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BCCF4;
  v19[3] = &unk_10015AAD0;
  v19[4] = self;
  v6 = [remoteClients ef_filter:v19];

  v7 = +[DaemonSnapshotInvalidator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    applicationBundleID = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    *buf = 134218242;
    v22 = v8;
    v23 = 2114;
    v24 = applicationBundleID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resume remote clients (%lu) with bundleID: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        clientResumer = [*(*(&v15 + 1) + 8 * v13) clientResumer];
        [clientResumer resumeForUpdates];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)accountsRemoved:(id)removed
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    invalidationHandler = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    applicationBundleID = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [invalidationHandler deleteSnapshotsForBundleIdentifier:applicationBundleID];
  }
}

- (void)accountsChanged:(id)changed
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    invalidationHandler = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    applicationBundleID = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [invalidationHandler deleteSnapshotsForBundleIdentifier:applicationBundleID];
  }
}

- (void)currentFocusChanged:(id)changed
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    invalidationHandler = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    applicationBundleID = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [invalidationHandler deleteSnapshotsForBundleIdentifier:applicationBundleID];
  }
}

- (DaemonSnapshotInvalidationHandler)invalidationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationHandler);

  return WeakRetained;
}

@end