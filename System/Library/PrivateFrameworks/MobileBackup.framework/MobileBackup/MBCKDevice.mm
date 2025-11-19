@interface MBCKDevice
+ (void)fetchSnapshotsWithRefs:(id)a3 operationTracker:(id)a4 completion:(id)a5;
- (BOOL)addPendingSnapshot:(id)a3 error:(id *)a4;
- (BOOL)backupEnabled;
- (BOOL)backupsDisabledFromAnotherDevice;
- (BOOL)canRestoreSystemFiles;
- (BOOL)pinSnapshot:(id)a3 error:(id *)a4;
- (BOOL)requiresFullBackupForAccount:(id)a3;
- (BOOL)shouldDeleteDevice;
- (BOOL)shouldRepairDomain:(id)a3;
- (BOOL)synchronizeFileListsWithOperationTracker:(id)a3 snapshotDirectory:(id)a4 snapshotUUID:(id)a5 error:(id *)a6 fetchedFileListBlock:(id)a7;
- (BOOL)unpinSnapshot:(id)a3 error:(id *)a4;
- (BOOL)validateCache;
- (MBCKDevice)initWithCoder:(id)a3;
- (MBCKDevice)initWithUUID:(id)a3 cache:(id)a4 backupEnabled:(BOOL)a5;
- (NSString)deviceName;
- (id)_fileListReferencesMatching:(id)a3;
- (id)_getRecordIDString;
- (id)dateOfLastBackup;
- (id)mergeRecordsWithOperationTracker:(id)a3 serverRecord:(id)a4 originalRecord:(id)a5;
- (id)recordRepresentation;
- (id)synchronizeFileListsWithOperationTracker:(id)a3 snapshotDirectory:(id)a4 commitID:(id)a5 error:(id *)a6 fetchedFileListBlock:(id)a7;
- (void)_fetchSnapshotsWithOperationTracker:(id)a3 retry:(BOOL)a4 completion:(id)a5;
- (void)addRepairDomainHMAC:(id)a3;
- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4;
- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchSnapshotsWithOperationTracker:(id)a3 retry:(BOOL)a4 completion:(id)a5;
- (void)handleSaveComplete:(id)a3 withError:(id)a4 completion:(id)a5;
- (void)pinLatestGMSnapshotIfNeeded;
- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4;
- (void)refreshWithRecord:(id)a3;
- (void)saveToCacheWithCompletion:(id)a3;
- (void)setBackupEnabled:(BOOL)a3;
- (void)setDeviceName:(id)a3;
- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)a3;
- (void)validateCacheWithCompletion:(id)a3;
@end

@implementation MBCKDevice

- (MBCKDevice)initWithUUID:(id)a3 cache:(id)a4 backupEnabled:(BOOL)a5
{
  v9 = a3;
  v36.receiver = self;
  v36.super_class = MBCKDevice;
  v10 = [(MBCKModel *)&v36 initWithRecord:0 cache:a4];
  v11 = v10;
  if (v10)
  {
    deviceName = v10->_deviceName;
    v10->_deviceName = 0;

    v11->_hasCachedDeviceName = 0;
    objc_storeStrong(&v11->_deviceUUID, a3);
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
    v11->_backupEnabled = a5;
    v33 = [[MBCKKeyBagManager alloc] initWithDevice:v11 keybagRefs:0];
    keybagManager = v11->_keybagManager;
    v11->_keybagManager = v33;
  }

  return v11;
}

- (NSString)deviceName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceName;
  if (!v3)
  {
    if (v2->_hasCachedDeviceName)
    {
      v3 = 0;
    }

    else
    {
      v4 = MBDeviceName();
      deviceName = v2->_deviceName;
      v2->_deviceName = v4;

      v3 = v4;
      v2->_hasCachedDeviceName = 1;
    }
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setDeviceName:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  deviceName = obj->_deviceName;
  obj->_deviceName = v4;

  obj->_hasCachedDeviceName = 1;
  objc_sync_exit(obj);
}

- (BOOL)backupEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_hasBackupEnabledState && v2->_backupEnabled;
  objc_sync_exit(v2);

  return v3;
}

- (void)setBackupEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (v3)
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
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=ck-device= Setting backupEnabled=%s into the device record %@", buf, 0x16u);
    _MBLog();
  }

  v7 = self;
  objc_sync_enter(v7);
  v7->_backupEnabled = v3;
  v7->_hasBackupEnabledState = 1;
  objc_sync_exit(v7);
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

- (void)validateCacheWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MBCKDevice *)self hasFetchedSnapshots])
  {
    v5 = [(MBCKDevice *)self snapshots];
    v6 = [v5 valueForKey:@"snapshotID"];
    v7 = [NSMutableSet setWithArray:v6];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v8 = [(MBCKModel *)self cache];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E3924;
    v13[3] = &unk_1003BE3D8;
    v9 = v7;
    v14 = v9;
    v15 = &v16;
    v10 = [v8 enumerateSnapshotIDs:v13];

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
    v4[2](v4, v12 & 1);

    _Block_object_dispose(&v16, 8);
    goto LABEL_12;
  }

  v4[2](v4, 0);
LABEL_12:
}

- (BOOL)canRestoreSystemFiles
{
  v3 = MBDeviceClass();
  v4 = [(MBCKDevice *)self deviceClass];
  v5 = MBCanRestoreSystemFilesBetweenProductClasses(v3, v4);

  return v5;
}

- (BOOL)addPendingSnapshot:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
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

    if (a4)
    {
      *a4 = [MBError errorWithCode:1 format:@"Attempted to add a snapshot without committing a pending snapshot"];
    }
  }

  else
  {
    v10 = [v6 recordIDString];
    pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
    self->_pendingSnapshotRecordID = v10;

    -[MBCKDevice setBackupReason:](self, "setBackupReason:", [v7 backupReason]);
    [v7 setDevice:self];
    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return pendingSnapshot == 0;
}

- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)a3
{
  v3 = a3;
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
      v21 = v3;
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
  v10 = [(MBCKModel *)self cache];
  v11 = [v10 removeAllOrphanedItems];

  if (v3)
  {
    v12 = [(MBCKModel *)self cache];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E3E04;
    v17[3] = &unk_1003BC8B8;
    v17[4] = self;
    v13 = [v12 performInTransaction:v17];

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
  v3 = [(NSArray *)self->_snapshotRefs count];
  if (v3)
  {
    v3 = [(NSArray *)self->_snapshotCommitDates lastObject];
  }

  return v3;
}

- (BOOL)backupsDisabledFromAnotherDevice
{
  v3 = [(MBCKDevice *)self snapshotRefs];
  v4 = [v3 count];

  if (v4)
  {
    return 0;
  }

  v6 = [(MBCKModel *)self cache];
  v7 = [(MBCKDevice *)self deviceUUID];
  v8 = [v6 fetchMostRecentSnapshotForDevice:v7 error:0];

  return v8 != 0;
}

- (BOOL)shouldDeleteDevice
{
  v3 = [(MBCKDevice *)self snapshotRefs];
  if ([v3 count])
  {
    v4 = [(MBCKDevice *)self hasFetchedSnapshots];

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  v5 = [(MBCKDevice *)self snapshotRefs];
  v6 = [v5 count];
  v7 = [(MBCKDevice *)self snapshotCommitDates];
  v8 = [v7 count];

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

- (BOOL)requiresFullBackupForAccount:(id)a3
{
  v13 = 0;
  v4 = [a3 persona];
  v5 = [v4 getBooleanValueForKey:@"ForceFullBackup" keyExists:&v13];

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

    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = [(MBCKDevice *)self serverRequestedFullBackup];
  if (v7)
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

  return v7;
}

- (BOOL)shouldRepairDomain:(id)a3
{
  v4 = a3;
  v5 = self->_domainHMACsToRepair;
  if ([(NSSet *)v5 count])
  {
    v6 = [(MBCKDevice *)self hmacKey];
    v7 = [MBDomainRecord domainHmacForDomainName:v4 hmacKey:v6];

    v8 = [(NSSet *)v5 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addRepairDomainHMAC:(id)a3
{
  domainHMACsToRepair = self->_domainHMACsToRepair;
  v5 = a3;
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

  [(NSSet *)v9 addObject:v5];
  v10 = self->_domainHMACsToRepair;
  self->_domainHMACsToRepair = v9;
}

+ (void)fetchSnapshotsWithRefs:(id)a3 operationTracker:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [a1 fetchFromServerWithOperationTracker:v9 childrenOfClass:objc_opt_class() refs:v10 cache:0 completion:v8];
}

- (void)_fetchSnapshotsWithOperationTracker:(id)a3 retry:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKDevice _fetchSnapshotsWithOperationTracker:retry:completion:]", "MBCKDevice.m", 338, "tracker");
  }

  v10 = v9;
  v11 = objc_opt_class();
  v12 = [(MBCKDevice *)self snapshotRefs];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E4760;
  v15[3] = &unk_1003BE428;
  v19 = a4;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v13 = v10;
  v14 = v8;
  [(MBCKModel *)self fetchFromServerWithOperationTracker:v14 childrenOfClass:v11 refs:v12 completion:v15];
}

- (void)fetchSnapshotsWithOperationTracker:(id)a3 retry:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (qword_1004216F0 != -1)
  {
    dispatch_once(&qword_1004216F0, &stru_1003BE448);
  }

  v10 = qword_1004216E8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E4D28;
  v13[3] = &unk_1003BE498;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (BOOL)pinSnapshot:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [CKReference alloc];
  v8 = [v6 recordID];

  v9 = [v7 initWithRecordID:v8 action:0];
  v10 = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    if (a4)
    {
      *a4 = [MBError errorWithCode:3 format:@"Snapshot is already pinned"];
    }
  }

  else
  {
    v12 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [v12 addObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return v11 ^ 1;
}

- (BOOL)unpinSnapshot:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [CKReference alloc];
  v8 = [v6 recordID];

  v9 = [v7 initWithRecordID:v8 action:0];
  v10 = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [v12 removeObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  else if (a4)
  {
    *a4 = [MBError errorWithCode:4 format:@"Snapshot is not pinned"];
  }

  return v11;
}

- (void)pinLatestGMSnapshotIfNeeded
{
  if (MBBuildIsSeed())
  {
    v3 = [(MBCKDevice *)self latestGMSnapshot];
    if (v3)
    {
      v4 = [(MBCKDevice *)self pinnedSnapshotRefs];
      [v4 addObject:v3];

      [(MBCKModel *)self setIsPersistedToServer:0];
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Pinned snapshot: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)a3
{
  v4 = a3;
  if ((MBBuildIsSeed() & 1) == 0)
  {
    v5 = [(MBCKDevice *)self latestGMSnapshot];
    if (v5)
    {
      v6 = [(MBCKDevice *)self pinnedSnapshotRefs];
      [v6 removeObject:v5];

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ck-device= Unpinned snapshot: %@", buf, 0xCu);
        _MBLog();
      }
    }

    v8 = [CKReference alloc];
    v9 = [v4 recordID];
    v10 = [v8 initWithRecordID:v9 action:0];
    [(MBCKDevice *)self setLatestGMSnapshot:v10];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }
}

- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_pendingSnapshot;
  v8 = v7;
  if (v7 && ![(MBCKModel *)v7 isPersistedToServer])
  {
    [(MBCKSnapshot *)v8 prepareForSaveWithOperationTracker:v9 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)saveToCacheWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MBCKModel *)self cache];
  v7 = 0;
  [v5 saveDevice:self error:&v7];
  v6 = v7;

  v4[2](v4, v6);
}

- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKDevice addSavesWithOperationTracker:completion:]", "MBCKDevice.m", 481, "tracker");
  }

  v8 = v7;
  v9 = [v6 startBatchSave];
  [v9 setSaveIncrementally:0];
  v10 = objc_opt_new();
  v11 = self->_pendingSnapshot;
  v12 = v11;
  if (v11 && ![(MBCKModel *)v11 isPersistedToServer])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MBCKModel *)v12 recordID];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ck-device= Adding pending snapshot record %{public}@ to %{public}@", buf, 0x16u);

      v21 = [(MBCKModel *)v12 recordID];
      v22 = v9;
      _MBLog();
    }

    v15 = [(MBCKSnapshot *)v12 recordRepresentation];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E5A14;
    v31[3] = &unk_1003BE4C0;
    v32 = v12;
    v33 = v15;
    v34 = v10;
    v16 = v15;
    [v9 saveRecord:v16 delegate:self completion:v31];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_1000E5020;
  v37 = sub_1000E5030;
  v38 = [(MBCKDevice *)self recordRepresentation:v21];
  v17 = *(*&buf[8] + 40);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E5CB0;
  v28[3] = &unk_1003BD748;
  v30 = buf;
  v18 = v10;
  v29 = v18;
  [v9 saveRecord:v17 delegate:self completion:v28];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E5ECC;
  v23[3] = &unk_1003BE4E8;
  v19 = v18;
  v24 = v19;
  v25 = self;
  v27 = buf;
  v20 = v8;
  v26 = v20;
  [v6 finishBatchSave:v9 completion:v23];

  _Block_object_dispose(buf, 8);
}

- (id)recordRepresentation
{
  v78.receiver = self;
  v78.super_class = MBCKDevice;
  v3 = [(MBCKModel *)&v78 recordRepresentation];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(MBCKDevice *)self snapshotRefs];
  [v4 addObjectsFromArray:v6];

  v7 = [(MBCKDevice *)self snapshotCommitDates];
  [v5 addObjectsFromArray:v7];

  v8 = self->_pendingSnapshot;
  if (v8)
  {
    v9 = [CKReference alloc];
    v10 = [(MBCKModel *)v8 recordID];
    v11 = [v9 initWithRecordID:v10 action:0];

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

      v14 = [(MBCKModel *)self cache];
      v15 = [v14 addPendingSnapshot:v8];

      v16 = [(MBCKModel *)self cache];
      v17 = [v16 commitSnapshot:v8];
    }

    else
    {
      [v4 addObject:v11];
      v22 = +[NSDate date];
      [(MBCKSnapshot *)v8 setCreated:v22];

      v16 = [(MBCKSnapshot *)v8 created];
      [v5 addObject:v16];
    }

    [v3 setObject:0 forKeyedSubscript:@"domainHMACsToRepair"];
    [v3 setObject:v4 forKeyedSubscript:@"snapshots"];
    [v3 setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
    goto LABEL_11;
  }

  [v3 setObject:v4 forKeyedSubscript:@"snapshots"];
  [v3 setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
  v18 = self->_pendingSnapshotRecordID;
  if (!v18)
  {
LABEL_11:
    [v3 setObject:0 forKeyedSubscript:{@"pendingSnapshotID", p_isa}];
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotBackupType"];
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotBuildVersion"];
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotFormat"];
    if (MBIsInternalInstall())
    {
      v23 = [(MBCKModel *)self cache];
      v77 = 0;
      v24 = [v23 sizeOfSnapshot:v8 error:&v77];
      v25 = v77;

      if (!v24 && v25)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v80 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=ck-device= Failed to fetch the size of the snapshot from cache: %@", buf, 0xCu);
          p_isa = &v25->isa;
          _MBLog();
        }
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134218240;
        *v80 = v24;
        *&v80[8] = 2048;
        *&v80[10] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, size:%llu, pendingSnapshotQuotaReserved:%llu", buf, 0x16u);
        p_isa = v24;
        v75 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        _MBLog();
      }
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134217984;
        *v80 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, pendingSnapshotQuotaReserved:%llu", buf, 0xCu);
        p_isa = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        _MBLog();
      }
    }

    goto LABEL_26;
  }

  [v3 setObject:v18 forKeyedSubscript:@"pendingSnapshotID"];
  v19 = [NSNumber numberWithUnsignedLongLong:[(MBCKDevice *)self pendingSnapshotQuotaReserved]];
  [v3 setObject:v19 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];

  v20 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotType]];
  [v3 setObject:v20 forKeyedSubscript:@"pendingSnapshotBackupType"];

  if ([(MBCKDevice *)self pendingSnapshotBackupPolicy])
  {
    v21 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotBackupPolicy]];
    [v3 setObject:v21 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  v30 = MBBuildVersion();
  [v3 setObject:v30 forKeyedSubscript:@"pendingSnapshotBuildVersion"];

  [(MBCKDevice *)self pendingSnapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v31 = [NSNumber numberWithLongLong:[(MBCKDevice *)self pendingSnapshotFormat]];
    [v3 setObject:v31 forKeyedSubscript:@"pendingSnapshotFormat"];

    if ([(NSSet *)self->_pendingRepairedDomainHMACs count])
    {
      v25 = [(NSSet *)self->_pendingRepairedDomainHMACs allObjects];
      [v3 setObject:v25 forKeyedSubscript:@"pendingRepairedDomainHMACs"];
LABEL_26:

      goto LABEL_27;
    }

    [v3 setObject:0 forKeyedSubscript:@"pendingRepairedDomainHMACs"];
  }

LABEL_27:
  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(MBCKDevice *)self resumingSnapshot];
    [v3 objectForKeyedSubscript:@"pendingSnapshotID"];
    v34 = v8;
    v35 = v4;
    v37 = v36 = v5;
    v38 = [v3 objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    *buf = 67109634;
    *v80 = v33;
    *&v80[4] = 2114;
    *&v80[6] = v37;
    *&v80[14] = 2114;
    *&v80[16] = v38;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=ck-device= resumingSnapshot:%d, pendingSnapshotID:%{public}@, pendingSnapshotQuotaReserved:%{public}@", buf, 0x1Cu);

    v5 = v36;
    v4 = v35;
    v8 = v34;
    v39 = [(MBCKDevice *)self resumingSnapshot];
    v40 = [v3 objectForKeyedSubscript:@"pendingSnapshotID"];
    [v3 objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    v76 = v75 = v40;
    p_isa = v39;
    _MBLog();
  }

  v41 = [(MBCKDevice *)self pinnedSnapshotRefs];
  v42 = [v41 allObjects];
  [v3 setObject:v42 forKeyedSubscript:@"pinnedSnapshots"];

  v43 = [(MBCKDevice *)self latestGMSnapshot];
  [v3 setObject:v43 forKeyedSubscript:@"lastGMSnapshot"];

  v44 = [(MBCKDevice *)self keybagManager];
  v45 = [v44 keybagRefs];
  [v3 setObject:v45 forKeyedSubscript:@"keybags"];

  v46 = [(MBCKDevice *)self deviceClass];
  [v3 setObject:v46 forKeyedSubscript:@"deviceClass"];

  v47 = [(MBCKDevice *)self deviceColor];
  [v3 setObject:v47 forKeyedSubscript:@"deviceColor"];

  v48 = [(MBCKDevice *)self deviceEnclosureColor];
  [v3 setObject:v48 forKeyedSubscript:@"deviceEnclosureColor"];

  v49 = [(MBCKDevice *)self deviceCoverGlassColor];
  [v3 setObject:v49 forKeyedSubscript:@"deviceCoverGlassColor"];

  v50 = [(MBCKDevice *)self deviceHousingColor];
  [v3 setObject:v50 forKeyedSubscript:@"deviceHousingColor"];

  v51 = [(MBCKDevice *)self deviceBackingColor];
  [v3 setObject:v51 forKeyedSubscript:@"deviceBackingColor"];

  v52 = [(MBCKDevice *)self hardwareModel];
  [v3 setObject:v52 forKeyedSubscript:@"hardwareModel"];

  v53 = [(MBCKDevice *)self productType];
  [v3 setObject:v53 forKeyedSubscript:@"productType"];

  v54 = [(MBCKDevice *)self assetIDPrefix];
  [v3 setObject:v54 forKeyedSubscript:@"deviceIdPrefix"];

  deviceUUID = self->_deviceUUID;
  v56 = MBDeviceUUID();
  LODWORD(deviceUUID) = [(NSString *)deviceUUID isEqualToString:v56];

  if (deviceUUID)
  {
    v57 = MBMarketingName();
    if (v57)
    {
      [v3 setObject:v57 forKeyedSubscript:@"marketingName"];
    }

    else
    {
      v60 = [(MBCKDevice *)self marketingName];
      [v3 setObject:v60 forKeyedSubscript:@"marketingName"];
    }

    v59 = MBSerialNumber();
  }

  else
  {
    v58 = [(MBCKDevice *)self marketingName];
    [v3 setObject:v58 forKeyedSubscript:@"marketingName"];

    v59 = [(MBCKDevice *)self serialNumber];
  }

  v61 = v59;
  [v3 setObject:v59 forKeyedSubscript:{@"serialNumber", p_isa, v75, v76}];

  v62 = self;
  objc_sync_enter(v62);
  hasBackupEnabledState = v62->_hasBackupEnabledState;
  backupEnabled = v62->_backupEnabled;
  objc_sync_exit(v62);

  if (hasBackupEnabledState)
  {
    v65 = [NSNumber numberWithBool:backupEnabled];
    [v3 setObject:v65 forKeyedSubscript:@"backupEnabled"];
  }

  v66 = [(MBCKDevice *)v62 deviceName];
  [v3 setObject:v66 forKeyedSubscript:@"deviceName"];

  v67 = objc_opt_new();
  if (![(MBCKModel *)v62 isPersistedToServer])
  {
    v68 = MBDeviceUDID_Legacy();
    [v67 setObject:v68 forKeyedSubscript:@"deviceUDID"];
  }

  if (v62->_pendingSnapshotRecordID && ![(MBCKDevice *)v62 resumingSnapshot])
  {
    v69 = [NSNumber numberWithInteger:[(MBCKDevice *)v62 backupReason]];
    [v67 setObject:v69 forKeyedSubscript:@"backupReason"];
  }

  if ([v67 count])
  {
    [v3 setPluginFields:v67];
  }

  v70 = MBGetDefaultLog();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v71 = objc_opt_class();
    *buf = 138543618;
    *v80 = v71;
    *&v80[8] = 2112;
    *&v80[10] = v3;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "=ck-device= %{public}@ record representation: %@", buf, 0x16u);
    objc_opt_class();
    _MBLog();
  }

  v72 = v3;
  return v3;
}

- (void)refreshWithRecord:(id)a3
{
  v86 = a3;
  v3 = [v86 recordID];
  v4 = [v3 recordName];
  v5 = [v4 hasPrefix:@"D:"];

  v6 = [v86 recordID];
  v7 = [v6 recordName];
  v8 = v7;
  if (v5)
  {
    v9 = -[NSString substringFromIndex:](v7, "substringFromIndex:", [@"D:" length]);
    deviceUUID = self->_deviceUUID;
    self->_deviceUUID = v9;
  }

  else
  {
    v11 = self->_deviceUUID;
    self->_deviceUUID = v7;
    v8 = v11;
  }

  v12 = [v86 objectForKeyedSubscript:@"deviceClass"];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v12;

  v14 = [v86 objectForKeyedSubscript:@"deviceColor"];
  deviceColor = self->_deviceColor;
  self->_deviceColor = v14;

  v16 = [v86 objectForKeyedSubscript:@"deviceEnclosureColor"];
  deviceEnclosureColor = self->_deviceEnclosureColor;
  self->_deviceEnclosureColor = v16;

  v18 = [v86 objectForKeyedSubscript:@"deviceCoverGlassColor"];
  deviceCoverGlassColor = self->_deviceCoverGlassColor;
  self->_deviceCoverGlassColor = v18;

  v20 = [v86 objectForKeyedSubscript:@"deviceHousingColor"];
  deviceHousingColor = self->_deviceHousingColor;
  self->_deviceHousingColor = v20;

  v22 = [v86 objectForKeyedSubscript:@"deviceBackingColor"];
  deviceBackingColor = self->_deviceBackingColor;
  self->_deviceBackingColor = v22;

  v24 = [v86 objectForKeyedSubscript:@"hardwareModel"];
  hardwareModel = self->_hardwareModel;
  self->_hardwareModel = v24;

  v26 = [v86 objectForKeyedSubscript:@"marketingName"];
  marketingName = self->_marketingName;
  self->_marketingName = v26;

  v28 = [v86 objectForKeyedSubscript:@"productType"];
  productType = self->_productType;
  self->_productType = v28;

  v30 = [v86 objectForKeyedSubscript:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v30;

  v32 = [v86 objectForKeyedSubscript:@"deviceIdPrefix"];
  assetIDPrefix = self->_assetIDPrefix;
  self->_assetIDPrefix = v32;

  v84 = [v86 objectForKeyedSubscript:@"domainHMACsToRepair"];
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

  v54 = [v86 objectForKeyedSubscript:@"pendingSnapshotID"];
  pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
  self->_pendingSnapshotRecordID = v54;

  v56 = [v86 objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
  self->_pendingSnapshotQuotaReserved = [v56 longLongValue];

  v57 = [v86 objectForKeyedSubscript:@"pendingSnapshotBackupType"];
  self->_pendingSnapshotType = [v57 integerValue];

  v58 = [v86 objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  self->_pendingSnapshotBackupPolicy = [v58 integerValue];

  v59 = [v86 objectForKeyedSubscript:@"pendingSnapshotFormat"];
  self->_pendingSnapshotFormat = [v59 integerValue];

  v60 = [v86 objectForKeyedSubscript:@"pendingSnapshotBuildVersion"];
  pendingSnapshotBuildVersion = self->_pendingSnapshotBuildVersion;
  self->_pendingSnapshotBuildVersion = v60;

  v62 = [v86 objectForKeyedSubscript:@"snapshots"];
  snapshotRefs = self->_snapshotRefs;
  self->_snapshotRefs = v62;

  v64 = [v86 objectForKeyedSubscript:@"snapshotCommittedDates"];
  snapshotCommitDates = self->_snapshotCommitDates;
  self->_snapshotCommitDates = v64;

  v66 = [v86 objectForKeyedSubscript:@"pinnedSnapshots"];
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

  v71 = [v86 objectForKeyedSubscript:@"lastGMSnapshot"];
  latestGMSnapshot = self->_latestGMSnapshot;
  self->_latestGMSnapshot = v71;

  v73 = [v86 objectForKeyedSubscript:@"requiresFullBackup"];

  if (v73)
  {
    v74 = [v86 objectForKeyedSubscript:@"requiresFullBackup"];
    self->_requiresFullBackup = [v74 integerValue];
  }

  v75 = [v86 objectForKeyedSubscript:@"backupEnabled"];
  v76 = self;
  objc_sync_enter(v76);
  if (v75)
  {
    v76->_backupEnabled = [v75 BOOLValue];
    v77 = 1;
  }

  else
  {
    v77 = 0;
    v76->_backupEnabled = 0;
  }

  v76->_hasBackupEnabledState = v77;
  objc_sync_exit(v76);

  v76->_hasFetchedSnapshots = 0;
  v78 = [v86 objectForKeyedSubscript:@"keybags"];
  keybagManager = v76->_keybagManager;
  if (keybagManager)
  {
    [(MBCKKeyBagManager *)keybagManager mergeKeybagRefs:v78];
  }

  else
  {
    v80 = [[MBCKKeyBagManager alloc] initWithDevice:v76 keybagRefs:v78];
    v81 = v76->_keybagManager;
    v76->_keybagManager = v80;
  }

  v87.receiver = v76;
  v87.super_class = MBCKDevice;
  [(MBCKModel *)&v87 refreshWithRecord:v86];
}

- (void)handleSaveComplete:(id)a3 withError:(id)a4 completion:(id)a5
{
  v5.receiver = self;
  v5.super_class = MBCKDevice;
  [(MBCKModel *)&v5 handleSaveComplete:a3 withError:a4 completion:a5];
}

- (id)mergeRecordsWithOperationTracker:(id)a3 serverRecord:(id)a4 originalRecord:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 recordType];
  v10 = [(MBCKDevice *)self recordType];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v12 = self->_pendingSnapshot;
  v13 = v12;
  if (v12 && [(MBCKModel *)v12 isPersistedToServer])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MBCKSnapshot *)v13 snapshotID];
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=ck-device= Not merging with the server record since there's a pending snapshot: %{public}@", buf, 0xCu);

      v29 = [(MBCKSnapshot *)v13 snapshotID];
      _MBLog();
    }

    v16 = v7;
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
    [(MBCKDevice *)self refreshWithRecord:v7];
    v19 = self->_domainHMACsToRepair;
    if (!v19)
    {
      v22 = [v8 objectForKeyedSubscript:@"pendingSnapshotID"];
      pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
      self->_pendingSnapshotRecordID = v22;

      v24 = [v8 objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
      self->_pendingSnapshotQuotaReserved = [v24 longLongValue];

      v25 = [v8 objectForKeyedSubscript:@"pendingSnapshotBackupType"];
      self->_pendingSnapshotType = [v25 integerValue];

      v26 = [v8 objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
      self->_pendingSnapshotBackupPolicy = [v26 integerValue];

      v27 = [v8 objectForKeyedSubscript:@"deviceIdPrefix"];
      assetIDPrefix = self->_assetIDPrefix;
      self->_assetIDPrefix = v27;

      v16 = [(MBCKDevice *)self recordRepresentation];
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

  v16 = 0;
LABEL_16:

LABEL_17:
LABEL_18:

  return v16;
}

- (id)_getRecordIDString
{
  v4 = [(MBCKDevice *)self deviceUUID];

  if (!v4)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBCKDevice.m" lineNumber:757 description:@"Device is missing UUID"];
  }

  v5 = [NSString alloc];
  v6 = [(MBCKDevice *)self deviceUUID];
  v7 = [v5 initWithFormat:@"D:%@", v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MBCKDevice;
  [(MBCKModel *)&v12 encodeWithCoder:v4];
  [v4 encodeObject:self->_deviceUUID forKey:@"DeviceUUID"];
  [v4 encodeObject:self->_deviceClass forKey:@"DeviceClass"];
  [v4 encodeObject:self->_deviceColor forKey:@"DeviceColor"];
  [v4 encodeObject:self->_deviceEnclosureColor forKey:@"DeviceEnclosureColor"];
  [v4 encodeObject:self->_deviceCoverGlassColor forKey:@"DeviceCoverGlassColor"];
  [v4 encodeObject:self->_deviceHousingColor forKey:@"DeviceHousingColor"];
  [v4 encodeObject:self->_deviceBackingColor forKey:@"DeviceBackingColor"];
  [v4 encodeObject:self->_hardwareModel forKey:@"HardwareModel"];
  [v4 encodeObject:self->_marketingName forKey:@"MarketingName"];
  [v4 encodeObject:self->_productType forKey:@"ProductType"];
  [v4 encodeObject:self->_serialNumber forKey:@"SerialNumber"];
  [v4 encodeObject:self->_pendingSnapshotRecordID forKey:@"PendingSnapshotID"];
  [v4 encodeInt64:self->_pendingSnapshotQuotaReserved forKey:@"PendingSnapshotQuotaReserved"];
  [v4 encodeInteger:self->_pendingSnapshotType forKey:@"PendingSnapshotBackupType"];
  [v4 encodeInteger:self->_pendingSnapshotBackupPolicy forKey:@"PendingSnapshotBackupPolicy"];
  [v4 encodeObject:self->_hmacKey forKey:@"HMACKey"];
  [v4 encodeObject:self->_assetIDPrefix forKey:@"AssetIDPrefix"];
  v6 = [(MBCKKeyBagManager *)self->_keybagManager keybagRefs];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  [v4 encodeObject:v7 forKey:@"KeybagRefs"];

  v8 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotRefs requiringSecureCoding:1 error:0];
  [v4 encodeObject:v8 forKey:@"SnapshotRefs"];

  v9 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotCommitDates requiringSecureCoding:1 error:0];
  [v4 encodeObject:v9 forKey:@"SnapshotCommitDates"];

  v10 = self;
  objc_sync_enter(v10);
  backupEnabled = v10->_backupEnabled;
  LODWORD(v6) = v10->_hasBackupEnabledState;
  objc_sync_exit(v10);

  if (v6 == 1)
  {
    [v4 encodeBool:backupEnabled forKey:@"BackupEnabled"];
  }

  objc_autoreleasePoolPop(v5);
}

- (MBCKDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v53.receiver = self;
  v53.super_class = MBCKDevice;
  v6 = [(MBCKModel *)&v53 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
    deviceUUID = v6->_deviceUUID;
    v6->_deviceUUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    deviceClass = v6->_deviceClass;
    v6->_deviceClass = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceColor"];
    deviceColor = v6->_deviceColor;
    v6->_deviceColor = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceEnclosureColor"];
    deviceEnclosureColor = v6->_deviceEnclosureColor;
    v6->_deviceEnclosureColor = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCoverGlassColor"];
    deviceCoverGlassColor = v6->_deviceCoverGlassColor;
    v6->_deviceCoverGlassColor = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceHousingColor"];
    deviceHousingColor = v6->_deviceHousingColor;
    v6->_deviceHousingColor = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceBackingColor"];
    deviceBackingColor = v6->_deviceBackingColor;
    v6->_deviceBackingColor = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HardwareModel"];
    hardwareModel = v6->_hardwareModel;
    v6->_hardwareModel = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MarketingName"];
    marketingName = v6->_marketingName;
    v6->_marketingName = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v6->_productType;
    v6->_productType = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
    serialNumber = v6->_serialNumber;
    v6->_serialNumber = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PendingSnapshotID"];
    pendingSnapshotRecordID = v6->_pendingSnapshotRecordID;
    v6->_pendingSnapshotRecordID = v29;

    v6->_pendingSnapshotQuotaReserved = [v4 decodeInt64ForKey:@"PendingSnapshotQuotaReserved"];
    v6->_pendingSnapshotType = [v4 decodeIntegerForKey:@"PendingSnapshotBackupType"];
    v6->_pendingSnapshotBackupPolicy = [v4 decodeIntegerForKey:@"PendingSnapshotBackupPolicy"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMACKey"];
    hmacKey = v6->_hmacKey;
    v6->_hmacKey = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetIDPrefix"];
    assetIDPrefix = v6->_assetIDPrefix;
    v6->_assetIDPrefix = v33;

    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v35 = [NSArray arrayWithObjects:v56 count:2];
    v36 = [NSSet setWithArray:v35];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KeybagRefs"];
    v38 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v36 fromData:v37 error:0];

    v39 = [[MBCKKeyBagManager alloc] initWithDevice:v6 keybagRefs:v38];
    keybagManager = v6->_keybagManager;
    v6->_keybagManager = v39;

    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v41 = [NSArray arrayWithObjects:v55 count:2];
    v42 = [NSSet setWithArray:v41];
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotRefs"];
    v44 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v42 fromData:v43 error:0];
    snapshotRefs = v6->_snapshotRefs;
    v6->_snapshotRefs = v44;

    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v46 = [NSArray arrayWithObjects:v54 count:2];
    v47 = [NSSet setWithArray:v46];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotCommitDates"];
    v49 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v47 fromData:v48 error:0];
    snapshotCommitDates = v6->_snapshotCommitDates;
    v6->_snapshotCommitDates = v49;

    if ([v4 containsValueForKey:@"BackupEnabled"])
    {
      v6->_backupEnabled = [v4 decodeBoolForKey:@"BackupEnabled"];
      v6->_hasBackupEnabledState = 1;
    }
  }

  v51 = v6;
  objc_autoreleasePoolPop(v5);

  return v51;
}

- (id)_fileListReferencesMatching:(id)a3
{
  v4 = a3;
  v5 = [(MBCKDevice *)self snapshots];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E8550;
  v14[3] = &unk_1003BE510;
  v6 = v4;
  v15 = v6;
  v7 = [v5 indexOfObjectPassingTest:v14];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v9 = [v5 subarrayWithRange:{0, v7 + 1}];
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

- (id)synchronizeFileListsWithOperationTracker:(id)a3 snapshotDirectory:(id)a4 commitID:(id)a5 error:(id *)a6 fetchedFileListBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000E881C;
  v26[3] = &unk_1003BCD40;
  v16 = v14;
  v27 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v26];
  v18 = v17;
  if (v17)
  {
    if (![v17 count] || (-[MBCKDevice hmacKey](self, "hmacKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = MBSynchronizeFileListsWithSnapshotDirectory(v13, v16, v19, v18, v12, 0, a6, v15), v19, (v20 & 1) != 0))
    {
      v21 = [v13 stringByAppendingPathComponent:v16];
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
    v22 = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = v22;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ commitID:%@", buf, 0x16u);
      _MBLog();
    }

    if (a6)
    {
      *a6 = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ commitID:%@", v22, v16];
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (BOOL)synchronizeFileListsWithOperationTracker:(id)a3 snapshotDirectory:(id)a4 snapshotUUID:(id)a5 error:(id *)a6 fetchedFileListBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000E8AF8;
  v25[3] = &unk_1003BCD40;
  v16 = v14;
  v26 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v25];
  v18 = v17;
  if (!v17)
  {
    v22 = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ snapshotUUID:%@", buf, 0x16u);
      _MBLog();
    }

    if (a6)
    {
      *a6 = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ snapshotUUID:%@", v22, v16];
    }

    goto LABEL_11;
  }

  if ([v17 count])
  {
    v19 = [(MBCKDevice *)self hmacKey];
    v20 = MBSynchronizeFileListsWithSnapshotDirectory(v13, v16, v19, v18, v12, 0, a6, v15);

    if ((v20 & 1) == 0)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=ck-device= =sync= Error synchronizing file lists for snapshotUUID: %@", buf, 0xCu);
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