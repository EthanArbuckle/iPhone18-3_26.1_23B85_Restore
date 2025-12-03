@interface MBCKKeyBag
+ (BOOL)_deviceHasValidKeyBagReferences:(id)references;
+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)device tracker:(id)tracker validationState:(id)state error:(id *)error;
+ (BOOL)setupKeybagForDevice:(id)device operationTracker:(id)tracker passcode:(id)passcode error:(id *)error;
+ (BOOL)unlockKeybag:(id)keybag accountType:(int64_t)type error:(id *)error block:(id)block;
+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)tracker state:(id *)state error:(id *)error;
+ (id)UUIDStringFromRecordID:(id)d;
+ (id)keybagWithDevice:(id)device keybagUUID:(id)d operationTracker:(id)tracker error:(id *)error;
+ (id)recordIDStringWithUUID:(id)d;
+ (id)recordIDStringWithUUIDString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)unlockWithAccountType:(int64_t)type error:(id *)error;
- (CKRecordID)recordID;
- (MBCKDevice)device;
- (MBCKKeyBag)initWithDictionary:(id)dictionary device:(id)device;
- (MBCKKeyBag)initWithRecord:(id)record device:(id)device;
- (MBCKKeyBag)initWithUUID:(id)d data:(id)data secret:(id)secret device:(id)device;
- (MBKeyBag)keybag;
- (NSString)keybagUUIDString;
- (id)OTAKeybagWithError:(id *)error;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (unint64_t)hash;
- (void)lock;
- (void)refreshWithRecord:(id)record;
@end

@implementation MBCKKeyBag

+ (BOOL)setupKeybagForDevice:(id)device operationTracker:(id)tracker passcode:(id)passcode error:(id *)error
{
  deviceCopy = device;
  trackerCopy = tracker;
  passcodeCopy = passcode;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 45, "tracker");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 46, "error");
  }

  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 48, "serviceAccount");
  }

  v12 = account;
  accountIdentifier = [account accountIdentifier];
  keybagManager = [deviceCopy keybagManager];
  if (!keybagManager)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 51, "keybagManager");
  }

  v14 = keybagManager;
  errorCopy = error;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    deviceUUID = [deviceCopy deviceUUID];
    *buf = 138543618;
    v126 = deviceUUID;
    v127 = 2114;
    v128 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=keybag= Setting up a new keybag for device %{public}@ (%{public}@)", buf, 0x16u);

    deviceUUID2 = [deviceCopy deviceUUID];
    v82 = accountIdentifier;
    _MBLog();
  }

  v95 = v14;
  v87 = trackerCopy;
  v88 = deviceCopy;

  v86 = v12;
  persona = [v12 persona];
  [persona volumesToBackUp];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v121 = 0u;
  v17 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v119;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v119 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v118 + 1) + 8 * i);
        v117 = 0;
        v23 = [MBKeyBag OTAKeybagUUIDStringWithVolume:v22 error:&v117, deviceUUID2, v82];
        v24 = v117;
        if (!v23 && ![MBError isError:v24 withCode:4])
        {
          v27 = v24;
          v28 = 0;
          v29 = deviceCopy;
          *errorCopy = v24;
          v30 = obj;
          v31 = v87;
LABEL_26:
          v32 = v86;
LABEL_27:
          v33 = v95;
          goto LABEL_28;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v126 = v23;
          v127 = 2112;
          v128 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=keybag= Fetched OTAKeybagUUID:%{public}@ for %@", buf, 0x16u);
          deviceUUID2 = v23;
          v82 = v22;
          _MBLog();
        }

        if (v23 && [v95 hasKeybagWithUUID:v23])
        {
          ++v19;
        }

        else
        {
          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v126 = accountIdentifier;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=keybag= Replacing existing backup keybag (%{public}@)", buf, 0xCu);
            deviceUUID2 = accountIdentifier;
            _MBLog();
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v19 == [obj count])
  {
    v28 = 1;
    v31 = v87;
    v29 = deviceCopy;
    v32 = v86;
    v33 = v95;
    goto LABEL_32;
  }

  v35 = MBGetDefaultLog();
  v33 = v95;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v126 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=keybag= Registering new keybags for (%{public}@)", buf, 0xCu);
    deviceUUID2 = accountIdentifier;
    _MBLog();
  }

  v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v24 = obj;
  v36 = [v24 countByEnumeratingWithState:&v113 objects:v131 count:16];
  v29 = deviceCopy;
  v91 = v30;
  if (v36)
  {
    v37 = v36;
    v93 = *v114;
    while (2)
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v114 != v93)
        {
          objc_enumerationMutation(v24);
        }

        v39 = *(*(&v113 + 1) + 8 * j);
        v40 = MBGetDefaultLog();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
        if (passcodeCopy)
        {
          if (v41)
          {
            *buf = 138543362;
            v126 = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=keybag= Using passcode as keybag secret for %{public}@", buf, 0xCu);
            deviceUUID2 = v39;
            _MBLog();
          }

          v42 = [passcodeCopy dataUsingEncoding:4];
        }

        else
        {
          if (v41)
          {
            *buf = 138543362;
            v126 = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=keybag= Creating random secret for %{public}@", buf, 0xCu);
            deviceUUID2 = v39;
            _MBLog();
          }

          v42 = +[MBKeyBag randomSecret];
        }

        v43 = v42;
        if (!v42)
        {
          [MBError errorWithCode:1 format:@"Failed to generate secret for keybag"];
          *errorCopy = v28 = 0;
          v32 = v86;
          v31 = v87;
          goto LABEL_27;
        }

        v112 = 0;
        v44 = [MBKeyBag registerOTAKeyBagWithVolume:v39 secret:v42 keybagUUIDData:&v112 error:errorCopy];
        v45 = v112;
        v46 = v45;
        if (!v44)
        {
          v54 = MBGetDefaultLog();
          v31 = v87;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = *errorCopy;
            *buf = 138543874;
            v126 = v39;
            v127 = 2114;
            v128 = accountIdentifier;
            v129 = 2112;
            v130 = v55;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=keybag= Failed to register keybag for volume %{public}@ (%{public}@): %@", buf, 0x20u);
            v84 = *errorCopy;
            _MBLog();
          }

          v28 = 0;
          goto LABEL_26;
        }

        v47 = [v45 base64EncodedStringWithOptions:0];
        v48 = MBGetDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v44 length];
          *buf = 138412802;
          v126 = v39;
          v127 = 2048;
          v128 = v49;
          v129 = 2114;
          v130 = v47;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "=keybag= Registered a new keybag for %@ (%lu bytes): %{public}@", buf, 0x20u);
          v82 = [v44 length];
          v83 = v47;
          deviceUUID2 = v39;
          _MBLog();
        }

        v50 = [[MBCKKeyBag alloc] initWithUUID:v46 data:v44 secret:v43 device:v88];
        v30 = v91;
        [v91 addObject:v50];
      }

      v33 = v95;
      v37 = [v24 countByEnumeratingWithState:&v113 objects:v131 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v31 = v87;
  if (MBIsInternalInstall())
  {
    v51 = +[MBBehaviorOptions sharedOptions];
    if ([v51 isAutomation])
    {
      v52 = +[MBBehaviorOptions sharedOptions];
      forceInvalidKeyBagReference = [v52 forceInvalidKeyBagReference];

      if (forceInvalidKeyBagReference)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=keybag= !!!! WARNING: Intentionally sending an invalid keybag reference during automation run. This will intentionally create an unrestorable snapshot", buf, 2u);
          _MBLog();
        }

        v32 = v86;
        goto LABEL_73;
      }
    }

    else
    {
    }
  }

  v24 = dispatch_group_create();
  v56 = [[MBCKBatchSave alloc] initWithOperationTracker:v87];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v57 = v30;
  v58 = [v57 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v109;
    do
    {
      for (k = 0; k != v59; k = k + 1)
      {
        if (*v109 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v108 + 1) + 8 * k);
        dispatch_group_enter(v24);
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_100067BB0;
        v106[3] = &unk_1003BC308;
        v106[4] = v62;
        v107 = v24;
        [v62 saveWithBatchSave:v56 completion:v106];
      }

      v59 = [v57 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v59);
  }

  v105 = 0;
  v63 = [(MBCKBatchSave *)v56 finishWithError:&v105];
  v64 = v105;
  v65 = v64;
  if ((v63 & 1) == 0)
  {
    v72 = MBGetDefaultLog();
    v29 = v88;
    v32 = v86;
    v33 = v95;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v126 = v65;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "=keybag= Failed to batch save keybags records to server %@", buf, 0xCu);
      _MBLog();
    }

    v73 = v65;
    *errorCopy = v65;

    v28 = 0;
    v30 = v57;
    v31 = v87;
    goto LABEL_28;
  }

  v31 = v87;
  v29 = v88;
  v32 = v86;
  v33 = v95;
  v30 = v91;
LABEL_73:

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v30 = v30;
  v66 = [v30 countByEnumeratingWithState:&v101 objects:v123 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v102;
    do
    {
      for (m = 0; m != v67; m = m + 1)
      {
        if (*v102 != v68)
        {
          objc_enumerationMutation(v30);
        }

        [v33 addKeybag:{*(*(&v101 + 1) + 8 * m), deviceUUID2, v82, v83}];
      }

      v67 = [v30 countByEnumeratingWithState:&v101 objects:v123 count:16];
    }

    while (v67);
  }

  recordRepresentation = [v29 recordRepresentation];
  v100 = 0;
  v71 = [v31 saveRecord:recordRepresentation delegate:0 error:&v100];
  v24 = v100;

  if (v71)
  {
    v28 = 1;
  }

  else
  {
    v74 = MBGetDefaultLog();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v126 = accountIdentifier;
      v127 = 2112;
      v128 = v24;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "=keybag= Failed to save device record with new keybag references (%{public}@): %@", buf, 0x16u);
      deviceUUID2 = accountIdentifier;
      v82 = v24;
      _MBLog();
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v30 = v30;
    v75 = [v30 countByEnumeratingWithState:&v96 objects:v122 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v97;
      do
      {
        for (n = 0; n != v76; n = n + 1)
        {
          if (*v97 != v77)
          {
            objc_enumerationMutation(v30);
          }

          keybagUUIDString = [*(*(&v96 + 1) + 8 * n) keybagUUIDString];
          [v33 removeKeybagWithUUID:keybagUUIDString];
        }

        v76 = [v30 countByEnumeratingWithState:&v96 objects:v122 count:16];
      }

      while (v76);
    }

    v80 = v24;
    v28 = 0;
    *errorCopy = v24;
  }

LABEL_28:

LABEL_32:
  return v28;
}

+ (id)keybagWithDevice:(id)device keybagUUID:(id)d operationTracker:(id)tracker error:(id *)error
{
  deviceCopy = device;
  dCopy = d;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag keybagWithDevice:keybagUUID:operationTracker:error:]", "MBCKKeyBag.m", 153, "tracker");
  }

  v13 = trackerCopy;
  if (!deviceCopy)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  if (!dCopy)
  {
    if (error)
    {
      [MBError errorWithCode:1 format:@"Invalid keybag UUID (%@)", 0];
      *error = v26 = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000680F0;
  v47 = sub_100068100;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000680F0;
  v41 = sub_100068100;
  v42 = 0;
  v14 = dispatch_semaphore_create(0);
  v15 = [CKRecordID alloc];
  v16 = [self recordIDStringWithUUID:dCopy];
  syncZoneID = [v13 syncZoneID];
  v18 = [v15 initWithRecordName:v16 zoneID:syncZoneID];

  v19 = [NSPredicate predicateWithFormat:@"recordID==%@", v18];
  v20 = [CKQuery alloc];
  v21 = +[(MBCKModel *)MBCKKeyBag];
  v22 = [v20 initWithRecordType:v21 predicate:v19];

  v23 = [[CKQueryOperation alloc] initWithQuery:v22];
  syncZoneID2 = [v13 syncZoneID];
  [v23 setZoneID:syncZoneID2];

  objc_initWeak(&location, v23);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100068108;
  v33[3] = &unk_1003BC7C8;
  v35 = &v43;
  v34 = deviceCopy;
  [v23 setRecordFetchedBlock:v33];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10006817C;
  v28[3] = &unk_1003BC7F0;
  objc_copyWeak(&v32, &location);
  v31 = &v37;
  v29 = dCopy;
  v25 = v14;
  v30 = v25;
  [v23 setQueryCompletionBlock:v28];
  [v13 addDatabaseOperation:v23];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v38[5];
  }

  v26 = v44[5];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

LABEL_10:

  return v26;
}

+ (id)recordIDStringWithUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  v5 = [self recordIDStringWithUUIDString:v4];

  return v5;
}

+ (id)recordIDStringWithUUIDString:(id)string
{
  stringCopy = string;
  stringCopy = [[NSString alloc] initWithFormat:@"%@%@", @"K:", stringCopy];

  return stringCopy;
}

+ (id)UUIDStringFromRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName substringFromIndex:{objc_msgSend(@"K:", "length")}];

  return v4;
}

- (MBCKKeyBag)initWithRecord:(id)record device:(id)device
{
  recordCopy = record;
  deviceCopy = device;
  cache = [deviceCopy cache];
  v11.receiver = self;
  v11.super_class = MBCKKeyBag;
  v9 = [(MBCKModel *)&v11 initWithRecord:recordCopy cache:cache];

  if (v9)
  {
    objc_storeWeak(&v9->_device, deviceCopy);
    [(MBCKKeyBag *)v9 refreshWithRecord:recordCopy];
  }

  return v9;
}

- (MBCKKeyBag)initWithUUID:(id)d data:(id)data secret:(id)secret device:(id)device
{
  dCopy = d;
  dataCopy = data;
  secretCopy = secret;
  v14 = [(MBCKKeyBag *)self initWithRecord:0 device:device];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keybagData, data);
    objc_storeStrong(&v15->_keybagUUID, d);
    objc_storeStrong(&v15->_secret, secret);
  }

  return v15;
}

- (MBCKKeyBag)initWithDictionary:(id)dictionary device:(id)device
{
  dictionaryCopy = dictionary;
  deviceCopy = device;
  v8 = [(MBCKKeyBag *)self initWithRecord:0 device:deviceCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_device, deviceCopy);
    v10 = [dictionaryCopy objectForKeyedSubscript:@"keybagUUID"];
    keybagUUID = v9->_keybagUUID;
    v9->_keybagUUID = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"keybagData"];
    keybagData = v9->_keybagData;
    v9->_keybagData = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"secret"];
    secret = v9->_secret;
    v9->_secret = v14;
  }

  return v9;
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [recordName substringFromIndex:{objc_msgSend(@"K:", "length")}];

  if (v7)
  {
    v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    keybagUUID = self->_keybagUUID;
    self->_keybagUUID = v8;
  }

  encryptedValues = [recordCopy encryptedValues];
  v11 = [encryptedValues objectForKeyedSubscript:@"keybagData"];

  if (v11)
  {
    objc_storeStrong(&self->_keybagData, v11);
  }

  encryptedValues2 = [recordCopy encryptedValues];
  v13 = [encryptedValues2 objectForKeyedSubscript:@"secret"];

  if (v13)
  {
    objc_storeStrong(&self->_secret, v13);
  }

  v14.receiver = self;
  v14.super_class = MBCKKeyBag;
  [(MBCKModel *)&v14 refreshWithRecord:recordCopy];
}

- (NSString)keybagUUIDString
{
  v3 = objc_opt_class();
  keybagUUID = self->_keybagUUID;

  return [v3 UUIDStringForKeyBagUUID:keybagUUID];
}

- (id)OTAKeybagWithError:(id *)error
{
  keybag = self->_keybag;
  if (!keybag)
  {
    keybagData = [(MBCKKeyBag *)self keybagData];
    secret = [(MBCKKeyBag *)self secret];
    v8 = [MBKeyBag OTAKeyBagWithData:keybagData secret:secret error:error];
    v9 = self->_keybag;
    self->_keybag = v8;

    keybag = self->_keybag;
  }

  v10 = keybag;

  return v10;
}

- (MBKeyBag)keybag
{
  v9 = 0;
  v3 = [(MBCKKeyBag *)self OTAKeybagWithError:&v9];
  v4 = v9;

  if (!v3)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=keybag= Error opening keybag with data: %@", buf, 0xCu);
      _MBLog();
    }
  }

  keybag = self->_keybag;
  v7 = keybag;

  return keybag;
}

- (BOOL)unlockWithAccountType:(int64_t)type error:(id *)error
{
  v6 = self->_keybag;
  v7 = v6;
  if (v6 && [(MBKeyBag *)v6 isUnlocked])
  {
    v8 = 1;
    v9 = v7;
  }

  else
  {
    keybagData = [(MBCKKeyBag *)self keybagData];
    secret = [(MBCKKeyBag *)self secret];
    v9 = [MBKeyBag OTAKeyBagWithData:keybagData secret:secret error:error];

    if (v9)
    {
      secret2 = [(MBCKKeyBag *)self secret];
      v20 = 0;
      v8 = [v9 unlockWithSecret:secret2 error:&v20];
      v13 = v20;

      if (v8)
      {
        objc_storeStrong(&self->_keybag, v9);
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
          *buf = 138543362;
          v22 = keybagUUIDString;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=keybag= Unlocked keybag %{public}@", buf, 0xCu);

          keybagUUIDString2 = [(MBCKKeyBag *)self keybagUUIDString];
          _MBLog();
        }
      }

      else
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=keybag= Failed to unlock key bag: %{public}@", buf, 0xCu);
          _MBLog();
        }

        if (error)
        {
          v17 = v13;
          *error = v13;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)lock
{
  keybag = self->_keybag;
  if (keybag)
  {
    self->_keybag = 0;

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
      *buf = 138543362;
      v8 = keybagUUIDString;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "=keybag= Locked keybag %{public}@", buf, 0xCu);

      keybagUUIDString2 = [(MBCKKeyBag *)self keybagUUIDString];
      _MBLog();
    }
  }
}

- (CKRecordID)recordID
{
  v3 = [CKRecordID alloc];
  keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
  v5 = [MBCKKeyBag recordIDStringWithUUIDString:keybagUUIDString];
  v6 = +[MBCKDatabaseManager syncZoneID];
  v7 = [v3 initWithRecordName:v5 zoneID:v6];

  return v7;
}

- (unint64_t)hash
{
  keybagUUID = [(MBCKKeyBag *)self keybagUUID];
  v4 = [keybagUUID hash];
  keybagData = [(MBCKKeyBag *)self keybagData];
  v6 = [keybagData hash] ^ v4;
  secret = [(MBCKKeyBag *)self secret];
  v8 = [secret hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    keybagUUID = [(MBCKKeyBag *)self keybagUUID];
    keybagUUID2 = [v5 keybagUUID];
    if ([keybagUUID isEqualToData:keybagUUID2])
    {
      keybagData = [(MBCKKeyBag *)self keybagData];
      keybagData2 = [v5 keybagData];
      if ([keybagData isEqualToData:keybagData2])
      {
        secret = [(MBCKKeyBag *)self secret];
        secret2 = [v5 secret];
        v12 = [secret isEqualToData:secret2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)recordRepresentation
{
  v9.receiver = self;
  v9.super_class = MBCKKeyBag;
  recordRepresentation = [(MBCKModel *)&v9 recordRepresentation];
  keybagData = self->_keybagData;
  encryptedValues = [recordRepresentation encryptedValues];
  [encryptedValues setObject:keybagData forKeyedSubscript:@"keybagData"];

  secret = self->_secret;
  encryptedValues2 = [recordRepresentation encryptedValues];
  [encryptedValues2 setObject:secret forKeyedSubscript:@"secret"];

  return recordRepresentation;
}

- (id)_getRecordIDString
{
  keybagUUID = [(MBCKKeyBag *)self keybagUUID];

  if (!keybagUUID)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MBCKKeyBag.m" lineNumber:333 description:@"Keybag is missing a UUID"];
  }

  keybagUUID2 = [(MBCKKeyBag *)self keybagUUID];
  v6 = [MBCKKeyBag recordIDStringWithUUID:keybagUUID2];

  return v6;
}

+ (BOOL)unlockKeybag:(id)keybag accountType:(int64_t)type error:(id *)error block:(id)block
{
  keybagCopy = keybag;
  blockCopy = block;
  if (!keybagCopy)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 350, "keybag");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 351, "error");
  }

  v12 = blockCopy;
  if (!blockCopy)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 352, "block");
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000694A4;
  v37[3] = &unk_1003BBFE8;
  v37[4] = self;
  if (qword_100421628 != -1)
  {
    dispatch_once(&qword_100421628, v37);
  }

  dispatch_semaphore_wait(qword_100421610, 0xFFFFFFFFFFFFFFFFLL);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000680F0;
  v35 = sub_100068100;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000680F0;
  v29 = sub_100068100;
  v30 = 0;
  v13 = qword_100421618;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069550;
  block[3] = &unk_1003BC818;
  v14 = keybagCopy;
  v21 = v14;
  v22 = &v31;
  v23 = &v25;
  typeCopy = type;
  dispatch_sync(v13, block);
  v15 = v32[5];
  if (v15)
  {
    keybag = [v32[5] keybag];
    if (!keybag)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 440, "keybag");
    }

    (v12)[2](v12, keybag);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000699CC;
    v19[3] = &unk_1003BC840;
    v19[4] = &v31;
    dispatch_sync(qword_100421618, v19);
  }

  else
  {
    v17 = v26[5];
    if (!v17)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 436, "unlockError");
    }

    *error = v17;
  }

  dispatch_semaphore_signal(qword_100421610);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 != 0;
}

+ (BOOL)_deviceHasValidKeyBagReferences:(id)references
{
  referencesCopy = references;
  keybagManager = [referencesCopy keybagManager];
  keybagRefs = [keybagManager keybagRefs];
  v6 = [keybagRefs copy];

  keybagManager2 = [referencesCopy keybagManager];

  keybagsByUUIDString = [keybagManager2 keybagsByUUIDString];
  v9 = [keybagsByUUIDString copy];

  v10 = [v6 count];
  LOBYTE(v10) = v10 == [v9 count];

  return v10;
}

+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)device tracker:(id)tracker validationState:(id)state error:(id *)error
{
  deviceCopy = device;
  trackerCopy = tracker;
  stateCopy = state;
  account = [trackerCopy account];
  persona = [account persona];

  if (!persona)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 462, "persona");
  }

  if (!stateCopy)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 464, "validationState");
  }

  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 466, "device");
  }

  keybagManager = [deviceCopy keybagManager];
  hasFetchedKeybags = [keybagManager hasFetchedKeybags];

  if (hasFetchedKeybags)
  {
    errorCopy = error;
    v53 = persona;
    v54 = stateCopy;
    v55 = trackerCopy;
    keybagManager2 = [deviceCopy keybagManager];
    keybagRefs = [keybagManager2 keybagRefs];
    v18 = [keybagRefs copy];

    keybagManager3 = [deviceCopy keybagManager];
    keybagsByUUIDString = [keybagManager3 keybagsByUUIDString];
    v21 = [keybagsByUUIDString copy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v18;
    v22 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    v56 = deviceCopy;
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = 0;
      v26 = *v60;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(obj);
          }

          recordID = [*(*(&v59 + 1) + 8 * i) recordID];
          v29 = [MBCKKeyBag UUIDStringFromRecordID:recordID];

          v30 = [v21 objectForKeyedSubscript:v29];
          v31 = MBGetDefaultLog();
          v32 = v31;
          if (v30)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              keybagData = [v30 keybagData];
              v34 = [keybagData length];
              *buf = 138412546;
              v64 = v29;
              v65 = 2048;
              v66 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=keybag= Fetched keybag %@ (%llu bytes)", buf, 0x16u);

              keybagData2 = [v30 keybagData];
              v50 = v29;
              v51 = [keybagData2 length];
              _MBLog();

              deviceCopy = v56;
            }

            ++v25;
          }

          else
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v64 = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=keybag= Found invalid keybag ref:%@", buf, 0xCu);
              v50 = v29;
              _MBLog();
            }

            keybagManager4 = [deviceCopy keybagManager];
            [keybagManager4 removeKeybagWithUUID:v29];

            ++v24;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    keybagManager5 = [deviceCopy keybagManager];
    keybagsByUUIDString2 = [keybagManager5 keybagsByUUIDString];
    v40 = [keybagsByUUIDString2 count];
    keybagManager6 = [deviceCopy keybagManager];
    keybagRefs2 = [keybagManager6 keybagRefs];
    if (v40 != [keybagRefs2 count])
    {
      __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 490, "device.keybagManager.keybagsByUUIDString.count == device.keybagManager.keybagRefs.count");
    }

    stateCopy = v54;
    v43 = v24;
    persona = v53;
    if ([v54 trackValidationFailureWithInvalidKeyBagCount:v43 validKeyBagCount:v25 persona:v53 error:errorCopy])
    {
      deviceCopy = v56;
      recordRepresentation = [v56 recordRepresentation];
      v58 = 0;
      trackerCopy = v55;
      v45 = [v55 saveRecord:recordRepresentation delegate:0 error:&v58];
      v46 = v58;

      if (v45)
      {
        v37 = [v54 trackRepairedDeviceRecordWithPersona:v53 error:errorCopy];
      }

      else
      {
        if (errorCopy)
        {
          v47 = v46;
          *errorCopy = v46;
        }

        v48 = MBGetDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v64 = v46;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=keybag= Failed to save repaired device record: %@", buf, 0xCu);
          _MBLog();
        }

        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
      deviceCopy = v56;
      trackerCopy = v55;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:1 format:@"MBCKDevice has not fetched keybag records"];
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)tracker state:(id *)state error:(id *)error
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 509, "tracker");
  }

  v9 = trackerCopy;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 511, "account");
  }

  v11 = account;
  persona = [account persona];
  if (!persona)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 513, "persona");
  }

  if (!state)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 514, "outState");
  }

  v13 = persona;
  v14 = [MBKeyBagValidationState stateForPersona:persona];
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=keybag= Loaded keybag validation state: %@", buf, 0xCu);
    v32 = v14;
    _MBLog();
  }

  v16 = +[MBRemoteConfiguration sharedInstance];
  [v16 keyBagValidationPeriodForAccount:v11 defaultValue:1209600.0];
  v18 = v17;

  v19 = +[NSDate now];
  v20 = [v14 shouldValidateKeyBagReferencesOnDate:v19 period:v18];

  if (v20)
  {
    v21 = v14;
    *state = v14;
    v22 = +[MBCKManager sharedInstance];
    v23 = MBDeviceUUID();
    v34 = 0;
    v24 = [MBCKAccount fetchDeviceRecordSnapshotsAndKeybags:v23 account:v11 manager:v22 tracker:v9 error:&v34];
    v25 = v34;

    if (v24)
    {
      if ([self _deviceHasValidKeyBagReferences:v24])
      {
        if (([v14 requiresDeviceRecordReferenceRepair] & 1) == 0 && (objc_msgSend(v14, "requiresEncryptionKeyRepair") & 1) == 0)
        {
          keybagManager = [v24 keybagManager];
          keybagRefs = [keybagManager keybagRefs];
          v27 = [v14 trackValidationSuccess:objc_msgSend(keybagRefs persona:"count") error:{v13, error}];

          goto LABEL_19;
        }

        if (![v14 requiresDeviceRecordReferenceRepair])
        {
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=keybag= Resuming pending encryption key repair", buf, 2u);
            _MBLog();
          }

          v27 = 1;
          goto LABEL_19;
        }

        v26 = [v14 trackRepairedDeviceRecordWithPersona:v13 error:error];
      }

      else
      {
        v26 = [self _removeInvalidKeyBagReferencesFromDevice:v24 tracker:v9 validationState:v14 error:error];
      }
    }

    else
    {
      if (![MBError isError:v25 withCode:204])
      {
        if (error)
        {
          v29 = v25;
          v27 = 0;
          *error = v25;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_19;
      }

      v26 = [v14 resetValidationStateWithPersona:v13 error:error];
    }

    v27 = v26;
LABEL_19:

    goto LABEL_20;
  }

  *state = 0;
  v27 = 1;
LABEL_20:

  return v27;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end