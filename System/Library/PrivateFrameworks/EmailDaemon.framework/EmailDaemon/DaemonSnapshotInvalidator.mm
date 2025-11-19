@interface DaemonSnapshotInvalidator
+ (OS_os_log)log;
- (DaemonSnapshotInvalidationHandler)invalidationHandler;
- (DaemonSnapshotInvalidator)initWithApplicationBundleIdentifier:(id)a3 hookRegistry:(id)a4 remoteClientsProvider:(id)a5 focusController:(id)a6 invalidationHandler:(id)a7;
- (void)accountsChanged:(id)a3;
- (void)accountsRemoved:(id)a3;
- (void)currentFocusChanged:(id)a3;
- (void)deleteSnapshotsForBundleIdentifier:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation DaemonSnapshotInvalidator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BC79C;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185B78 != -1)
  {
    dispatch_once(&qword_100185B78, block);
  }

  v2 = qword_100185B70;

  return v2;
}

- (DaemonSnapshotInvalidator)initWithApplicationBundleIdentifier:(id)a3 hookRegistry:(id)a4 remoteClientsProvider:(id)a5 focusController:(id)a6 invalidationHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = DaemonSnapshotInvalidator;
  v17 = [(DaemonSnapshotInvalidator *)&v22 init];
  if (v17)
  {
    v18 = [v12 copy];
    applicationBundleID = v17->_applicationBundleID;
    v17->_applicationBundleID = v18;

    objc_storeStrong(&v17->_remoteClientsProvider, a5);
    [v13 registerAccountChangeHookResponder:v17];
    objc_storeWeak(&v17->_invalidationHandler, v16);
    v20 = [v15 addObserver:v17 currentFocus:0];
    [(DaemonSnapshotInvalidator *)v17 setEnabled:1];
  }

  return v17;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v3 = a3;
    v5 = +[DaemonSnapshotInvalidator log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DaemonSnapshotInvalidator *)self applicationBundleID];
      v7 = v6;
      v8 = @"Disabled";
      if (v3)
      {
        v8 = @"Enabled";
      }

      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ monitoring for snapshot invalidation events for bundleID %{public}@", &v9, 0x16u);
    }

    self->_enabled = v3;
  }
}

- (void)deleteSnapshotsForBundleIdentifier:(id)a3
{
  v4 = [(DaemonSnapshotInvalidator *)self remoteClientsProvider];
  v5 = [v4 remoteClients];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BCCF4;
  v19[3] = &unk_10015AAD0;
  v19[4] = self;
  v6 = [v5 ef_filter:v19];

  v7 = +[DaemonSnapshotInvalidator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v9 = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    *buf = 134218242;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
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

        v14 = [*(*(&v15 + 1) + 8 * v13) clientResumer];
        [v14 resumeForUpdates];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)accountsRemoved:(id)a3
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    v5 = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    v4 = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [v5 deleteSnapshotsForBundleIdentifier:v4];
  }
}

- (void)accountsChanged:(id)a3
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    v5 = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    v4 = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [v5 deleteSnapshotsForBundleIdentifier:v4];
  }
}

- (void)currentFocusChanged:(id)a3
{
  if ([(DaemonSnapshotInvalidator *)self isEnabled])
  {
    v5 = [(DaemonSnapshotInvalidator *)self invalidationHandler];
    v4 = [(DaemonSnapshotInvalidator *)self applicationBundleID];
    [v5 deleteSnapshotsForBundleIdentifier:v4];
  }
}

- (DaemonSnapshotInvalidationHandler)invalidationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationHandler);

  return WeakRetained;
}

@end