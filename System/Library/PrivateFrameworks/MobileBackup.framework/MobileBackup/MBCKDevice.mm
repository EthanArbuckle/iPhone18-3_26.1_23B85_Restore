@interface MBCKDevice
+ (void)fetchSnapshotsWithRefs:(id)refs operationTracker:(id)tracker completion:(id)completion;
- (BOOL)addPendingSnapshot:(id)snapshot error:(id *)error;
- (BOOL)backupEnabled;
- (BOOL)backupsDisabledFromAnotherDevice;
- (BOOL)canRestoreSystemFiles;
- (BOOL)pinSnapshot:(id)snapshot error:(id *)error;
- (BOOL)requiresFullBackupForAccount:(id)account;
- (BOOL)shouldDeleteDevice;
- (BOOL)shouldRepairDomain:(id)domain;
- (BOOL)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory snapshotUUID:(id)d error:(id *)error fetchedFileListBlock:(id)block;
- (BOOL)unpinSnapshot:(id)snapshot error:(id *)error;
- (BOOL)validateCache;
- (MBCKDevice)initWithCoder:(id)coder;
- (MBCKDevice)initWithUUID:(id)d cache:(id)cache backupEnabled:(BOOL)enabled;
- (NSString)deviceName;
- (id)_fileListReferencesMatching:(id)matching;
- (id)_getRecordIDString;
- (id)dateOfLastBackup;
- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord;
- (id)recordRepresentation;
- (id)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory commitID:(id)d error:(id *)error fetchedFileListBlock:(id)block;
- (void)_fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion;
- (void)addRepairDomainHMAC:(id)c;
- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)changes;
- (void)encodeWithCoder:(id)coder;
- (void)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion;
- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion;
- (void)pinLatestGMSnapshotIfNeeded;
- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion;
- (void)refreshWithRecord:(id)record;
- (void)saveToCacheWithCompletion:(id)completion;
- (void)setBackupEnabled:(BOOL)enabled;
- (void)setDeviceName:(id)name;
- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)needed;
- (void)validateCacheWithCompletion:(id)completion;
@end

@implementation MBCKDevice

- (MBCKDevice)initWithUUID:(id)d cache:(id)cache backupEnabled:(BOOL)enabled
{
  dCopy = d;
  v36.receiver = self;
  v36.super_class = MBCKDevice;
  v10 = [(MBCKModel *)&v36 initWithRecord:0 cache:cache];
  v11 = v10;
  if (v10)
  {
    deviceName = v10->_deviceName;
    v10->_deviceName = 0;

    v11->_hasCachedDeviceName = 0;
    objc_storeStrong(&v11->_deviceUUID, d);
    v13 = MBDeviceClass();
    deviceClass = v11->_deviceClass;
    v11->_deviceClass = v13;

    v15 = MBDeviceColor();
    deviceColor = v11->_deviceColor;
    v11->_deviceColor = v15;

    v17 = MBDeviceEnclosureColor();
    deviceEnclosureColor = v11->_deviceEnclosureColor;
    v11->_deviceEnclosureColor = v17;

    v19 = MBDeviceCoverGlassColor();
    deviceCoverGlassColor = v11->_deviceCoverGlassColor;
    v11->_deviceCoverGlassColor = v19;

    v21 = MBDeviceHousingColor();
    deviceHousingColor = v11->_deviceHousingColor;
    v11->_deviceHousingColor = v21;

    v23 = MBDeviceBackingColor();
    deviceBackingColor = v11->_deviceBackingColor;
    v11->_deviceBackingColor = v23;

    v25 = MBHardwareModel();
    hardwareModel = v11->_hardwareModel;
    v11->_hardwareModel = v25;

    v27 = MBMarketingName();
    marketingName = v11->_marketingName;
    v11->_marketingName = v27;

    v29 = MBProductType();
    productType = v11->_productType;
    v11->_productType = v29;

    v31 = MBSerialNumber();
    serialNumber = v11->_serialNumber;
    v11->_serialNumber = v31;

    v11->_hasBackupEnabledState = 1;
    v11->_backupEnabled = enabled;
    v33 = [[MBCKKeyBagManager alloc] initWithDevice:v11 keybagRefs:0];
    keybagManager = v11->_keybagManager;
    v11->_keybagManager = v33;
  }

  return v11;
}

- (NSString)deviceName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceName;
  if (!v3)
  {
    if (selfCopy->_hasCachedDeviceName)
    {
      v3 = 0;
    }

    else
    {
      v4 = MBDeviceName();
      deviceName = selfCopy->_deviceName;
      selfCopy->_deviceName = v4;

      v3 = v4;
      selfCopy->_hasCachedDeviceName = 1;
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  obj = self;
  objc_sync_enter(obj);
  deviceName = obj->_deviceName;
  obj->_deviceName = nameCopy;

  obj->_hasCachedDeviceName = 1;
  objc_sync_exit(obj);
}

- (BOOL)backupEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_hasBackupEnabledState && selfCopy->_backupEnabled;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBackupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (enabledCopy)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    *buf = 136315394;
    v9 = v6;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=ck-device= Setting backupEnabled=%s into the device record %@", buf, 0x16u);
    _MBLog();
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_backupEnabled = enabledCopy;
  selfCopy2->_hasBackupEnabledState = 1;
  objc_sync_exit(selfCopy2);
}

- (BOOL)validateCache
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E3654;
  v5[3] = &unk_1003BE3B0;
  v7 = &v8;
  v3 = dispatch_semaphore_create(0);
  v6 = v3;
  [(MBCKDevice *)self validateCacheWithCompletion:v5];
  MBSemaphoreWaitForever();
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)validateCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MBCKDevice *)self hasFetchedSnapshots])
  {
    snapshots = [(MBCKDevice *)self snapshots];
    v6 = [snapshots valueForKey:@"snapshotID"];
    v7 = [NSMutableSet setWithArray:v6];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    cache = [(MBCKModel *)self cache];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E3924;
    v13[3] = &unk_1003BE3D8;
    v9 = v7;
    v14 = v9;
    v15 = &v16;
    v10 = [cache enumerateSnapshotIDs:v13];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ck-device= Error enumerating snapshot IDs: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      if (![v9 count])
      {
        v12 = *(v17 + 24);
        goto LABEL_11;
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= Cache is out of date (snapshot list does not match)", buf, 2u);
        _MBLog();
      }
    }

    v12 = 0;
    *(v17 + 24) = 0;
LABEL_11:
    completionCopy[2](completionCopy, v12 & 1);

    _Block_object_dispose(&v16, 8);
    goto LABEL_12;
  }

  completionCopy[2](completionCopy, 0);
LABEL_12:
}

- (BOOL)canRestoreSystemFiles
{
  v3 = MBDeviceClass();
  deviceClass = [(MBCKDevice *)self deviceClass];
  v5 = MBCanRestoreSystemFilesBetweenProductClasses(v3, deviceClass);

  return v5;
}

- (BOOL)addPendingSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = snapshotCopy;
  pendingSnapshot = self->_pendingSnapshot;
  if (pendingSnapshot)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ck-device= Attempted to add a snapshot without committing a pending snapshot", v13, 2u);
      _MBLog();
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"Attempted to add a snapshot without committing a pending snapshot"];
    }
  }

  else
  {
    recordIDString = [snapshotCopy recordIDString];
    pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
    self->_pendingSnapshotRecordID = recordIDString;

    -[MBCKDevice setBackupReason:](self, "setBackupReason:", [v7 backupReason]);
    [v7 setDevice:self];
    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return pendingSnapshot == 0;
}

- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)changes
{
  changesCopy = changes;
  if (self->_pendingSnapshotRecordID)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
      deviceUUID = self->_deviceUUID;
      *buf = 138543874;
      v19 = pendingSnapshotRecordID;
      v20 = 1024;
      v21 = changesCopy;
      v22 = 2114;
      v23 = deviceUUID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Removing the pending snapshot %{public}@ (%d) on %{public}@", buf, 0x1Cu);
      v16 = self->_deviceUUID;
      v15 = self->_pendingSnapshotRecordID;
      _MBLog();
    }
  }

  pendingSnapshot = self->_pendingSnapshot;
  self->_pendingSnapshot = 0;

  v9 = self->_pendingSnapshotRecordID;
  self->_pendingSnapshotRecordID = 0;

  self->_pendingSnapshotQuotaReserved = 0;
  self->_pendingSnapshotType = 0;
  self->_pendingSnapshotBackupPolicy = 0;
  cache = [(MBCKModel *)self cache];
  removeAllOrphanedItems = [cache removeAllOrphanedItems];

  if (changesCopy)
  {
    cache2 = [(MBCKModel *)self cache];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E3E04;
    v17[3] = &unk_1003BC8B8;
    v17[4] = self;
    v13 = [cache2 performInTransaction:v17];

    if (v13)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ck-device= Failed to rebuild FileChanges table: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (id)dateOfLastBackup
{
  lastObject = [(NSArray *)self->_snapshotRefs count];
  if (lastObject)
  {
    lastObject = [(NSArray *)self->_snapshotCommitDates lastObject];
  }

  return lastObject;
}

- (BOOL)backupsDisabledFromAnotherDevice
{
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  v4 = [snapshotRefs count];

  if (v4)
  {
    return 0;
  }

  cache = [(MBCKModel *)self cache];
  deviceUUID = [(MBCKDevice *)self deviceUUID];
  v8 = [cache fetchMostRecentSnapshotForDevice:deviceUUID error:0];

  return v8 != 0;
}

- (BOOL)shouldDeleteDevice
{
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  if ([snapshotRefs count])
  {
    hasFetchedSnapshots = [(MBCKDevice *)self hasFetchedSnapshots];

    if ((hasFetchedSnapshots & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  snapshotRefs2 = [(MBCKDevice *)self snapshotRefs];
  v6 = [snapshotRefs2 count];
  snapshotCommitDates = [(MBCKDevice *)self snapshotCommitDates];
  v8 = [snapshotCommitDates count];

  if (v6 == v8)
  {
    return 0;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-device= Mismatched valance: snapshots, snapshotCommitDates.  Forcing full backup", v11, 2u);
    _MBLog();
  }

  return 1;
}

- (BOOL)requiresFullBackupForAccount:(id)account
{
  v13 = 0;
  persona = [account persona];
  v5 = [persona getBooleanValueForKey:@"ForceFullBackup" keyExists:&v13];

  if (v13)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    self->_requiresFullBackup |= 1uLL;
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ck-device= Performing full backup because of user preference override", buf, 2u);
      _MBLog();
    }

LABEL_11:

    LOBYTE(serverRequestedFullBackup) = 1;
    return serverRequestedFullBackup;
  }

  serverRequestedFullBackup = [(MBCKDevice *)self serverRequestedFullBackup];
  if (serverRequestedFullBackup)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithInteger:self->_requiresFullBackup];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ck-device= Performing full backup because server requested it: %@", buf, 0xCu);

      v12 = [NSNumber numberWithInteger:self->_requiresFullBackup];
      _MBLog();
    }

    goto LABEL_11;
  }

  return serverRequestedFullBackup;
}

- (BOOL)shouldRepairDomain:(id)domain
{
  domainCopy = domain;
  v5 = self->_domainHMACsToRepair;
  if ([(NSSet *)v5 count])
  {
    hmacKey = [(MBCKDevice *)self hmacKey];
    v7 = [MBDomainRecord domainHmacForDomainName:domainCopy hmacKey:hmacKey];

    v8 = [(NSSet *)v5 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addRepairDomainHMAC:(id)c
{
  domainHMACsToRepair = self->_domainHMACsToRepair;
  cCopy = c;
  v6 = [(NSSet *)domainHMACsToRepair mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSMutableSet set];
  }

  v9 = v8;

  [(NSSet *)v9 addObject:cCopy];
  v10 = self->_domainHMACsToRepair;
  self->_domainHMACsToRepair = v9;
}

+ (void)fetchSnapshotsWithRefs:(id)refs operationTracker:(id)tracker completion:(id)completion
{
  completionCopy = completion;
  trackerCopy = tracker;
  refsCopy = refs;
  [self fetchFromServerWithOperationTracker:trackerCopy childrenOfClass:objc_opt_class() refs:refsCopy cache:0 completion:completionCopy];
}

- (void)_fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKDevice _fetchSnapshotsWithOperationTracker:retry:completion:]", "MBCKDevice.m", 338, "tracker");
  }

  v10 = completionCopy;
  v11 = objc_opt_class();
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E4760;
  v15[3] = &unk_1003BE428;
  retryCopy = retry;
  v16 = trackerCopy;
  selfCopy = self;
  v18 = v10;
  v13 = v10;
  v14 = trackerCopy;
  [(MBCKModel *)self fetchFromServerWithOperationTracker:v14 childrenOfClass:v11 refs:snapshotRefs completion:v15];
}

- (void)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (qword_1004216F0 != -1)
  {
    dispatch_once(&qword_1004216F0, &stru_1003BE448);
  }

  v10 = qword_1004216E8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E4D28;
  v13[3] = &unk_1003BE498;
  v14 = trackerCopy;
  v15 = completionCopy;
  v13[4] = self;
  retryCopy = retry;
  v11 = trackerCopy;
  v12 = completionCopy;
  dispatch_async(v10, v13);
}

- (BOOL)pinSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = [CKReference alloc];
  recordID = [snapshotCopy recordID];

  v9 = [v7 initWithRecordID:recordID action:0];
  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [pinnedSnapshotRefs containsObject:v9];

  if (v11)
  {
    if (error)
    {
      *error = [MBError errorWithCode:3 format:@"Snapshot is already pinned"];
    }
  }

  else
  {
    pinnedSnapshotRefs2 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [pinnedSnapshotRefs2 addObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return v11 ^ 1;
}

- (BOOL)unpinSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = [CKReference alloc];
  recordID = [snapshotCopy recordID];

  v9 = [v7 initWithRecordID:recordID action:0];
  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [pinnedSnapshotRefs containsObject:v9];

  if (v11)
  {
    pinnedSnapshotRefs2 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [pinnedSnapshotRefs2 removeObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  else if (error)
  {
    *error = [MBError errorWithCode:4 format:@"Snapshot is not pinned"];
  }

  return v11;
}

- (void)pinLatestGMSnapshotIfNeeded
{
  if (MBBuildIsSeed())
  {
    latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
    if (latestGMSnapshot)
    {
      pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
      [pinnedSnapshotRefs addObject:latestGMSnapshot];

      [(MBCKModel *)self setIsPersistedToServer:0];
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = latestGMSnapshot;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Pinned snapshot: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)needed
{
  neededCopy = needed;
  if ((MBBuildIsSeed() & 1) == 0)
  {
    latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
    if (latestGMSnapshot)
    {
      pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
      [pinnedSnapshotRefs removeObject:latestGMSnapshot];

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = latestGMSnapshot;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ck-device= Unpinned snapshot: %@", buf, 0xCu);
        _MBLog();
      }
    }

    v8 = [CKReference alloc];
    recordID = [neededCopy recordID];
    v10 = [v8 initWithRecordID:recordID action:0];
    [(MBCKDevice *)self setLatestGMSnapshot:v10];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }
}

- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  v7 = self->_pendingSnapshot;
  v8 = v7;
  if (v7 && ![(MBCKModel *)v7 isPersistedToServer])
  {
    [(MBCKSnapshot *)v8 prepareForSaveWithOperationTracker:trackerCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)saveToCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  cache = [(MBCKModel *)self cache];
  v7 = 0;
  [cache saveDevice:self error:&v7];
  v6 = v7;

  completionCopy[2](completionCopy, v6);
}

- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKDevice addSavesWithOperationTracker:completion:]", "MBCKDevice.m", 481, "tracker");
  }

  v8 = completionCopy;
  startBatchSave = [trackerCopy startBatchSave];
  [startBatchSave setSaveIncrementally:0];
  v10 = objc_opt_new();
  v11 = self->_pendingSnapshot;
  v12 = v11;
  if (v11 && ![(MBCKModel *)v11 isPersistedToServer])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [(MBCKModel *)v12 recordID];
      *buf = 138543618;
      *&buf[4] = recordID;
      *&buf[12] = 2114;
      *&buf[14] = startBatchSave;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ck-device= Adding pending snapshot record %{public}@ to %{public}@", buf, 0x16u);

      recordID2 = [(MBCKModel *)v12 recordID];
      v22 = startBatchSave;
      _MBLog();
    }

    recordRepresentation = [(MBCKSnapshot *)v12 recordRepresentation];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E5A14;
    v31[3] = &unk_1003BE4C0;
    v32 = v12;
    v33 = recordRepresentation;
    v34 = v10;
    v16 = recordRepresentation;
    [startBatchSave saveRecord:v16 delegate:self completion:v31];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_1000E5020;
  v37 = sub_1000E5030;
  v38 = [(MBCKDevice *)self recordRepresentation:recordID2];
  v17 = *(*&buf[8] + 40);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E5CB0;
  v28[3] = &unk_1003BD748;
  v30 = buf;
  v18 = v10;
  v29 = v18;
  [startBatchSave saveRecord:v17 delegate:self completion:v28];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E5ECC;
  v23[3] = &unk_1003BE4E8;
  v19 = v18;
  v24 = v19;
  selfCopy = self;
  v27 = buf;
  v20 = v8;
  v26 = v20;
  [trackerCopy finishBatchSave:startBatchSave completion:v23];

  _Block_object_dispose(buf, 8);
}

- (id)recordRepresentation
{
  v78.receiver = self;
  v78.super_class = MBCKDevice;
  recordRepresentation = [(MBCKModel *)&v78 recordRepresentation];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  [v4 addObjectsFromArray:snapshotRefs];

  snapshotCommitDates = [(MBCKDevice *)self snapshotCommitDates];
  [v5 addObjectsFromArray:snapshotCommitDates];

  v8 = self->_pendingSnapshot;
  if (v8)
  {
    v9 = [CKReference alloc];
    recordID = [(MBCKModel *)v8 recordID];
    v11 = [v9 initWithRecordID:recordID action:0];

    if ([v4 containsObject:v11])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
        *buf = 138412290;
        *v80 = pendingSnapshotRecordID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=ck-device= Detecting duplicate snapshot: %@, marking as committed", buf, 0xCu);
        p_isa = self->_pendingSnapshotRecordID;
        _MBLog();
      }

      cache = [(MBCKModel *)self cache];
      v15 = [cache addPendingSnapshot:v8];

      cache2 = [(MBCKModel *)self cache];
      v17 = [cache2 commitSnapshot:v8];
    }

    else
    {
      [v4 addObject:v11];
      v22 = +[NSDate date];
      [(MBCKSnapshot *)v8 setCreated:v22];

      cache2 = [(MBCKSnapshot *)v8 created];
      [v5 addObject:cache2];
    }

    [recordRepresentation setObject:0 forKeyedSubscript:@"domainHMACsToRepair"];
    [recordRepresentation setObject:v4 forKeyedSubscript:@"snapshots"];
    [recordRepresentation setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
    goto LABEL_11;
  }

  [recordRepresentation setObject:v4 forKeyedSubscript:@"snapshots"];
  [recordRepresentation setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
  v18 = self->_pendingSnapshotRecordID;
  if (!v18)
  {
LABEL_11:
    [recordRepresentation setObject:0 forKeyedSubscript:{@"pendingSnapshotID", p_isa}];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupType"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBuildVersion"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotFormat"];
    if (MBIsInternalInstall())
    {
      cache3 = [(MBCKModel *)self cache];
      v77 = 0;
      v24 = [cache3 sizeOfSnapshot:v8 error:&v77];
      allObjects = v77;

      if (!v24 && allObjects)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v80 = allObjects;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=ck-device= Failed to fetch the size of the snapshot from cache: %@", buf, 0xCu);
          p_isa = &allObjects->isa;
          _MBLog();
        }
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        pendingSnapshotQuotaReserved = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134218240;
        *v80 = v24;
        *&v80[8] = 2048;
        *&v80[10] = pendingSnapshotQuotaReserved;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, size:%llu, pendingSnapshotQuotaReserved:%llu", buf, 0x16u);
        p_isa = v24;
        pendingSnapshotQuotaReserved2 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        _MBLog();
      }
    }

    else
    {
      allObjects = MBGetDefaultLog();
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_DEFAULT))
      {
        pendingSnapshotQuotaReserved3 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134217984;
        *v80 = pendingSnapshotQuotaReserved3;
        _os_log_impl(&_mh_execute_header, allObjects, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, pendingSnapshotQuotaReserved:%llu", buf, 0xCu);
        p_isa = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        _MBLog();
      }
    }

    goto LABEL_26;
  }

  [recordRepresentation setObject:v18 forKeyedSubscript:@"pendingSnapshotID"];
  v19 = [NSNumber numberWithUnsignedLongLong:[(MBCKDevice *)self pendingSnapshotQuotaReserved]];
  [recordRepresentation setObject:v19 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];

  v20 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotType]];
  [recordRepresentation setObject:v20 forKeyedSubscript:@"pendingSnapshotBackupType"];

  if ([(MBCKDevice *)self pendingSnapshotBackupPolicy])
  {
    v21 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotBackupPolicy]];
    [recordRepresentation setObject:v21 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  else
  {
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  v30 = MBBuildVersion();
  [recordRepresentation setObject:v30 forKeyedSubscript:@"pendingSnapshotBuildVersion"];

  [(MBCKDevice *)self pendingSnapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v31 = [NSNumber numberWithLongLong:[(MBCKDevice *)self pendingSnapshotFormat]];
    [recordRepresentation setObject:v31 forKeyedSubscript:@"pendingSnapshotFormat"];

    if ([(NSSet *)self->_pendingRepairedDomainHMACs count])
    {
      allObjects = [(NSSet *)self->_pendingRepairedDomainHMACs allObjects];
      [recordRepresentation setObject:allObjects forKeyedSubscript:@"pendingRepairedDomainHMACs"];
LABEL_26:

      goto LABEL_27;
    }

    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingRepairedDomainHMACs"];
  }

LABEL_27:
  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    resumingSnapshot = [(MBCKDevice *)self resumingSnapshot];
    [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotID"];
    v34 = v8;
    v35 = v4;
    v37 = v36 = v5;
    v38 = [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    *buf = 67109634;
    *v80 = resumingSnapshot;
    *&v80[4] = 2114;
    *&v80[6] = v37;
    *&v80[14] = 2114;
    *&v80[16] = v38;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=ck-device= resumingSnapshot:%d, pendingSnapshotID:%{public}@, pendingSnapshotQuotaReserved:%{public}@", buf, 0x1Cu);

    v5 = v36;
    v4 = v35;
    v8 = v34;
    resumingSnapshot2 = [(MBCKDevice *)self resumingSnapshot];
    v40 = [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotID"];
    [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    v76 = pendingSnapshotQuotaReserved2 = v40;
    p_isa = resumingSnapshot2;
    _MBLog();
  }

  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  allObjects2 = [pinnedSnapshotRefs allObjects];
  [recordRepresentation setObject:allObjects2 forKeyedSubscript:@"pinnedSnapshots"];

  latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
  [recordRepresentation setObject:latestGMSnapshot forKeyedSubscript:@"lastGMSnapshot"];

  keybagManager = [(MBCKDevice *)self keybagManager];
  keybagRefs = [keybagManager keybagRefs];
  [recordRepresentation setObject:keybagRefs forKeyedSubscript:@"keybags"];

  deviceClass = [(MBCKDevice *)self deviceClass];
  [recordRepresentation setObject:deviceClass forKeyedSubscript:@"deviceClass"];

  deviceColor = [(MBCKDevice *)self deviceColor];
  [recordRepresentation setObject:deviceColor forKeyedSubscript:@"deviceColor"];

  deviceEnclosureColor = [(MBCKDevice *)self deviceEnclosureColor];
  [recordRepresentation setObject:deviceEnclosureColor forKeyedSubscript:@"deviceEnclosureColor"];

  deviceCoverGlassColor = [(MBCKDevice *)self deviceCoverGlassColor];
  [recordRepresentation setObject:deviceCoverGlassColor forKeyedSubscript:@"deviceCoverGlassColor"];

  deviceHousingColor = [(MBCKDevice *)self deviceHousingColor];
  [recordRepresentation setObject:deviceHousingColor forKeyedSubscript:@"deviceHousingColor"];

  deviceBackingColor = [(MBCKDevice *)self deviceBackingColor];
  [recordRepresentation setObject:deviceBackingColor forKeyedSubscript:@"deviceBackingColor"];

  hardwareModel = [(MBCKDevice *)self hardwareModel];
  [recordRepresentation setObject:hardwareModel forKeyedSubscript:@"hardwareModel"];

  productType = [(MBCKDevice *)self productType];
  [recordRepresentation setObject:productType forKeyedSubscript:@"productType"];

  assetIDPrefix = [(MBCKDevice *)self assetIDPrefix];
  [recordRepresentation setObject:assetIDPrefix forKeyedSubscript:@"deviceIdPrefix"];

  deviceUUID = self->_deviceUUID;
  v56 = MBDeviceUUID();
  LODWORD(deviceUUID) = [(NSString *)deviceUUID isEqualToString:v56];

  if (deviceUUID)
  {
    v57 = MBMarketingName();
    if (v57)
    {
      [recordRepresentation setObject:v57 forKeyedSubscript:@"marketingName"];
    }

    else
    {
      marketingName = [(MBCKDevice *)self marketingName];
      [recordRepresentation setObject:marketingName forKeyedSubscript:@"marketingName"];
    }

    serialNumber = MBSerialNumber();
  }

  else
  {
    marketingName2 = [(MBCKDevice *)self marketingName];
    [recordRepresentation setObject:marketingName2 forKeyedSubscript:@"marketingName"];

    serialNumber = [(MBCKDevice *)self serialNumber];
  }

  v61 = serialNumber;
  [recordRepresentation setObject:serialNumber forKeyedSubscript:{@"serialNumber", p_isa, pendingSnapshotQuotaReserved2, v76}];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasBackupEnabledState = selfCopy->_hasBackupEnabledState;
  backupEnabled = selfCopy->_backupEnabled;
  objc_sync_exit(selfCopy);

  if (hasBackupEnabledState)
  {
    v65 = [NSNumber numberWithBool:backupEnabled];
    [recordRepresentation setObject:v65 forKeyedSubscript:@"backupEnabled"];
  }

  deviceName = [(MBCKDevice *)selfCopy deviceName];
  [recordRepresentation setObject:deviceName forKeyedSubscript:@"deviceName"];

  v67 = objc_opt_new();
  if (![(MBCKModel *)selfCopy isPersistedToServer])
  {
    v68 = MBDeviceUDID_Legacy();
    [v67 setObject:v68 forKeyedSubscript:@"deviceUDID"];
  }

  if (selfCopy->_pendingSnapshotRecordID && ![(MBCKDevice *)selfCopy resumingSnapshot])
  {
    v69 = [NSNumber numberWithInteger:[(MBCKDevice *)selfCopy backupReason]];
    [v67 setObject:v69 forKeyedSubscript:@"backupReason"];
  }

  if ([v67 count])
  {
    [recordRepresentation setPluginFields:v67];
  }

  v70 = MBGetDefaultLog();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v71 = objc_opt_class();
    *buf = 138543618;
    *v80 = v71;
    *&v80[8] = 2112;
    *&v80[10] = recordRepresentation;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "=ck-device= %{public}@ record representation: %@", buf, 0x16u);
    objc_opt_class();
    _MBLog();
  }

  v72 = recordRepresentation;
  return recordRepresentation;
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v5 = [recordName hasPrefix:@"D:"];

  recordID2 = [recordCopy recordID];
  recordName2 = [recordID2 recordName];
  v8 = recordName2;
  if (v5)
  {
    v9 = -[NSString substringFromIndex:](recordName2, "substringFromIndex:", [@"D:" length]);
    deviceUUID = self->_deviceUUID;
    self->_deviceUUID = v9;
  }

  else
  {
    v11 = self->_deviceUUID;
    self->_deviceUUID = recordName2;
    v8 = v11;
  }

  v12 = [recordCopy objectForKeyedSubscript:@"deviceClass"];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v12;

  v14 = [recordCopy objectForKeyedSubscript:@"deviceColor"];
  deviceColor = self->_deviceColor;
  self->_deviceColor = v14;

  v16 = [recordCopy objectForKeyedSubscript:@"deviceEnclosureColor"];
  deviceEnclosureColor = self->_deviceEnclosureColor;
  self->_deviceEnclosureColor = v16;

  v18 = [recordCopy objectForKeyedSubscript:@"deviceCoverGlassColor"];
  deviceCoverGlassColor = self->_deviceCoverGlassColor;
  self->_deviceCoverGlassColor = v18;

  v20 = [recordCopy objectForKeyedSubscript:@"deviceHousingColor"];
  deviceHousingColor = self->_deviceHousingColor;
  self->_deviceHousingColor = v20;

  v22 = [recordCopy objectForKeyedSubscript:@"deviceBackingColor"];
  deviceBackingColor = self->_deviceBackingColor;
  self->_deviceBackingColor = v22;

  v24 = [recordCopy objectForKeyedSubscript:@"hardwareModel"];
  hardwareModel = self->_hardwareModel;
  self->_hardwareModel = v24;

  v26 = [recordCopy objectForKeyedSubscript:@"marketingName"];
  marketingName = self->_marketingName;
  self->_marketingName = v26;

  v28 = [recordCopy objectForKeyedSubscript:@"productType"];
  productType = self->_productType;
  self->_productType = v28;

  v30 = [recordCopy objectForKeyedSubscript:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v30;

  v32 = [recordCopy objectForKeyedSubscript:@"deviceIdPrefix"];
  assetIDPrefix = self->_assetIDPrefix;
  self->_assetIDPrefix = v32;

  v84 = [recordCopy objectForKeyedSubscript:@"domainHMACsToRepair"];
  if (v84)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = self->_deviceUUID;
        v36 = [v84 sortedArrayUsingSelector:"compare:"];
        v37 = [v36 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v94 = v35;
        v95 = 2112;
        v96 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=ck-device= =domain repair= Found domainHMACsToRepair for %@ record: %@", buf, 0x16u);

        v38 = self->_deviceUUID;
        v39 = [v84 sortedArrayUsingSelector:"compare:"];
        [v39 componentsJoinedByString:{@", "}];
        v83 = v82 = v38;
        _MBLog();
      }

      v40 = objc_opt_new();
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v41 = v84;
      v42 = [v41 countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (v42)
      {
        v43 = *v89;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v89 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v45 = *(*(&v88 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(NSSet *)v40 addObject:v45];
            }

            else
            {
              v46 = MBGetDefaultLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v94 = v45;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ck-device= Could not parse domain hmac to repair: %@", buf, 0xCu);
                v82 = v45;
                _MBLog();
              }
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v88 objects:v92 count:16];
        }

        while (v42);
      }

      domainHMACsToRepair = self->_domainHMACsToRepair;
      self->_domainHMACsToRepair = v40;
    }
  }

  v48 = MBDeviceCoverGlassColor();
  v49 = self->_deviceCoverGlassColor;
  self->_deviceCoverGlassColor = v48;

  v50 = MBDeviceHousingColor();
  v51 = self->_deviceHousingColor;
  self->_deviceHousingColor = v50;

  v52 = MBDeviceBackingColor();
  v53 = self->_deviceBackingColor;
  self->_deviceBackingColor = v52;

  v54 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotID"];
  pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
  self->_pendingSnapshotRecordID = v54;

  v56 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
  self->_pendingSnapshotQuotaReserved = [v56 longLongValue];

  v57 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBackupType"];
  self->_pendingSnapshotType = [v57 integerValue];

  v58 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  self->_pendingSnapshotBackupPolicy = [v58 integerValue];

  v59 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotFormat"];
  self->_pendingSnapshotFormat = [v59 integerValue];

  v60 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBuildVersion"];
  pendingSnapshotBuildVersion = self->_pendingSnapshotBuildVersion;
  self->_pendingSnapshotBuildVersion = v60;

  v62 = [recordCopy objectForKeyedSubscript:@"snapshots"];
  snapshotRefs = self->_snapshotRefs;
  self->_snapshotRefs = v62;

  v64 = [recordCopy objectForKeyedSubscript:@"snapshotCommittedDates"];
  snapshotCommitDates = self->_snapshotCommitDates;
  self->_snapshotCommitDates = v64;

  v66 = [recordCopy objectForKeyedSubscript:@"pinnedSnapshots"];
  v67 = v66;
  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = &__NSArray0__struct;
  }

  v69 = [NSMutableSet setWithArray:v68, v82, v83];
  pinnedSnapshotRefs = self->_pinnedSnapshotRefs;
  self->_pinnedSnapshotRefs = v69;

  v71 = [recordCopy objectForKeyedSubscript:@"lastGMSnapshot"];
  latestGMSnapshot = self->_latestGMSnapshot;
  self->_latestGMSnapshot = v71;

  v73 = [recordCopy objectForKeyedSubscript:@"requiresFullBackup"];

  if (v73)
  {
    v74 = [recordCopy objectForKeyedSubscript:@"requiresFullBackup"];
    self->_requiresFullBackup = [v74 integerValue];
  }

  v75 = [recordCopy objectForKeyedSubscript:@"backupEnabled"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v75)
  {
    selfCopy->_backupEnabled = [v75 BOOLValue];
    v77 = 1;
  }

  else
  {
    v77 = 0;
    selfCopy->_backupEnabled = 0;
  }

  selfCopy->_hasBackupEnabledState = v77;
  objc_sync_exit(selfCopy);

  selfCopy->_hasFetchedSnapshots = 0;
  v78 = [recordCopy objectForKeyedSubscript:@"keybags"];
  keybagManager = selfCopy->_keybagManager;
  if (keybagManager)
  {
    [(MBCKKeyBagManager *)keybagManager mergeKeybagRefs:v78];
  }

  else
  {
    v80 = [[MBCKKeyBagManager alloc] initWithDevice:selfCopy keybagRefs:v78];
    v81 = selfCopy->_keybagManager;
    selfCopy->_keybagManager = v80;
  }

  v87.receiver = selfCopy;
  v87.super_class = MBCKDevice;
  [(MBCKModel *)&v87 refreshWithRecord:recordCopy];
}

- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion
{
  v5.receiver = self;
  v5.super_class = MBCKDevice;
  [(MBCKModel *)&v5 handleSaveComplete:complete withError:error completion:completion];
}

- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord
{
  recordCopy = record;
  originalRecordCopy = originalRecord;
  recordType = [recordCopy recordType];
  recordType2 = [(MBCKDevice *)self recordType];
  v11 = [recordType isEqualToString:recordType2];

  if (!v11)
  {
    recordRepresentation = 0;
    goto LABEL_18;
  }

  v12 = self->_pendingSnapshot;
  v13 = v12;
  if (v12 && [(MBCKModel *)v12 isPersistedToServer])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      snapshotID = [(MBCKSnapshot *)v13 snapshotID];
      *buf = 138543362;
      v31 = snapshotID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=ck-device= Not merging with the server record since there's a pending snapshot: %{public}@", buf, 0xCu);

      snapshotID2 = [(MBCKSnapshot *)v13 snapshotID];
      _MBLog();
    }

    recordRepresentation = recordCopy;
    goto LABEL_17;
  }

  v17 = self->_domainHMACsToRepair;
  if (v17)
  {
    p_super = MBGetDefaultLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [(NSSet *)v17 count];
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "=ck-device= Not handling merge conflict with server record because the local device record has %lu domain hmacs to repair", buf, 0xCu);
      [(NSSet *)v17 count];
      _MBLog();
    }
  }

  else
  {
    [(MBCKDevice *)self refreshWithRecord:recordCopy];
    v19 = self->_domainHMACsToRepair;
    if (!v19)
    {
      v22 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotID"];
      pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
      self->_pendingSnapshotRecordID = v22;

      v24 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
      self->_pendingSnapshotQuotaReserved = [v24 longLongValue];

      v25 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotBackupType"];
      self->_pendingSnapshotType = [v25 integerValue];

      v26 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
      self->_pendingSnapshotBackupPolicy = [v26 integerValue];

      v27 = [originalRecordCopy objectForKeyedSubscript:@"deviceIdPrefix"];
      assetIDPrefix = self->_assetIDPrefix;
      self->_assetIDPrefix = v27;

      recordRepresentation = [(MBCKDevice *)self recordRepresentation];
      p_super = 0;
      goto LABEL_16;
    }

    p_super = &v19->super;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [p_super count];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ck-device= Not handling merge conflict with server record because the refreshed device record has %lu domain hmacs to repair", buf, 0xCu);
      [p_super count];
      _MBLog();
    }
  }

  recordRepresentation = 0;
LABEL_16:

LABEL_17:
LABEL_18:

  return recordRepresentation;
}

- (id)_getRecordIDString
{
  deviceUUID = [(MBCKDevice *)self deviceUUID];

  if (!deviceUUID)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBCKDevice.m" lineNumber:757 description:@"Device is missing UUID"];
  }

  v5 = [NSString alloc];
  deviceUUID2 = [(MBCKDevice *)self deviceUUID];
  v7 = [v5 initWithFormat:@"D:%@", deviceUUID2];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MBCKDevice;
  [(MBCKModel *)&v12 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_deviceUUID forKey:@"DeviceUUID"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"DeviceClass"];
  [coderCopy encodeObject:self->_deviceColor forKey:@"DeviceColor"];
  [coderCopy encodeObject:self->_deviceEnclosureColor forKey:@"DeviceEnclosureColor"];
  [coderCopy encodeObject:self->_deviceCoverGlassColor forKey:@"DeviceCoverGlassColor"];
  [coderCopy encodeObject:self->_deviceHousingColor forKey:@"DeviceHousingColor"];
  [coderCopy encodeObject:self->_deviceBackingColor forKey:@"DeviceBackingColor"];
  [coderCopy encodeObject:self->_hardwareModel forKey:@"HardwareModel"];
  [coderCopy encodeObject:self->_marketingName forKey:@"MarketingName"];
  [coderCopy encodeObject:self->_productType forKey:@"ProductType"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"SerialNumber"];
  [coderCopy encodeObject:self->_pendingSnapshotRecordID forKey:@"PendingSnapshotID"];
  [coderCopy encodeInt64:self->_pendingSnapshotQuotaReserved forKey:@"PendingSnapshotQuotaReserved"];
  [coderCopy encodeInteger:self->_pendingSnapshotType forKey:@"PendingSnapshotBackupType"];
  [coderCopy encodeInteger:self->_pendingSnapshotBackupPolicy forKey:@"PendingSnapshotBackupPolicy"];
  [coderCopy encodeObject:self->_hmacKey forKey:@"HMACKey"];
  [coderCopy encodeObject:self->_assetIDPrefix forKey:@"AssetIDPrefix"];
  keybagRefs = [(MBCKKeyBagManager *)self->_keybagManager keybagRefs];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:keybagRefs requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v7 forKey:@"KeybagRefs"];

  v8 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotRefs requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v8 forKey:@"SnapshotRefs"];

  v9 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotCommitDates requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v9 forKey:@"SnapshotCommitDates"];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  backupEnabled = selfCopy->_backupEnabled;
  LODWORD(keybagRefs) = selfCopy->_hasBackupEnabledState;
  objc_sync_exit(selfCopy);

  if (keybagRefs == 1)
  {
    [coderCopy encodeBool:backupEnabled forKey:@"BackupEnabled"];
  }

  objc_autoreleasePoolPop(v5);
}

- (MBCKDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v53.receiver = self;
  v53.super_class = MBCKDevice;
  v6 = [(MBCKModel *)&v53 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
    deviceUUID = v6->_deviceUUID;
    v6->_deviceUUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    deviceClass = v6->_deviceClass;
    v6->_deviceClass = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceColor"];
    deviceColor = v6->_deviceColor;
    v6->_deviceColor = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceEnclosureColor"];
    deviceEnclosureColor = v6->_deviceEnclosureColor;
    v6->_deviceEnclosureColor = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCoverGlassColor"];
    deviceCoverGlassColor = v6->_deviceCoverGlassColor;
    v6->_deviceCoverGlassColor = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceHousingColor"];
    deviceHousingColor = v6->_deviceHousingColor;
    v6->_deviceHousingColor = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceBackingColor"];
    deviceBackingColor = v6->_deviceBackingColor;
    v6->_deviceBackingColor = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HardwareModel"];
    hardwareModel = v6->_hardwareModel;
    v6->_hardwareModel = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MarketingName"];
    marketingName = v6->_marketingName;
    v6->_marketingName = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v6->_productType;
    v6->_productType = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
    serialNumber = v6->_serialNumber;
    v6->_serialNumber = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PendingSnapshotID"];
    pendingSnapshotRecordID = v6->_pendingSnapshotRecordID;
    v6->_pendingSnapshotRecordID = v29;

    v6->_pendingSnapshotQuotaReserved = [coderCopy decodeInt64ForKey:@"PendingSnapshotQuotaReserved"];
    v6->_pendingSnapshotType = [coderCopy decodeIntegerForKey:@"PendingSnapshotBackupType"];
    v6->_pendingSnapshotBackupPolicy = [coderCopy decodeIntegerForKey:@"PendingSnapshotBackupPolicy"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMACKey"];
    hmacKey = v6->_hmacKey;
    v6->_hmacKey = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetIDPrefix"];
    assetIDPrefix = v6->_assetIDPrefix;
    v6->_assetIDPrefix = v33;

    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v35 = [NSArray arrayWithObjects:v56 count:2];
    v36 = [NSSet setWithArray:v35];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeybagRefs"];
    v38 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v36 fromData:v37 error:0];

    v39 = [[MBCKKeyBagManager alloc] initWithDevice:v6 keybagRefs:v38];
    keybagManager = v6->_keybagManager;
    v6->_keybagManager = v39;

    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v41 = [NSArray arrayWithObjects:v55 count:2];
    v42 = [NSSet setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotRefs"];
    v44 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v42 fromData:v43 error:0];
    snapshotRefs = v6->_snapshotRefs;
    v6->_snapshotRefs = v44;

    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v46 = [NSArray arrayWithObjects:v54 count:2];
    v47 = [NSSet setWithArray:v46];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotCommitDates"];
    v49 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v47 fromData:v48 error:0];
    snapshotCommitDates = v6->_snapshotCommitDates;
    v6->_snapshotCommitDates = v49;

    if ([coderCopy containsValueForKey:@"BackupEnabled"])
    {
      v6->_backupEnabled = [coderCopy decodeBoolForKey:@"BackupEnabled"];
      v6->_hasBackupEnabledState = 1;
    }
  }

  v51 = v6;
  objc_autoreleasePoolPop(v5);

  return v51;
}

- (id)_fileListReferencesMatching:(id)matching
{
  matchingCopy = matching;
  snapshots = [(MBCKDevice *)self snapshots];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E8550;
  v14[3] = &unk_1003BE510;
  v6 = matchingCopy;
  v15 = v6;
  v7 = [snapshots indexOfObjectPassingTest:v14];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v9 = [snapshots subarrayWithRange:{0, v7 + 1}];
  v8 = MBGetLatestDomainRecordReferencesFromSnapshots(v9);
  v10 = [v8 count];
  v11 = MBGetDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 134217984;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= =sync= Synchronizing file lists: %ld references", buf, 0xCu);
LABEL_8:
      _MBLog();
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= =sync= No snapshot to domain references to synchronize", buf, 2u);
    goto LABEL_8;
  }

LABEL_10:

  return v8;
}

- (id)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory commitID:(id)d error:(id *)error fetchedFileListBlock:(id)block
{
  trackerCopy = tracker;
  directoryCopy = directory;
  dCopy = d;
  blockCopy = block;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000E881C;
  v26[3] = &unk_1003BCD40;
  v16 = dCopy;
  v27 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v26];
  v18 = v17;
  if (v17)
  {
    if (![v17 count] || (-[MBCKDevice hmacKey](self, "hmacKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = MBSynchronizeFileListsWithSnapshotDirectory(directoryCopy, v16, v19, v18, trackerCopy, 0, error, blockCopy), v19, (v20 & 1) != 0))
    {
      v21 = [directoryCopy stringByAppendingPathComponent:v16];
      goto LABEL_14;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ck-device= =sync= Error synchronizing file lists for commitID: %@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    deviceUUID = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = deviceUUID;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ commitID:%@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ commitID:%@", deviceUUID, v16];
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (BOOL)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory snapshotUUID:(id)d error:(id *)error fetchedFileListBlock:(id)block
{
  trackerCopy = tracker;
  directoryCopy = directory;
  dCopy = d;
  blockCopy = block;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000E8AF8;
  v25[3] = &unk_1003BCD40;
  v16 = dCopy;
  v26 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v25];
  v18 = v17;
  if (!v17)
  {
    deviceUUID = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = deviceUUID;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ snapshotUUID:%@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ snapshotUUID:%@", deviceUUID, v16];
    }

    goto LABEL_11;
  }

  if ([v17 count])
  {
    hmacKey = [(MBCKDevice *)self hmacKey];
    v20 = MBSynchronizeFileListsWithSnapshotDirectory(directoryCopy, v16, hmacKey, v18, trackerCopy, 0, error, blockCopy);

    if ((v20 & 1) == 0)
    {
      deviceUUID = MBGetDefaultLog();
      if (os_log_type_enabled(deviceUUID, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, deviceUUID, OS_LOG_TYPE_ERROR, "=ck-device= =sync= Error synchronizing file lists for snapshotUUID: %@", buf, 0xCu);
        _MBLog();
      }

LABEL_11:

      v21 = 0;
      goto LABEL_12;
    }
  }

  v21 = 1;
LABEL_12:

  return v21;
}

@end