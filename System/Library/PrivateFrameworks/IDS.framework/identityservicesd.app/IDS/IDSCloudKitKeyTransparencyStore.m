@interface IDSCloudKitKeyTransparencyStore
- (BOOL)initializeKVS;
- (CKContainer)container;
- (IDSCloudKitKeyTransparencyStore)initWithContainer:(id)a3 serverBag:(id)a4 kvStore:(id)a5 queue:(id)a6;
- (IDSCloudKitKeyTransparencyStore)initWithQueue:(id)a3;
- (id)_clientErrorWithCode:(int64_t)a3 debugDescription:(id)a4 underlyingError:(id)a5;
- (id)_cloudKitRecordForDeviceRecord:(id)a3;
- (id)_deviceRecordForCloudKitRecord:(id)a3;
- (id)_no_timeout_no_cache_fetchKeyTransparencyDeviceRecords;
- (id)_recordIDForDeviceRecord:(id)a3;
- (id)_zoneID;
- (id)database;
- (id)fetchAllEntries;
- (id)fetchEntryForKey:(id)a3;
- (id)forceKVSSync;
- (void)_copyDeviceRecord:(id)a3 toCloudKitRecordRef:(id *)a4;
- (void)_createZoneIfNeededUsingTimeIntervalForRequest:(double)a3 isNonDiscretionary:(BOOL)a4 completion:(id)a5;
- (void)_no_timeout_fetchKeyTransparencyDeviceRecordsWithCompletion:(id)a3;
- (void)_no_timeout_nukeKeyTransparencyDeviceRecordsWithCompletion:(id)a3;
- (void)_no_timeout_upsertKeyTransparencyDeviceRecord:(id)a3 recordsToModify:(id)a4 recordsToDelete:(id)a5 completion:(id)a6;
- (void)_no_timeout_verifyEncryptionPrerequisitesWithCompletion:(id)a3;
- (void)deleteKeyTransparencyDeviceRecordsForPushToken:(id)a3 completion:(id)a4;
- (void)fetchAccountEligibilityForDeviceToDeviceEncryptionWithCompletion:(id)a3;
- (void)fetchKeyTransparencyDeviceRecordsWithCompletion:(id)a3;
- (void)handleKVSUpdate:(id)a3;
- (void)insertDictionary:(id)a3 forKey:(id)a4;
- (void)nukeKeyTransparencyDeviceRecordsWithCompletion:(id)a3;
- (void)removeAllEntries;
- (void)removeEntryForKey:(id)a3;
- (void)setupContainerCache;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)upsertKeyTransparencyDeviceRecord:(id)a3 recordsToModify:(id)a4 recordsToDelete:(id)a5 completion:(id)a6;
@end

@implementation IDSCloudKitKeyTransparencyStore

- (IDSCloudKitKeyTransparencyStore)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = +[IMSystemMonitor sharedInstance];
  v6 = [v5 isUnderFirstDataProtectionLock];

  if (v6)
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We are under first data protection lock, we cannot initialize KVS.", v15, 2u);
    }

    v8 = +[TransparencyAnalytics logger];
    v9 = [NSError errorWithDomain:@"IDSCloudKitKeyTransparencyStoreErrorDomain" code:-5002 userInfo:0];
    [v8 logResultForEvent:@"IDSKTKVSCreationMetric" hardFailure:0 result:v9];

    v10 = 0;
  }

  else
  {
    v10 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.private.ids.kt-kvs" type:2];
    v11 = +[TransparencyAnalytics logger];
    [v11 logSuccessForEventNamed:@"IDSKTKVSCreationMetric"];
  }

  v12 = [IDSServerBag sharedInstanceForBagType:0];
  v13 = [(IDSCloudKitKeyTransparencyStore *)self initWithContainer:0 serverBag:v12 kvStore:v10 queue:v4];

  return v13;
}

- (IDSCloudKitKeyTransparencyStore)initWithContainer:(id)a3 serverBag:(id)a4 kvStore:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = IDSCloudKitKeyTransparencyStore;
  v15 = [(IDSCloudKitKeyTransparencyStore *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_container, a3);
    objc_storeStrong(&v16->_serverBag, a4);
    objc_storeStrong(&v16->_kvStore, a5);
    objc_storeStrong(&v16->_queue, a6);
    if (v16->_kvStore)
    {
      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v16 selector:"handleKVSUpdate:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v16->_kvStore];
    }

    v18 = +[IMSystemMonitor sharedInstance];
    [v18 addListener:v16];

    [(IDSCloudKitKeyTransparencyStore *)v16 setupContainerCache];
  }

  return v16;
}

- (CKContainer)container
{
  container = self->_container;
  if (container)
  {
    v3 = container;
  }

  else
  {
    if (qword_100CBD2A8 != -1)
    {
      sub_10091DD5C();
    }

    v4 = qword_100CBD2A0;
    if (!qword_100CBD2A0)
    {
      v5 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10091DD70();
      }

      v4 = qword_100CBD2A0;
    }

    v3 = [v4 containerWithIdentifier:@"com.apple.private.ids.kt"];
  }

  return v3;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  if (!self->_kvStore)
  {
    v4 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.private.ids.kt-kvs" type:2];
    kvStore = self->_kvStore;
    self->_kvStore = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleKVSUpdate:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:self->_kvStore];
  }
}

- (id)database
{
  v2 = [(IDSCloudKitKeyTransparencyStore *)self container];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (id)_zoneID
{
  if (qword_100CBD2C8 != -1)
  {
    sub_10091DDF4();
  }

  v2 = qword_100CBD2C0;
  if (!qword_100CBD2C0)
  {
    v3 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10091DE08();
    }

    v2 = qword_100CBD2C0;
  }

  v4 = [v2 alloc];
  if (qword_100CBD298 != -1)
  {
    sub_10091DE8C();
  }

  v5 = [v4 initWithZoneName:@"IDSKeyTransparencyDataZone" ownerName:qword_100CBD290];

  return v5;
}

- (id)_recordIDForDeviceRecord:(id)a3
{
  v4 = a3;
  if (qword_100CBD2B8 != -1)
  {
    sub_10091DEB4();
  }

  v5 = qword_100CBD2B0;
  if (!qword_100CBD2B0)
  {
    v6 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10091DEC8();
    }

    v5 = qword_100CBD2B0;
  }

  v7 = [v5 alloc];
  v8 = [v4 recordID];
  v9 = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
  v10 = [v7 initWithRecordName:v8 zoneID:v9];

  return v10;
}

- (id)_clientErrorWithCode:(int64_t)a3 debugDescription:(id)a4 underlyingError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7 | v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v9;
    if (v7)
    {
      [v9 setObject:v7 forKeyedSubscript:NSDebugDescriptionErrorKey];
    }

    if (v8)
    {
      [v10 setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[NSError alloc] initWithDomain:@"IDSCloudKitKeyTransparencyStoreErrorDomain" code:a3 userInfo:v10];

  return v11;
}

- (id)_deviceRecordForCloudKitRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"IDSKTDevice"];

  v6 = [v3 objectForKeyedSubscript:@"IDSKTMetadata"];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [IDSCloudKitKeyTransparencyDeviceRecord alloc];
    v9 = [v3 recordID];
    v10 = [v9 recordName];
    v11 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v8 initWithDeviceData:v5 deviceMetadata:v7 recordID:v10];
  }

  else
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to convert CloudKit record to device record {cloudKitRecord: %@, deviceData: %@, deviceMetadata: %@}", &v14, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_cloudKitRecordForDeviceRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceData];
  if (v5 && (v6 = v5, [v4 deviceMetadata], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (qword_100CBD2D8 != -1)
    {
      sub_10091DF4C();
    }

    v8 = qword_100CBD2D0;
    if (!qword_100CBD2D0)
    {
      v9 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10091DF60();
      }

      v8 = qword_100CBD2D0;
    }

    v10 = [v8 alloc];
    v11 = [(IDSCloudKitKeyTransparencyStore *)self _recordType];
    v12 = [(IDSCloudKitKeyTransparencyStore *)self _recordIDForDeviceRecord:v4];
    v13 = [v10 initWithRecordType:v11 recordID:v12];

    v16 = v13;
    [(IDSCloudKitKeyTransparencyStore *)self _copyDeviceRecord:v4 toCloudKitRecordRef:&v16];
    v14 = v16;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10091DFE4();
    }

    v14 = 0;
  }

  return v14;
}

- (void)_copyDeviceRecord:(id)a3 toCloudKitRecordRef:(id *)a4
{
  if (a4)
  {
    v9 = *a4;
    v5 = a3;
    v6 = [v5 deviceData];
    v7 = [v9 encryptedValues];
    [v7 setObject:v6 forKeyedSubscript:@"IDSKTDevice"];

    v8 = [v5 deviceMetadata];

    [v9 setObject:v8 forKeyedSubscript:@"IDSKTMetadata"];
    [v9 setObject:&off_100C3C040 forKeyedSubscript:@"IDSKTState"];
  }
}

- (void)_createZoneIfNeededUsingTimeIntervalForRequest:(double)a3 isNonDiscretionary:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(IDSCloudKitKeyTransparencyStore *)self cachedRecordZone];

  if (v9)
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSCloudKitKeyTransparencyStore *)self cachedRecordZone];
      *buf = 138412290;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cached record zone exists -- continuing without zone fetch {cachedRecordZone: %@}", buf, 0xCu);
    }

    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v12 = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
    if (qword_100CBD2F8 != -1)
    {
      sub_10091E058();
    }

    v13 = qword_100CBD2F0;
    if (!qword_100CBD2F0)
    {
      v14 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10091E06C();
      }

      v13 = qword_100CBD2F0;
    }

    v15 = [v13 alloc];
    v34 = v12;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
    v17 = [v15 initWithRecordZoneIDs:v16];

    v18 = [(IDSCloudKitKeyTransparencyStore *)self container];
    v19 = [v17 configuration];
    [v19 setContainer:v18];

    if (v5)
    {
      v20 = [v17 configuration];
      [v20 setDiscretionaryNetworkBehavior:0];
    }

    v21 = [v17 configuration];
    [v21 setTimeoutIntervalForRequest:a3];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10041F570;
    v28 = &unk_100BDB898;
    v29 = self;
    v22 = v12;
    v30 = v22;
    v33 = v5;
    v32 = a3;
    v31 = v8;
    [v17 setFetchRecordZonesCompletionBlock:&v25];
    v23 = [IDSFoundationLog KeyTransparency:v25];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting CloudKit zone fetch {operation: %@}", buf, 0xCu);
    }

    v24 = [(IDSCloudKitKeyTransparencyStore *)self database];
    [v24 addOperation:v17];
  }
}

- (void)setupContainerCache
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10041FE44;
  v2[3] = &unk_100BDB8C0;
  v2[4] = self;
  [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_verifyEncryptionPrerequisitesWithCompletion:v2];
}

- (void)fetchAccountEligibilityForDeviceToDeviceEncryptionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Determining account eligibility for device-to-device encryption", buf, 2u);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_10000A974;
  v22 = sub_10000BC2C;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100420148;
  v17[3] = &unk_100BDB938;
  v17[4] = self;
  v17[5] = v24;
  v17[6] = buf;
  v7 = objc_retainBlock(v17);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100420360;
  v13[3] = &unk_100BDB988;
  v13[4] = self;
  v15 = buf;
  v8 = v4;
  v14 = v8;
  v16 = v24;
  v9 = objc_retainBlock(v13);
  v10 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(v10, @"ck-kt-account-timeout", 30.0);

  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 134217984;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting device-to-device encryption eligibility task with timeout {timeoutInSeconds: %f}", v26, 0xCu);
  }

  dispatch_time(0, (v11 * 1000000000.0));
  im_dispatch_async_with_timeout();

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v24, 8);
}

- (void)_no_timeout_verifyEncryptionPrerequisitesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting CloudKit container account info fetch", buf, 2u);
  }

  v7 = [(IDSCloudKitKeyTransparencyStore *)self container];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100420680;
  v9[3] = &unk_100BDB9D0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 accountInfoWithCompletionHandler:v9];
}

- (void)upsertKeyTransparencyDeviceRecord:(id)a3 recordsToModify:(id)a4 recordsToDelete:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Upserting trusted device record { deviceRecord: %@ }, { recordsToModify: %@ }, { recordsToDelete: %@ }", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_10000A974;
  v41 = sub_10000BC2C;
  v42 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100420C10;
  v32[3] = &unk_100BDBA48;
  v32[4] = self;
  v16 = v10;
  v33 = v16;
  v17 = v11;
  v34 = v17;
  v18 = v12;
  v35 = v18;
  v36 = buf;
  v19 = objc_retainBlock(v32);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100420E2C;
  v28 = &unk_100BDBA98;
  v29 = self;
  v31 = buf;
  v20 = v13;
  v30 = v20;
  v21 = objc_retainBlock(&v25);
  v22 = [(IDSCloudKitKeyTransparencyStore *)self serverBag:v25];
  v23 = sub_1004251A4(v22, @"ck-kt-upsert-timeout", 80.0);

  v24 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 134217984;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting trusted device upsert task with timeout {timeoutInSeconds: %f}", v37, 0xCu);
  }

  dispatch_time(0, (v23 * 1000000000.0));
  im_dispatch_async_with_timeout();

  _Block_object_dispose(buf, 8);
}

- (void)_no_timeout_upsertKeyTransparencyDeviceRecord:(id)a3 recordsToModify:(id)a4 recordsToDelete:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(IDSCloudKitKeyTransparencyStore *)self lastSuccessfulUpsertDeviceRecord];
  v16 = [v15 isEqual:v10];

  v17 = +[IDSFoundationLog KeyTransparency];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last known successful upsert device record is identical to the current request -- short-circuiting without performing upsert {deviceRecord: %@}", buf, 0xCu);
    }

    if (v13)
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Verifying encryption prerequisites for trusted device record upsert", buf, 2u);
    }

    v19 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v20 = sub_1004251A4(v19, @"ck-kt-time-interval-for-requests", 60.0);

    v21 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v22 = sub_100425210(v21, 1);

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004212A4;
    v23[3] = &unk_100BDBB80;
    v27 = v13;
    v23[4] = self;
    v28 = v20;
    v29 = v22;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_verifyEncryptionPrerequisitesWithCompletion:v23];
  }
}

- (void)deleteKeyTransparencyDeviceRecordsForPushToken:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v7)
  {
    v6 = [(IDSCloudKitKeyTransparencyStore *)self _clientErrorWithCode:-2000 debugDescription:@"Key transparency device record delete is not implemented" underlyingError:0];
    v7[2](v7, v6);
  }
}

- (void)nukeKeyTransparencyDeviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nuking key transparency device records", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = sub_10000A974;
  v21 = sub_10000BC2C;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100421F94;
  v16[3] = &unk_100BDB238;
  v16[4] = self;
  v16[5] = buf;
  v7 = objc_retainBlock(v16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100422150;
  v13[3] = &unk_100BDBA98;
  v13[4] = self;
  v15 = buf;
  v8 = v4;
  v14 = v8;
  v9 = objc_retainBlock(v13);
  v10 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(v10, @"ck-kt-nuke-timeout", 80.0);

  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 134217984;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting key transparency device record nuke task with timeout {timeoutInSeconds: %f}", v23, 0xCu);
  }

  dispatch_time(0, (v11 * 1000000000.0));
  im_dispatch_async_with_timeout();

  _Block_object_dispose(buf, 8);
}

- (void)_no_timeout_nukeKeyTransparencyDeviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v7 = sub_1004251A4(v6, @"ck-kt-time-interval-for-requests", 60.0);

  v8 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v9 = sub_100425210(v8, 1);

  v10 = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting zone {zoneID: %@}", buf, 0xCu);
  }

  v12 = objc_alloc(sub_10041FAA4());
  v24 = v10;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v14 = [v12 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v13];

  v15 = [(IDSCloudKitKeyTransparencyStore *)self container];
  v16 = [v14 configuration];
  [v16 setContainer:v15];

  if (v9)
  {
    v17 = [v14 configuration];
    [v17 setDiscretionaryNetworkBehavior:0];
  }

  v18 = [v14 configuration];
  [v18 setTimeoutIntervalForRequest:v7];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100422630;
  v22[3] = &unk_100BDB848;
  v22[4] = self;
  v19 = v4;
  v23 = v19;
  [v14 setModifyRecordZonesCompletionBlock:v22];
  v20 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting CloudKit operation to delete KT zone {operation: %@}", buf, 0xCu);
  }

  v21 = [(IDSCloudKitKeyTransparencyStore *)self database];
  [v21 addOperation:v14];
}

- (void)fetchKeyTransparencyDeviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching key transparency device records", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_10000A974;
  v24 = sub_10000BC2C;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10000A974;
  v18[4] = sub_10000BC2C;
  v19 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100422C0C;
  v17[3] = &unk_100BDB938;
  v17[4] = self;
  v17[5] = buf;
  v17[6] = v18;
  v7 = objc_retainBlock(v17);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100422E10;
  v13[3] = &unk_100BDB988;
  v13[4] = self;
  v15 = v18;
  v8 = v4;
  v14 = v8;
  v16 = buf;
  v9 = objc_retainBlock(v13);
  v10 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(v10, @"ck-kt-fetch-timeout", 120.0);

  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 134217984;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting key transparency device record fetch task with timeout {timeoutInSeconds: %f}", v26, 0xCu);
  }

  dispatch_time(0, (v11 * 1000000000.0));
  im_dispatch_async_with_timeout();

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_no_timeout_fetchKeyTransparencyDeviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
  if (v6 && (v7 = v6, [(IDSCloudKitKeyTransparencyStore *)self serverBag], v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_100425210(v8, 1), v8, v7, (v9 & 1) != 0))
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cache hit for key transparency device records {promise: %@}", buf, 0xCu);
    }
  }

  else
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cache miss for key transparency device records -- starting fetch {promise: %@}", buf, 0xCu);
    }

    v14 = [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_no_cache_fetchKeyTransparencyDeviceRecords];
    [(IDSCloudKitKeyTransparencyStore *)self setCurrentDeviceRecordsPromise:v14];

    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated cached promise for key transparency device records {promise: %@}", buf, 0xCu);
    }

    v17 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v18 = sub_1004251A4(v17, @"ck-kt-cache-ttl", 30.0);

    v19 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412546;
      v29 = v20;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting timer to clean up cached promise for key transparency device records {promise: %@, cleanUpDelay: %f}", buf, 0x16u);
    }

    v21 = dispatch_time(0, (v18 * 1000000000.0));
    v22 = [(IDSCloudKitKeyTransparencyStore *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004233E8;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_after(v21, v22, block);
  }

  v23 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1004234BC;
  v25[3] = &unk_100BDBC10;
  v25[4] = self;
  v26 = v4;
  v24 = v4;
  [v23 registerResultBlock:v25];
}

- (id)_no_timeout_no_cache_fetchKeyTransparencyDeviceRecords
{
  v3 = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Verifying encryption prerequisites for trusted device records fetch", buf, 2u);
  }

  v5 = objc_alloc_init(CUTUnsafePromiseSeal);
  v6 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v7 = sub_1004251A4(v6, @"ck-kt-time-interval-for-requests", 60.0);

  v8 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v9 = sub_100425210(v8, 0);

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100423718;
  v16 = &unk_100BDBD00;
  v17 = v5;
  v18 = self;
  v19 = v7;
  v20 = v9;
  v10 = v5;
  [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_verifyEncryptionPrerequisitesWithCompletion:&v13];
  v11 = [v10 promise];

  return v11;
}

- (void)handleKVSUpdate:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  v5 = [v4 integerValue];
  if (v5 < 2)
  {
    goto LABEL_4;
  }

  if (v5 == 2)
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received KVS Quota Violation Notification.", buf, 2u);
    }

    v6 = +[TransparencyAnalytics logger];
    v10 = @"KVSErrorDomain";
    v11 = @"KVSErrorCode";
    v13 = @"IDSCloudKitKeyTransparencyStoreErrorDomain";
    v14 = &off_100C3C058;
    v12 = @"KTVersion";
    v8 = _IDSKeyTransparencyVersionNumber();
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v10 count:3];
    [v6 logHardFailureForEventNamed:@"IDSKTKVSQuotaViolation" withAttributes:v9, v10, v11, v12, v13, v14];

    goto LABEL_9;
  }

  if (v5 == 3)
  {
LABEL_4:
    v6 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received KVS update notification. {Reason: %@}", buf, 0xCu);
    }

LABEL_9:
  }
}

- (void)insertDictionary:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inserting KVS entry {key: %@, value: %@}", &v11, 0x16u);
  }

  v9 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v9)
  {
    v10 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    [v10 setDictionary:v6 forKey:v7];
  }

  else
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }
  }
}

- (void)removeEntryForKey:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing KVS entry {key: %@}", &v8, 0xCu);
  }

  v6 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v6)
  {
    v7 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    [v7 removeObjectForKey:v4];
  }

  else
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }
  }
}

- (id)fetchEntryForKey:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching KVS entry. {key: %@}", &v10, 0xCu);
  }

  v6 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v6)
  {
    v7 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    v8 = [v7 objectForKey:v4];
  }

  else
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }

    v8 = &__NSDictionary0__struct;
  }

  return v8;
}

- (id)fetchAllEntries
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching all entries from KVS.", v8, 2u);
  }

  v4 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v4)
  {
    v5 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    v6 = [v5 dictionaryRepresentation];
  }

  else
  {
    v5 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }

    v6 = &__NSDictionary0__struct;
  }

  return v6;
}

- (void)removeAllEntries
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wiping all entries from KVS.", buf, 2u);
  }

  v4 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v4)
  {
    v5 = [(IDSCloudKitKeyTransparencyStore *)self fetchAllEntries];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
          [v11 removeObjectForKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }
  }
}

- (id)forceKVSSync
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to force sync KVS.", buf, 2u);
  }

  v4 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v4)
  {
    if (!+[IMUserDefaults shouldForceFailKTKVSSync]|| !CUTIsInternalInstall())
    {
      v9 = objc_alloc_init(CUTUnsafePromiseSeal);
      v10 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100424E20;
      v18 = &unk_100BDA900;
      v19 = v9;
      v20 = self;
      v11 = v9;
      [v10 synchronizeWithCompletionHandler:&v15];

      v12 = [v11 promise];

      goto LABEL_14;
    }

    v5 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default set to force fail sync KVS.", buf, 2u);
    }

    v6 = @"Force failing sync KVS.";
    v7 = self;
    v8 = -7000;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }

    v6 = @"KVS not yet loaded.";
    v7 = self;
    v8 = -5003;
  }

  v11 = [(IDSCloudKitKeyTransparencyStore *)v7 _clientErrorWithCode:v8 debugDescription:v6 underlyingError:0];
  v12 = [CUTUnsafePromise failedPromiseWithError:v11];
LABEL_14:

  return v12;
}

- (BOOL)initializeKVS
{
  v3 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v3)
  {
    return 1;
  }

  v4 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.private.ids.kt-kvs" type:2];
  [(IDSCloudKitKeyTransparencyStore *)self setKvStore:v4];

  v5 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleKVSUpdate:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:self->_kvStore];

    return 1;
  }

  return 0;
}

@end