@interface NMCSyncManager
+ (id)mapsDirectory;
+ (id)nanoRegistryDirectory;
+ (id)pinsPath;
- (NMCSyncManager)initWithDelegate:(id)delegate;
- (NMCSyncManagerDelegate)delegate;
- (id)_containerCompletionQueue;
- (id)readPins;
- (void)_completedInitialSync;
- (void)_createNanoRegistryDirectoryIfNeeded;
- (void)completedPreparingSync;
- (void)completedSync;
- (void)notifyObservers;
- (void)preparingSync;
- (void)requestSyncUpdateWithReply:(id)reply;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)synchronizePreferences;
- (void)writePins:(id)pins;
@end

@implementation NMCSyncManager

+ (id)mapsDirectory
{
  v2 = [LSBundleRecord bundleRecordWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  dataContainerURL = [v2 dataContainerURL];
  path = [dataContainerURL path];

  v5 = [path stringByAppendingPathComponent:@"Library"];
  v6 = [v5 stringByAppendingPathComponent:@"Maps"];

  return v6;
}

+ (id)nanoRegistryDirectory
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  pairingStorePath = [v2 pairingStorePath];

  v4 = [pairingStorePath stringByAppendingPathComponent:@"NanoMaps"];

  return v4;
}

+ (id)pinsPath
{
  nanoRegistryDirectory = [self nanoRegistryDirectory];
  v3 = [nanoRegistryDirectory stringByAppendingPathComponent:@"Pins.mapsdata"];

  return v3;
}

- (void)_createNanoRegistryDirectoryIfNeeded
{
  v5 = +[NSFileManager defaultManager];
  nanoRegistryDirectory = [objc_opt_class() nanoRegistryDirectory];
  v3 = [v5 fileExistsAtPath:nanoRegistryDirectory isDirectory:0];

  if ((v3 & 1) == 0)
  {
    nanoRegistryDirectory2 = [objc_opt_class() nanoRegistryDirectory];
    [v5 createDirectoryAtPath:nanoRegistryDirectory2 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (NMCSyncManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = NMCSyncManager;
  v5 = [(NMCSyncManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.mapssync"];
    coordinator = v6->_coordinator;
    v6->_coordinator = v7;

    [(PSYSyncCoordinator *)v6->_coordinator setDelegate:v6];
    v9 = objc_opt_new();
    preferencesSyncManager = v6->_preferencesSyncManager;
    v6->_preferencesSyncManager = v9;

    v11 = [DrivePreferences alloc];
    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps"];
    v13 = [(DrivePreferences *)v11 initWithDefaults:v12];
    drivePreferences = v6->_drivePreferences;
    v6->_drivePreferences = v13;

    v15 = [CyclePreferences alloc];
    v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps"];
    v17 = [(CyclePreferences *)v15 initWithDefaults:v16];
    cyclePreferences = v6->_cyclePreferences;
    v6->_cyclePreferences = v17;

    v19 = [TransitPreferences alloc];
    v20 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps"];
    v21 = [(WatchSyncedPreferences *)v19 initWithDefaults:v20];
    transitPreferences = v6->_transitPreferences;
    v6->_transitPreferences = v21;
  }

  return v6;
}

- (id)_containerCompletionQueue
{
  if (qword_10009E7F8 != -1)
  {
    sub_100055C48();
  }

  v3 = qword_10009E7F0;

  return v3;
}

- (id)readPins
{
  pinsPath = [objc_opt_class() pinsPath];
  v3 = [NSDictionary dictionaryWithContentsOfFile:pinsPath];

  v4 = [v3 objectForKey:@"PinsKey"];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MSPPinStorage alloc];
        v13 = [v12 initWithData:{v11, v18}];
        v14 = v13;
        if (v13)
        {
          identifier = [v13 identifier];

          if (identifier)
          {
            [v5 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)writePins:(id)pins
{
  v3 = [pins arrayByApplyingSelector:"data"];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, @"PinsKey", &off_10008C780, @"PinsVersionKey", 0}];
  pinsPath = [objc_opt_class() pinsPath];
  v8 = 0;
  v6 = [v4 _maps_writeBinaryPlist:pinsPath error:&v8];
  v7 = v8;

  if (v7 || (v6 & 1) == 0)
  {
    NSLog(@"Error writing pins: %@", v7);
  }
}

- (void)preparingSync
{
  v3 = sub_10005318C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138477827;
    v6 = @"preparingSync";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@", &v5, 0xCu);
  }

  activeSyncSession = [(PSYSyncCoordinator *)self->_coordinator activeSyncSession];
  [activeSyncSession reportProgress:0.33];
}

- (void)completedPreparingSync
{
  v3 = sub_10005318C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138477827;
    v7 = @"completedPreparingSync";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@", &v6, 0xCu);
  }

  activeSyncSession = [(PSYSyncCoordinator *)self->_coordinator activeSyncSession];
  [activeSyncSession reportProgress:0.66];

  activeSyncSession2 = [(PSYSyncCoordinator *)self->_coordinator activeSyncSession];
  [activeSyncSession2 syncDidCompleteSending];
}

- (void)_completedInitialSync
{
  v3 = sub_10005318C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138477827;
    v7 = @"completeSync";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@", &v6, 0xCu);
  }

  activeSyncSession = [(PSYSyncCoordinator *)self->_coordinator activeSyncSession];
  [activeSyncSession reportProgress:1.0];

  activeSyncSession2 = [(PSYSyncCoordinator *)self->_coordinator activeSyncSession];
  [activeSyncSession2 syncDidComplete];
}

- (void)completedSync
{
  v3 = sub_10005318C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    waitingOnInitialSyncLock = self->_waitingOnInitialSyncLock;
    v9 = 138478083;
    v10 = @"completeInternalSync";
    v11 = 2113;
    *v12 = waitingOnInitialSyncLock;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@ (lock:%{private}@)", &v9, 0x16u);
  }

  [(NSLock *)self->_waitingOnInitialSyncLock lock];
  self->_waitingOnInternalInitialSync = 0;
  waitingOnDelegateInitialSync = self->_waitingOnDelegateInitialSync;
  [(NSLock *)self->_waitingOnInitialSyncLock unlock];
  v6 = sub_10005318C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_waitingOnDelegateInitialSync;
    waitingOnInternalInitialSync = self->_waitingOnInternalInitialSync;
    v9 = 138478595;
    v10 = @"tryCompleteSync";
    v11 = 1024;
    *v12 = !waitingOnDelegateInitialSync;
    *&v12[4] = 1024;
    *&v12[6] = v7;
    v13 = 1024;
    v14 = waitingOnInternalInitialSync;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@ (complete:%i, syncD:%i syncI:%i)", &v9, 0x1Eu);
  }

  if (!waitingOnDelegateInitialSync)
  {
    [(NMCSyncManager *)self _completedInitialSync];
  }
}

- (void)notifyObservers
{
  delegate = [(NMCSyncManager *)self delegate];
  [delegate syncManagerDidUpdate:self];
}

- (void)requestSyncUpdateWithReply:(id)reply
{
  replyCopy = reply;
  [(NMCSyncManager *)self notifyObservers];
  v4 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy);
    v4 = replyCopy;
  }
}

- (void)synchronizePreferences
{
  preferencesSyncManager = self->_preferencesSyncManager;
  v4 = [NSSet setWithObjects:@"DistanceUnits", @"HasShownNavModeAdvisory2020", 0];
  [(NPSManager *)preferencesSyncManager synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v4 container:@"com.apple.Maps"];

  [(DrivePreferences *)self->_drivePreferences loadValuesFromDefaults];
  [(WatchSyncedPreferences *)self->_drivePreferences synchronize];
  [(CyclePreferences *)self->_cyclePreferences loadValuesFromDefaults];
  [(WatchSyncedPreferences *)self->_cyclePreferences synchronize];
  [(TransitPreferences *)self->_transitPreferences loadValuesFromDefaults];
  transitPreferences = self->_transitPreferences;

  [(WatchSyncedPreferences *)transitPreferences synchronize];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  preferencesSyncManager = self->_preferencesSyncManager;
  v6 = GEODefaultsDomain();
  v7 = NMGetGEOUserDefaultStringKeysForWatchSync();
  v8 = [NSSet setWithArray:v7];
  [(NPSManager *)preferencesSyncManager synchronizeUserDefaultsDomain:v6 keys:v8 container:0];

  v9 = self->_preferencesSyncManager;
  v10 = [NSSet setWithObjects:@"DistanceUnits", @"HasShownNavModeAdvisory2020", 0];
  [(NPSManager *)v9 synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v10 container:@"com.apple.Maps"];

  v11 = objc_alloc_init(NSLock);
  waitingOnInitialSyncLock = self->_waitingOnInitialSyncLock;
  self->_waitingOnInitialSyncLock = v11;

  v13 = sub_10005318C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = self->_waitingOnInitialSyncLock;
    *buf = 138478083;
    v23 = @"beginSync";
    v24 = 2113;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@ (lock:%{private}@)", buf, 0x16u);
  }

  self->_waitingOnInternalInitialSync = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    self->_waitingOnDelegateInitialSync = 1;
    v16 = sub_10005318C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = self->_waitingOnInitialSyncLock;
      *buf = 138478083;
      v23 = @"beginDelegateSync";
      v24 = 2113;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@ (lock:%{private}@)", buf, 0x16u);
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100031F68;
    v21[3] = &unk_100086278;
    v21[4] = self;
    [v18 syncManager:self didRequestInitialSync:v21];
  }

  else
  {
    self->_waitingOnDelegateInitialSync = 0;
  }

  v19 = sub_10005318C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = self->_waitingOnInitialSyncLock;
    *buf = 138478083;
    v23 = @"beginInternalSync";
    v24 = 2113;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync sync:%{private}@ (lock:%{private}@)", buf, 0x16u);
  }

  [(NMCSyncManager *)self setNeedsFullSync];
}

- (NMCSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end