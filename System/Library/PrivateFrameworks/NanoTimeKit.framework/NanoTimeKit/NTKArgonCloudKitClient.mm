@interface NTKArgonCloudKitClient
+ (id)sharedClientQueue;
- (NSString)debugDescription;
- (NTKArgonCloudKitClient)initWithCloudKitDatabase:(id)a3 temporaryStorageURL:(id)a4 zoneName:(id)a5;
- (NTKArgonCloudKitClient)initWithCloudKitDatabase:(id)a3 zoneName:(id)a4;
- (void)_fetchNewRecordsSinceChangeToken:(id)a3 forReason:(int64_t)a4 attemptNumber:(unint64_t)a5 completion:(id)a6;
- (void)_publishRecord:(id)a3 completion:(id)a4;
- (void)_unpublishRecordsOfType:(id)a3 matchingPredicate:(id)a4 completion:(id)a5;
- (void)_unpublishRecordsWithPartialQueryOperation:(id)a3 accumulatedRecords:(id)a4 completion:(id)a5;
- (void)publishKeyDescriptor:(id)a3 completion:(id)a4;
- (void)requestIdentifierTokenForCurrentUserWithCompletion:(id)a3;
- (void)unpublishKeyDescriptor:(id)a3 completion:(id)a4;
@end

@implementation NTKArgonCloudKitClient

+ (id)sharedClientQueue
{
  if (sharedClientQueue_onceToken != -1)
  {
    +[NTKArgonCloudKitClient sharedClientQueue];
  }

  v3 = sharedClientQueue_queue;

  return v3;
}

void __43__NTKArgonCloudKitClient_sharedClientQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.nanotimekit.facesupport.CloudKitClient.internalQueue", v2);
  v1 = sharedClientQueue_queue;
  sharedClientQueue_queue = v0;
}

- (NTKArgonCloudKitClient)initWithCloudKitDatabase:(id)a3 zoneName:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAD78];
  v8 = a4;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];
  v12 = [v6 stringWithFormat:@"ArgonCloudKitClient-%@", v11];

  v13 = MEMORY[0x277CBEBC0];
  v14 = NSTemporaryDirectory();
  v15 = [v13 fileURLWithPath:v14];
  v16 = [v15 URLByAppendingPathComponent:v12];

  v17 = [(NTKArgonCloudKitClient *)self initWithCloudKitDatabase:v9 temporaryStorageURL:v16 zoneName:v8];
  return v17;
}

- (NTKArgonCloudKitClient)initWithCloudKitDatabase:(id)a3 temporaryStorageURL:(id)a4 zoneName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = NTKArgonCloudKitClient;
  v12 = [(NTKArgonCloudKitClient *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    v14 = [v11 copy];
    zoneName = v13->_zoneName;
    v13->_zoneName = v14;

    v16 = [v10 copy];
    temporaryStorageURL = v13->_temporaryStorageURL;
    v13->_temporaryStorageURL = v16;

    v18 = +[NTKArgonCloudKitClient sharedClientQueue];
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v18;

    v20 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v13->_zoneName ownerName:@"_defaultOwner"];
    recordZoneID = v13->_recordZoneID;
    v13->_recordZoneID = v20;
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NTKArgonCloudKitClient *)self zoneName];
  v7 = [v3 stringWithFormat:@"<%@: %p, zoneName=%@>", v5, self, v6];

  return v7;
}

- (void)requestIdentifierTokenForCurrentUserWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v16 = self;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Fetching user identifier token.", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NTKArgonCloudKitClient_requestIdentifierTokenForCurrentUserWithCompletion___block_invoke;
  aBlock[3] = &unk_2787878C0;
  aBlock[4] = self;
  v14 = v4;
  v6 = v4;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x277CBC3E0] fetchCurrentUserRecordOperation];
  [v8 setPerRecordCompletionBlock:&__block_literal_global_30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__NTKArgonCloudKitClient_requestIdentifierTokenForCurrentUserWithCompletion___block_invoke_4;
  v11[3] = &unk_278787908;
  v12 = v7;
  v9 = v7;
  [v8 setFetchRecordsCompletionBlock:v11];
  v10 = [(NTKArgonCloudKitClient *)self database];
  [v10 addOperation:v8];
}

void __77__NTKArgonCloudKitClient_requestIdentifierTokenForCurrentUserWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _NTKArgonCloudKitClientError(100, v6);

    v6 = v7;
  }

  v8 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NTKArgonCloudKitClient_requestIdentifierTokenForCurrentUserWithCompletion___block_invoke_2;
  block[3] = &unk_27877FF88;
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v8, v12);
}

void __77__NTKArgonCloudKitClient_requestIdentifierTokenForCurrentUserWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 allKeys];
    v6 = [v3 firstObject];

    v4 = [v6 recordName];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)_fetchNewRecordsSinceChangeToken:(id)a3 forReason:(int64_t)a4 attemptNumber:(unint64_t)a5 completion:(id)a6
{
  v59[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NTKArgonStringForFetchReason(a4, v13);
    *buf = 134349570;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v54 = v10;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Requesting new records for reason %{public}@ starting with change %{public}@.", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke;
  aBlock[3] = &unk_278787958;
  v51 = a5;
  v52 = a4;
  aBlock[4] = self;
  v37 = v11;
  v50 = v37;
  v15 = _Block_copy(aBlock);
  v16 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v18 = NTKArgonStringForFetchReason(a4, v17);
  [v16 setName:v18];

  v19 = [v16 defaultConfiguration];
  [v19 setPreferAnonymousRequests:1];

  v20 = [(NTKArgonCloudKitClient *)self recordZoneID];
  LODWORD(v19) = v20 == 0;

  if (v19)
  {
    v24 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonCloudKitClient _fetchNewRecordsSinceChangeToken:v24 forReason:? attemptNumber:? completion:?];
    }

    v21 = [(NTKArgonCloudKitClient *)self recordZoneError];
    (*(v15 + 2))(v15, 0, 0, v21);
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    if (v10)
    {
      v48 = 0;
      v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:{&v48, v37}];
      v23 = v48;
      if (v22)
      {
        [v21 setPreviousServerChangeToken:v22];
      }

      else
      {
        v25 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [NTKArgonCloudKitClient _fetchNewRecordsSinceChangeToken:v25 forReason:? attemptNumber:? completion:?];
        }
      }
    }

    v26 = objc_alloc(MEMORY[0x277CBC3B8]);
    v27 = [(NTKArgonCloudKitClient *)self recordZoneID];
    v59[0] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
    v29 = [(NTKArgonCloudKitClient *)self recordZoneID];
    v57 = v29;
    v58 = v21;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v31 = [v26 initWithRecordZoneIDs:v28 configurationsByRecordZoneID:v30];

    [v31 setGroup:v16];
    v32 = [v31 configuration];
    [v32 setPreferAnonymousRequests:1];

    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_41;
    v46[3] = &unk_278787980;
    v46[4] = self;
    v34 = v33;
    v47 = v34;
    [v31 setRecordChangedBlock:v46];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = __Block_byref_object_copy__55;
    v55 = __Block_byref_object_dispose__55;
    v56 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__55;
    v44[4] = __Block_byref_object_dispose__55;
    v45 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50;
    v43[3] = &unk_2787879A8;
    v43[4] = self;
    v43[5] = v44;
    v43[6] = buf;
    [v31 setRecordZoneFetchCompletionBlock:v43];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_55;
    v38[3] = &unk_2787879D0;
    v41 = buf;
    v38[4] = self;
    v40 = v15;
    v35 = v34;
    v39 = v35;
    v42 = v44;
    [v31 setFetchRecordZoneChangesCompletionBlock:v38];
    v36 = [(NTKArgonCloudKitClient *)self database];
    [v36 addOperation:v31];

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v11)
  {
    v12 = [v9 userInfo];
    v13 = [v12 objectForKey:*MEMORY[0x277CBBFB0]];

    v14 = [v13 allValues];
    v15 = [v14 firstObject];
    if ([v15 code] == 21 && !*(a1 + 48))
    {
      [*(a1 + 32) _fetchNewRecordsSinceChangeToken:0 forReason:*(a1 + 56) attemptNumber:1 completion:*(a1 + 40)];

      goto LABEL_9;
    }
  }

  if (v9)
  {
    v16 = _NTKArgonCloudKitClientError(103, v9);
  }

  else
  {
    v16 = 0;
  }

  v17 = [*(a1 + 32) internalQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_2;
  v19[3] = &unk_278787930;
  v23 = *(a1 + 40);
  v20 = v7;
  v21 = v8;
  v9 = v16;
  v22 = v9;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v19);
  dispatch_async(v17, v18);

LABEL_9:
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:NTKArgonCloudKitRecordTypeBundleDescriptor];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"fileName"];
    v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 134349314;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Found bundle descriptor record for %{public}@.", &v11, 0x16u);
    }

    v9 = [v3 objectForKeyedSubscript:@"key"];
    v10 = [[NTKArgonKeyDescriptor alloc] initWithKey:v9 fileName:v6];
    [*(a1 + 40) addObject:v10];
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_41_cold_1();
    }
  }
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "YES";
    v13 = a1[4];
    if (!v9)
    {
      v12 = "NO";
    }

    *buf = 134349314;
    v24 = v13;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Record zone changes query complete. Change token received: %s.", buf, 0x16u);
  }

  if (a5)
  {
    v14 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50_cold_1(a1, v14);
    }
  }

  if (v10)
  {
    v15 = *(a1[6] + 8);
    v16 = v10;
    v17 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v22 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v22];
    v17 = v22;
    v19 = *(a1[5] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (!*(*(a1[5] + 8) + 40))
    {
      v21 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50_cold_2(a1);
      }
    }
  }

LABEL_12:
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_55(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_4:
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_55_cold_1(a1);
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_7;
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    goto LABEL_4;
  }

  v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) count];
    v12 = 134349312;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Final record zone changes callback fired. Found %ld keys. No error detected!", &v12, 0x16u);
  }

  v11 = *(a1 + 48);
  v5 = [MEMORY[0x277CBEB98] setWithSet:*(a1 + 40)];
  v7 = *(v11 + 16);
LABEL_7:
  v7();
}

- (void)_unpublishRecordsWithPartialQueryOperation:(id)a3 accumulatedRecords:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 group];
  v12 = [v10 zoneID];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke;
  v28[3] = &unk_2787879F8;
  v13 = v8;
  v29 = v13;
  [v10 setRecordFetchedBlock:v28];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_2;
  v22 = &unk_278787A70;
  v23 = v11;
  v24 = v12;
  v25 = self;
  v26 = v13;
  v27 = v9;
  v14 = v9;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v10 setQueryCompletionBlock:&v19];
  v18 = [(NTKArgonCloudKitClient *)self database:v19];
  [v18 addOperation:v10];
}

void __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CBC590]) initWithCursor:v5];
    [v8 setGroup:*(a1 + 32)];
    [v8 setZoneID:*(a1 + 40)];
    [*(a1 + 48) _unpublishRecordsWithPartialQueryOperation:v8 accumulatedRecords:*(a1 + 56) completion:*(a1 + 64)];
  }

  else if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) recordID];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v9];
    [v16 setGroup:*(a1 + 32)];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_3;
    v22[3] = &unk_278787A20;
    v22[4] = *(a1 + 48);
    [v16 setPerRecordCompletionBlock:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_62;
    v19[3] = &unk_278787A48;
    v20 = v9;
    v21 = *(a1 + 64);
    v17 = v9;
    [v16 setModifyRecordsCompletionBlock:v19];
    v18 = [*(a1 + 48) database];
    [v18 addOperation:v16];
  }
}

void __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 134349570;
      v11 = v9;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_ERROR, "CloudKit Client %{public}p: Failed to unpublish record %{public}@: %{public}@.", &v10, 0x20u);
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 134349314;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Unpublished record %{public}@.", &v10, 0x16u);
    }
  }

LABEL_5:
}

void __99__NTKArgonCloudKitClient__unpublishRecordsWithPartialQueryOperation_accumulatedRecords_completion___block_invoke_62(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  if ([v9 isEqualToArray:*(a1 + 32)] && objc_msgSend(v9, "count"))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), v6 == 0, v6);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = _NTKArgonCloudKitClientError(204, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)_unpublishRecordsOfType:(id)a3 matchingPredicate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBC4F8];
  v11 = a5;
  v12 = objc_alloc_init(v10);
  [v12 setName:@"UserActionExplicit"];
  v13 = [(NTKArgonCloudKitClient *)self recordZoneID];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:v8 predicate:v9];
    v16 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v15];
    [v16 setGroup:v12];
    v17 = [(NTKArgonCloudKitClient *)self recordZoneID];
    [v16 setZoneID:v17];

    [(NTKArgonCloudKitClient *)self _unpublishRecordsWithPartialQueryOperation:v16 accumulatedRecords:v14 completion:v11];
  }

  else
  {
    v18 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonCloudKitClient _unpublishRecordsOfType:matchingPredicate:completion:];
    }

    (*(v11 + 2))(v11, 1, 0);
  }
}

- (void)_publishRecord:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NTKArgonCloudKitClient *)self zoneName];
    *buf = 134349570;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Publishing record %{public}@ in zone %{public}@.", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke;
  aBlock[3] = &unk_278787AC0;
  aBlock[4] = self;
  v24 = v6;
  v25 = v7;
  v10 = v7;
  v11 = v6;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v13 setName:@"UserActionExplicit"];
  v14 = objc_alloc(MEMORY[0x277CBC4A0]);
  v26 = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v16 = [v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  [v16 setGroup:v13];
  *buf = 0;
  *&buf[8] = 0;
  v17 = [MEMORY[0x277CCAD78] UUID];
  [v17 getUUIDBytes:buf];

  v18 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
  [v16 setClientChangeTokenData:v18];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke_2;
  v21[3] = &unk_278787AE8;
  v22 = v12;
  v19 = v12;
  [v16 setModifyRecordsCompletionBlock:v21];
  v20 = [(NTKArgonCloudKitClient *)self database];
  [v20 addOperation:v16];
}

void __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [v7 zoneName];
      *buf = 134349570;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Published record %{public}@ in zone %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v10 = _NTKArgonCloudKitClientError(202, v5);

    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke_cold_1();
    }

    v5 = v10;
  }

  v11 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke_69;
  block[3] = &unk_278787A98;
  v12 = *(a1 + 48);
  v18 = a2;
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v11, v14);
}

- (void)publishKeyDescriptor:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NTKArgonCloudKitClient *)self zoneName];
    *buf = 134349570;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Publishing key descriptor %{public}@ in zone %{public}@.", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__NTKArgonCloudKitClient_publishKeyDescriptor_completion___block_invoke;
  aBlock[3] = &unk_278787AC0;
  aBlock[4] = self;
  v10 = v6;
  v23 = v10;
  v11 = v7;
  v24 = v11;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v13 setName:@"UserActionExplicit"];
  v14 = [(NTKArgonCloudKitClient *)self recordZoneID];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CBC5A0]);
    v16 = NTKArgonCloudKitRecordTypeBundleDescriptor;
    v17 = [(NTKArgonCloudKitClient *)self recordZoneID];
    v18 = [v15 initWithRecordType:v16 zoneID:v17];

    v19 = [v10 fileName];
    [v18 setObject:v19 forKeyedSubscript:@"fileName"];

    v20 = [v10 key];
    [v18 setObject:v20 forKeyedSubscript:@"key"];

    [(NTKArgonCloudKitClient *)self _publishRecord:v18 completion:v12];
  }

  else
  {
    v21 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonCloudKitClient publishKeyDescriptor:completion:];
    }

    v18 = [(NTKArgonCloudKitClient *)self recordZoneError];
    v12[2](v12, 0, v18);
  }
}

void __58__NTKArgonCloudKitClient_publishKeyDescriptor_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [v7 zoneName];
      *buf = 134349570;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Published key descriptor %{public}@ in zone %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v10 = _NTKArgonCloudKitClientError(202, v5);

    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__NTKArgonCloudKitClient_publishKeyDescriptor_completion___block_invoke_cold_1();
    }

    v5 = v10;
  }

  v11 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKArgonCloudKitClient_publishKeyDescriptor_completion___block_invoke_72;
  block[3] = &unk_278787A98;
  v12 = *(a1 + 48);
  v18 = a2;
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v11, v14);
}

- (void)unpublishKeyDescriptor:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NTKArgonCloudKitClient *)self zoneName];
    *buf = 134349570;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Unpublishing key descriptor %{public}@ in zone %{public}@.", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__NTKArgonCloudKitClient_unpublishKeyDescriptor_completion___block_invoke;
  aBlock[3] = &unk_278787AC0;
  aBlock[4] = self;
  v19 = v6;
  v20 = v7;
  v10 = v7;
  v11 = v6;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v13 setName:@"UserActionExplicit"];
  v14 = MEMORY[0x277CCAC30];
  v15 = [v11 key];
  v16 = [v11 fileName];
  v17 = [v14 predicateWithFormat:@"%K = %@ AND %K = %@", @"key", v15, @"fileName", v16];

  [(NTKArgonCloudKitClient *)self _unpublishRecordsOfType:NTKArgonCloudKitRecordTypeBundleDescriptor matchingPredicate:v17 completion:v12];
}

void __60__NTKArgonCloudKitClient_unpublishKeyDescriptor_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [v7 zoneName];
      *buf = 134349570;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "CloudKit Client %{public}p: Unpublished key descriptor %{public}@ in zone %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v10 = _NTKArgonCloudKitClientError(202, v5);

    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__NTKArgonCloudKitClient_unpublishKeyDescriptor_completion___block_invoke_cold_1();
    }

    v5 = v10;
  }

  v11 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NTKArgonCloudKitClient_unpublishKeyDescriptor_completion___block_invoke_74;
  block[3] = &unk_278787A98;
  v12 = *(a1 + 48);
  v18 = a2;
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v11, v14);
}

- (void)_fetchNewRecordsSinceChangeToken:(uint64_t)a1 forReason:(NSObject *)a2 attemptNumber:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "CloudKit Client %{public}p: Failed to decode change token. Falling back to requesting all changes.", &v2, 0xCu);
}

- (void)_fetchNewRecordsSinceChangeToken:(void *)a1 forReason:(NSObject *)a2 attemptNumber:completion:.cold.2(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 zoneName];
  v5 = [a1 recordZoneError];
  v8 = 134349570;
  v9 = a1;
  OUTLINED_FUNCTION_3_5();
  v10 = v4;
  v11 = v6;
  v12 = v7;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "CloudKit Client %{public}p: Failed to find new records for zone %{public}@ because the record zone did not exist in the database: %{public}@.", &v8, 0x20u);
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_41_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 recordType];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 134349056;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "CloudKit Client %{public}p: Fetch result indicates more records are coming, but we specified fetchAllChanges!", &v3, 0xCu);
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_50_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 134349314;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3_5();
  *v4 = v1;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v1, v2, "CloudKit Client %{public}p: Failed to serialize server change token: %{public}@. Ignoring.", v3, DWORD2(v3), *&v4[2], v5);
}

void __94__NTKArgonCloudKitClient__fetchNewRecordsSinceChangeToken_forReason_attemptNumber_completion___block_invoke_55_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 134349314;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3_5();
  *v4 = v1;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v1, v2, "CloudKit Client %{public}p: Final record zone changes callback fired. Error occurred: %{public}@.", v3, DWORD2(v3), *&v4[2], v5);
}

- (void)_unpublishRecordsOfType:matchingPredicate:completion:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v2 = [v0 zoneName];
  v3 = [v1 recordZoneError];
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void __52__NTKArgonCloudKitClient__publishRecord_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_5_1(v0) zoneName];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

- (void)publishKeyDescriptor:completion:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 recordZoneError];
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __58__NTKArgonCloudKitClient_publishKeyDescriptor_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_5_1(v0) zoneName];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void __60__NTKArgonCloudKitClient_unpublishKeyDescriptor_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_5_1(v0) zoneName];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

@end