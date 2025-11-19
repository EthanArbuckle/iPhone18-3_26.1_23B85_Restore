@interface CHPairedSyncCoordinator
- (BOOL)isSessionActive;
- (CHPairedSyncCoordinator)initWithDelegate:(id)a3;
- (void)syncComplete;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncFailedWithError:(id)a3;
@end

@implementation CHPairedSyncCoordinator

- (CHPairedSyncCoordinator)initWithDelegate:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CHPairedSyncCoordinator;
  v6 = [(CHPairedSyncCoordinator *)&v15 initWithDomain:"CHPairedSyncCoordinator"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    if (objc_opt_class())
    {
      v8 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.callhistory"];
      coordinator = v7->_coordinator;
      v7->_coordinator = v8;

      [(PSYSyncCoordinator *)v7->_coordinator setDelegate:v7];
      v10 = [(CHPairedSyncCoordinator *)v7 logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = @"com.apple.pairedsync.callhistory";
        v11 = "Registered for Paired Sync Coordinator with service name: %{public}@";
        v12 = v10;
        v13 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    else
    {
      v10 = [(CHPairedSyncCoordinator *)v7 logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Skipping Paired Sync Coordinator registration";
        v12 = v10;
        v13 = 2;
        goto LABEL_7;
      }
    }
  }

  return v7;
}

- (BOOL)isSessionActive
{
  v2 = [(CHPairedSyncCoordinator *)self coordinator];
  v3 = [v2 activeSyncSession];

  return v3 != 0;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = [(CHPairedSyncCoordinator *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 sessionIdentifier];
    v8 = [v7 UUIDString];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received Sync Coordinator start session (%{public}@) command", &v10, 0xCu);
  }

  if (![v5 syncSessionType])
  {
    v9 = [(CHPairedSyncCoordinator *)self delegate];
    [v9 startInitialSync];
    goto LABEL_7;
  }

  if ([v5 syncSessionType] == 1)
  {
    v9 = [(CHPairedSyncCoordinator *)self delegate];
    [v9 startReunionSync];
LABEL_7:
  }
}

- (void)syncComplete
{
  v2 = [(CHPairedSyncCoordinator *)self coordinator];
  v3 = [v2 activeSyncSession];

  [v3 syncDidComplete];
}

- (void)syncFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(CHPairedSyncCoordinator *)self coordinator];
  v6 = [v5 activeSyncSession];

  [v6 syncDidFailWithError:v4];
}

@end