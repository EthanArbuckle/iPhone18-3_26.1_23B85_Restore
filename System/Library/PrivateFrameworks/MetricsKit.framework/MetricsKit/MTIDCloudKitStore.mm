@interface MTIDCloudKitStore
+ (BOOL)updateRecord:(id)a3 isSpanRecord:(BOOL)a4 scheme:(id)a5 expectedKey:(id)a6 expiration:(id)a7 reset:(BOOL)a8;
+ (id)keyOfReferenceDate:(id)a3;
+ (id)recordZoneID;
+ (id)referenceDateOfRecord:(id)a3;
+ (id)referenceRecordIDForScheme:(id)a3 dsId:(id)a4;
+ (id)spanRecordIDForScheme:(id)a3 referenceRecordID:(id)a4 serialNumber:(unint64_t)a5;
- (MTIDCloudKitStore)initWithContainerIdentifer:(id)a3 enableSync:(BOOL)a4;
- (MTIDSyncEngine)syncEngine;
- (id)debugInfo;
- (id)maintainSchemes:(id)a3 options:(id)a4;
- (id)promiseForRecordWithID:(id)a3 timeout:(double)a4 qualityOfService:(int64_t)a5 existingOnly:(BOOL)a6 updateRecordMaybe:(id)a7;
- (id)recordWithID:(id)a3;
- (id)recordWithID:(id)a3 qualityOfService:(int64_t)a4 updateRecordMaybe:(id)a5 error:(id *)a6;
- (id)resetSchemes:(id)a3 options:(id)a4;
- (id)secretForScheme:(id)a3 options:(id)a4;
- (id)syncForSchemes:(id)a3 options:(id)a4;
- (void)_generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4;
- (void)accountDidChangeWithUserRecordID:(id)a3;
- (void)clearLocalData;
- (void)cloudKitLocalDB:(id)a3 didChangeRecord:(id)a4;
- (void)fetchChangesIfNeeded;
- (void)generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4;
- (void)recordWasDeleted:(id)a3;
- (void)recordWasFailedToSave:(id)a3;
- (void)recordWasFetched:(id)a3;
- (void)recordWasSaved:(id)a3;
- (void)syncEngineDidStartWithError:(id)a3;
@end

@implementation MTIDCloudKitStore

- (MTIDCloudKitStore)initWithContainerIdentifer:(id)a3 enableSync:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = MTIDCloudKitStore;
  v7 = [(MTIDCloudKitStore *)&v24 init];
  v8 = v7;
  if (v7)
  {
    [(MTIDCloudKitStore *)v7 setContainerIdentifier:v6];
    if (v4)
    {
      v9 = +[MTFrameworkEnvironment sharedEnvironment];
      v10 = [v9 valueForEntitlement:@"com.apple.developer.icloud-container-identifiers"];

      -[MTIDCloudKitStore setCanSyncBetweenDevices:](v8, "setCanSyncBetweenDevices:", [v10 containsObject:v6]);
      if (![(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
      {
        v11 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v26 = v6;
          v27 = 2112;
          v28 = @"com.apple.developer.icloud-container-identifiers";
          _os_log_impl(&dword_258F4B000, v11, OS_LOG_TYPE_ERROR, "MetricsKit: The application is missing container %@ in %@ entitlement.", buf, 0x16u);
        }
      }
    }

    else
    {
      [(MTIDCloudKitStore *)v8 setCanSyncBetweenDevices:0];
    }

    v12 = [v6 stringByAppendingString:@".accessqueue"];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    [(MTIDCloudKitStore *)v8 setAccessQueue:v13];

    v14 = [MTIDCloudKitLocalDB alloc];
    v15 = +[MTIDCloudKitStore recordZoneID];
    v16 = [(MTIDCloudKitLocalDB *)v14 initWithContainerIdentifier:v6 recordType:@"MT_IDSecret" recordZoneID:v15];

    [(MTIDCloudKitLocalDB *)v16 setDelegate:v8];
    [(MTIDCloudKitStore *)v8 setLocalDB:v16];
    v17 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDCloudKitStore *)v8 setGeneratedDates:v17];

    if ([(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
    {
      v18 = [(MTIDCloudKitStore *)v8 syncEngine];
      [v18 start];
    }

    v19 = [MTIDCloudKitPromiseManager alloc];
    v20 = [(MTIDCloudKitStore *)v8 accessQueue];
    v21 = [(MTIDCloudKitPromiseManager *)v19 initWithCallbackQueue:v20];
    [(MTIDCloudKitStore *)v8 setPromiseManager:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (MTIDSyncEngine)syncEngine
{
  if (!self->_syncEngine && [(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v3 = [MTIDSyncEngine alloc];
    v4 = [(MTIDCloudKitStore *)self containerIdentifier];
    v5 = +[MTIDCloudKitStore recordZoneID];
    v6 = [(MTIDCloudKitStore *)self accessQueue];
    v7 = [(MTIDSyncEngine *)v3 initWithContainerIdentifier:v4 zoneID:v5 queue:v6 delegate:self];
    syncEngine = self->_syncEngine;
    self->_syncEngine = v7;
  }

  v9 = self->_syncEngine;

  return v9;
}

- (void)generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 lifespan] && -[MTIDCloudKitStore canSyncBetweenDevices](self, "canSyncBetweenDevices"))
  {
    objc_initWeak(&location, self);
    v8 = [(MTIDCloudKitStore *)self accessQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__MTIDCloudKitStore_generateFutureRecordsForScheme_referenceRecord___block_invoke;
    v9[3] = &unk_2798CDBD0;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __68__MTIDCloudKitStore_generateFutureRecordsForScheme_referenceRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _generateFutureRecordsForScheme:*(a1 + 32) referenceRecord:*(a1 + 40)];
}

- (void)_generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0x2798CC000uLL;
  v9 = [MTIDCloudKitStore referenceDateOfRecord:v7];
  if (!v9)
  {
    v24 = self;
    v37 = 0;
    v17 = 0;
    v20 = [v6 storagePoolSize] - 1;
LABEL_10:
    v25 = 0;
    v26 = v24;
    do
    {
      v27 = v25;
      v28 = *(v8 + 2968);
      v29 = [v7 recordID];
      [v28 spanRecordIDForScheme:v6 referenceRecordID:v29 serialNumber:v17];
      v31 = v30 = v8;

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __69__MTIDCloudKitStore__generateFutureRecordsForScheme_referenceRecord___block_invoke;
      v39[3] = &unk_2798CDBF8;
      v40 = v7;
      v42 = v17;
      v41 = v6;
      v38 = v27;
      v32 = [(MTIDCloudKitStore *)v26 recordWithID:v31 qualityOfService:-1 updateRecordMaybe:v39 error:&v38];
      v25 = v38;

      v8 = v30;
      ++v17;
    }

    while (v17 <= v20);

    v9 = v37;
    goto LABEL_13;
  }

  v10 = +[MTFrameworkEnvironment sharedEnvironment];
  v11 = [v10 date];

  [v6 maxFutureTimeInterval];
  v12 = [v11 dateByAddingTimeInterval:?];
  v13 = [(MTIDCloudKitStore *)self generatedDates];
  v14 = [v6 idNamespace];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15 && [v12 compare:v15] == -1)
  {

    goto LABEL_13;
  }

  v36 = v15;
  v35 = [MTIDSpan spanForScheme:v6 date:v11 referenceDate:v9];
  v16 = [MTIDSpan spanForScheme:v6 date:v12 referenceDate:v9];
  v17 = [v35 serialNumber];
  v18 = [v16 serialNumber];
  v19 = [v6 storagePoolSize];
  if (v18 >= v17 + v19 - 2)
  {
    v20 = v17 + v19 - 2;
  }

  else
  {
    v20 = v18;
  }

  v21 = [v16 endDate];
  [(MTIDCloudKitStore *)self generatedDates];
  v22 = v34 = v11;
  [v6 idNamespace];
  v23 = v33 = self;
  [v22 setObject:v21 forKeyedSubscript:v23];

  if (v17 <= v20)
  {
    v24 = v33;
    v37 = v9;
    v8 = 0x2798CC000;
    goto LABEL_10;
  }

LABEL_13:
}

BOOL __69__MTIDCloudKitStore__generateFutureRecordsForScheme_referenceRecord___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  v6 = [MTIDCloudKitStore spanRecordKeyWithReferenceRecord:v3 serialNumber:v4];
  v7 = [MTIDCloudKitStore updateRecord:v5 isSpanRecord:1 scheme:a1[5] expectedKey:v6 expiration:0 reset:0];

  return v7;
}

- (id)recordWithID:(id)a3 qualityOfService:(int64_t)a4 updateRecordMaybe:(id)a5 error:(id *)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MTIDCloudKitStore *)self localDB];
  v27 = 0;
  v14 = [v13 recordWithID:v10 error:&v27];
  v15 = v27;
  if (v15)
  {
    v16 = v15;
    if (a6)
    {
LABEL_3:
      v17 = v16;
      v18 = 0;
      *a6 = v16;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v14)
  {
    v19 = objc_alloc(MEMORY[0x277CBC5A0]);
    v20 = [v13 recordType];
    v14 = [v19 initWithRecordType:v20 recordID:v10];
  }

  if (!v11[2](v11, v14))
  {
    v16 = 0;
LABEL_11:
    v14 = v14;
    v18 = v14;
    goto LABEL_14;
  }

  v26 = 0;
  v21 = [v13 writeRecord:v14 error:&v26];
  v16 = v26;
  if (v21)
  {
    if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
    {
      v22 = [(MTIDCloudKitStore *)self syncEngine];
      v28[0] = v10;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      [v22 saveRecordsWithIDs:v23 qualityOfService:a4];
    }

    goto LABEL_11;
  }

  if (a6)
  {
    goto LABEL_3;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)promiseForRecordWithID:(id)a3 timeout:(double)a4 qualityOfService:(int64_t)a5 existingOnly:(BOOL)a6 updateRecordMaybe:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = objc_alloc_init(MTPromise);
  v15 = [(MTIDCloudKitStore *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__MTIDCloudKitStore_promiseForRecordWithID_timeout_qualityOfService_existingOnly_updateRecordMaybe___block_invoke;
  block[3] = &unk_2798CDC48;
  block[4] = self;
  v23 = v12;
  v25 = v13;
  v26 = a5;
  v16 = v14;
  v24 = v16;
  v27 = a4;
  v28 = a6;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, block);

  v19 = v24;
  v20 = v16;

  return v16;
}

void __100__MTIDCloudKitStore_promiseForRecordWithID_timeout_qualityOfService_existingOnly_updateRecordMaybe___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v16 = 0;
  v6 = [v2 recordWithID:v3 qualityOfService:v4 updateRecordMaybe:v5 error:&v16];
  v7 = v16;
  if (v7)
  {
    [*(a1 + 48) finishWithError:v7];
  }

  else if ([v6 mt_isSynchronized] & 1) != 0 || !objc_msgSend(*(a1 + 32), "canSyncBetweenDevices") || *(a1 + 72) <= 0.0 || (*(a1 + 80))
  {
    [*(a1 + 48) finishWithResult:v6];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"secretKey"];
    v9 = [*(a1 + 32) promiseManager];
    v10 = [v9 waitForRecordToSync:v6 timeout:*(a1 + 72)];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__MTIDCloudKitStore_promiseForRecordWithID_timeout_qualityOfService_existingOnly_updateRecordMaybe___block_invoke_2;
    v12[3] = &unk_2798CDC20;
    v13 = v8;
    v14 = *(a1 + 48);
    v15 = v6;
    v11 = v8;
    [v10 addFinishBlock:v12];
  }
}

void __100__MTIDCloudKitStore_promiseForRecordWithID_timeout_qualityOfService_existingOnly_updateRecordMaybe___block_invoke_2(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = a1[4];
  v7 = [v9 objectForKeyedSubscript:@"secretKey"];
  LODWORD(v6) = [v6 isEqualToString:v7];

  v8 = a1[5];
  if (v6)
  {
    [v8 finishWithResult:v9 error:v5];
  }

  else
  {
    [v8 finishWithResult:a1[6]];
  }
}

+ (id)recordZoneID
{
  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:@"MT_IDZone" ownerName:*MEMORY[0x277CBBF28]];

  return v3;
}

+ (id)referenceRecordIDForScheme:(id)a3 dsId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 idNamespace];
  v8 = [v6 idType];

  if (v5 && v8 == 2)
  {
    v9 = [v7 stringByAppendingFormat:@"_%llx", objc_msgSend(v5, "unsignedLongLongValue")];

    v7 = v9;
  }

  v10 = [v7 mt_SHA1Base62String];
  v11 = [@"MT_ID" stringByAppendingString:v10];

  v12 = objc_alloc(MEMORY[0x277CBC5D0]);
  v13 = +[MTIDCloudKitStore recordZoneID];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  return v14;
}

+ (id)referenceDateOfRecord:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"secretKey"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)keyOfReferenceDate:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACA8];
    [a3 timeIntervalSince1970];
    v6 = [v4 stringWithFormat:@"%lld", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)spanRecordIDForScheme:(id)a3 referenceRecordID:(id)a4 serialNumber:(unint64_t)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [a4 recordName];
  v11 = [v9 storagePoolSize];

  v12 = [v8 stringWithFormat:@"%@_%02lx", v10, a5 % v11];

  v13 = objc_alloc(MEMORY[0x277CBC5D0]);
  v14 = [a1 recordZoneID];
  v15 = [v13 initWithRecordName:v12 zoneID:v14];

  return v15;
}

+ (BOOL)updateRecord:(id)a3 isSpanRecord:(BOOL)a4 scheme:(id)a5 expectedKey:(id)a6 expiration:(id)a7 reset:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v32 = a7;
  v16 = [v13 objectForKeyedSubscript:@"namespace"];
  v17 = [v13 objectForKeyedSubscript:@"secretKey"];
  v18 = [v14 idNamespace];
  v31 = v16;
  LODWORD(v16) = [v16 isEqualToString:v18];

  v19 = v16 ^ 1;
  if (v12 && (v19 & 1) == 0)
  {
    if ([v17 isEqualToString:v15] && !v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v14 idNamespace];
      *buf = 138412802;
      v34 = v13;
      v35 = 2112;
      v36 = v25;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_258F4B000, v24, OS_LOG_TYPE_DEBUG, "MetricsKit: Updating record %@ for namespace %@ key %@", buf, 0x20u);
    }

    v26 = [v14 idNamespace];
    [v13 setObject:v26 forKeyedSubscript:@"namespace"];

    [v13 setObject:v15 forKeyedSubscript:@"secretKey"];
    v22 = v32;
    [v13 setObject:v32 forKeyedSubscript:@"expiration"];
    v27 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v27 UUIDString];
    [v13 mt_setSecretValue:v28];

    [v13 mt_setSynchronized:0];
    goto LABEL_17;
  }

  if ((v19 | v8) == 1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v20 = 0;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = !v12;
  }

  if (!v15)
  {
    v22 = v32;
    goto LABEL_18;
  }

  v22 = v32;
  if (v21)
  {
    [v13 setObject:v15 forKeyedSubscript:@"secretKey"];
    v23 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_258F4B000, v23, OS_LOG_TYPE_DEBUG, "MetricsKit: Updating reference record %@ with current date", buf, 0xCu);
    }

LABEL_17:
    v20 = 1;
  }

LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL __100__MTIDCloudKitStore_referenceRecordForScheme_dsId_date_reset_timeout_existingOnly_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [MTIDCloudKitStore keyOfReferenceDate:v4];
  v7 = [MTIDCloudKitStore updateRecord:v5 isSpanRecord:0 scheme:*(a1 + 40) expectedKey:v6 expiration:0 reset:*(a1 + 49)];

  return v7;
}

BOOL __100__MTIDCloudKitStore_spanRecordForScheme_span_timeout_existingOnly_qualityOfService_referenceRecord___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = +[MTIDCloudKitStore spanRecordKeyWithReferenceRecord:serialNumber:](MTIDCloudKitStore, "spanRecordKeyWithReferenceRecord:serialNumber:", v4, [v5 serialNumber]);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) endDate];
  v10 = [MTIDCloudKitStore updateRecord:v6 isSpanRecord:1 scheme:v8 expectedKey:v7 expiration:v9 reset:0];

  return v10;
}

- (void)fetchChangesIfNeeded
{
  v3 = [(MTIDCloudKitStore *)self localDB];
  v4 = [v3 needsFetchRecords];

  if (v4)
  {
    v5 = [(MTIDCloudKitStore *)self localDB];
    [v5 setNeedsFetchRecords:0];

    v6 = [(MTIDCloudKitStore *)self syncEngine];
    [v6 fetchAllRecords];
  }
}

- (id)syncForSchemes:(id)a3 options:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"dsId"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [MTIDCloudKitStore referenceRecordIDForScheme:*(*(&v23 + 1) + 8 * v13) dsId:v7];
        v8 = [v14 arrayByAddingObject:v15];

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = [(MTIDCloudKitStore *)self syncEngine];

  if (v16)
  {
    v17 = [(MTIDCloudKitStore *)self syncEngine];
    v18 = [v17 fetchRecordWithIDs:v8];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__MTIDCloudKitStore_syncForSchemes_options___block_invoke;
    v22[3] = &unk_2798CD570;
    v22[4] = self;
    v19 = [v18 thenWithBlock:v22];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __44__MTIDCloudKitStore_syncForSchemes_options___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v7 = v5;
    v8 = *v31;
    *&v6 = 138412546;
    v28 = v6;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * i), v28}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 recordType];
          v13 = [v12 isEqualToString:@"MT_IDSecret"];

          if (v13)
          {
            v14 = [v11 recordID];
            v15 = [v14 recordName];
            v16 = [v15 hasPrefix:@"MT_ID"];

            if (v16)
            {
              [v11 mt_setSynchronized:1];
              v17 = [*(a1 + 32) localDB];
              v29 = 0;
              v18 = [v17 writeRecord:v11 error:&v29];
              v19 = v29;

              if ((v18 & 1) == 0)
              {
                v20 = MTMetricsKitOSLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = [v11 recordID];
                  [v21 recordName];
                  v23 = v22 = a1;
                  *buf = v28;
                  v36 = v23;
                  v37 = 2112;
                  v38 = v19;
                  _os_log_impl(&dword_258F4B000, v20, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);

                  a1 = v22;
                  goto LABEL_14;
                }

                goto LABEL_15;
              }
            }

            else
            {
              v19 = [*(a1 + 32) syncEngine];
              v20 = [v11 recordID];
              v34 = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
              [v19 deleteRecordsWithIDs:v21];
LABEL_14:

LABEL_15:
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (!v7)
      {
LABEL_19:
        v24 = MEMORY[0x277CBEC38];
        goto LABEL_21;
      }
    }
  }

  v24 = MEMORY[0x277CBEC28];
LABEL_21:
  v25 = [MTPromise promiseWithResult:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)accountDidChangeWithUserRecordID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MTIDCloudKitStore *)self localDB];
  v7 = [v4 recordName];
  v8 = [v6 setUserRecordIDName:v7];

  if (v8)
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v4 recordName];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_258F4B000, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Updated user record with ID %@", &v12, 0xCu);
    }

    [MTInterprocessChangeNotifier notify:@"MTCloudKitAccountDidChangeNotification"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidStartWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 domain];
    v8 = [v6 stringWithFormat:@"%@-%ld", v7, objc_msgSend(v4, "code")];

    v9 = [(MTIDCloudKitStore *)self localDB];
    [v9 setSyncStatusCode:v8];

    v10 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      v11 = "MetricsKit: Error starting sync engine: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
LABEL_9:
      _os_log_impl(&dword_258F4B000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    v15 = [(MTIDCloudKitStore *)self localDB];
    [v15 setSyncStatusCode:@"Ready"];

    [(MTIDCloudKitStore *)self fetchChangesIfNeeded];
    v16 = [(MTIDCloudKitStore *)self localDB];
    v8 = [v16 pendingRecordIDs];

    if ([v8 count])
    {
      v17 = [(MTIDCloudKitStore *)self syncEngine];
      [v17 saveRecordsWithIDs:v8 qualityOfService:25];

      v10 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v20) = [v8 count];
        v11 = "MetricsKit: Started sync engine with %d unsynchronized records";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 8;
        goto LABEL_9;
      }
    }

    else
    {
      v10 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v11 = "MetricsKit: Started sync engine with all records synchronized";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 2;
        goto LABEL_9;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)recordWithID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self localDB];
  v12 = 0;
  v6 = [v5 recordWithID:v4 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 recordName];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read local record data with ID %@ error %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)recordWasSaved:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    [v4 mt_setSynchronized:1];
    v7 = [(MTIDCloudKitStore *)self localDB];
    v14 = 0;
    v8 = [v7 writeRecord:v4 error:&v14];
    v9 = v14;

    if ((v8 & 1) == 0)
    {
      v10 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 recordID];
        v12 = [v11 recordName];
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)recordWasFailedToSave:(id)a3
{
  v7 = a3;
  v4 = [v7 recordType];
  v5 = [v4 isEqualToString:@"MT_IDSecret"];

  if (v5)
  {
    v6 = [(MTIDCloudKitStore *)self promiseManager];
    [v6 finishPromisesOfRecord:v7];
  }
}

- (void)recordWasFetched:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    v7 = [v4 recordID];
    v8 = [v7 recordName];
    v9 = [v8 hasPrefix:@"MT_ID"];

    if (v9)
    {
      [v4 mt_setSynchronized:1];
      v10 = [(MTIDCloudKitStore *)self localDB];
      v17 = 0;
      v11 = [v10 writeRecord:v4 error:&v17];
      v12 = v17;

      if (v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v13 = MTMetricsKitOSLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v14 = [v4 recordID];
      v15 = [v14 recordName];
      *buf = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_258F4B000, v13, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
    }

    else
    {
      v12 = [(MTIDCloudKitStore *)self syncEngine];
      v13 = [v4 recordID];
      v18 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      [v12 deleteRecordsWithIDs:v14];
    }

    goto LABEL_8;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)recordWasDeleted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self localDB];
  v11 = 0;
  v6 = [v5 deleteRecordWithID:v4 error:&v11];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 recordName];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete local record data with ID %@ error %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitLocalDB:(id)a3 didChangeRecord:(id)a4
{
  v7 = a4;
  if ([v7 mt_isSynchronized])
  {
    v5 = [(MTIDCloudKitStore *)self promiseManager];
    [v5 finishPromisesOfRecord:v7];

    v6 = [v7 objectForKeyedSubscript:@"namespace"];
    [MTInterprocessChangeNotifier notify:v6];
  }
}

- (id)secretForScheme:(id)a3 options:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [v7 objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    v12 = [v13 date];
  }

  v35 = [v7 objectForKeyedSubscript:@"dsId"];
  v14 = [v7 objectForKeyedSubscript:@"reset"];
  v15 = [v14 BOOLValue];

  v16 = [v7 objectForKeyedSubscript:@"syncWaitTime"];
  v17 = [v7 objectForKeyedSubscript:@"existingOnly"];
  v18 = [v17 BOOLValue];

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    +[MTIDSyncEngine transactionTimeout];
  }

  v20 = v19;
  v21 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v6 idNamespace];
    v23 = @"NO";
    *buf = 138413058;
    *&buf[4] = v22;
    if (v18)
    {
      v23 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v45 = v23;
    LOWORD(v46) = 2048;
    *(&v46 + 2) = v20;
    _os_log_impl(&dword_258F4B000, v21, OS_LOG_TYPE_INFO, "MetricsKit: Secret requested for scheme %@, date: %@, existingOnly: %@, timeout: %f", buf, 0x2Au);
  }

  if (!v18)
  {
    goto LABEL_14;
  }

  v24 = [MTIDCloudKitStore referenceRecordIDForScheme:v6 dsId:v35];
  v25 = [(MTIDCloudKitStore *)self localDB];
  v43 = 0;
  v26 = [v25 recordWithID:v24 error:&v43];
  v34 = v43;

  if (v26)
  {

LABEL_14:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    *&v46 = __Block_byref_object_dispose_;
    *(&v46 + 1) = 0;
    v27 = [(MTIDCloudKitStore *)self referenceRecordForScheme:v6 dsId:v35 date:v12 reset:v15 timeout:v18 existingOnly:25 qualityOfService:v20];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __45__MTIDCloudKitStore_secretForScheme_options___block_invoke;
    v36[3] = &unk_2798CDCE8;
    v37 = v6;
    v39 = self;
    v40 = buf;
    v38 = v12;
    v41 = v20;
    v42 = v18;
    v28 = [v27 thenWithBlock:v36];

    _Block_object_dispose(buf, 8);
    goto LABEL_15;
  }

  v31 = [[MTIDSecret alloc] initWithValue:&stru_286A3A510 effectiveDate:0 expirationDate:0 isSynchronize:0];
  v32 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v6 idNamespace];
    *buf = 138412290;
    *&buf[4] = v33;
    _os_log_impl(&dword_258F4B000, v32, OS_LOG_TYPE_INFO, "MetricsKit: Secret doesn't exist, returning empty secret for scheme %@", buf, 0xCu);
  }

  v28 = [MTPromise promiseWithResult:v31];

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

id __45__MTIDCloudKitStore_secretForScheme_options___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) idNamespace];
    v6 = [v3 recordID];
    v7 = [v3 mt_isSynchronized];
    v8 = @"unsynchronized";
    *buf = 138412802;
    v35 = v5;
    v36 = 2112;
    if (v7)
    {
      v8 = @"synchronized";
    }

    v37 = v6;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_INFO, "MetricsKit: Loaded reference record for scheme %@ with id %@, synchronized: %@", buf, 0x20u);
  }

  if ([*(a1 + 32) lifespan] < 1)
  {
    v10 = [v3 mt_secretValue];
    v14 = -[MTIDSecret initWithValue:effectiveDate:expirationDate:isSynchronize:]([MTIDSecret alloc], "initWithValue:effectiveDate:expirationDate:isSynchronize:", v10, 0, 0, [v3 mt_isSynchronized]);
    if ([*(a1 + 48) canSyncBetweenDevices])
    {
      v16 = [*(a1 + 48) localDB];
      v17 = [v16 syncStatusCode];
      [(MTIDSecret *)v14 setSyncStatusCode:v17];
    }

    v18 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [*(a1 + 32) idNamespace];
      *buf = 138412290;
      v35 = v19;
      _os_log_impl(&dword_258F4B000, v18, OS_LOG_TYPE_INFO, "MetricsKit: Returning secret for scheme %@", buf, 0xCu);
    }

    v15 = [MTPromise promiseWithResult:v14];
    goto LABEL_14;
  }

  v9 = [MTIDCloudKitStore referenceDateOfRecord:v3];
  if (v9 || (v9 = *(a1 + 40)) != 0)
  {
    v10 = v9;
    v11 = [MTIDSpan spanForScheme:*(a1 + 32) date:*(a1 + 40) referenceDate:v9];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1 + 48) generateFutureRecordsForScheme:*(a1 + 32) referenceRecord:v3];
    v14 = [*(a1 + 48) spanRecordForScheme:*(a1 + 32) span:*(*(*(a1 + 56) + 8) + 40) timeout:*(a1 + 72) existingOnly:25 qualityOfService:v3 referenceRecord:*(a1 + 64)];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__MTIDCloudKitStore_secretForScheme_options___block_invoke_70;
    v30[3] = &unk_2798CDCC0;
    v31 = *(a1 + 32);
    v32 = v3;
    v33 = *(a1 + 48);
    v15 = [(MTIDSecret *)v14 thenWithBlock:v30];

LABEL_14:
    goto LABEL_15;
  }

  v22 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v35 = v23;
    _os_log_impl(&dword_258F4B000, v22, OS_LOG_TYPE_ERROR, "MetricsKit: Reference date is null, returning error. Scheme: %@", buf, 0xCu);
  }

  v10 = MTError(703, @"Namespace date is null, are you sending multiple reset requests too quickly?", v24, v25, v26, v27, v28, v29, v30[0]);
  v15 = [MTPromise promiseWithError:v10];
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

id __45__MTIDCloudKitStore_secretForScheme_options___block_invoke_70(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_INFO, "MetricsKit: Span record obtained for scheme %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [*(a1 + 40) mt_secretValue];
  v8 = [v3 mt_secretValue];
  v9 = [v6 stringWithFormat:@"%@%@", v7, v8];

  v10 = [MTIDSecret alloc];
  v11 = [*(*(*(a1 + 56) + 8) + 40) startDate];
  v12 = [*(*(*(a1 + 56) + 8) + 40) endDate];
  if ([*(a1 + 40) mt_isSynchronized])
  {
    v13 = [v3 mt_isSynchronized];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(MTIDSecret *)v10 initWithValue:v9 effectiveDate:v11 expirationDate:v12 isSynchronize:v13];

  if ([*(a1 + 48) canSyncBetweenDevices])
  {
    v15 = [*(a1 + 48) localDB];
    v16 = [v15 syncStatusCode];
    [(MTIDSecret *)v14 setSyncStatusCode:v16];
  }

  v17 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v23 = v18;
    _os_log_impl(&dword_258F4B000, v17, OS_LOG_TYPE_INFO, "MetricsKit: Returning secret for scheme %@", buf, 0xCu);
  }

  v19 = [MTPromise promiseWithResult:v14];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)resetSchemes:(id)a3 options:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [v7 objectForKeyedSubscript:@"dsId"];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(MTIDCloudKitStore *)self referenceRecordForScheme:*(*(&v22 + 1) + 8 * i) dsId:v10 date:0 reset:1 timeout:0 existingOnly:25 qualityOfService:0.0, v22];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [MTPromise promiseWithAll:v11];
  v19 = [v18 thenWithBlock:&__block_literal_global_5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)maintainSchemes:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v10 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v23 = [v6 count];
      _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Performing maintenance on %d ID schemes", buf, 8u);
    }

    v11 = objc_alloc_init(MTPromise);
    v12 = [(MTIDCloudKitStore *)self accessQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke;
    v18[3] = &unk_2798CDD80;
    v18[4] = self;
    v19 = v7;
    v20 = v6;
    v13 = v11;
    v21 = v13;
    dispatch_async(v12, v18);

    v14 = v21;
    v15 = v13;
  }

  else
  {
    v15 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] generatedDates];
  [v2 removeAllObjects];

  v3 = [MEMORY[0x277CBEB18] array];
  v16 = [a1[5] objectForKeyedSubscript:@"dsId"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1[6];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [a1[4] referenceRecordForScheme:v8 dsId:v16 date:0 reset:0 timeout:0 existingOnly:-1 qualityOfService:0.0];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke_2;
        v19[3] = &unk_2798CDD30;
        v19[4] = a1[4];
        v19[5] = v8;
        [v9 addSuccessBlock:v19];
        [v3 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v10 = [a1[4] syncEngine];
  v11 = [a1[4] localDB];
  v12 = [v11 pendingRecordIDs];
  [v10 saveRecordsWithIDs:v12 qualityOfService:-1];

  if ([v3 count])
  {
    v13 = [MTPromise promiseWithAll:v3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke_3;
    v17[3] = &unk_2798CDD58;
    v18 = a1[7];
    [v13 addFinishBlock:v17];
  }

  else
  {
    [a1[7] finishWithResult:MEMORY[0x277CBEC38]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 mt_isSynchronized])
  {
    v3 = [*(a1 + 32) syncEngine];
    v4 = [v5 recordID];
    [v3 fetchRecordWithID:v4];
  }

  [*(a1 + 32) generateFutureRecordsForScheme:*(a1 + 40) referenceRecord:v5];
}

uint64_t __45__MTIDCloudKitStore_maintainSchemes_options___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  return [v4 finishWithResult:v5 error:a3];
}

- (void)clearLocalData
{
  v2 = [(MTIDCloudKitStore *)self localDB];
  [v2 clearData];
}

- (id)debugInfo
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(MTIDCloudKitStore *)self localDB];
  v4 = [v3 allRecords];

  v12[0] = @"container";
  v5 = [(MTIDCloudKitStore *)self containerIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286A3A510;
  }

  v12[1] = @"secrets";
  v13[0] = v7;
  v8 = [v4 mt_map:&__block_literal_global_86];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __30__MTIDCloudKitStore_debugInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = [v3 objectForKeyedSubscript:@"secretKey"];
  [v4 setObject:v5 forKeyedSubscript:@"key"];

  v6 = [v3 mt_secretValue];
  [v4 setObject:v6 forKeyedSubscript:@"value"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v3 mt_isSynchronized];

  v9 = [v7 numberWithBool:v8];
  [v4 setObject:v9 forKeyedSubscript:@"isSynchronized"];

  v10 = [v4 copy];

  return v10;
}

@end