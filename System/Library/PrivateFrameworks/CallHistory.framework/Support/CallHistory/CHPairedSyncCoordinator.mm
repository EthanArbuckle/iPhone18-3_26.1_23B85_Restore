@interface CHPairedSyncCoordinator
- (BOOL)isSessionActive;
- (CHPairedSyncCoordinator)initWithDelegate:(id)delegate;
- (void)syncComplete;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncFailedWithError:(id)error;
@end

@implementation CHPairedSyncCoordinator

- (CHPairedSyncCoordinator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CHPairedSyncCoordinator;
  v6 = [(CHPairedSyncCoordinator *)&v15 initWithDomain:"CHPairedSyncCoordinator"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    if (objc_opt_class())
    {
      v8 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.callhistory"];
      coordinator = v7->_coordinator;
      v7->_coordinator = v8;

      [(PSYSyncCoordinator *)v7->_coordinator setDelegate:v7];
      logHandle = [(CHPairedSyncCoordinator *)v7 logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = @"com.apple.pairedsync.callhistory";
        v11 = "Registered for Paired Sync Coordinator with service name: %{public}@";
        v12 = logHandle;
        v13 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    else
    {
      logHandle = [(CHPairedSyncCoordinator *)v7 logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Skipping Paired Sync Coordinator registration";
        v12 = logHandle;
        v13 = 2;
        goto LABEL_7;
      }
    }
  }

  return v7;
}

- (BOOL)isSessionActive
{
  coordinator = [(CHPairedSyncCoordinator *)self coordinator];
  activeSyncSession = [coordinator activeSyncSession];

  return activeSyncSession != 0;
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  logHandle = [(CHPairedSyncCoordinator *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = [sessionCopy sessionIdentifier];
    uUIDString = [sessionIdentifier UUIDString];
    v10 = 138543362;
    v11 = uUIDString;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Received Sync Coordinator start session (%{public}@) command", &v10, 0xCu);
  }

  if (![sessionCopy syncSessionType])
  {
    delegate = [(CHPairedSyncCoordinator *)self delegate];
    [delegate startInitialSync];
    goto LABEL_7;
  }

  if ([sessionCopy syncSessionType] == 1)
  {
    delegate = [(CHPairedSyncCoordinator *)self delegate];
    [delegate startReunionSync];
LABEL_7:
  }
}

- (void)syncComplete
{
  coordinator = [(CHPairedSyncCoordinator *)self coordinator];
  activeSyncSession = [coordinator activeSyncSession];

  [activeSyncSession syncDidComplete];
}

- (void)syncFailedWithError:(id)error
{
  errorCopy = error;
  coordinator = [(CHPairedSyncCoordinator *)self coordinator];
  activeSyncSession = [coordinator activeSyncSession];

  [activeSyncSession syncDidFailWithError:errorCopy];
}

@end