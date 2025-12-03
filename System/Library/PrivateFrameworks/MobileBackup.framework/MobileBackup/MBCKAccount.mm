@interface MBCKAccount
+ (id)_fetchDeviceRecordSnapshots:(id)snapshots includeKeybags:(BOOL)keybags account:(id)account manager:(id)manager tracker:(id)tracker error:(id *)error;
+ (id)fetchAccountWithOperationTracker:(id)tracker cache:(id)cache create:(BOOL)create error:(id *)error;
- (BOOL)addDevice:(id)device error:(id *)error;
- (BOOL)backupsDisabledFromAnotherDeviceForUUID:(id)d;
- (BOOL)deleteDeviceWithOperationTracker:(id)tracker deviceUUID:(id)d error:(id *)error;
- (BOOL)fetchDevicesWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)hasDevice:(id)device;
- (BOOL)setupDeviceWithOperationTracker:(id)tracker deviceUUID:(id)d passcode:(id)passcode hasNewOTAKeyBag:(BOOL *)bag error:(id *)error;
- (MBCKAccount)initWithRecord:(id)record cache:(id)cache;
- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord;
- (id)recordRepresentation;
- (void)fetchDevicesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion;
- (void)refreshWithRecord:(id)record;
- (void)removeDeviceForUUID:(id)d;
- (void)saveToCacheWithCompletion:(id)completion;
@end

@implementation MBCKAccount

+ (id)fetchAccountWithOperationTracker:(id)tracker cache:(id)cache create:(BOOL)create error:(id *)error
{
  createCopy = create;
  trackerCopy = tracker;
  cacheCopy = cache;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKAccount fetchAccountWithOperationTracker:cache:create:error:]", "MBCKAccount.m", 40, "tracker");
  }

  v12 = cacheCopy;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("+[MBCKAccount fetchAccountWithOperationTracker:cache:create:error:]", "MBCKAccount.m", 42, "serviceAccount");
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1000EB528;
  v58 = sub_1000EB538;
  v59 = 0;
  [self timeoutIntervalForFetch];
  v15 = v14;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  v17 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("+[MBCKAccount fetchAccountWithOperationTracker:cache:create:error:]", "MBCKAccount.m", 47, "policy");
  }

  [ckOperationPolicy timeoutIntervalForFetch];
  if (v15 == v18)
  {
    v19 = v17;
LABEL_8:
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_1000EB528;
    v51 = sub_1000EB538;
    v52 = 0;
    v22 = [CKRecordID alloc];
    syncZoneID = [trackerCopy syncZoneID];
    v24 = [v22 initWithRecordName:@"BackupAccount" zoneID:syncZoneID];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000EB540;
    v43[3] = &unk_1003BE5E0;
    v45 = &v54;
    v46 = &v47;
    v25 = dispatch_semaphore_create(0);
    v44 = v25;
    [trackerCopy fetchRecordWithID:v24 completion:v43];
    MBSemaphoreWaitForever();
    if (v48[5])
    {
      v26 = [MBCKAccount alloc];
      v27 = [(MBCKAccount *)v26 initWithRecord:v48[5] cache:v12];
    }

    else if (createCopy && [MBError isError:v55[5] withCode:204])
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ck-account= Resetting the cache - creating a new account", buf, 2u);
        _MBLog();
      }

      v29 = +[MBCKManager sharedInstance];
      [v29 resetCacheWithAccount:account error:0];

      v30 = +[MBCKManager sharedInstance];
      v31 = v55 + 5;
      v42 = v55[5];
      v32 = [v30 openCacheWithAccount:account accessType:1 error:&v42];
      objc_storeStrong(v31, v42);

      if (!v32)
      {
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v55[5];
          *buf = 138412290;
          v61 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ck-account= Failed to open the cache: %@", buf, 0xCu);
          v39 = v55[5];
          _MBLog();
        }

        v12 = 0;
        v27 = 0;
        if (!error)
        {
          goto LABEL_26;
        }

LABEL_25:
        v27 = 0;
        *error = v55[5];
LABEL_26:

        _Block_object_dispose(&v47, 8);
        goto LABEL_27;
      }

      v27 = [[MBCKAccount alloc] initWithRecord:0 cache:v32];
      [(MBCKAccount *)v27 setIsFetched:1];
      v41 = 0;
      v33 = [(MBCKModel *)v27 saveWithOperationTracker:trackerCopy error:&v41];
      v34 = v41;
      v40 = v41;
      if ((v33 & 1) == 0)
      {
        v35 = MBGetDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v61 = v40;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ck-account= Failed to save account record: %@", buf, 0xCu);
          _MBLog();
        }

        objc_storeStrong(v55 + 5, v34);
        v27 = 0;
      }

      v12 = v32;
    }

    else
    {
      v27 = 0;
    }

    if (!error || v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v19 = [v17 copy];

  [v19 setTimeoutIntervalForFetch:v15];
  v20 = v55 + 5;
  obj = v55[5];
  v21 = [MBCKOperationTracker operationTrackerWithParentTracker:trackerCopy policy:v19 error:&obj];
  objc_storeStrong(v20, obj);

  if (v21)
  {
    trackerCopy = v21;
    goto LABEL_8;
  }

  v27 = 0;
  if (error)
  {
    *error = v55[5];
  }

LABEL_27:

  _Block_object_dispose(&v54, 8);

  return v27;
}

- (MBCKAccount)initWithRecord:(id)record cache:(id)cache
{
  v12.receiver = self;
  v12.super_class = MBCKAccount;
  v5 = [(MBCKModel *)&v12 initWithRecord:record cache:cache];
  if (v5)
  {
    v6 = objc_opt_new();
    devicesByUUID = v5->_devicesByUUID;
    v5->_devicesByUUID = v6;

    if (!v5->_hmacKey)
    {
      if (CCRandomGenerateBytes(bytes, 0x14uLL))
      {
        p_super = MBGetDefaultLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "=ck-account= Unable to generate account hmac key", v11, 2u);
          _MBLog();
        }
      }

      else
      {
        v9 = [[NSData alloc] initWithBytes:bytes length:20];
        p_super = &v5->_hmacKey->super;
        v5->_hmacKey = v9;
      }
    }

    if (record)
    {
      [(MBCKAccount *)v5 setIsFetched:1];
    }
  }

  return v5;
}

- (BOOL)hasDevice:(id)device
{
  v3 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:device];
  v4 = v3 != 0;

  return v4;
}

- (void)removeDeviceForUUID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:?];

  if (v4)
  {
    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  [(NSMutableDictionary *)self->_devicesByUUID removeObjectForKey:dCopy];
}

- (BOOL)addDevice:(id)device error:(id *)error
{
  devicesByUUID = self->_devicesByUUID;
  deviceCopy = device;
  deviceUUID = [deviceCopy deviceUUID];
  v8 = [(NSMutableDictionary *)devicesByUUID objectForKeyedSubscript:deviceUUID];

  if (!v8)
  {
    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  v9 = self->_devicesByUUID;
  deviceUUID2 = [deviceCopy deviceUUID];
  [(NSMutableDictionary *)v9 setObject:deviceCopy forKeyedSubscript:deviceUUID2];

  return 1;
}

- (BOOL)deleteDeviceWithOperationTracker:(id)tracker deviceUUID:(id)d error:(id *)error
{
  trackerCopy = tracker;
  dCopy = d;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKAccount deleteDeviceWithOperationTracker:deviceUUID:error:]", "MBCKAccount.m", 161, "tracker");
  }

  v10 = dCopy;
  v11 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:dCopy];
  if (v11)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1000EB528;
    v35 = sub_1000EB538;
    v36 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = [CKModifyRecordsOperation alloc];
    recordID = [v11 recordID];
    v37 = recordID;
    v15 = [NSArray arrayWithObjects:&v37 count:1];
    v16 = [v13 initWithRecordsToSave:0 recordIDsToDelete:v15];

    objc_initWeak(&location, v16);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000EBC88;
    v24 = &unk_1003BE608;
    objc_copyWeak(&v29, &location);
    v28 = &v31;
    selfCopy = self;
    v26 = v10;
    v17 = v12;
    v27 = v17;
    [v16 setModifyRecordsCompletionBlock:&v21];
    [trackerCopy addDatabaseOperation:{v16, v21, v22, v23, v24, selfCopy}];
    MBSemaphoreWaitForever();
    v18 = v32[5];
    v19 = v18 == 0;
    if (error && v18)
    {
      *error = v18;
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v31, 8);
  }

  else if (error)
  {
    [MBError errorWithCode:1 format:@"No such device"];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)fetchDevicesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKAccount fetchDevicesWithOperationTracker:completion:]", "MBCKAccount.m", 195, "tracker");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKAccount fetchDevicesWithOperationTracker:completion:]", "MBCKAccount.m", 196, "completion");
  }

  if ([(MBCKAccount *)self hasFetchedDevices])
  {
    v8[2](v8, 0);
  }

  else
  {
    deviceRefs = [(MBCKAccount *)self deviceRefs];
    v10 = [deviceRefs copy];

    if ([v10 count])
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=ck-account= Fetching devices from the server: %@", buf, 0xCu);
        _MBLog();
      }

      v12 = objc_opt_class();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000EBFF8;
      v13[3] = &unk_1003BE630;
      v13[4] = self;
      v14 = v10;
      v15 = v8;
      [(MBCKModel *)self fetchFromServerWithOperationTracker:trackerCopy childrenOfClass:v12 refs:v14 completion:v13];
    }

    else
    {
      self->_hasFetchedDevices = 1;
      v8[2](v8, 0);
    }
  }
}

- (BOOL)fetchDevicesWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000EB528;
  v17 = sub_1000EB538;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EC318;
  v10[3] = &unk_1003BC160;
  v12 = &v13;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(MBCKAccount *)self fetchDevicesWithOperationTracker:trackerCopy completion:v10];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)backupsDisabledFromAnotherDeviceForUUID:(id)d
{
  dCopy = d;
  v5 = [(MBCKAccount *)self deviceForUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    backupsDisabledFromAnotherDevice = [v5 backupsDisabledFromAnotherDevice];
  }

  else
  {
    cache = [(MBCKModel *)self cache];
    v9 = [cache fetchMostRecentSnapshotForDevice:dCopy error:0];
    backupsDisabledFromAnotherDevice = v9 != 0;
  }

  return backupsDisabledFromAnotherDevice;
}

- (BOOL)setupDeviceWithOperationTracker:(id)tracker deviceUUID:(id)d passcode:(id)passcode hasNewOTAKeyBag:(BOOL *)bag error:(id *)error
{
  trackerCopy = tracker;
  dCopy = d;
  passcodeCopy = passcode;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKAccount setupDeviceWithOperationTracker:deviceUUID:passcode:hasNewOTAKeyBag:error:]", "MBCKAccount.m", 249, "tracker");
  }

  if (!bag)
  {
    __assert_rtn("[MBCKAccount setupDeviceWithOperationTracker:deviceUUID:passcode:hasNewOTAKeyBag:error:]", "MBCKAccount.m", 250, "hasNewOTAKeyBag");
  }

  v15 = passcodeCopy;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKAccount setupDeviceWithOperationTracker:deviceUUID:passcode:hasNewOTAKeyBag:error:]", "MBCKAccount.m", 252, "serviceAccount");
  }

  v17 = account;
  *bag = 0;
  if (![(MBCKAccount *)self hasFetchedDevices]&& ![(MBCKAccount *)self fetchDevicesWithOperationTracker:trackerCopy error:error])
  {
    v34 = 0;
    goto LABEL_77;
  }

  v18 = MBDeviceUUID();
  if (([dCopy isEqualToString:v18] & 1) == 0)
  {
    if (error)
    {
      [MBError errorWithCode:1 format:@"Refusing to set up backups for non-local device"];
      *error = v34 = 0;
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_76;
  }

  bagCopy = bag;
  errorCopy = error;
  accountIdentifier = [v17 accountIdentifier];
  devicesByUUID = [(MBCKAccount *)self devicesByUUID];
  v20 = [devicesByUUID objectForKeyedSubscript:dCopy];

  assetIDPrefix = [(MBCKDevice *)v20 assetIDPrefix];

  v85 = v20;
  selfCopy = self;
  if (!v20)
  {
    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v96 = dCopy;
      v97 = 2114;
      *v98 = accountIdentifier;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=ck-account= No device record found for %{public}@ (%{public}@) - creating a new keybag and assetID prefix", buf, 0x16u);
      assetIDPrefix3 = dCopy;
      v69 = accountIdentifier;
      _MBLog();
    }

    v36 = 0;
    goto LABEL_36;
  }

  v77 = trackerCopy;
  v78 = v18;
  v75 = v15;
  v76 = dCopy;
  v84 = v17;
  persona = [v17 persona];
  volumesToBackUp = [persona volumesToBackUp];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = volumesToBackUp;
  v23 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (!v23)
  {
    v25 = 0;
    goto LABEL_30;
  }

  v24 = v23;
  v25 = 0;
  v26 = *v92;
  do
  {
    for (i = 0; i != v24; i = i + 1)
    {
      if (*v92 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v91 + 1) + 8 * i);
      v90 = 0;
      v29 = [MBKeyBag OTAKeybagUUIDStringWithVolume:v28 error:&v90, assetIDPrefix3, v69, v72, v73];
      v30 = v90;
      if (v29)
      {
        keybagManager = [(MBCKDevice *)v20 keybagManager];
        v32 = [keybagManager hasKeybagWithUUID:v29];

        v25 += v32;
        v33 = MBGetDefaultLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138544130;
        v96 = v29;
        v97 = 1024;
        *v98 = v32;
        *&v98[4] = 2112;
        *&v98[6] = v28;
        v99 = 2114;
        v100 = v84;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=ck-account= Fetched OTAKeyBagUUID:%{public}@(%d) volumeMountPoint:%@ account:%{public}@", buf, 0x26u);
        v72 = v28;
        v73 = v84;
        v20 = v85;
        assetIDPrefix3 = v29;
        v69 = v32;
      }

      else
      {
        v33 = MBGetDefaultLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138412546;
        v96 = v28;
        v97 = 2112;
        *v98 = v30;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ck-account= Failed to fetch keybagUUID string for volume %@: %@", buf, 0x16u);
        assetIDPrefix3 = v28;
        v69 = v30;
      }

      _MBLog();
LABEL_19:
    }

    v24 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  }

  while (v24);
LABEL_30:

  v37 = [obj count];
  v36 = v25 == v37;
  v38 = MBGetDefaultLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    assetIDPrefix2 = [(MBCKDevice *)v85 assetIDPrefix];
    *buf = 138412290;
    v96 = assetIDPrefix2;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=ck-account= Fetched assetID prefix of %@ from device", buf, 0xCu);

    assetIDPrefix3 = [(MBCKDevice *)v85 assetIDPrefix];
    _MBLog();
  }

  dCopy = v76;
  trackerCopy = v77;
  v15 = v75;
  v17 = v84;
  v18 = v78;
  if (v25 == v37)
  {
    self = selfCopy;
    if (assetIDPrefix)
    {
      v40 = 0;
      v34 = 1;
      v41 = v85;
      goto LABEL_75;
    }
  }

  else
  {
    self = selfCopy;
  }

LABEL_36:
  v42 = [(MBCKModel *)self cache:assetIDPrefix3];
  v89 = 0;
  [v42 propertyForKey:@"DeviceID" error:&v89];
  v44 = v43 = self;
  obja = v89;

  if (!v44)
  {
    cache = [(MBCKModel *)v43 cache];
    v51 = [cache setProperty:dCopy forKey:@"DeviceID"];
LABEL_44:

LABEL_45:
    v41 = v85;
    if (!v85)
    {
      v52 = [MBCKDevice alloc];
      cache2 = [(MBCKModel *)selfCopy cache];
      v41 = [(MBCKDevice *)v52 initWithUUID:dCopy cache:cache2 backupEnabled:1];
    }

    v54 = [(MBCKDevice *)v41 backupEnabled:v66];
    [(MBCKDevice *)v41 setBackupEnabled:1];
    if (!v36)
    {
      v55 = MBGetDefaultLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v96 = dCopy;
        v97 = 2114;
        *v98 = accountIdentifier;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "=ck-account= Setting up new keybag(s) for %{public}@ (%{public}@)", buf, 0x16u);
        v67 = dCopy;
        v71 = accountIdentifier;
        _MBLog();
      }

      if (![(MBCKDevice *)v41 setupKeybagWithOperationTracker:trackerCopy passcode:v15 error:errorCopy])
      {
        v40 = obja;
        if ((v54 & 1) == 0)
        {
          [(MBCKDevice *)v41 setBackupEnabled:0];
        }

LABEL_65:
        v34 = 0;
        goto LABEL_74;
      }

      *bagCopy = 1;
    }

    v56 = selfCopy;
    v57 = [(MBCKAccount *)selfCopy hmacKey:v67];
    [(MBCKDevice *)v41 setHmacKey:v57];

    if (!assetIDPrefix)
    {
      v58 = MBDeviceUUID();
      v59 = [v58 substringToIndex:4];

      v60 = MBGetDefaultLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=ck-account= Generated assetID prefix for device: %@", buf, 0xCu);
        v68 = v59;
        _MBLog();
      }

      [(MBCKDevice *)v41 setAssetIDPrefix:v59];
      if (![(MBCKModel *)v41 saveWithOperationTracker:trackerCopy error:errorCopy])
      {
        v62 = MBGetDefaultLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "=ck-account= Failed to save device with assetID prefix to server", buf, 2u);
          _MBLog();
        }

        goto LABEL_69;
      }

      v56 = selfCopy;
    }

    if ([(MBCKAccount *)v56 addDevice:v41 error:errorCopy, v68])
    {
      if ([(MBCKModel *)v56 saveWithOperationTracker:trackerCopy error:errorCopy])
      {
        v34 = 1;
        goto LABEL_73;
      }

      v61 = MBGetDefaultLog();
      v40 = obja;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=ck-account= Unable to save account", buf, 2u);
        _MBLog();
      }

      goto LABEL_65;
    }

LABEL_69:
    v34 = 0;
    goto LABEL_73;
  }

  if ([v44 isEqualToString:dCopy])
  {
    goto LABEL_45;
  }

  v79 = v18;
  v45 = MBGetDefaultLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v96 = v44;
    v97 = 2112;
    *v98 = dCopy;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "=ck-account= Resetting the cache- cached device:%@, deviceUUID:%@", buf, 0x16u);
    v66 = v44;
    v70 = dCopy;
    _MBLog();
  }

  v46 = +[MBCKManager sharedInstance];
  v47 = [v46 resetCacheWithAccount:v17 error:errorCopy];

  v48 = +[MBCKManager sharedInstance];
  v88 = 0;
  v49 = [v48 openCacheWithAccount:v17 accessType:1 error:&v88];
  cache = v88;

  [(MBCKModel *)selfCopy setCache:v49];
  [(MBCKModel *)v85 setCache:v49];
  if (v47)
  {
    if (v49)
    {

      v18 = v79;
      goto LABEL_44;
    }

    if (errorCopy)
    {
      v63 = cache;
      *errorCopy = cache;
    }
  }

  v34 = 0;
  v18 = v79;
  v41 = v85;
LABEL_73:
  v40 = obja;
LABEL_74:

LABEL_75:
LABEL_76:

LABEL_77:
  return v34;
}

- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKAccount prepareForSaveWithOperationTracker:completion:]", "MBCKAccount.m", 366, "completion");
  }

  v7 = completionCopy;
  if (self->_hasFetchedDevices)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    [(MBCKAccount *)self fetchDevicesWithOperationTracker:trackerCopy completion:completionCopy];
  }
}

- (void)saveToCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  cache = [(MBCKModel *)self cache];
  v7 = 0;
  [cache saveAccount:self error:&v7];
  v6 = v7;

  completionCopy[2](completionCopy, v6);
}

- (id)recordRepresentation
{
  v30.receiver = self;
  v30.super_class = MBCKAccount;
  recordRepresentation = [(MBCKModel *)&v30 recordRepresentation];
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_devicesByUUID, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_devicesByUUID;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v8];
          *buf = 138412546;
          v32 = v8;
          v33 = 2112;
          v34 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ck-account= Adding device record reference %@:%@ to account", buf, 0x16u);

          [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v8];
          v22 = v21 = v8;
          _MBLog();
        }

        v11 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v8];
        v12 = [CKReference alloc];
        recordID = [v11 recordID];
        v14 = [v12 initWithRecordID:recordID action:0];
        [v3 addObject:v14];
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v5);
  }

  [recordRepresentation setObject:v3 forKeyedSubscript:@"devices"];
  hmacKey = self->_hmacKey;
  if (!hmacKey)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MBCKAccount.m" lineNumber:391 description:@"No _hmacKey"];

    hmacKey = self->_hmacKey;
  }

  encryptedValues = [recordRepresentation encryptedValues];
  [encryptedValues setObject:hmacKey forKeyedSubscript:@"HMACKey"];

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    *buf = 138543618;
    v32 = v18;
    v33 = 2112;
    v34 = recordRepresentation;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ck-account= %{public}@ record representation: %@", buf, 0x16u);
    objc_opt_class();
    _MBLog();
  }

  return recordRepresentation;
}

- (void)refreshWithRecord:(id)record
{
  self->_hasFetchedDevices = 0;
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"devices"];
  [(MBCKAccount *)self setDeviceRefs:v5];

  encryptedValues = [recordCopy encryptedValues];
  v7 = [encryptedValues objectForKeyedSubscript:@"HMACKey"];
  [(MBCKAccount *)self setHmacKey:v7];

  v8.receiver = self;
  v8.super_class = MBCKAccount;
  [(MBCKModel *)&v8 refreshWithRecord:recordCopy];
}

- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord
{
  trackerCopy = tracker;
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [(MBCKAccount *)self recordType];
  v11 = [recordType isEqualToString:recordType2];

  if (v11)
  {
    v12 = MBDeviceUUID();
    devicesByUUID = [(MBCKAccount *)self devicesByUUID];
    v32 = v12;
    v33 = [devicesByUUID objectForKeyedSubscript:v12];

    v14 = [(NSMutableDictionary *)self->_devicesByUUID mutableCopy];
    v15 = [(NSData *)self->_hmacKey copy];
    [(MBCKAccount *)self refreshWithRecord:recordCopy];
    [(NSMutableDictionary *)self->_devicesByUUID removeAllObjects];
    if (![(MBCKAccount *)self fetchDevicesWithOperationTracker:trackerCopy error:0])
    {
      goto LABEL_10;
    }

    devicesByUUID2 = [(MBCKAccount *)self devicesByUUID];
    v31 = [devicesByUUID2 count];
    [(MBCKAccount *)self deviceRefs];
    v17 = v15;
    v18 = v14;
    v20 = v19 = trackerCopy;
    v21 = [v20 count];

    trackerCopy = v19;
    v14 = v18;
    v15 = v17;

    if (v31 == v21)
    {
      if (!self->_hmacKey)
      {
        objc_storeStrong(&self->_hmacKey, v17);
      }

      if (v33)
      {
        [v33 setHmacKey:self->_hmacKey];
        devicesByUUID = self->_devicesByUUID;
        deviceUUID = [v33 deviceUUID];
        [(NSMutableDictionary *)devicesByUUID setObject:v33 forKeyedSubscript:deviceUUID];
      }

      recordRepresentation = [(MBCKAccount *)self recordRepresentation];
    }

    else
    {
LABEL_10:
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        devicesByUUID3 = [(MBCKAccount *)self devicesByUUID];
        deviceRefs = [(MBCKAccount *)self deviceRefs];
        *buf = 138412546;
        v35 = devicesByUUID3;
        v36 = 2112;
        v37 = deviceRefs;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ck-account= |devicesByUUID| != |deviceRefs| %@ %@", buf, 0x16u);

        devicesByUUID4 = [(MBCKAccount *)self devicesByUUID];
        deviceRefs2 = [(MBCKAccount *)self deviceRefs];
        _MBLog();
      }

      objc_storeStrong(&self->_devicesByUUID, v14);
      objc_storeStrong(&self->_hmacKey, v15);
      recordRepresentation = 0;
    }
  }

  else
  {
    recordRepresentation = 0;
  }

  return recordRepresentation;
}

+ (id)_fetchDeviceRecordSnapshots:(id)snapshots includeKeybags:(BOOL)keybags account:(id)account manager:(id)manager tracker:(id)tracker error:(id *)error
{
  keybagsCopy = keybags;
  snapshotsCopy = snapshots;
  trackerCopy = tracker;
  v15 = [manager openCacheWithAccount:account accessType:1 error:error];
  if (!v15)
  {
    v22 = 0;
    goto LABEL_16;
  }

  v16 = [MBCKAccount fetchAccountWithOperationTracker:trackerCopy cache:v15 error:error];
  v17 = v16;
  if (v16 && [v16 fetchDevicesWithOperationTracker:trackerCopy error:error])
  {
    v18 = [v17 deviceForUUID:snapshotsCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 fetchSnapshotsWithOperationTracker:trackerCopy error:error])
      {
        if (!keybagsCopy || ([v19 keybagManager], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "fetchKeybagsWithOperationTracker:error:", trackerCopy, error), v20, v21))
        {
          v22 = v19;
LABEL_14:

          goto LABEL_15;
        }
      }
    }

    else if (error)
    {
      [MBError errorWithCode:204 format:@"No device record found for %@", snapshotsCopy];
      *error = v22 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    goto LABEL_14;
  }

  v22 = 0;
LABEL_15:

LABEL_16:

  return v22;
}

@end