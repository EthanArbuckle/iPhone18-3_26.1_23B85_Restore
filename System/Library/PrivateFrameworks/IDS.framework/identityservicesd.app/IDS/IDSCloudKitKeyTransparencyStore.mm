@interface IDSCloudKitKeyTransparencyStore
- (BOOL)initializeKVS;
- (CKContainer)container;
- (IDSCloudKitKeyTransparencyStore)initWithContainer:(id)container serverBag:(id)bag kvStore:(id)store queue:(id)queue;
- (IDSCloudKitKeyTransparencyStore)initWithQueue:(id)queue;
- (id)_clientErrorWithCode:(int64_t)code debugDescription:(id)description underlyingError:(id)error;
- (id)_cloudKitRecordForDeviceRecord:(id)record;
- (id)_deviceRecordForCloudKitRecord:(id)record;
- (id)_no_timeout_no_cache_fetchKeyTransparencyDeviceRecords;
- (id)_recordIDForDeviceRecord:(id)record;
- (id)_zoneID;
- (id)database;
- (id)fetchAllEntries;
- (id)fetchEntryForKey:(id)key;
- (id)forceKVSSync;
- (void)_copyDeviceRecord:(id)record toCloudKitRecordRef:(id *)ref;
- (void)_createZoneIfNeededUsingTimeIntervalForRequest:(double)request isNonDiscretionary:(BOOL)discretionary completion:(id)completion;
- (void)_no_timeout_fetchKeyTransparencyDeviceRecordsWithCompletion:(id)completion;
- (void)_no_timeout_nukeKeyTransparencyDeviceRecordsWithCompletion:(id)completion;
- (void)_no_timeout_upsertKeyTransparencyDeviceRecord:(id)record recordsToModify:(id)modify recordsToDelete:(id)delete completion:(id)completion;
- (void)_no_timeout_verifyEncryptionPrerequisitesWithCompletion:(id)completion;
- (void)deleteKeyTransparencyDeviceRecordsForPushToken:(id)token completion:(id)completion;
- (void)fetchAccountEligibilityForDeviceToDeviceEncryptionWithCompletion:(id)completion;
- (void)fetchKeyTransparencyDeviceRecordsWithCompletion:(id)completion;
- (void)handleKVSUpdate:(id)update;
- (void)insertDictionary:(id)dictionary forKey:(id)key;
- (void)nukeKeyTransparencyDeviceRecordsWithCompletion:(id)completion;
- (void)removeAllEntries;
- (void)removeEntryForKey:(id)key;
- (void)setupContainerCache;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)upsertKeyTransparencyDeviceRecord:(id)record recordsToModify:(id)modify recordsToDelete:(id)delete completion:(id)completion;
@end

@implementation IDSCloudKitKeyTransparencyStore

- (IDSCloudKitKeyTransparencyStore)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v5 isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
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
  v13 = [(IDSCloudKitKeyTransparencyStore *)self initWithContainer:0 serverBag:v12 kvStore:v10 queue:queueCopy];

  return v13;
}

- (IDSCloudKitKeyTransparencyStore)initWithContainer:(id)container serverBag:(id)bag kvStore:(id)store queue:(id)queue
{
  containerCopy = container;
  bagCopy = bag;
  storeCopy = store;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = IDSCloudKitKeyTransparencyStore;
  v15 = [(IDSCloudKitKeyTransparencyStore *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_container, container);
    objc_storeStrong(&v16->_serverBag, bag);
    objc_storeStrong(&v16->_kvStore, store);
    objc_storeStrong(&v16->_queue, queue);
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
  container = [(IDSCloudKitKeyTransparencyStore *)self container];
  privateCloudDatabase = [container privateCloudDatabase];

  return privateCloudDatabase;
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

- (id)_recordIDForDeviceRecord:(id)record
{
  recordCopy = record;
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
  recordID = [recordCopy recordID];
  _zoneID = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
  v10 = [v7 initWithRecordName:recordID zoneID:_zoneID];

  return v10;
}

- (id)_clientErrorWithCode:(int64_t)code debugDescription:(id)description underlyingError:(id)error
{
  descriptionCopy = description;
  errorCopy = error;
  if (descriptionCopy | errorCopy)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v9;
    if (descriptionCopy)
    {
      [v9 setObject:descriptionCopy forKeyedSubscript:NSDebugDescriptionErrorKey];
    }

    if (errorCopy)
    {
      [v10 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[NSError alloc] initWithDomain:@"IDSCloudKitKeyTransparencyStoreErrorDomain" code:code userInfo:v10];

  return v11;
}

- (id)_deviceRecordForCloudKitRecord:(id)record
{
  recordCopy = record;
  encryptedValues = [recordCopy encryptedValues];
  v5 = [encryptedValues objectForKeyedSubscript:@"IDSKTDevice"];

  v6 = [recordCopy objectForKeyedSubscript:@"IDSKTMetadata"];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [IDSCloudKitKeyTransparencyDeviceRecord alloc];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v11 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v8 initWithDeviceData:v5 deviceMetadata:v7 recordID:recordName];
  }

  else
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = recordCopy;
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

- (id)_cloudKitRecordForDeviceRecord:(id)record
{
  recordCopy = record;
  deviceData = [recordCopy deviceData];
  if (deviceData && (v6 = deviceData, [recordCopy deviceMetadata], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
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
    _recordType = [(IDSCloudKitKeyTransparencyStore *)self _recordType];
    v12 = [(IDSCloudKitKeyTransparencyStore *)self _recordIDForDeviceRecord:recordCopy];
    v13 = [v10 initWithRecordType:_recordType recordID:v12];

    v16 = v13;
    [(IDSCloudKitKeyTransparencyStore *)self _copyDeviceRecord:recordCopy toCloudKitRecordRef:&v16];
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

- (void)_copyDeviceRecord:(id)record toCloudKitRecordRef:(id *)ref
{
  if (ref)
  {
    v9 = *ref;
    recordCopy = record;
    deviceData = [recordCopy deviceData];
    encryptedValues = [v9 encryptedValues];
    [encryptedValues setObject:deviceData forKeyedSubscript:@"IDSKTDevice"];

    deviceMetadata = [recordCopy deviceMetadata];

    [v9 setObject:deviceMetadata forKeyedSubscript:@"IDSKTMetadata"];
    [v9 setObject:&off_100C3C040 forKeyedSubscript:@"IDSKTState"];
  }
}

- (void)_createZoneIfNeededUsingTimeIntervalForRequest:(double)request isNonDiscretionary:(BOOL)discretionary completion:(id)completion
{
  discretionaryCopy = discretionary;
  completionCopy = completion;
  cachedRecordZone = [(IDSCloudKitKeyTransparencyStore *)self cachedRecordZone];

  if (cachedRecordZone)
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      cachedRecordZone2 = [(IDSCloudKitKeyTransparencyStore *)self cachedRecordZone];
      *buf = 138412290;
      v36 = cachedRecordZone2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cached record zone exists -- continuing without zone fetch {cachedRecordZone: %@}", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    _zoneID = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
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
    v34 = _zoneID;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
    v17 = [v15 initWithRecordZoneIDs:v16];

    container = [(IDSCloudKitKeyTransparencyStore *)self container];
    configuration = [v17 configuration];
    [configuration setContainer:container];

    if (discretionaryCopy)
    {
      configuration2 = [v17 configuration];
      [configuration2 setDiscretionaryNetworkBehavior:0];
    }

    configuration3 = [v17 configuration];
    [configuration3 setTimeoutIntervalForRequest:request];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10041F570;
    v28 = &unk_100BDB898;
    selfCopy = self;
    v22 = _zoneID;
    v30 = v22;
    v33 = discretionaryCopy;
    requestCopy = request;
    v31 = completionCopy;
    [v17 setFetchRecordZonesCompletionBlock:&v25];
    v23 = [IDSFoundationLog KeyTransparency:v25];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting CloudKit zone fetch {operation: %@}", buf, 0xCu);
    }

    database = [(IDSCloudKitKeyTransparencyStore *)self database];
    [database addOperation:v17];
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

- (void)fetchAccountEligibilityForDeviceToDeviceEncryptionWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

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
  v8 = completionCopy;
  v14 = v8;
  v16 = v24;
  v9 = objc_retainBlock(v13);
  serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(serverBag, @"ck-kt-account-timeout", 30.0);

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

- (void)_no_timeout_verifyEncryptionPrerequisitesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting CloudKit container account info fetch", buf, 2u);
  }

  container = [(IDSCloudKitKeyTransparencyStore *)self container];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100420680;
  v9[3] = &unk_100BDB9D0;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [container accountInfoWithCompletionHandler:v9];
}

- (void)upsertKeyTransparencyDeviceRecord:(id)record recordsToModify:(id)modify recordsToDelete:(id)delete completion:(id)completion
{
  recordCopy = record;
  modifyCopy = modify;
  deleteCopy = delete;
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = recordCopy;
    *&buf[12] = 2112;
    *&buf[14] = modifyCopy;
    *&buf[22] = 2112;
    v40 = deleteCopy;
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
  v16 = recordCopy;
  v33 = v16;
  v17 = modifyCopy;
  v34 = v17;
  v18 = deleteCopy;
  v35 = v18;
  v36 = buf;
  v19 = objc_retainBlock(v32);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100420E2C;
  v28 = &unk_100BDBA98;
  selfCopy = self;
  v31 = buf;
  v20 = completionCopy;
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

- (void)_no_timeout_upsertKeyTransparencyDeviceRecord:(id)record recordsToModify:(id)modify recordsToDelete:(id)delete completion:(id)completion
{
  recordCopy = record;
  modifyCopy = modify;
  deleteCopy = delete;
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  lastSuccessfulUpsertDeviceRecord = [(IDSCloudKitKeyTransparencyStore *)self lastSuccessfulUpsertDeviceRecord];
  v16 = [lastSuccessfulUpsertDeviceRecord isEqual:recordCopy];

  v17 = +[IDSFoundationLog KeyTransparency];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      *buf = 138412290;
      v31 = recordCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last known successful upsert device record is identical to the current request -- short-circuiting without performing upsert {deviceRecord: %@}", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Verifying encryption prerequisites for trusted device record upsert", buf, 2u);
    }

    serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v20 = sub_1004251A4(serverBag, @"ck-kt-time-interval-for-requests", 60.0);

    serverBag2 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v22 = sub_100425210(serverBag2, 1);

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004212A4;
    v23[3] = &unk_100BDBB80;
    v27 = completionCopy;
    v23[4] = self;
    v28 = v20;
    v29 = v22;
    v24 = recordCopy;
    v25 = modifyCopy;
    v26 = deleteCopy;
    [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_verifyEncryptionPrerequisitesWithCompletion:v23];
  }
}

- (void)deleteKeyTransparencyDeviceRecordsForPushToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  if (completionCopy)
  {
    v6 = [(IDSCloudKitKeyTransparencyStore *)self _clientErrorWithCode:-2000 debugDescription:@"Key transparency device record delete is not implemented" underlyingError:0];
    completionCopy[2](completionCopy, v6);
  }
}

- (void)nukeKeyTransparencyDeviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

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
  v8 = completionCopy;
  v14 = v8;
  v9 = objc_retainBlock(v13);
  serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(serverBag, @"ck-kt-nuke-timeout", 80.0);

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

- (void)_no_timeout_nukeKeyTransparencyDeviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v7 = sub_1004251A4(serverBag, @"ck-kt-time-interval-for-requests", 60.0);

  serverBag2 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v9 = sub_100425210(serverBag2, 1);

  _zoneID = [(IDSCloudKitKeyTransparencyStore *)self _zoneID];
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = _zoneID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting zone {zoneID: %@}", buf, 0xCu);
  }

  v12 = objc_alloc(sub_10041FAA4());
  v24 = _zoneID;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v14 = [v12 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v13];

  container = [(IDSCloudKitKeyTransparencyStore *)self container];
  configuration = [v14 configuration];
  [configuration setContainer:container];

  if (v9)
  {
    configuration2 = [v14 configuration];
    [configuration2 setDiscretionaryNetworkBehavior:0];
  }

  configuration3 = [v14 configuration];
  [configuration3 setTimeoutIntervalForRequest:v7];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100422630;
  v22[3] = &unk_100BDB848;
  v22[4] = self;
  v19 = completionCopy;
  v23 = v19;
  [v14 setModifyRecordZonesCompletionBlock:v22];
  v20 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting CloudKit operation to delete KT zone {operation: %@}", buf, 0xCu);
  }

  database = [(IDSCloudKitKeyTransparencyStore *)self database];
  [database addOperation:v14];
}

- (void)fetchKeyTransparencyDeviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

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
  v8 = completionCopy;
  v14 = v8;
  v16 = buf;
  v9 = objc_retainBlock(v13);
  serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v11 = sub_1004251A4(serverBag, @"ck-kt-fetch-timeout", 120.0);

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

- (void)_no_timeout_fetchKeyTransparencyDeviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  currentDeviceRecordsPromise = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
  if (currentDeviceRecordsPromise && (v7 = currentDeviceRecordsPromise, [(IDSCloudKitKeyTransparencyStore *)self serverBag], v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_100425210(v8, 1), v8, v7, (v9 & 1) != 0))
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentDeviceRecordsPromise2 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = currentDeviceRecordsPromise2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cache hit for key transparency device records {promise: %@}", buf, 0xCu);
    }
  }

  else
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      currentDeviceRecordsPromise3 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = currentDeviceRecordsPromise3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cache miss for key transparency device records -- starting fetch {promise: %@}", buf, 0xCu);
    }

    _no_timeout_no_cache_fetchKeyTransparencyDeviceRecords = [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_no_cache_fetchKeyTransparencyDeviceRecords];
    [(IDSCloudKitKeyTransparencyStore *)self setCurrentDeviceRecordsPromise:_no_timeout_no_cache_fetchKeyTransparencyDeviceRecords];

    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      currentDeviceRecordsPromise4 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412290;
      v29 = currentDeviceRecordsPromise4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated cached promise for key transparency device records {promise: %@}", buf, 0xCu);
    }

    serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
    v18 = sub_1004251A4(serverBag, @"ck-kt-cache-ttl", 30.0);

    v19 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      currentDeviceRecordsPromise5 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
      *buf = 138412546;
      v29 = currentDeviceRecordsPromise5;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting timer to clean up cached promise for key transparency device records {promise: %@, cleanUpDelay: %f}", buf, 0x16u);
    }

    v21 = dispatch_time(0, (v18 * 1000000000.0));
    queue2 = [(IDSCloudKitKeyTransparencyStore *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004233E8;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_after(v21, queue2, block);
  }

  currentDeviceRecordsPromise6 = [(IDSCloudKitKeyTransparencyStore *)self currentDeviceRecordsPromise];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1004234BC;
  v25[3] = &unk_100BDBC10;
  v25[4] = self;
  v26 = completionCopy;
  v24 = completionCopy;
  [currentDeviceRecordsPromise6 registerResultBlock:v25];
}

- (id)_no_timeout_no_cache_fetchKeyTransparencyDeviceRecords
{
  queue = [(IDSCloudKitKeyTransparencyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Verifying encryption prerequisites for trusted device records fetch", buf, 2u);
  }

  v5 = objc_alloc_init(CUTUnsafePromiseSeal);
  serverBag = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v7 = sub_1004251A4(serverBag, @"ck-kt-time-interval-for-requests", 60.0);

  serverBag2 = [(IDSCloudKitKeyTransparencyStore *)self serverBag];
  v9 = sub_100425210(serverBag2, 0);

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100423718;
  v16 = &unk_100BDBD00;
  v17 = v5;
  selfCopy = self;
  v19 = v7;
  v20 = v9;
  v10 = v5;
  [(IDSCloudKitKeyTransparencyStore *)self _no_timeout_verifyEncryptionPrerequisitesWithCompletion:&v13];
  promise = [v10 promise];

  return promise;
}

- (void)handleKVSUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  integerValue = [v4 integerValue];
  if (integerValue < 2)
  {
    goto LABEL_4;
  }

  if (integerValue == 2)
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

  if (integerValue == 3)
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

- (void)insertDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = keyCopy;
    v13 = 2112;
    v14 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inserting KVS entry {key: %@, value: %@}", &v11, 0x16u);
  }

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    [kvStore2 setDictionary:dictionaryCopy forKey:keyCopy];
  }

  else
  {
    kvStore2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(kvStore2, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }
  }
}

- (void)removeEntryForKey:(id)key
{
  keyCopy = key;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = keyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing KVS entry {key: %@}", &v8, 0xCu);
  }

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    [kvStore2 removeObjectForKey:keyCopy];
  }

  else
  {
    kvStore2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(kvStore2, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }
  }
}

- (id)fetchEntryForKey:(id)key
{
  keyCopy = key;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = keyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching KVS entry. {key: %@}", &v10, 0xCu);
  }

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    v8 = [kvStore2 objectForKey:keyCopy];
  }

  else
  {
    kvStore2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(kvStore2, OS_LOG_TYPE_ERROR))
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

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
    dictionaryRepresentation = [kvStore2 dictionaryRepresentation];
  }

  else
  {
    kvStore2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(kvStore2, OS_LOG_TYPE_ERROR))
    {
      sub_10091E750();
    }

    dictionaryRepresentation = &__NSDictionary0__struct;
  }

  return dictionaryRepresentation;
}

- (void)removeAllEntries
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wiping all entries from KVS.", buf, 2u);
  }

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    fetchAllEntries = [(IDSCloudKitKeyTransparencyStore *)self fetchAllEntries];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [fetchAllEntries countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(fetchAllEntries);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
          [kvStore2 removeObjectForKey:v10];
        }

        v7 = [fetchAllEntries countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    fetchAllEntries = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(fetchAllEntries, OS_LOG_TYPE_ERROR))
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

  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    if (!+[IMUserDefaults shouldForceFailKTKVSSync]|| !CUTIsInternalInstall())
    {
      v9 = objc_alloc_init(CUTUnsafePromiseSeal);
      kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100424E20;
      v18 = &unk_100BDA900;
      v19 = v9;
      selfCopy = self;
      v11 = v9;
      [kvStore2 synchronizeWithCompletionHandler:&v15];

      promise = [v11 promise];

      goto LABEL_14;
    }

    v5 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default set to force fail sync KVS.", buf, 2u);
    }

    v6 = @"Force failing sync KVS.";
    selfCopy3 = self;
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
    selfCopy3 = self;
    v8 = -5003;
  }

  v11 = [(IDSCloudKitKeyTransparencyStore *)selfCopy3 _clientErrorWithCode:v8 debugDescription:v6 underlyingError:0];
  promise = [CUTUnsafePromise failedPromiseWithError:v11];
LABEL_14:

  return promise;
}

- (BOOL)initializeKVS
{
  kvStore = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore)
  {
    return 1;
  }

  v4 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.private.ids.kt-kvs" type:2];
  [(IDSCloudKitKeyTransparencyStore *)self setKvStore:v4];

  kvStore2 = [(IDSCloudKitKeyTransparencyStore *)self kvStore];

  if (kvStore2)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleKVSUpdate:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:self->_kvStore];

    return 1;
  }

  return 0;
}

@end