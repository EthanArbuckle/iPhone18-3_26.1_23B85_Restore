@interface MBCKSnapshot
+ (id)_createDomainRecordQuotaFromBaseRecordIDs:(id)a3 domainQuotas:(id)a4;
+ (id)_createDomainReferencesFromBaseRecordIDs:(id)a3 pageCounts:(id)a4 checksums:(id)a5;
+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6;
+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 accountType:(int64_t)a7;
+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 snapshotID:(id)a7;
+ (id)snapshotIDFromSnapshotRecordID:(id)a3;
+ (id)sortedSnapshots:(id)a3;
+ (int64_t)_accountTypeFromAccountClass:(int64_t)a3;
+ (void)_createBaseRecordIDs:(id *)a3 pageCounts:(id *)a4 checksums:(id *)a5 fromReferences:(id)a6;
- (BOOL)addDomainRecordIDsFromPendingSnapshotDB:(id)a3 attemptSummary:(id)a4 error:(id *)a5;
- (BOOL)addFileChange:(id)a3 batchSave:(id)a4 engine:(id)a5 skipped:(BOOL *)a6 error:(id *)a7;
- (BOOL)addManifest:(id)a3;
- (BOOL)fetchManifestsWithOperationTracker:(id)a3 error:(id *)a4;
- (MBCKDevice)device;
- (MBCKSnapshot)initWithCoder:(id)a3;
- (MBCKSnapshot)initWithDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 backupPolicy:(int64_t)a7;
- (MBCKSnapshot)initWithDictionary:(id)a3 cache:(id)a4;
- (NSDate)created;
- (NSString)deviceName;
- (NSString)snapshotID;
- (id)_decodeBackupPropertiesWithValue:(id)a3;
- (id)_getManifestForDomain:(id)a3;
- (id)_getRecordIDString;
- (id)_manifestDomainNameForDomainName:(id)a3;
- (id)description;
- (id)manifestForDomainName:(id)a3;
- (id)recordRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)fetchManifestsWithOperationTracker:(id)a3 referenceFetchProgress:(id)a4 manifestProgress:(id)a5 snapshotCompletion:(id)a6;
- (void)forgetManifests;
- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4;
- (void)refreshWithRecord:(id)a3;
- (void)saveToCacheWithCompletion:(id)a3;
- (void)setDevice:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setSnapshotID:(id)a3;
@end

@implementation MBCKSnapshot

+ (id)sortedSnapshots:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&stru_1003BC268];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (![v9 type] || MBSnapshotTypeIsFull())
        {
          v6 = 0;
        }

        v6 += [v9 quotaUsed];
        v10 = 100000000 * (v6 / 100000000);
        v11 = v6 == v10;
        v12 = v10 + 100000000;
        if (v11)
        {
          v13 = v6;
        }

        else
        {
          v13 = v12;
        }

        [v9 setEstimatedRestoreSize:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6
{
  v9 = a3;
  v10 = [v9 pendingSnapshot];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [[MBCKSnapshot alloc] initWithDevice:v9 reason:a4 type:a5 snapshotFormat:a6 backupPolicy:0];
  }

  v13 = v12;

  return v13;
}

+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 accountType:(int64_t)a7
{
  v12 = a3;
  if (!a7)
  {
    __assert_rtn("+[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:accountType:]", "MBCKSnapshot.m", 69, "accountType != MBAccountTypeUnspecified");
  }

  v13 = v12;
  v14 = [a1 snapshotForDevice:v12 reason:a4 type:a5 snapshotFormat:a6];
  [v14 setAccountType:a7];

  return v14;
}

+ (id)snapshotForDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 snapshotID:(id)a7
{
  v11 = a7;
  v12 = a3;
  v13 = [[MBCKSnapshot alloc] initWithDevice:v12 reason:a4 type:a5 snapshotFormat:a6 backupPolicy:0];

  [(MBCKSnapshot *)v13 setSnapshotID:v11];

  return v13;
}

+ (id)snapshotIDFromSnapshotRecordID:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"S:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"S:", "length")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (MBCKSnapshot)initWithDevice:(id)a3 reason:(int64_t)a4 type:(int64_t)a5 snapshotFormat:(int64_t)a6 backupPolicy:(int64_t)a7
{
  v12 = a3;
  if (!v12)
  {
    __assert_rtn("[MBCKSnapshot initWithDevice:reason:type:snapshotFormat:backupPolicy:]", "MBCKSnapshot.m", 93, "device");
  }

  v13 = v12;
  v14 = [v12 cache];
  v29.receiver = self;
  v29.super_class = MBCKSnapshot;
  v15 = [(MBCKModel *)&v29 initWithRecord:0 cache:v14];

  if (v15)
  {
    v16 = [v13 pendingSnapshotRecordID];
    [(MBCKSnapshot *)v15 setSnapshotID:v16];

    v17 = [v13 pendingSnapshotRecordID];
    if (v17)
    {
      v18 = [v13 pendingSnapshotQuotaReserved] != 0;
    }

    else
    {
      v18 = 0;
    }

    [v13 setResumingSnapshot:v18];

    [(MBCKSnapshot *)v15 setDevice:v13];
    deviceName = v15->_deviceName;
    v15->_deviceName = 0;

    v15->_hasCachedDeviceName = 0;
    v15->_backupReason = a4;
    v15->_type = a5;
    v15->_backupPolicy = a7;
    v20 = MBProductVersion();
    productVersion = v15->_productVersion;
    v15->_productVersion = v20;

    v22 = MBBuildVersion();
    buildVersion = v15->_buildVersion;
    v15->_buildVersion = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    manifestsByDomainName = v15->_manifestsByDomainName;
    v15->_manifestsByDomainName = v24;

    v15->_isInherited = 0;
    v15->_estimatedRestoreSize = -1;
    v15->_accountType = 1;
    v15->_snapshotFormat = a6;
    v26 = [(MBCKSnapshot *)v15 snapshotID];
    commitID = v15->_commitID;
    v15->_commitID = v26;
  }

  return v15;
}

- (MBCKSnapshot)initWithDictionary:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = MBCKSnapshot;
  v8 = [(MBCKModel *)&v34 initWithRecord:0 cache:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"snapshotID"];
    [(MBCKSnapshot *)v8 setSnapshotID:v9];

    v10 = [v6 objectForKeyedSubscript:@"deviceName"];
    [(MBCKSnapshot *)v8 setDeviceName:v10];

    v11 = [v6 objectForKeyedSubscript:@"committed"];
    v8->_committed = [v11 BOOLValue];

    v12 = [v6 objectForKeyedSubscript:@"created"];
    created = v8->_created;
    v8->_created = v12;

    v14 = [v6 objectForKeyedSubscript:@"backupReason"];
    v8->_backupReason = [v14 intValue];

    v15 = [v6 objectForKeyedSubscript:@"backupType"];
    v8->_type = [v15 intValue];

    v16 = [v6 objectForKeyedSubscript:@"backupPolicy"];
    v8->_backupPolicy = [v16 integerValue];

    v17 = [v6 objectForKeyedSubscript:@"buildVersion"];
    buildVersion = v8->_buildVersion;
    v8->_buildVersion = v17;

    v19 = [v6 objectForKeyedSubscript:@"productVersion"];
    productVersion = v8->_productVersion;
    v8->_productVersion = v19;

    v21 = [v6 objectForKeyedSubscript:@"quotaUsed"];
    v8->_quotaUsed = [v21 longLongValue];

    v22 = [v6 objectForKeyedSubscript:@"modificationDate"];
    modificationDate = v8->_modificationDate;
    v8->_modificationDate = v22;

    v24 = [v6 objectForKeyedSubscript:@"backupProperties"];
    backupProperties = v8->_backupProperties;
    v8->_backupProperties = v24;

    v26 = [v6 objectForKeyedSubscript:@"requiredProductVersion"];
    requiredProductVersion = v8->_requiredProductVersion;
    v8->_requiredProductVersion = v26;

    v28 = [v6 objectForKeyedSubscript:@"cameraRollBackupState"];
    v8->_cameraRollBackupState = [v28 integerValue];

    v29 = [v6 objectForKeyedSubscript:@"backupAllowedOnCellular"];
    v8->_isBackupAllowedOnCellular = [v29 BOOLValue];

    v8->_estimatedRestoreSize = -1;
    v30 = [v6 objectForKeyedSubscript:@"accountType"];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 integerValue];
      v8->_accountType = v32;
      if (!v32)
      {
        __assert_rtn("[MBCKSnapshot initWithDictionary:cache:]", "MBCKSnapshot.m", 135, "_accountType != MBAccountTypeUnspecified");
      }
    }

    else
    {
      v8->_accountType = 1;
    }
  }

  return v8;
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

- (void)setDevice:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_device, obj);
    v5 = [obj deviceUUID];
    deviceUUID = self->_deviceUUID;
    self->_deviceUUID = v5;
  }
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (id)manifestForDomainName:(id)a3
{
  v4 = a3;
  [(MBCKSnapshot *)self snapshotFormat];
  if ((MBSnapshotFormatContainsManifests() & 1) == 0)
  {
    __assert_rtn("[MBCKSnapshot manifestForDomainName:]", "MBCKSnapshot.m", 170, "MBSnapshotFormatContainsManifests(self.snapshotFormat)");
  }

  manifestsByDomainName = self->_manifestsByDomainName;
  v6 = [(MBCKSnapshot *)self _manifestDomainNameForDomainName:v4];
  v7 = [(NSMutableDictionary *)manifestsByDomainName objectForKeyedSubscript:v6];

  return v7;
}

- (id)_manifestDomainNameForDomainName:(id)a3
{
  v4 = a3;
  [(MBCKSnapshot *)self snapshotFormat];
  if ((MBSnapshotFormatContainsManifests() & 1) == 0)
  {
    __assert_rtn("[MBCKSnapshot _manifestDomainNameForDomainName:]", "MBCKSnapshot.m", 175, "MBSnapshotFormatContainsManifests(self.snapshotFormat)");
  }

  v5 = v4;
  v6 = v5;
  if ([MBDomain isLegacyPerAppPlaceholderName:v5])
  {
    v7 = [MBDomain containerIDWithName:v5];
    v6 = [MBDomain nameWithAppID:v7];
  }

  return v6;
}

- (id)_getManifestForDomain:(id)a3
{
  v4 = a3;
  [(MBCKSnapshot *)self snapshotFormat];
  if ((MBSnapshotFormatContainsManifests() & 1) == 0)
  {
    __assert_rtn("[MBCKSnapshot _getManifestForDomain:]", "MBCKSnapshot.m", 186, "MBSnapshotFormatContainsManifests(self.snapshotFormat)");
  }

  v5 = [(MBCKSnapshot *)self _manifestDomainNameForDomainName:v4];
  v6 = [(NSMutableDictionary *)self->_manifestsByDomainName objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [(MBCKModel *)self cache];
    v6 = [MBCKManifest manifestWithSnapshot:self domainName:v5 count:1 cache:v7];
  }

  [(NSMutableDictionary *)self->_manifestsByDomainName setObject:v6 forKeyedSubscript:v5];

  return v6;
}

- (BOOL)addFileChange:(id)a3 batchSave:(id)a4 engine:(id)a5 skipped:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    __assert_rtn("[MBCKSnapshot addFileChange:batchSave:engine:skipped:error:]", "MBCKSnapshot.m", 201, "fileChange");
  }

  if (!v13)
  {
    __assert_rtn("[MBCKSnapshot addFileChange:batchSave:engine:skipped:error:]", "MBCKSnapshot.m", 202, "batchSave");
  }

  v15 = v14;
  [(MBCKSnapshot *)self snapshotFormat];
  if ((MBSnapshotFormatContainsManifests() & 1) == 0)
  {
    __assert_rtn("[MBCKSnapshot addFileChange:batchSave:engine:skipped:error:]", "MBCKSnapshot.m", 203, "MBSnapshotFormatContainsManifests(self.snapshotFormat)");
  }

  v16 = [v12 domain];
  v17 = [v16 name];
  v18 = [(MBCKSnapshot *)self _getManifestForDomain:v17];

  if (!v18)
  {
    __assert_rtn("[MBCKSnapshot addFileChange:batchSave:engine:skipped:error:]", "MBCKSnapshot.m", 205, "manifestForDomain");
  }

  if ([v12 changeType])
  {
    v19 = [v12 changeType];
    v20 = MBGetDefaultLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (v19 == 3)
    {
      if (v21)
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Deleting file %@", buf, 0xCu);
        _MBLog();
      }
    }

    else if (v21)
    {
      v23 = [v12 changeTypeString];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Adding file %@ (%@)", buf, 0x16u);

      v25 = [v12 changeTypeString];
      _MBLog();
    }

    v22 = [v18 queueUploadOfFileChange:v12 batchSave:v13 engine:v15 skipped:a6 error:a7];
  }

  else
  {
    v22 = 1;
    if (a6)
    {
      *a6 = 1;
    }
  }

  return v22;
}

- (BOOL)addManifest:(id)a3
{
  v4 = a3;
  [(MBCKSnapshot *)self snapshotFormat];
  if ((MBSnapshotFormatContainsManifests() & 1) == 0)
  {
    __assert_rtn("[MBCKSnapshot addManifest:]", "MBCKSnapshot.m", 224, "MBSnapshotFormatContainsManifests(self.snapshotFormat)");
  }

  v5 = [v4 domainName];

  if (v5)
  {
    manifestsByDomainName = self->_manifestsByDomainName;
    v7 = [v4 domainName];
    [(NSMutableDictionary *)manifestsByDomainName setObject:v4 forKeyedSubscript:v7];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return v5 != 0;
}

- (void)fetchManifestsWithOperationTracker:(id)a3 referenceFetchProgress:(id)a4 manifestProgress:(id)a5 snapshotCompletion:(id)a6
{
  v10 = a3;
  v43 = a4;
  v42 = a5;
  v11 = a6;
  if (!v10)
  {
    __assert_rtn("[MBCKSnapshot fetchManifestsWithOperationTracker:referenceFetchProgress:manifestProgress:snapshotCompletion:]", "MBCKSnapshot.m", 234, "tracker");
  }

  v12 = v11;
  if (!v11)
  {
    __assert_rtn("[MBCKSnapshot fetchManifestsWithOperationTracker:referenceFetchProgress:manifestProgress:snapshotCompletion:]", "MBCKSnapshot.m", 235, "snapshotCompletion");
  }

  [(MBCKSnapshot *)self snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    if (v43)
    {
      goto LABEL_5;
    }

    if (![(MBCKSnapshot *)self hasFetchedManifests])
    {
      v21 = [(MBCKSnapshot *)self manifestIDs];
      v22 = [v21 count];

      if (v22)
      {
LABEL_5:
        +[(MBCKModel *)MBCKManifest];
        v14 = v13;
        v15 = [v10 ckOperationPolicy];
        if (!v15)
        {
          __assert_rtn("[MBCKSnapshot fetchManifestsWithOperationTracker:referenceFetchProgress:manifestProgress:snapshotCompletion:]", "MBCKSnapshot.m", 256, "policy");
        }

        v16 = v15;
        if ([v15 fetchAssets] && (objc_msgSend(v16, "timeoutIntervalForFetch"), v14 == v17))
        {
          v36 = v16;
        }

        else
        {
          v18 = [v16 copy];

          [v18 setFetchAssets:1];
          [v18 setTimeoutIntervalForFetch:v14];
          v57 = 0;
          v19 = [MBCKOperationTracker operationTrackerWithParentTracker:v10 policy:v18 error:&v57];
          v20 = v57;

          if (!v19)
          {
            (v12)[2](v12, v20);
            v10 = 0;
LABEL_27:

            goto LABEL_28;
          }

          v36 = v18;

          v10 = v19;
        }

        v37 = v12;
        if (!self->_manifestsByDomainName)
        {
          v23 = objc_opt_new();
          manifestsByDomainName = self->_manifestsByDomainName;
          self->_manifestsByDomainName = v23;
        }

        v41 = objc_opt_new();
        v38 = v10;
        v20 = [v10 startBatchFetch];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = [(MBCKSnapshot *)self manifestIDs];
        v25 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v40 = *v54;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v54 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v53 + 1) + 8 * i);
              v29 = [(MBCKSnapshot *)self manifestIDsToCounts];
              v30 = [v29 objectForKeyedSubscript:v28];
              v31 = [v30 unsignedIntegerValue];
              v32 = [(MBCKModel *)self cache];
              v33 = [MBCKManifest manifestWithSnapshot:self manifestID:v28 count:v31 cache:v32];

              if (!v33)
              {
                __assert_rtn("[MBCKSnapshot fetchManifestsWithOperationTracker:referenceFetchProgress:manifestProgress:snapshotCompletion:]", "MBCKSnapshot.m", 276, "manifest");
              }

              v48[0] = _NSConcreteStackBlock;
              v48[1] = 3221225472;
              v48[2] = sub_10004EC44;
              v48[3] = &unk_1003BC290;
              v48[4] = v28;
              v49 = v41;
              v50 = v33;
              v51 = self;
              v52 = v42;
              v34 = v33;
              [v34 updateFromServerWithBatchFetch:v20 referenceFetchProgress:v43 manifestCompletion:v48];
            }

            v26 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
          }

          while (v26);
        }

        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10004EF08;
        v44[3] = &unk_1003BC2B8;
        v45 = v41;
        v46 = self;
        v12 = v37;
        v47 = v37;
        v35 = v41;
        v10 = v38;
        [v38 finishBatchFetch:v20 completion:v44];

        v18 = v36;
        goto LABEL_27;
      }

      self->_hasFetchedManifests = 1;
    }
  }

  v12[2](v12, 0);
LABEL_28:
}

- (BOOL)fetchManifestsWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10004F268;
  v17 = sub_10004F278;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004F280;
  v10[3] = &unk_1003BC160;
  v12 = &v13;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(MBCKSnapshot *)self fetchManifestsWithOperationTracker:v6 referenceFetchProgress:0 manifestProgress:0 snapshotCompletion:v10];
  MBSemaphoreWaitForever();
  if (a4)
  {
    *a4 = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)forgetManifests
{
  self->_hasFetchedManifests = 0;
  manifestsByDomainName = self->_manifestsByDomainName;
  self->_manifestsByDomainName = 0;
  _objc_release_x1();
}

- (void)saveToCacheWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MBCKModel *)self cache];
  v5 = [v4 addPendingSnapshot:self];

  if (!v5)
  {
    v6 = [(MBCKModel *)self cache];
    v5 = [v6 commitSnapshot:self];
  }

  v7[2](v7, v5);
}

- (NSString)snapshotID
{
  snapshotID = self->_snapshotID;
  if (!snapshotID)
  {
    v4 = MBRandomUUID();
    v5 = self->_snapshotID;
    self->_snapshotID = v4;

    snapshotID = self->_snapshotID;
  }

  return snapshotID;
}

- (void)setSnapshotID:(id)a3
{
  v6 = a3;
  if ([v6 hasPrefix:@"S:"])
  {
    v4 = [v6 substringFromIndex:{objc_msgSend(@"S:", "length")}];
  }

  else
  {
    v4 = v6;
  }

  snapshotID = self->_snapshotID;
  self->_snapshotID = v4;
}

- (NSDate)created
{
  created = self->_created;
  if (created)
  {
    v3 = created;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MBCKSnapshot *)self snapshotID];
      v7 = [(MBCKSnapshot *)self modificationDate];
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Snapshot %@ is missing created date, using modification date: %@", buf, 0x16u);

      v8 = [(MBCKSnapshot *)self snapshotID];
      v10 = [(MBCKSnapshot *)self modificationDate];
      _MBLog();
    }

    v3 = [(MBCKSnapshot *)self modificationDate];
  }

  return v3;
}

- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v60 = v6;
  if (!v6)
  {
    __assert_rtn("[MBCKSnapshot prepareForSaveWithOperationTracker:completion:]", "MBCKSnapshot.m", 403, "tracker");
  }

  v8 = v7;
  [(MBCKSnapshot *)self snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v57 = v8;
    v65 = self;
    v59 = [(MBCKSnapshot *)self snapshotID];
    v9 = [(MBCKSnapshot *)self manifestsByDomainName];
    v10 = [v9 allValues];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = [v10 count];
      *&buf[12] = 2114;
      *&buf[14] = v59;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting %lu old manifests from snapshot %{public}@", buf, 0x16u);
      v53 = [v10 count];
      v54 = v59;
      _MBLog();
    }

    v12 = dispatch_group_create();
    v13 = [v60 startBatchDelete];
    [v13 setRetryWhenNetworkDisconnected:0];
    dispatch_group_enter(v12);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v14)
    {
      v15 = *v97;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v97 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v96 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          dispatch_group_enter(v12);
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_100050110;
          v94[3] = &unk_1003BC0B0;
          v95 = v12;
          [v17 deletePendingManifestPagesWithBatchDelete:v13 completion:v94];

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
      }

      while (v14);
    }

    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100050118;
    v92[3] = &unk_1003BC010;
    v19 = v12;
    v93 = v19;
    [v60 finishBatchDelete:v13 completion:v92];
    v64 = [v60 startBatchDelete];

    [v64 setRetryWhenNetworkDisconnected:0];
    dispatch_group_enter(v19);
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obja = obj;
    v20 = [obja countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v20)
    {
      v21 = *v89;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v89 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v23 = *(*(&v88 + 1) + 8 * j);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 manifestID];
          v26 = [v23 domainName];
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Reclaiming quota for replaced files from manifest %{public}@ (%@)", buf, 0x16u);
            v53 = v25;
            v54 = v26;
            _MBLog();
          }

          dispatch_group_enter(v19);
          v85[0] = _NSConcreteStackBlock;
          v85[1] = 3221225472;
          v85[2] = sub_1000501F4;
          v85[3] = &unk_1003BC2E0;
          v85[4] = v65;
          v86 = v25;
          v87 = v19;
          v28 = v25;
          [v23 deletePendingCloudFilesWithBatchDelete:v64 completion:v85];

          objc_autoreleasePoolPop(v24);
        }

        v20 = [obja countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v20);
    }

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10005024C;
    v83[3] = &unk_1003BC010;
    v56 = v19;
    v84 = v56;
    [v60 finishBatchDelete:v64 completion:v83];
    MBGroupWaitForever();
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [obja count];
      *buf = 134218242;
      *&buf[4] = v30;
      *&buf[12] = 2114;
      *&buf[14] = v59;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Preparing %lu manifests for snapshot %{public}@", buf, 0x16u);
      v53 = [obja count];
      v54 = v59;
      _MBLog();
    }

    v31 = [v60 startBatchSave];
    v32 = dispatch_group_create();
    v33 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v34 = obja;
    v35 = [v34 countByEnumeratingWithState:&v79 objects:v104 count:16];
    if (v35)
    {
      objb = *v80;
      while (2)
      {
        v36 = 0;
        v58 = v35;
        do
        {
          if (*v80 != objb)
          {
            objc_enumerationMutation(v34);
          }

          v37 = *(*(&v79 + 1) + 8 * v36);
          v38 = [(MBCKModel *)v65 cache:v53];
          v78 = 0;
          v39 = [v38 countFilesForManifest:v37 error:&v78];
          v40 = v78;

          if (v40)
          {
            v41 = v33;
            objc_sync_enter(v41);
            [v41 addObject:v40];
            objc_sync_exit(v41);
LABEL_40:

            goto LABEL_41;
          }

          v40 = [v37 manifestID];
          v41 = [v37 domainName];
          if (v39)
          {
            dispatch_group_enter(v32);
            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = sub_100050328;
            v75[3] = &unk_1003BC308;
            v42 = v33;
            v76 = v42;
            v77 = v32;
            [v37 saveWithBatchSave:v31 completion:v75];
            v43 = v42;
            objc_sync_enter(v43);
            v44 = [v43 count] == 0;
            objc_sync_exit(v43);

            if (!v44)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v45 = MBGetDefaultLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v40;
              *&buf[12] = 2112;
              *&buf[14] = v41;
              *&buf[22] = 2114;
              v101 = v59;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Removing manifest %{public}@ (%@) with 0 files from snapshot %{public}@", buf, 0x20u);
              v54 = v41;
              v55 = v59;
              v35 = v58;
              v53 = v40;
              _MBLog();
            }

            v46 = [(MBCKModel *)v65 cache];
            v47 = [v46 removeManifestAndFiles:v37];

            [(NSMutableDictionary *)v65->_manifestsByDomainName removeObjectForKey:v41];
          }

          v36 = v36 + 1;
        }

        while (v35 != v36);
        v35 = [v34 countByEnumeratingWithState:&v79 objects:v104 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

LABEL_41:

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v101 = sub_10004F268;
    v102 = sub_10004F278;
    v103 = 0;
    dispatch_group_enter(v32);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000503B4;
    v72[3] = &unk_1003BC160;
    v74 = buf;
    v48 = v32;
    v73 = v48;
    [v60 finishBatchSave:v31 completion:v72];
    v49 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050414;
    block[3] = &unk_1003BC330;
    v71 = buf;
    v67 = v33;
    v68 = v59;
    v69 = v65;
    v70 = v57;
    v50 = v59;
    v51 = v33;
    v52 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_group_notify(v48, v49, v52);

    _Block_object_dispose(buf, 8);
    v8 = v57;
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (id)recordRepresentation
{
  v88.receiver = self;
  v88.super_class = MBCKSnapshot;
  v4 = [(MBCKModel *)&v88 recordRepresentation];
  v5 = MBError_ptr;
  v6 = [NSNumber numberWithInteger:[(MBCKSnapshot *)self backupReason]];
  [v4 setObject:v6 forKeyedSubscript:@"backupReason"];

  v7 = [NSNumber numberWithInteger:[(MBCKSnapshot *)self type]];
  [v4 setObject:v7 forKeyedSubscript:@"backupType"];

  snapshotFormat = self->_snapshotFormat;
  if (!MBSnapshotFormatContainsManifests())
  {
    v37 = 0;
    goto LABEL_29;
  }

  v68 = a2;
  v69 = v4;
  v9 = [NSMutableArray alloc];
  v10 = [(MBCKSnapshot *)self manifestsByDomainName];
  v11 = [v10 allKeys];
  v75 = [v9 initWithCapacity:{objc_msgSend(v11, "count")}];

  v12 = [NSMutableArray alloc];
  v13 = [(MBCKSnapshot *)self manifestsByDomainName];
  v14 = [v13 allKeys];
  v74 = [v12 initWithCapacity:{objc_msgSend(v14, "count")}];

  v15 = [NSMutableArray alloc];
  v16 = [(MBCKSnapshot *)self manifestsByDomainName];
  v17 = [v16 allKeys];
  v73 = [v15 initWithCapacity:{objc_msgSend(v17, "count")}];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = [(MBCKSnapshot *)self manifestsByDomainName];
  v76 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v76)
  {
    v70 = 0;
    v18 = 0;
    v72 = *v85;
    do
    {
      for (i = 0; i != v76; i = i + 1)
      {
        v20 = v18;
        if (*v85 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v84 + 1) + 8 * i);
        v22 = [(MBCKSnapshot *)self manifestsByDomainName:v65];
        v23 = [v22 objectForKeyedSubscript:v21];

        v24 = [v23 baseRecordIDString];
        [v75 addObject:v24];

        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 manifestCount]);
        [v74 addObject:v25];

        v26 = [(MBCKModel *)self cache];
        v27 = [v23 manifestID];
        v83 = v18;
        v28 = [v26 checksumForManifest:v27 shouldLog:0 error:&v83];
        v18 = v83;

        v29 = [NSNumber numberWithLongLong:v28];
        [v73 addObject:v29];

        v30 = [(MBCKModel *)self cache];
        v82 = 0;
        v31 = [v30 countFilesForManifest:v23 error:&v82];
        v32 = v82;

        v33 = [(MBCKModel *)self cache];
        v81 = 0;
        v34 = [v33 countDomainHmacForManifest:v23 error:&v81];
        v35 = v81;

        if (!v32 && !v35 && v31 != v34)
        {
          v36 = MBGetDefaultLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *v90 = v21;
            *&v90[8] = 2048;
            *&v90[10] = v31;
            v91 = 2048;
            v92 = v34;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Domain Hmac collision detected on manifest: %@ (%llu files != %llu hmac)", buf, 0x20u);
            v66 = v31;
            v67 = v34;
            v65 = v21;
            _MBLog();
          }

          v70 = 1;
        }
      }

      v76 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v76);
  }

  else
  {
    v70 = 0;
    v18 = 0;
  }

  v38 = [(MBCKModel *)self cache];
  v80 = v18;
  v39 = [v38 countManifestsForSnapshot:self error:&v80];
  v37 = v80;

  if (!v37 && [v75 count] != v39)
  {
    v40 = MBGetDefaultLog();
    v4 = v69;
    v5 = MBError_ptr;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [v75 count];
      *buf = 67109376;
      *v90 = v39;
      *&v90[4] = 2048;
      *&v90[6] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Local cache manifest count (%d) does not match CK manifest (%lu) counts on upload", buf, 0x12u);
      v65 = v39;
      v66 = [v75 count];
      _MBLog();
    }

    goto LABEL_25;
  }

  v4 = v69;
  v5 = MBError_ptr;
  if (v70)
  {
LABEL_25:
    v42 = [(MBCKModel *)self cache:v65];
    [v42 flush];

    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Local cache <-> CK representation mismatch on upload", buf, 2u);
      _MBLog();
    }

    v44 = +[NSAssertionHandler currentHandler];
    [v44 handleFailureInMethod:v68 object:self file:@"MBCKSnapshot.m" lineNumber:571 description:@"Local cache <-> CK representation mismatch on upload"];
  }

  [v4 setObject:v75 forKeyedSubscript:{@"manifestIDs", v65, v66}];
  [v4 setObject:v74 forKeyedSubscript:@"manifestCounts"];
  [v4 setObject:v73 forKeyedSubscript:@"manifestChecksums"];

LABEL_29:
  v45 = self->_snapshotFormat;
  if (MBSnapshotFormatContainsFileLists())
  {
    v46 = [(MBCKSnapshot *)self commitID];
    if (!v46)
    {
      __assert_rtn("[MBCKSnapshot recordRepresentation]", "MBCKSnapshot.m", 581, "commitID");
    }

    v47 = v46;
    [v4 setObject:v46 forKeyedSubscript:@"originalSnapshotID"];
    v48 = [v5[91] numberWithLongLong:self->_snapshotFormat];
    [v4 setObject:v48 forKeyedSubscript:@"snapshotFormat"];

    if ([(NSArray *)self->_modifiedDomainRecordReferences count])
    {
      v78 = 0;
      v79 = 0;
      v77 = 0;
      [objc_opt_class() _createBaseRecordIDs:&v79 pageCounts:&v78 checksums:&v77 fromReferences:self->_modifiedDomainRecordReferences];
      v49 = v79;
      v50 = v78;
      v51 = v77;
      [v4 setObject:v49 forKeyedSubscript:@"domainBaseRecordIDs"];
      [v4 setObject:v50 forKeyedSubscript:@"domainRecordCounts"];
      [v4 setObject:v51 forKeyedSubscript:@"domainRecordCumulativeChecksums"];
    }

    if ([(NSArray *)self->_domainHmacsToRemove count])
    {
      [v4 setObject:self->_domainHmacsToRemove forKeyedSubscript:@"domainHMACsToRemove"];
    }
  }

  if ([(MBCKSnapshot *)self backupPolicy])
  {
    v52 = [v5[91] numberWithInteger:{-[MBCKSnapshot backupPolicy](self, "backupPolicy")}];
    [v4 setObject:v52 forKeyedSubscript:@"backupPolicy"];
  }

  v53 = [(MBCKSnapshot *)self deviceName];
  [v4 setObject:v53 forKeyedSubscript:@"deviceName"];

  v54 = [(MBCKSnapshot *)self buildVersion];
  [v4 setObject:v54 forKeyedSubscript:@"buildVersion"];

  v55 = [(MBCKSnapshot *)self productVersion];
  [v4 setObject:v55 forKeyedSubscript:@"productVersion"];

  v56 = [v5[91] numberWithBool:{-[MBCKSnapshot isBackupAllowedOnCellular](self, "isBackupAllowedOnCellular")}];
  [v4 setObject:v56 forKeyedSubscript:@"backupAllowedOnCellular"];

  if ([(MBCKSnapshot *)self cameraRollBackupState])
  {
    v57 = [v5[91] numberWithInteger:{-[MBCKSnapshot cameraRollBackupState](self, "cameraRollBackupState")}];
    [v4 setObject:v57 forKeyedSubscript:@"cameraRollBackupState"];
  }

  v58 = [(MBCKSnapshot *)self backupProperties];

  if (v58)
  {
    v59 = [(MBCKSnapshot *)self backupProperties];
    v60 = [v4 encryptedValueStore];
    [v60 setObject:v59 forKeyedSubscript:@"backupProperties"];
  }

  v61 = objc_opt_new();
  if ([(MBCKSnapshot *)self isInherited])
  {
    [v61 setObject:&__kCFBooleanTrue forKeyedSubscript:@"inherited"];
  }

  if ([(MBCKSnapshot *)self testCommitRepairChecksumOnLightrailChecksumMismatch])
  {
    [v61 setObject:&__kCFBooleanTrue forKeyedSubscript:@"testCommitRepairChecksumOnLightrailChecksumMismatch"];
  }

  if ([v61 count])
  {
    [v4 setPluginFields:v61];
  }

  v62 = MBGetDefaultLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v63 = objc_opt_class();
    *buf = 138543618;
    *v90 = v63;
    *&v90[8] = 2112;
    *&v90[10] = v4;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%{public}@ record representation: %@", buf, 0x16u);
    objc_opt_class();
    _MBLog();
  }

  return v4;
}

- (id)_decodeBackupPropertiesWithValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
      v4 = [(MBProperties *)[MBCKProperties alloc] initWithData:v3 error:&v9];
      v5 = v9;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to decode backup properties: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    else
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid type for backup properties: %@", buf, 0xCu);
        _MBLog();
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)_accountTypeFromAccountClass:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    __assert_rtn("+[MBCKSnapshot _accountTypeFromAccountClass:]", "MBCKSnapshot.m", 660, "0 && Unexpected value");
  }

  return a3;
}

+ (void)_createBaseRecordIDs:(id *)a3 pageCounts:(id *)a4 checksums:(id *)a5 fromReferences:(id)a6
{
  v6 = a6;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 baseRecordID];
        [v7 addObject:v16];

        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 pageCount]);
        [v8 addObject:v17];

        v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 checksum]);
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v19 = v7;
  *a3 = v7;
  v20 = v8;
  *a4 = v8;
  v21 = v9;
  *a5 = v9;
}

+ (id)_createDomainReferencesFromBaseRecordIDs:(id)a3 pageCounts:(id)a4 checksums:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10 != [v8 count])
  {
    __assert_rtn("+[MBCKSnapshot _createDomainReferencesFromBaseRecordIDs:pageCounts:checksums:]", "MBCKSnapshot.m", 682, "baseRecordIDCount == pageCounts.count");
  }

  if (v10 != [v9 count])
  {
    __assert_rtn("+[MBCKSnapshot _createDomainReferencesFromBaseRecordIDs:pageCounts:checksums:]", "MBCKSnapshot.m", 683, "baseRecordIDCount == checksums.count");
  }

  v11 = [[NSMutableArray alloc] initWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v13 = [v7 objectAtIndexedSubscript:i];
      v14 = [v8 objectAtIndexedSubscript:i];
      v15 = [v14 unsignedLongLongValue];

      v16 = [v9 objectAtIndexedSubscript:i];
      v17 = [v16 unsignedLongLongValue];

      v18 = [[MBCKSnapshotToDomainRecordReference alloc] initWithBaseRecordID:v13 pageCount:v15 checksum:v17];
      [v11 addObject:v18];
    }
  }

  return v11;
}

+ (id)_createDomainRecordQuotaFromBaseRecordIDs:(id)a3 domainQuotas:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    __assert_rtn("+[MBCKSnapshot _createDomainRecordQuotaFromBaseRecordIDs:domainQuotas:]", "MBCKSnapshot.m", 698, "baseRecordIDCount == domainQuotas.count");
  }

  v8 = [[NSMutableArray alloc] initWithCapacity:v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      v11 = [v6 objectAtIndexedSubscript:i];
      v12 = [v11 unsignedLongLongValue];

      v13 = [MBDomainRecordQuota domainRecordQuotaWithBaseRecordID:v10 quota:v12];
      [v8 addObject:v13];
    }
  }

  return v8;
}

- (void)refreshWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  [(MBCKSnapshot *)self setSnapshotID:v6];

  v7 = [v4 objectForKeyedSubscript:@"originalSnapshotID"];
  commitID = self->_commitID;
  self->_commitID = v7;

  v9 = [v4 objectForKeyedSubscript:@"manifestIDs"];
  manifestIDs = self->_manifestIDs;
  self->_manifestIDs = v9;

  v11 = [v4 objectForKeyedSubscript:@"manifestChecksums"];
  manifestChecksums = self->_manifestChecksums;
  self->_manifestChecksums = v11;

  v13 = [v4 objectForKeyedSubscript:@"backupReason"];
  self->_backupReason = [v13 intValue];

  v14 = [v4 objectForKeyedSubscript:@"backupType"];
  self->_type = [v14 intValue];

  v15 = [v4 objectForKeyedSubscript:@"backupPolicy"];
  self->_backupPolicy = [v15 integerValue];

  v16 = [v4 objectForKeyedSubscript:@"snapshotFormat"];
  self->_snapshotFormat = [v16 integerValue];

  v17 = [v4 objectForKeyedSubscript:@"deviceName"];
  [(MBCKSnapshot *)self setDeviceName:v17];

  v18 = [v4 objectForKeyedSubscript:@"buildVersion"];
  buildVersion = self->_buildVersion;
  self->_buildVersion = v18;

  v20 = [v4 objectForKeyedSubscript:@"productVersion"];
  productVersion = self->_productVersion;
  self->_productVersion = v20;

  v22 = [v4 objectForKeyedSubscript:@"quotaUsed"];
  self->_quotaUsed = [v22 longLongValue];

  v23 = [v4 modificationDate];
  modificationDate = self->_modificationDate;
  self->_modificationDate = v23;

  v25 = [v4 encryptedValues];
  v26 = [v25 objectForKeyedSubscript:@"backupProperties"];

  v27 = [(MBCKSnapshot *)self _decodeBackupPropertiesWithValue:v26];
  v28 = [v27 requiredProductVersion];
  requiredProductVersion = self->_requiredProductVersion;
  self->_requiredProductVersion = v28;

  v30 = [v4 objectForKeyedSubscript:@"domainBaseRecordIDs"];
  v76 = [v4 objectForKeyedSubscript:@"domainRecordCounts"];
  v75 = [v4 objectForKeyedSubscript:@"domainRecordCumulativeChecksums"];
  v31 = MBGetDefaultLog();
  v74 = v27;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = [(MBCKSnapshot *)self snapshotID];
    *buf = 138412546;
    v84 = v32;
    v85 = 2112;
    v86 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Snapshot %@ refreshWithRecord->domainBaseRecordIDs: %@", buf, 0x16u);

    v67 = [(MBCKSnapshot *)self snapshotID];
    v68 = v30;
    _MBLog();

    v27 = v74;
  }

  v33 = [objc_opt_class() _createDomainReferencesFromBaseRecordIDs:v30 pageCounts:v76 checksums:v75];
  modifiedDomainRecordReferences = self->_modifiedDomainRecordReferences;
  self->_modifiedDomainRecordReferences = v33;

  v35 = [v4 objectForKeyedSubscript:@"domainQuota"];
  v73 = v35;
  if (v35)
  {
    if (self->_snapshotFormat == 3)
    {
      v35 = [objc_opt_class() _createDomainRecordQuotaFromBaseRecordIDs:v30 domainQuotas:v35];
    }

    else
    {
      v35 = 0;
    }
  }

  domainRecordQuotas = self->_domainRecordQuotas;
  self->_domainRecordQuotas = v35;

  v37 = [v4 objectForKeyedSubscript:@"domainHMACsToRemove"];
  domainHmacsToRemove = self->_domainHmacsToRemove;
  self->_domainHmacsToRemove = v37;

  v39 = [v27 accountType];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 integerValue];
    self->_accountType = v41;
    if (v41)
    {
      goto LABEL_9;
    }

LABEL_33:
    __assert_rtn("[MBCKSnapshot refreshWithRecord:]", "MBCKSnapshot.m", 750, "_accountType != MBAccountTypeUnspecified");
  }

  v65 = [v27 accountClass];
  if (v65)
  {
    v66 = [objc_opt_class() _accountTypeFromAccountClass:{objc_msgSend(v65, "integerValue")}];
  }

  else
  {
    v66 = 1;
  }

  self->_accountType = v66;

  if (!self->_accountType)
  {
    goto LABEL_33;
  }

LABEL_9:
  v69 = v40;
  v70 = v30;
  v71 = v26;
  objc_storeStrong(&self->_backupProperties, v26);
  v42 = [v4 objectForKeyedSubscript:@"cameraRollBackupState"];
  self->_cameraRollBackupState = [v42 integerValue];

  v43 = [v4 objectForKeyedSubscript:@"backupAllowedOnCellular"];
  self->_isBackupAllowedOnCellular = [v43 BOOLValue];

  v72 = v4;
  v44 = [v4 objectForKeyedSubscript:@"manifestCounts"];
  v45 = objc_opt_new();
  manifestIDsToCounts = self->_manifestIDsToCounts;
  self->_manifestIDsToCounts = v45;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v47 = self->_manifestIDs;
  v48 = [(NSArray *)v47 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v48)
  {
    v49 = v48;
    LODWORD(v50) = 0;
    v51 = *v79;
LABEL_11:
    v52 = 0;
    v53 = v50;
    while (1)
    {
      if (*v79 != v51)
      {
        objc_enumerationMutation(v47);
      }

      v54 = *(*(&v78 + 1) + 8 * v52);
      if ([(NSArray *)v44 count:v67]<= v53)
      {
        break;
      }

      v50 = v53 + 1;
      v55 = [(NSArray *)v44 objectAtIndexedSubscript:v53];
      [(NSMutableDictionary *)self->_manifestIDsToCounts setObject:v55 forKeyedSubscript:v54];

      v52 = v52 + 1;
      v53 = v50;
      if (v49 == v52)
      {
        v49 = [(NSArray *)v47 countByEnumeratingWithState:&v78 objects:v82 count:16];
        if (v49)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v56 = [(NSArray *)self->_manifestIDs count];
  if (v56 != [(NSArray *)self->_manifestChecksums count]|| (v57 = [(NSArray *)self->_manifestIDs count], v57 != [(NSArray *)v44 count]))
  {
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      snapshotID = self->_snapshotID;
      *buf = 138412290;
      v84 = snapshotID;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Snapshot refreshWithRecord: %@ parallel array count mismatch", buf, 0xCu);
      v67 = self->_snapshotID;
      _MBLog();
    }

    v60 = MBGetDefaultLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = self->_manifestIDs;
      *buf = 138412290;
      v84 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "manifestIDs: %@", buf, 0xCu);
      v67 = self->_manifestIDs;
      _MBLog();
    }

    v62 = MBGetDefaultLog();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v84 = v44;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "manifestCounts: %@", buf, 0xCu);
      v67 = v44;
      _MBLog();
    }

    v63 = MBGetDefaultLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = self->_manifestChecksums;
      *buf = 138412290;
      v84 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "manifestChecksums: %@", buf, 0xCu);
      v67 = self->_manifestChecksums;
      _MBLog();
    }
  }

  self->_hasFetchedManifests = 0;
  v77.receiver = self;
  v77.super_class = MBCKSnapshot;
  [(MBCKModel *)&v77 refreshWithRecord:v72, v67];
}

- (id)_getRecordIDString
{
  v4 = [(MBCKSnapshot *)self snapshotID];

  if (!v4)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBCKSnapshot.m" lineNumber:780 description:@"Snapshot is missing an identifier"];
  }

  v5 = [NSString alloc];
  v6 = [(MBCKSnapshot *)self snapshotID];
  v7 = [v5 initWithFormat:@"S:%@", v6];

  return v7;
}

- (id)description
{
  v17 = [NSString alloc];
  v18.receiver = self;
  v18.super_class = MBCKSnapshot;
  v16 = [(MBCKSnapshot *)&v18 description];
  v15 = [(MBCKSnapshot *)self snapshotID];
  v14 = [(MBCKSnapshot *)self commitID];
  v13 = [(MBCKSnapshot *)self created];
  v12 = [(MBCKSnapshot *)self backupReason];
  v11 = [(MBCKSnapshot *)self type];
  v10 = [(MBCKSnapshot *)self backupPolicy];
  v9 = [(MBCKSnapshot *)self snapshotFormat];
  v3 = [(MBCKSnapshot *)self deviceName];
  v4 = [(MBCKSnapshot *)self buildVersion];
  v5 = [(MBCKSnapshot *)self productVersion];
  v6 = [(MBCKSnapshot *)self requiredProductVersion];
  v7 = [v17 initWithFormat:@"%@ <%@, commitID=%@, created=%@, backupReason=%d, type=%d, backupPolicy=%ld, format=%lld deviceName=%@, buildVersion=%@, productVersion=%@, requiredProductVersion=%@, cameraRollBackupState=%ld, isBackupAllowedOnCellular=%ld, quotaUsed=%lld, estimatedRestoreSize=%llu, accountType=%ld, modifiedDomainRefs=%lu>", v16, v15, v14, v13, v12, v11, v10, v9, v3, v4, v5, v6, -[MBCKSnapshot cameraRollBackupState](self, "cameraRollBackupState"), -[MBCKSnapshot isBackupAllowedOnCellular](self, "isBackupAllowedOnCellular"), -[MBCKSnapshot quotaUsed](self, "quotaUsed"), -[MBCKSnapshot estimatedRestoreSize](self, "estimatedRestoreSize"), -[MBCKSnapshot accountType](self, "accountType"), -[NSArray count](self->_modifiedDomainRecordReferences, "count")];

  return v7;
}

- (BOOL)addDomainRecordIDsFromPendingSnapshotDB:(id)a3 attemptSummary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 performSanityChecksBeforeCommitWithError:a5])
  {
    v10 = objc_opt_new();
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v12 = [WeakRetained domainHMACsToRepair];

    if ([v12 count])
    {
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = 0;
    }

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100052B6C;
    v54[3] = &unk_1003BC358;
    v15 = v10;
    v55 = v15;
    v16 = v9;
    v56 = v16;
    v17 = v12;
    v57 = v17;
    v18 = v13;
    v58 = v18;
    if (![v8 enumerateUploadedDomains:a5 block:v54])
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    obj = v10;
    v19 = objc_opt_new();
    type = self->_type;
    if (MBSnapshotTypeIsFull())
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_type;
        MBStringForSnapshotType();
        v24 = v23 = v19;
        *buf = 138412290;
        v60 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=commit= Not marking any domains to delete for snapshot type: %@", buf, 0xCu);

        v25 = self->_type;
        v41 = MBStringForSnapshotType();
        _MBLog();

        v19 = v23;
      }
    }

    else
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100052D1C;
      v49[3] = &unk_1003BC380;
      v47 = v19;
      v26 = v19;
      v50 = v26;
      v46 = v16;
      v51 = v46;
      v27 = v17;
      v52 = v27;
      v45 = v18;
      v53 = v45;
      v28 = [v8 enumerateDomainsDeletedSincePreviousSnapshot:a5 block:v49];
      if ([v27 count])
      {
        v44 = v28;
        [v26 unionSet:v27];
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v43 = [v27 allObjects];
          v30 = [v43 sortedArrayUsingSelector:?];
          v31 = [v30 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v60 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "=domain repair= Repaired domain HMACs: %@", buf, 0xCu);

          v32 = [v27 allObjects];
          v33 = [v32 sortedArrayUsingSelector:"compare:"];
          v42 = [v33 componentsJoinedByString:{@", "}];
          _MBLog();
        }

        [v46 setUnknownDomainHMACsToRepair:v45];
        v28 = v44;
      }

      v19 = v47;
      if (!v28)
      {
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v19;
      v36 = [v15 count];
      v37 = [v35 count];
      *buf = 134218240;
      v60 = v36;
      v61 = 2048;
      v62 = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=commit= Finished marking domains in snapshot - modified:%lu deleted:%lu", buf, 0x16u);
      [v15 count];
      [v35 count];
      v19 = v35;
      _MBLog();
    }

    objc_storeStrong(&self->_modifiedDomainRecordReferences, obj);
    v38 = [v19 allObjects];
    domainHmacsToRemove = self->_domainHmacsToRemove;
    self->_domainHmacsToRemove = v38;

    v14 = 1;
    goto LABEL_21;
  }

  v14 = 0;
LABEL_23:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v17.receiver = self;
  v17.super_class = MBCKSnapshot;
  [(MBCKModel *)&v17 encodeWithCoder:v4];
  v6 = [(MBCKSnapshot *)self snapshotID];
  [v4 encodeObject:v6 forKey:@"SnapshotID"];

  v7 = [(MBCKSnapshot *)self deviceUUID];
  [v4 encodeObject:v7 forKey:@"DeviceUUID"];

  [v4 encodeBool:-[MBCKSnapshot committed](self forKey:{"committed"), @"SnapshotCommitted"}];
  v8 = [(MBCKSnapshot *)self created];
  [v4 encodeObject:v8 forKey:@"SnapshotCreated"];

  v9 = [(MBCKSnapshot *)self manifestIDs];
  [v4 encodeObject:v9 forKey:@"ManifestIDs"];

  v10 = [(MBCKSnapshot *)self manifestChecksums];
  [v4 encodeObject:v10 forKey:@"ManifestChecksums"];

  v11 = [(MBCKSnapshot *)self deviceName];
  [v4 encodeObject:v11 forKey:@"DeviceName"];

  v12 = [(MBCKSnapshot *)self buildVersion];
  [v4 encodeObject:v12 forKey:@"BuildVersion"];

  v13 = [(MBCKSnapshot *)self productVersion];
  [v4 encodeObject:v13 forKey:@"ProductVersion"];

  [v4 encodeInteger:-[MBCKSnapshot backupReason](self forKey:{"backupReason"), @"BackupReason"}];
  [v4 encodeInteger:-[MBCKSnapshot type](self forKey:{"type"), @"BackupType"}];
  [v4 encodeInteger:-[MBCKSnapshot backupPolicy](self forKey:{"backupPolicy"), @"BackupPolicy"}];
  [v4 encodeInt64:-[MBCKSnapshot quotaUsed](self forKey:{"quotaUsed"), @"SnapshotQuotaUsed"}];
  v14 = [(MBCKSnapshot *)self modificationDate];
  [v4 encodeObject:v14 forKey:@"SnapshotModificationDate"];

  v15 = [(MBCKSnapshot *)self backupProperties];
  [v4 encodeObject:v15 forKey:@"BackupProperties"];

  v16 = [(MBCKSnapshot *)self requiredProductVersion];
  [v4 encodeObject:v16 forKey:@"RequiredProductVersion"];

  [v4 encodeInteger:-[MBCKSnapshot cameraRollBackupState](self forKey:{"cameraRollBackupState"), @"CameraRollBackupState"}];
  [v4 encodeBool:-[MBCKSnapshot isBackupAllowedOnCellular](self forKey:{"isBackupAllowedOnCellular"), @"IsBackupAllowedOnCellular"}];
  [v4 encodeInteger:-[MBCKSnapshot accountType](self forKey:{"accountType"), @"AccountType"}];
  [v4 encodeInteger:-[MBCKSnapshot snapshotFormat](self forKey:{"snapshotFormat"), @"SnapshotFormat"}];
  objc_autoreleasePoolPop(v5);
}

- (MBCKSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v34.receiver = self;
  v34.super_class = MBCKSnapshot;
  v6 = [(MBCKModel *)&v34 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotID"];
    snapshotID = v6->_snapshotID;
    v6->_snapshotID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
    deviceUUID = v6->_deviceUUID;
    v6->_deviceUUID = v9;

    v6->_committed = [v4 decodeBoolForKey:@"SnapshotCommitted"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotCreated"];
    created = v6->_created;
    v6->_created = v11;

    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v36 count:2];
    v14 = [NSSet setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"ManifestIDs"];
    manifestIDs = v6->_manifestIDs;
    v6->_manifestIDs = v15;

    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v17 = [NSArray arrayWithObjects:v35 count:3];
    v18 = [NSSet setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"ManifestChecksums"];
    manifestChecksums = v6->_manifestChecksums;
    v6->_manifestChecksums = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceName"];
    [(MBCKSnapshot *)v6 setDeviceName:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    buildVersion = v6->_buildVersion;
    v6->_buildVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v6->_productVersion;
    v6->_productVersion = v24;

    v6->_backupReason = [v4 decodeIntegerForKey:@"BackupReason"];
    v6->_type = [v4 decodeIntegerForKey:@"BackupType"];
    v6->_backupPolicy = [v4 decodeIntegerForKey:@"BackupPolicy"];
    v6->_quotaUsed = [v4 decodeInt64ForKey:@"SnapshotQuotaUsed"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotModificationDate"];
    modificationDate = v6->_modificationDate;
    v6->_modificationDate = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BackupProperties"];
    backupProperties = v6->_backupProperties;
    v6->_backupProperties = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequiredProductVersion"];
    requiredProductVersion = v6->_requiredProductVersion;
    v6->_requiredProductVersion = v30;

    v6->_cameraRollBackupState = [v4 decodeIntegerForKey:@"CameraRollBackupState"];
    v6->_isBackupAllowedOnCellular = [v4 decodeBoolForKey:@"IsBackupAllowedOnCellular"];
    v6->_accountType = [v4 decodeIntegerForKey:@"AccountType"];
    v6->_snapshotFormat = [v4 decodeIntegerForKey:@"SnapshotFormat"];
  }

  v32 = v6;
  objc_autoreleasePoolPop(v5);

  return v32;
}

@end