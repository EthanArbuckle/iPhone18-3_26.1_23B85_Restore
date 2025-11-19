@interface MBCKKeyBag
+ (BOOL)_deviceHasValidKeyBagReferences:(id)a3;
+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)a3 tracker:(id)a4 validationState:(id)a5 error:(id *)a6;
+ (BOOL)setupKeybagForDevice:(id)a3 operationTracker:(id)a4 passcode:(id)a5 error:(id *)a6;
+ (BOOL)unlockKeybag:(id)a3 accountType:(int64_t)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)a3 state:(id *)a4 error:(id *)a5;
+ (id)UUIDStringFromRecordID:(id)a3;
+ (id)keybagWithDevice:(id)a3 keybagUUID:(id)a4 operationTracker:(id)a5 error:(id *)a6;
+ (id)recordIDStringWithUUID:(id)a3;
+ (id)recordIDStringWithUUIDString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)unlockWithAccountType:(int64_t)a3 error:(id *)a4;
- (CKRecordID)recordID;
- (MBCKDevice)device;
- (MBCKKeyBag)initWithDictionary:(id)a3 device:(id)a4;
- (MBCKKeyBag)initWithRecord:(id)a3 device:(id)a4;
- (MBCKKeyBag)initWithUUID:(id)a3 data:(id)a4 secret:(id)a5 device:(id)a6;
- (MBKeyBag)keybag;
- (NSString)keybagUUIDString;
- (id)OTAKeybagWithError:(id *)a3;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (unint64_t)hash;
- (void)lock;
- (void)refreshWithRecord:(id)a3;
@end

@implementation MBCKKeyBag

+ (BOOL)setupKeybagForDevice:(id)a3 operationTracker:(id)a4 passcode:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v90 = a5;
  if (!v10)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 45, "tracker");
  }

  if (!a6)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 46, "error");
  }

  v11 = [v10 account];
  if (!v11)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 48, "serviceAccount");
  }

  v12 = v11;
  v92 = [v11 accountIdentifier];
  v13 = [v9 keybagManager];
  if (!v13)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 51, "keybagManager");
  }

  v14 = v13;
  v89 = a6;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v9 deviceUUID];
    *buf = 138543618;
    v126 = v16;
    v127 = 2114;
    v128 = v92;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=keybag= Setting up a new keybag for device %{public}@ (%{public}@)", buf, 0x16u);

    v81 = [v9 deviceUUID];
    v82 = v92;
    _MBLog();
  }

  v95 = v14;
  v87 = v10;
  v88 = v9;

  v86 = v12;
  v85 = [v12 persona];
  [v85 volumesToBackUp];
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
        v23 = [MBKeyBag OTAKeybagUUIDStringWithVolume:v22 error:&v117, v81, v82];
        v24 = v117;
        if (!v23 && ![MBError isError:v24 withCode:4])
        {
          v27 = v24;
          v28 = 0;
          v29 = v9;
          *v89 = v24;
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
          v81 = v23;
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
            v126 = v92;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=keybag= Replacing existing backup keybag (%{public}@)", buf, 0xCu);
            v81 = v92;
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
    v29 = v9;
    v32 = v86;
    v33 = v95;
    goto LABEL_32;
  }

  v35 = MBGetDefaultLog();
  v33 = v95;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v126 = v92;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=keybag= Registering new keybags for (%{public}@)", buf, 0xCu);
    v81 = v92;
    _MBLog();
  }

  v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v24 = obj;
  v36 = [v24 countByEnumeratingWithState:&v113 objects:v131 count:16];
  v29 = v9;
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
        if (v90)
        {
          if (v41)
          {
            *buf = 138543362;
            v126 = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=keybag= Using passcode as keybag secret for %{public}@", buf, 0xCu);
            v81 = v39;
            _MBLog();
          }

          v42 = [v90 dataUsingEncoding:4];
        }

        else
        {
          if (v41)
          {
            *buf = 138543362;
            v126 = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=keybag= Creating random secret for %{public}@", buf, 0xCu);
            v81 = v39;
            _MBLog();
          }

          v42 = +[MBKeyBag randomSecret];
        }

        v43 = v42;
        if (!v42)
        {
          [MBError errorWithCode:1 format:@"Failed to generate secret for keybag"];
          *v89 = v28 = 0;
          v32 = v86;
          v31 = v87;
          goto LABEL_27;
        }

        v112 = 0;
        v44 = [MBKeyBag registerOTAKeyBagWithVolume:v39 secret:v42 keybagUUIDData:&v112 error:v89];
        v45 = v112;
        v46 = v45;
        if (!v44)
        {
          v54 = MBGetDefaultLog();
          v31 = v87;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = *v89;
            *buf = 138543874;
            v126 = v39;
            v127 = 2114;
            v128 = v92;
            v129 = 2112;
            v130 = v55;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=keybag= Failed to register keybag for volume %{public}@ (%{public}@): %@", buf, 0x20u);
            v84 = *v89;
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
          v81 = v39;
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
      v53 = [v52 forceInvalidKeyBagReference];

      if (v53)
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
    *v89 = v65;

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

        [v33 addKeybag:{*(*(&v101 + 1) + 8 * m), v81, v82, v83}];
      }

      v67 = [v30 countByEnumeratingWithState:&v101 objects:v123 count:16];
    }

    while (v67);
  }

  v70 = [v29 recordRepresentation];
  v100 = 0;
  v71 = [v31 saveRecord:v70 delegate:0 error:&v100];
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
      v126 = v92;
      v127 = 2112;
      v128 = v24;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "=keybag= Failed to save device record with new keybag references (%{public}@): %@", buf, 0x16u);
      v81 = v92;
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

          v79 = [*(*(&v96 + 1) + 8 * n) keybagUUIDString];
          [v33 removeKeybagWithUUID:v79];
        }

        v76 = [v30 countByEnumeratingWithState:&v96 objects:v122 count:16];
      }

      while (v76);
    }

    v80 = v24;
    v28 = 0;
    *v89 = v24;
  }

LABEL_28:

LABEL_32:
  return v28;
}

+ (id)keybagWithDevice:(id)a3 keybagUUID:(id)a4 operationTracker:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    __assert_rtn("+[MBCKKeyBag keybagWithDevice:keybagUUID:operationTracker:error:]", "MBCKKeyBag.m", 153, "tracker");
  }

  v13 = v12;
  if (!v10)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  if (!v11)
  {
    if (a6)
    {
      [MBError errorWithCode:1 format:@"Invalid keybag UUID (%@)", 0];
      *a6 = v26 = 0;
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
  v16 = [a1 recordIDStringWithUUID:v11];
  v17 = [v13 syncZoneID];
  v18 = [v15 initWithRecordName:v16 zoneID:v17];

  v19 = [NSPredicate predicateWithFormat:@"recordID==%@", v18];
  v20 = [CKQuery alloc];
  v21 = +[(MBCKModel *)MBCKKeyBag];
  v22 = [v20 initWithRecordType:v21 predicate:v19];

  v23 = [[CKQueryOperation alloc] initWithQuery:v22];
  v24 = [v13 syncZoneID];
  [v23 setZoneID:v24];

  objc_initWeak(&location, v23);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100068108;
  v33[3] = &unk_1003BC7C8;
  v35 = &v43;
  v34 = v10;
  [v23 setRecordFetchedBlock:v33];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10006817C;
  v28[3] = &unk_1003BC7F0;
  objc_copyWeak(&v32, &location);
  v31 = &v37;
  v29 = v11;
  v25 = v14;
  v30 = v25;
  [v23 setQueryCompletionBlock:v28];
  [v13 addDatabaseOperation:v23];
  MBSemaphoreWaitForever();
  if (a6)
  {
    *a6 = v38[5];
  }

  v26 = v44[5];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

LABEL_10:

  return v26;
}

+ (id)recordIDStringWithUUID:(id)a3
{
  v4 = [a3 base64EncodedStringWithOptions:0];
  v5 = [a1 recordIDStringWithUUIDString:v4];

  return v5;
}

+ (id)recordIDStringWithUUIDString:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"K:", v3];

  return v4;
}

+ (id)UUIDStringFromRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 substringFromIndex:{objc_msgSend(@"K:", "length")}];

  return v4;
}

- (MBCKKeyBag)initWithRecord:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 cache];
  v11.receiver = self;
  v11.super_class = MBCKKeyBag;
  v9 = [(MBCKModel *)&v11 initWithRecord:v6 cache:v8];

  if (v9)
  {
    objc_storeWeak(&v9->_device, v7);
    [(MBCKKeyBag *)v9 refreshWithRecord:v6];
  }

  return v9;
}

- (MBCKKeyBag)initWithUUID:(id)a3 data:(id)a4 secret:(id)a5 device:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(MBCKKeyBag *)self initWithRecord:0 device:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keybagData, a4);
    objc_storeStrong(&v15->_keybagUUID, a3);
    objc_storeStrong(&v15->_secret, a5);
  }

  return v15;
}

- (MBCKKeyBag)initWithDictionary:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBCKKeyBag *)self initWithRecord:0 device:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_device, v7);
    v10 = [v6 objectForKeyedSubscript:@"keybagUUID"];
    keybagUUID = v9->_keybagUUID;
    v9->_keybagUUID = v10;

    v12 = [v6 objectForKeyedSubscript:@"keybagData"];
    keybagData = v9->_keybagData;
    v9->_keybagData = v12;

    v14 = [v6 objectForKeyedSubscript:@"secret"];
    secret = v9->_secret;
    v9->_secret = v14;
  }

  return v9;
}

- (void)refreshWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [v6 substringFromIndex:{objc_msgSend(@"K:", "length")}];

  if (v7)
  {
    v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    keybagUUID = self->_keybagUUID;
    self->_keybagUUID = v8;
  }

  v10 = [v4 encryptedValues];
  v11 = [v10 objectForKeyedSubscript:@"keybagData"];

  if (v11)
  {
    objc_storeStrong(&self->_keybagData, v11);
  }

  v12 = [v4 encryptedValues];
  v13 = [v12 objectForKeyedSubscript:@"secret"];

  if (v13)
  {
    objc_storeStrong(&self->_secret, v13);
  }

  v14.receiver = self;
  v14.super_class = MBCKKeyBag;
  [(MBCKModel *)&v14 refreshWithRecord:v4];
}

- (NSString)keybagUUIDString
{
  v3 = objc_opt_class();
  keybagUUID = self->_keybagUUID;

  return [v3 UUIDStringForKeyBagUUID:keybagUUID];
}

- (id)OTAKeybagWithError:(id *)a3
{
  keybag = self->_keybag;
  if (!keybag)
  {
    v6 = [(MBCKKeyBag *)self keybagData];
    v7 = [(MBCKKeyBag *)self secret];
    v8 = [MBKeyBag OTAKeyBagWithData:v6 secret:v7 error:a3];
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

- (BOOL)unlockWithAccountType:(int64_t)a3 error:(id *)a4
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
    v10 = [(MBCKKeyBag *)self keybagData];
    v11 = [(MBCKKeyBag *)self secret];
    v9 = [MBKeyBag OTAKeyBagWithData:v10 secret:v11 error:a4];

    if (v9)
    {
      v12 = [(MBCKKeyBag *)self secret];
      v20 = 0;
      v8 = [v9 unlockWithSecret:v12 error:&v20];
      v13 = v20;

      if (v8)
      {
        objc_storeStrong(&self->_keybag, v9);
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [(MBCKKeyBag *)self keybagUUIDString];
          *buf = 138543362;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=keybag= Unlocked keybag %{public}@", buf, 0xCu);

          v19 = [(MBCKKeyBag *)self keybagUUIDString];
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

        if (a4)
        {
          v17 = v13;
          *a4 = v13;
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
      v5 = [(MBCKKeyBag *)self keybagUUIDString];
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "=keybag= Locked keybag %{public}@", buf, 0xCu);

      v6 = [(MBCKKeyBag *)self keybagUUIDString];
      _MBLog();
    }
  }
}

- (CKRecordID)recordID
{
  v3 = [CKRecordID alloc];
  v4 = [(MBCKKeyBag *)self keybagUUIDString];
  v5 = [MBCKKeyBag recordIDStringWithUUIDString:v4];
  v6 = +[MBCKDatabaseManager syncZoneID];
  v7 = [v3 initWithRecordName:v5 zoneID:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MBCKKeyBag *)self keybagUUID];
  v4 = [v3 hash];
  v5 = [(MBCKKeyBag *)self keybagData];
  v6 = [v5 hash] ^ v4;
  v7 = [(MBCKKeyBag *)self secret];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MBCKKeyBag *)self keybagUUID];
    v7 = [v5 keybagUUID];
    if ([v6 isEqualToData:v7])
    {
      v8 = [(MBCKKeyBag *)self keybagData];
      v9 = [v5 keybagData];
      if ([v8 isEqualToData:v9])
      {
        v10 = [(MBCKKeyBag *)self secret];
        v11 = [v5 secret];
        v12 = [v10 isEqualToData:v11];
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
  v3 = [(MBCKModel *)&v9 recordRepresentation];
  keybagData = self->_keybagData;
  v5 = [v3 encryptedValues];
  [v5 setObject:keybagData forKeyedSubscript:@"keybagData"];

  secret = self->_secret;
  v7 = [v3 encryptedValues];
  [v7 setObject:secret forKeyedSubscript:@"secret"];

  return v3;
}

- (id)_getRecordIDString
{
  v4 = [(MBCKKeyBag *)self keybagUUID];

  if (!v4)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MBCKKeyBag.m" lineNumber:333 description:@"Keybag is missing a UUID"];
  }

  v5 = [(MBCKKeyBag *)self keybagUUID];
  v6 = [MBCKKeyBag recordIDStringWithUUID:v5];

  return v6;
}

+ (BOOL)unlockKeybag:(id)a3 accountType:(int64_t)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (!v10)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 350, "keybag");
  }

  if (!a5)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 351, "error");
  }

  v12 = v11;
  if (!v11)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 352, "block");
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000694A4;
  v37[3] = &unk_1003BBFE8;
  v37[4] = a1;
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
  v14 = v10;
  v21 = v14;
  v22 = &v31;
  v23 = &v25;
  v24 = a4;
  dispatch_sync(v13, block);
  v15 = v32[5];
  if (v15)
  {
    v16 = [v32[5] keybag];
    if (!v16)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 440, "keybag");
    }

    (v12)[2](v12, v16);
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

    *a5 = v17;
  }

  dispatch_semaphore_signal(qword_100421610);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 != 0;
}

+ (BOOL)_deviceHasValidKeyBagReferences:(id)a3
{
  v3 = a3;
  v4 = [v3 keybagManager];
  v5 = [v4 keybagRefs];
  v6 = [v5 copy];

  v7 = [v3 keybagManager];

  v8 = [v7 keybagsByUUIDString];
  v9 = [v8 copy];

  v10 = [v6 count];
  LOBYTE(v10) = v10 == [v9 count];

  return v10;
}

+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)a3 tracker:(id)a4 validationState:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 account];
  v13 = [v12 persona];

  if (!v13)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 462, "persona");
  }

  if (!v11)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 464, "validationState");
  }

  if (!v9)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 466, "device");
  }

  v14 = [v9 keybagManager];
  v15 = [v14 hasFetchedKeybags];

  if (v15)
  {
    v52 = a6;
    v53 = v13;
    v54 = v11;
    v55 = v10;
    v16 = [v9 keybagManager];
    v17 = [v16 keybagRefs];
    v18 = [v17 copy];

    v19 = [v9 keybagManager];
    v20 = [v19 keybagsByUUIDString];
    v21 = [v20 copy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v18;
    v22 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    v56 = v9;
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

          v28 = [*(*(&v59 + 1) + 8 * i) recordID];
          v29 = [MBCKKeyBag UUIDStringFromRecordID:v28];

          v30 = [v21 objectForKeyedSubscript:v29];
          v31 = MBGetDefaultLog();
          v32 = v31;
          if (v30)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v30 keybagData];
              v34 = [v33 length];
              *buf = 138412546;
              v64 = v29;
              v65 = 2048;
              v66 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=keybag= Fetched keybag %@ (%llu bytes)", buf, 0x16u);

              v35 = [v30 keybagData];
              v50 = v29;
              v51 = [v35 length];
              _MBLog();

              v9 = v56;
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

            v36 = [v9 keybagManager];
            [v36 removeKeybagWithUUID:v29];

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

    v38 = [v9 keybagManager];
    v39 = [v38 keybagsByUUIDString];
    v40 = [v39 count];
    v41 = [v9 keybagManager];
    v42 = [v41 keybagRefs];
    if (v40 != [v42 count])
    {
      __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 490, "device.keybagManager.keybagsByUUIDString.count == device.keybagManager.keybagRefs.count");
    }

    v11 = v54;
    v43 = v24;
    v13 = v53;
    if ([v54 trackValidationFailureWithInvalidKeyBagCount:v43 validKeyBagCount:v25 persona:v53 error:v52])
    {
      v9 = v56;
      v44 = [v56 recordRepresentation];
      v58 = 0;
      v10 = v55;
      v45 = [v55 saveRecord:v44 delegate:0 error:&v58];
      v46 = v58;

      if (v45)
      {
        v37 = [v54 trackRepairedDeviceRecordWithPersona:v53 error:v52];
      }

      else
      {
        if (v52)
        {
          v47 = v46;
          *v52 = v46;
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
      v9 = v56;
      v10 = v55;
    }
  }

  else if (a6)
  {
    [MBError errorWithCode:1 format:@"MBCKDevice has not fetched keybag records"];
    *a6 = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)a3 state:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if (!v8)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 509, "tracker");
  }

  v9 = v8;
  v10 = [v8 account];
  if (!v10)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 511, "account");
  }

  v11 = v10;
  v12 = [v10 persona];
  if (!v12)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 513, "persona");
  }

  if (!a4)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 514, "outState");
  }

  v13 = v12;
  v14 = [MBKeyBagValidationState stateForPersona:v12];
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
    *a4 = v14;
    v22 = +[MBCKManager sharedInstance];
    v23 = MBDeviceUUID();
    v34 = 0;
    v24 = [MBCKAccount fetchDeviceRecordSnapshotsAndKeybags:v23 account:v11 manager:v22 tracker:v9 error:&v34];
    v25 = v34;

    if (v24)
    {
      if ([a1 _deviceHasValidKeyBagReferences:v24])
      {
        if (([v14 requiresDeviceRecordReferenceRepair] & 1) == 0 && (objc_msgSend(v14, "requiresEncryptionKeyRepair") & 1) == 0)
        {
          v33 = [v24 keybagManager];
          v31 = [v33 keybagRefs];
          v27 = [v14 trackValidationSuccess:objc_msgSend(v31 persona:"count") error:{v13, a5}];

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

        v26 = [v14 trackRepairedDeviceRecordWithPersona:v13 error:a5];
      }

      else
      {
        v26 = [a1 _removeInvalidKeyBagReferencesFromDevice:v24 tracker:v9 validationState:v14 error:a5];
      }
    }

    else
    {
      if (![MBError isError:v25 withCode:204])
      {
        if (a5)
        {
          v29 = v25;
          v27 = 0;
          *a5 = v25;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_19;
      }

      v26 = [v14 resetValidationStateWithPersona:v13 error:a5];
    }

    v27 = v26;
LABEL_19:

    goto LABEL_20;
  }

  *a4 = 0;
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