@interface FCPrivateDataEncryptionMigrationHealthCheck
+ (id)run;
- (FCPrivateDataEncryptionMigrationHealthCheck)init;
- (id)_prepareHistoryAndReturnExpectations;
- (id)_prepareIssueHistoryAndReturnExpectations;
- (id)_preparePersonalizationProfileAndReturnExpectations;
- (id)_prepareReadingListAndReturnExpectations;
- (id)_prepareReferenceToChannelMembershipsAndReturnExpectations;
- (id)_prepareSensitiveSubscriptionsAndReturnExpectations;
- (id)_prepareSentinelsAndReturnExpectations;
- (id)_prepareSubscriptionsAndReturnExpectations;
- (id)_prepareTagSettingsAndReturnExpectations;
- (id)_prepareUserInfoAndReturnExpectations;
- (void)_eraseAllPrivateData;
- (void)fetchCleanupToVersionForDatabase:(id)a3 completion:(id)a4;
- (void)fetchDesiredVersionForDatabase:(id)a3 completion:(id)a4;
- (void)run;
@end

@implementation FCPrivateDataEncryptionMigrationHealthCheck

- (FCPrivateDataEncryptionMigrationHealthCheck)init
{
  v16.receiver = self;
  v16.super_class = FCPrivateDataEncryptionMigrationHealthCheck;
  v2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695B8B0]);
    [v3 setUseZoneWidePCS:0];
    v4 = objc_alloc_init(MEMORY[0x1E695B8B0]);
    [v4 setUseZoneWidePCS:1];
    v5 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.news.private" environment:1];
    v6 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v5 options:v3];
    container = v2->_container;
    v2->_container = v6;

    v8 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v5 options:v4];
    containerWithZoneWidePCS = v2->_containerWithZoneWidePCS;
    v2->_containerWithZoneWidePCS = v8;

    v10 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.news.private.secure" environment:1];
    v11 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v10 options:v4];
    secureContainer = v2->_secureContainer;
    v2->_secureContainer = v11;

    v13 = +[FCCKPrivateDatabase privateDatabaseSchema];
    schema = v2->_schema;
    v2->_schema = v13;

    v2->_toVersion = 1;
  }

  return v2;
}

+ (id)run
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  [v2 run];

  v3 = *MEMORY[0x1E69E9840];

  return 0;
}

- (void)run
{
  v34 = *MEMORY[0x1E69E9840];
  [(FCPrivateDataEncryptionMigrationHealthCheck *)self _eraseAllPrivateData];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareHistoryAndReturnExpectations];
  [v3 addObjectsFromArray:v4];

  v5 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareIssueHistoryAndReturnExpectations];
  [v3 addObjectsFromArray:v5];

  v6 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareReadingListAndReturnExpectations];
  [v3 addObjectsFromArray:v6];

  v7 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSubscriptionsAndReturnExpectations];
  [v3 addObjectsFromArray:v7];

  v8 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSensitiveSubscriptionsAndReturnExpectations];
  [v3 addObjectsFromArray:v8];

  v9 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareUserInfoAndReturnExpectations];
  [v3 addObjectsFromArray:v9];

  v10 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareTagSettingsAndReturnExpectations];
  [v3 addObjectsFromArray:v10];

  v11 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _preparePersonalizationProfileAndReturnExpectations];
  [v3 addObjectsFromArray:v11];

  v12 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareReferenceToChannelMembershipsAndReturnExpectations];
  [v3 addObjectsFromArray:v12];

  v13 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSentinelsAndReturnExpectations];
  [v3 addObjectsFromArray:v13];

  v14 = [FCCKPrivateDatabase alloc];
  v15 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v16 = [v15 containerIdentifier];
  v17 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v18 = [v17 containerIdentifier];
  v19 = [(FCCKPrivateDatabase *)v14 initWithContainerIdentifier:v16 secureContainerIdentifier:v18 productionEnvironment:1 encryptionDelegate:self networkBehaviorMonitor:0 privateDataSyncingEnabled:1];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__FCPrivateDataEncryptionMigrationHealthCheck_run__block_invoke;
  v31[3] = &unk_1E7C37E50;
  v20 = v19;
  v32 = v20;
  FCWaitUntilBlockIsInvoked(v31);
  [MEMORY[0x1E696AF00] isMainThread];
  if (!v20 || v20[5] <= 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"private database started up with encryption disabled"];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v27 + 1) + 8 * v25++) validate];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_eraseAllPrivateData
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__FCPrivateDataEncryptionMigrationHealthCheck__eraseAllPrivateData__block_invoke;
  v30[3] = &unk_1E7C37E78;
  v5 = v3;
  v31 = v5;
  [(FCCKPrivateDatabaseSchema *)v4 enumerateZoneSchemasWithBlock:v30];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  v7 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v8 = [v7 privateCloudDatabase];
  [v6 setDatabase:v8];

  v9 = [v5 allObjects];
  [v6 setRecordZoneIDsToDelete:v9];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__FCPrivateDataEncryptionMigrationHealthCheck__eraseAllPrivateData__block_invoke_20;
  v23[3] = &unk_1E7C37EA0;
  v23[4] = &v24;
  [v6 setModifyRecordZonesCompletionBlock:v23];
  [v6 start];
  [v6 waitUntilFinished];
  [MEMORY[0x1E696AF00] isMainThread];
  v10 = v25[5];
  if (v10 && ([v10 fc_isCKUnknownItemError] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error deleting private data: %@", v25[5]}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  v12 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v13 = [v12 privateCloudDatabase];
  [v11 setDatabase:v13];

  v14 = [v5 allObjects];
  [v11 setRecordZoneIDsToDelete:v14];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__FCPrivateDataEncryptionMigrationHealthCheck__eraseAllPrivateData__block_invoke_2;
  v16[3] = &unk_1E7C37EA0;
  v16[4] = &v17;
  [v11 setModifyRecordZonesCompletionBlock:v16];
  [v11 start];
  [v11 waitUntilFinished];
  [MEMORY[0x1E696AF00] isMainThread];
  v15 = v18[5];
  if (v15 && ([v15 fc_isCKUnknownItemError] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error deleting private data: %@", v18[5]}];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);
}

void __67__FCPrivateDataEncryptionMigrationHealthCheck__eraseAllPrivateData__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

- (id)_prepareHistoryAndReturnExpectations
{
  v88[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"ReadingHistory" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"ReadingHistory"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading history zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"ReadingHistoryItem"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading history record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"articleID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading history record should have encrypted articleID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v67 = v24;

  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__5;
  v85 = __Block_byref_object_dispose__5;
  v86 = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke;
  v77[3] = &unk_1E7C37EF0;
  v25 = v21;
  v78 = v25;
  v79 = self;
  v80 = &v81;
  FCWaitUntilBlockIsInvoked(v77);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v82[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving history zone: %@", v82[5]}];
  }

  v64 = FCRandomTagCloudKitID();
  v26 = FCRandomArticleCloudKitID();
  v66 = FCHistoryItemIDFromArticleID(v26);
  v65 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v66 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v65];

  [v32 setObject:v26 forKeyedSubscript:@"articleID"];
  [v32 setObject:v64 forKeyedSubscript:@"sourceChannelTagID"];
  v33 = [MEMORY[0x1E696AFB0] UUID];
  v34 = [v33 UUIDString];
  [v32 setObject:v34 forKeyedSubscript:@"deviceID"];

  v35 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v35 forKeyedSubscript:@"lastVisited"];

  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"articleRead"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"articleSeen"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"completedListening"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"completedReading"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"liked"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"disliked"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"offensive"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"articleConsumed"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  [v32 setObject:&unk_1F2E6FCD8 forKeyedSubscript:@"listenedCount"];
  [v32 setObject:&unk_1F2E71B78 forKeyedSubscript:@"listeningProgress"];
  v36 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v36 forKeyedSubscript:@"listeningProgressLastSaved"];

  v37 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v37 forKeyedSubscript:@"lastListened"];

  [v32 setObject:&stru_1F2DC7DC0 forKeyedSubscript:@"readingPosition"];
  v38 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v38 forKeyedSubscript:@"readingPositionLastSaved"];

  [v32 setObject:&unk_1F2E6FCD8 forKeyedSubscript:@"readCount"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"removedFromAudio"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pruningDisabled"];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__5;
  v75 = __Block_byref_object_dispose__5;
  v76 = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_49;
  v68[3] = &unk_1E7C37EF0;
  v68[4] = self;
  v39 = v32;
  v69 = v39;
  v70 = &v71;
  FCWaitUntilBlockIsInvoked(v68);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v72[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving history record: %@", v72[5]}];
  }

  v40 = objc_opt_new();
  v41 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v42 = [v41 privateCloudDatabase];
  [v40 setDatabase:v42];

  [v40 setZoneID:v67];
  [v40 setShouldExist:1];
  v43 = objc_opt_new();
  v44 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v45 = [v44 privateCloudDatabase];
  [v43 setDatabase:v45];

  [v43 setZoneID:v25];
  [v43 setShouldExist:0];
  v46 = objc_opt_new();
  v47 = [v4 toRecordSchema];
  v48 = v47;
  if (v47)
  {
    v49 = *(v47 + 16);
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  [v46 setRecordType:v50];

  v51 = [v4 toRecordSchema];
  v52 = [(FCCKRecordSchema *)v51 allUnencryptedFieldNames];
  [v46 setUnencryptedFields:v52];

  v53 = [v4 toRecordSchema];
  v54 = [(FCCKRecordSchema *)v53 allEncryptedFieldNames];
  [v46 setEncryptedFields:v54];

  v55 = [v39 valueStore];
  v56 = [v55 values];
  [v46 setExpectedValues:v56];

  v57 = objc_opt_new();
  v58 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v59 = [v58 privateCloudDatabase];
  [v57 setDatabase:v59];

  [v57 setZoneID:v67];
  v88[0] = v46;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
  [v57 setRecordTests:v60];

  v87[0] = v40;
  v87[1] = v57;
  v87[2] = v43;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v81, 8);

  v62 = *MEMORY[0x1E69E9840];

  return v61;
}

void __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_2_50;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __83__FCPrivateDataEncryptionMigrationHealthCheck__prepareHistoryAndReturnExpectations__block_invoke_2_50(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareIssueHistoryAndReturnExpectations
{
  v84[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"IssueReadingHistory" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"IssueReadingHistory"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"issue reading history zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"IssueReadingHistoryItem"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"issue reading history record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"issueID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"issue reading history record should have encrypted issueID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v63 = v24;

  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__5;
  v81 = __Block_byref_object_dispose__5;
  v82 = 0;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke;
  v73[3] = &unk_1E7C37EF0;
  v25 = v21;
  v74 = v25;
  v75 = self;
  v76 = &v77;
  FCWaitUntilBlockIsInvoked(v73);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v78[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving issue history zone: %@", v78[5]}];
  }

  v26 = FCRandomIssueCloudKitID();
  v62 = FCIssueHistoryItemIDFromIssueID(v26);
  v61 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v62 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v61];

  [v32 setObject:v26 forKeyedSubscript:@"issueID"];
  v33 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v33 forKeyedSubscript:@"lastVisited"];

  v34 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v34 forKeyedSubscript:@"lastBadged"];

  v35 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v35 forKeyedSubscript:@"lastEngaged"];

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__5;
  v71 = __Block_byref_object_dispose__5;
  v72 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_3;
  v64[3] = &unk_1E7C37EF0;
  v64[4] = self;
  v36 = v32;
  v65 = v36;
  v66 = &v67;
  FCWaitUntilBlockIsInvoked(v64);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v68[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving issue history record: %@", v68[5]}];
  }

  v37 = objc_opt_new();
  v38 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v39 = [v38 privateCloudDatabase];
  [v37 setDatabase:v39];

  [v37 setZoneID:v63];
  [v37 setShouldExist:1];
  v40 = objc_opt_new();
  v41 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v42 = [v41 privateCloudDatabase];
  [v40 setDatabase:v42];

  [v40 setZoneID:v25];
  [v40 setShouldExist:0];
  v43 = objc_opt_new();
  v44 = [v4 toRecordSchema];
  v45 = v44;
  if (v44)
  {
    v46 = *(v44 + 16);
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;
  [v43 setRecordType:v47];

  v48 = [v4 toRecordSchema];
  v49 = [(FCCKRecordSchema *)v48 allUnencryptedFieldNames];
  [v43 setUnencryptedFields:v49];

  v50 = [v4 toRecordSchema];
  v51 = [(FCCKRecordSchema *)v50 allEncryptedFieldNames];
  [v43 setEncryptedFields:v51];

  v52 = [v36 valueStore];
  v53 = [v52 values];
  [v43 setExpectedValues:v53];

  v54 = objc_opt_new();
  v55 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v56 = [v55 privateCloudDatabase];
  [v54 setDatabase:v56];

  [v54 setZoneID:v63];
  v84[0] = v43;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  [v54 setRecordTests:v57];

  v83[0] = v37;
  v83[1] = v54;
  v83[2] = v40;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v77, 8);

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

void __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_4;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __88__FCPrivateDataEncryptionMigrationHealthCheck__prepareIssueHistoryAndReturnExpectations__block_invoke_4(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareReadingListAndReturnExpectations
{
  v82[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"ReadingList" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"ReadingList"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading list zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"ReadingListEntry"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading list record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"articleID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading list record should have encrypted articleID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v61 = v24;

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__5;
  v79 = __Block_byref_object_dispose__5;
  v80 = 0;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke;
  v71[3] = &unk_1E7C37EF0;
  v25 = v21;
  v72 = v25;
  v73 = self;
  v74 = &v75;
  FCWaitUntilBlockIsInvoked(v71);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v76[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving reading list zone: %@", v76[5]}];
  }

  v26 = FCRandomArticleCloudKitID();
  v60 = FCReadingListEntryIDFromArticleID(v26);
  v59 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v60 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v59];

  [v32 setObject:v26 forKeyedSubscript:@"articleID"];
  v33 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v33 forKeyedSubscript:@"dateAdded"];

  [v32 setObject:&unk_1F2E6FCF0 forKeyedSubscript:@"origin"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__5;
  v69 = __Block_byref_object_dispose__5;
  v70 = 0;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_89;
  v62[3] = &unk_1E7C37EF0;
  v62[4] = self;
  v34 = v32;
  v63 = v34;
  v64 = &v65;
  FCWaitUntilBlockIsInvoked(v62);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v66[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving reading list record: %@", v66[5]}];
  }

  v35 = objc_opt_new();
  v36 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v37 = [v36 privateCloudDatabase];
  [v35 setDatabase:v37];

  [v35 setZoneID:v61];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  v39 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v40 = [v39 privateCloudDatabase];
  [v38 setDatabase:v40];

  [v38 setZoneID:v25];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  v42 = [v4 toRecordSchema];
  v43 = v42;
  if (v42)
  {
    v44 = *(v42 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  v46 = [v4 toRecordSchema];
  v47 = [(FCCKRecordSchema *)v46 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:v47];

  v48 = [v4 toRecordSchema];
  v49 = [(FCCKRecordSchema *)v48 allEncryptedFieldNames];
  [v41 setEncryptedFields:v49];

  v50 = [v34 valueStore];
  v51 = [v50 values];
  [v41 setExpectedValues:v51];

  v52 = objc_opt_new();
  v53 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v54 = [v53 privateCloudDatabase];
  [v52 setDatabase:v54];

  [v52 setZoneID:v61];
  v82[0] = v41;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
  [v52 setRecordTests:v55];

  v81[0] = v35;
  v81[1] = v52;
  v81[2] = v38;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v75, 8);

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_2_90;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareReadingListAndReturnExpectations__block_invoke_2_90(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareSubscriptionsAndReturnExpectations
{
  v82[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"Subscriptions" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"Subscriptions"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"subscriptions zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"Subscription"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"subscriptions record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"subscriptions record should have encrypted tagID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v61 = v24;

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__5;
  v79 = __Block_byref_object_dispose__5;
  v80 = 0;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke;
  v71[3] = &unk_1E7C37EF0;
  v25 = v21;
  v72 = v25;
  v73 = self;
  v74 = &v75;
  FCWaitUntilBlockIsInvoked(v71);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v76[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving subscriptions zone: %@", v76[5]}];
  }

  v26 = FCRandomTagCloudKitID();
  v60 = [FCSubscriptionList subscriptionIDForTagID:v26 type:0];
  v59 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v60 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v59];

  [v32 setObject:@"tag" forKeyedSubscript:@"subscriptionType"];
  [v32 setObject:&unk_1F2E6FD08 forKeyedSubscript:@"subscriptionOrder"];
  [v32 setObject:&unk_1F2E6FD20 forKeyedSubscript:@"subscriptionOrigin"];
  v33 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v33 forKeyedSubscript:@"dateAdded"];

  [v32 setObject:v26 forKeyedSubscript:@"tagID"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"notificationsEnabled"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__5;
  v69 = __Block_byref_object_dispose__5;
  v70 = 0;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_111;
  v62[3] = &unk_1E7C37EF0;
  v62[4] = self;
  v34 = v32;
  v63 = v34;
  v64 = &v65;
  FCWaitUntilBlockIsInvoked(v62);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v66[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving subscription record: %@", v66[5]}];
  }

  v35 = objc_opt_new();
  v36 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v37 = [v36 privateCloudDatabase];
  [v35 setDatabase:v37];

  [v35 setZoneID:v61];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  v39 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v40 = [v39 privateCloudDatabase];
  [v38 setDatabase:v40];

  [v38 setZoneID:v25];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  v42 = [v4 toRecordSchema];
  v43 = v42;
  if (v42)
  {
    v44 = *(v42 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  v46 = [v4 toRecordSchema];
  v47 = [(FCCKRecordSchema *)v46 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:v47];

  v48 = [v4 toRecordSchema];
  v49 = [(FCCKRecordSchema *)v48 allEncryptedFieldNames];
  [v41 setEncryptedFields:v49];

  v50 = [v34 valueStore];
  v51 = [v50 values];
  [v41 setExpectedValues:v51];

  v52 = objc_opt_new();
  v53 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self containerWithZoneWidePCS];
  v54 = [v53 privateCloudDatabase];
  [v52 setDatabase:v54];

  [v52 setZoneID:v61];
  v82[0] = v41;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
  [v52 setRecordTests:v55];

  v81[0] = v35;
  v81[1] = v52;
  v81[2] = v38;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v75, 8);

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

void __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_2_112;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __89__FCPrivateDataEncryptionMigrationHealthCheck__prepareSubscriptionsAndReturnExpectations__block_invoke_2_112(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareSensitiveSubscriptionsAndReturnExpectations
{
  v84[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"SensitiveSubscriptions" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"SensitiveSubscriptions"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sensitive subscriptions zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"Subscription"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sensitive subscriptions record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sensitive subscriptions record should have encrypted tagID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v63 = v24;

  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__5;
  v81 = __Block_byref_object_dispose__5;
  v82 = 0;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke;
  v73[3] = &unk_1E7C37EF0;
  v25 = v21;
  v74 = v25;
  v75 = self;
  v76 = &v77;
  FCWaitUntilBlockIsInvoked(v73);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v78[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving subscriptions zone: %@", v78[5]}];
  }

  v26 = FCRandomTagCloudKitID();
  v62 = [FCSubscriptionList subscriptionIDForTagID:v26 type:0];
  v61 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v62 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v61];

  [v32 setObject:@"autoFavoriteTag" forKeyedSubscript:@"subscriptionType"];
  [v32 setObject:&unk_1F2E6FD38 forKeyedSubscript:@"subscriptionOrigin"];
  v33 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:v33 forKeyedSubscript:@"dateAdded"];

  [v32 setObject:v26 forKeyedSubscript:@"tagID"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"notificationsEnabled"];
  v34 = [MEMORY[0x1E696AFB0] UUID];
  v35 = [v34 UUIDString];
  [v32 setObject:v35 forKeyedSubscript:@"groupID"];

  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__5;
  v71 = __Block_byref_object_dispose__5;
  v72 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_127;
  v64[3] = &unk_1E7C37EF0;
  v64[4] = self;
  v36 = v32;
  v65 = v36;
  v66 = &v67;
  FCWaitUntilBlockIsInvoked(v64);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v68[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving sensitive subscription record: %@", v68[5]}];
  }

  v37 = objc_opt_new();
  v38 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v39 = [v38 privateCloudDatabase];
  [v37 setDatabase:v39];

  [v37 setZoneID:v63];
  [v37 setShouldExist:1];
  v40 = objc_opt_new();
  v41 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v42 = [v41 privateCloudDatabase];
  [v40 setDatabase:v42];

  [v40 setZoneID:v25];
  [v40 setShouldExist:0];
  v43 = objc_opt_new();
  v44 = [v4 toRecordSchema];
  v45 = v44;
  if (v44)
  {
    v46 = *(v44 + 16);
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;
  [v43 setRecordType:v47];

  v48 = [v4 toRecordSchema];
  v49 = [(FCCKRecordSchema *)v48 allUnencryptedFieldNames];
  [v43 setUnencryptedFields:v49];

  v50 = [v4 toRecordSchema];
  v51 = [(FCCKRecordSchema *)v50 allEncryptedFieldNames];
  [v43 setEncryptedFields:v51];

  v52 = [v36 valueStore];
  v53 = [v52 values];
  [v43 setExpectedValues:v53];

  v54 = objc_opt_new();
  v55 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v56 = [v55 privateCloudDatabase];
  [v54 setDatabase:v56];

  [v54 setZoneID:v63];
  v84[0] = v43;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  [v54 setRecordTests:v57];

  v83[0] = v37;
  v83[1] = v54;
  v83[2] = v40;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v77, 8);

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_127(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_2_128;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__prepareSensitiveSubscriptionsAndReturnExpectations__block_invoke_2_128(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareUserInfoAndReturnExpectations
{
  v86[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"UserInfo" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"UserInfo"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"user info zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"UserInfo"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"user info record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"feldsparID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"user info record should have encrypted feldsparID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v65 = v24;

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__5;
  v83 = __Block_byref_object_dispose__5;
  v84 = 0;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke;
  v75[3] = &unk_1E7C37EF0;
  v64 = v21;
  v76 = v64;
  v77 = self;
  v78 = &v79;
  FCWaitUntilBlockIsInvoked(v75);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v80[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving user info zone: %@", v80[5]}];
  }

  v63 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"user_info_static_record_name" zoneID:v64];
  v62 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"user_info_static_record_name_secure" zoneID:v65];
  v25 = objc_alloc(MEMORY[0x1E695BA60]);
  v26 = [v4 fromRecordSchema];
  v27 = v26;
  if (v26)
  {
    v28 = *(v26 + 16);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v25 initWithRecordType:v29 recordID:v63];

  v31 = [MEMORY[0x1E696AFB0] UUID];
  v32 = [v31 UUIDString];
  [v30 setObject:v32 forKeyedSubscript:@"feldsparID"];

  v33 = [MEMORY[0x1E695DF00] date];
  [v30 setObject:v33 forKeyedSubscript:@"lastOpenedDate"];

  [v30 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"topStoriesIntroduced"];
  [v30 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v30 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__5;
  v73 = __Block_byref_object_dispose__5;
  v74 = 0;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_3;
  v66[3] = &unk_1E7C37EF0;
  v66[4] = self;
  v34 = v30;
  v67 = v34;
  v68 = &v69;
  FCWaitUntilBlockIsInvoked(v66);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v70[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving user info record: %@", v70[5]}];
  }

  v35 = objc_opt_new();
  v36 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v37 = [v36 privateCloudDatabase];
  [v35 setDatabase:v37];

  [v35 setZoneID:v65];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  v39 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v40 = [v39 privateCloudDatabase];
  [v38 setDatabase:v40];

  [v38 setZoneID:v64];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  v42 = [v4 toRecordSchema];
  v43 = v42;
  if (v42)
  {
    v44 = *(v42 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  v46 = [v4 toRecordSchema];
  v47 = [(FCCKRecordSchema *)v46 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:v47];

  v48 = [v4 toRecordSchema];
  v49 = [(FCCKRecordSchema *)v48 allEncryptedFieldNames];
  [v41 setEncryptedFields:v49];

  v50 = [v34 valueStore];
  v51 = [v50 values];
  [v41 setExpectedValues:v51];

  v52 = objc_opt_new();
  v53 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v54 = [v53 privateCloudDatabase];
  [v52 setDatabase:v54];

  [v52 setZoneID:v65];
  v86[0] = v41;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
  [v52 setRecordTests:v55];

  v56 = objc_opt_new();
  v57 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v58 = [v57 privateCloudDatabase];
  [v56 setDatabase:v58];

  [v56 setRecordID:v62];
  [v56 setShouldExist:1];
  v85[0] = v35;
  v85[1] = v52;
  v85[2] = v38;
  v85[3] = v56;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v79, 8);

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

void __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_4;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __84__FCPrivateDataEncryptionMigrationHealthCheck__prepareUserInfoAndReturnExpectations__block_invoke_4(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareTagSettingsAndReturnExpectations
{
  v83[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"UserInfo" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"UserInfo"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"tag settings zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromRecordSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 isEqualToString:@"TagSettings"];

  if ((v14 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"tag settings record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v4 toRecordSchema];
  v16 = [(FCCKRecordSchema *)v15 allEncryptedFieldNames];
  v17 = [v16 containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"tag settings record should have encrypted tagID"];
  }

  v18 = [v4 fromZoneSchema];
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v4 toZoneSchema];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v62 = v24;

  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__5;
  v80 = __Block_byref_object_dispose__5;
  v81 = 0;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke;
  v72[3] = &unk_1E7C37EF0;
  v25 = v21;
  v73 = v25;
  v74 = self;
  v75 = &v76;
  FCWaitUntilBlockIsInvoked(v72);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v77[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving user info zone: %@", v77[5]}];
  }

  v26 = FCRandomTagCloudKitID();
  v61 = FCTagSettingsEntryIDFromTagID(v26);
  v60 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v61 zoneID:v25];
  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v4 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v60];

  [v32 setObject:v26 forKeyedSubscript:@"tagID"];
  v33 = [MEMORY[0x1E696AFB0] UUID];
  v34 = [v33 UUIDString];
  [v32 setObject:v34 forKeyedSubscript:@"accessToken"];

  [v32 setObject:&unk_1F2E6FD50 forKeyedSubscript:@"fontMultiplier"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__5;
  v70 = __Block_byref_object_dispose__5;
  v71 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_159;
  v63[3] = &unk_1E7C37EF0;
  v63[4] = self;
  v35 = v32;
  v64 = v35;
  v65 = &v66;
  FCWaitUntilBlockIsInvoked(v63);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v67[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving tag settings record: %@", v67[5]}];
  }

  v36 = objc_opt_new();
  v37 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v38 = [v37 privateCloudDatabase];
  [v36 setDatabase:v38];

  [v36 setZoneID:v62];
  [v36 setShouldExist:1];
  v39 = objc_opt_new();
  v40 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v41 = [v40 privateCloudDatabase];
  [v39 setDatabase:v41];

  [v39 setZoneID:v25];
  [v39 setShouldExist:0];
  v42 = objc_opt_new();
  v43 = [v4 toRecordSchema];
  v44 = v43;
  if (v43)
  {
    v45 = *(v43 + 16);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;
  [v42 setRecordType:v46];

  v47 = [v4 toRecordSchema];
  v48 = [(FCCKRecordSchema *)v47 allUnencryptedFieldNames];
  [v42 setUnencryptedFields:v48];

  v49 = [v4 toRecordSchema];
  v50 = [(FCCKRecordSchema *)v49 allEncryptedFieldNames];
  [v42 setEncryptedFields:v50];

  v51 = [v35 valueStore];
  v52 = [v51 values];
  [v42 setExpectedValues:v52];

  v53 = objc_opt_new();
  v54 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v55 = [v54 privateCloudDatabase];
  [v53 setDatabase:v55];

  [v53 setZoneID:v62];
  v83[0] = v42;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
  [v53 setRecordTests:v56];

  v82[0] = v36;
  v82[1] = v53;
  v82[2] = v39;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v76, 8);

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_2_160;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __87__FCPrivateDataEncryptionMigrationHealthCheck__prepareTagSettingsAndReturnExpectations__block_invoke_2_160(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_preparePersonalizationProfileAndReturnExpectations
{
  v63[4] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"SharedPersonalizationProfile"];
  v4 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v53 = [(FCCKPrivateDatabaseSchema *)v4 mappingFromRecordID:v3 toVersion:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion]];

  v5 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v6 = *MEMORY[0x1E695B800];
  v7 = [(FCCKPrivateDatabaseSchema *)v5 mappingFromRecordType:*MEMORY[0x1E695B800] inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v8 = [v53 fromZoneSchema];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEqualToString:v6];

  if ((v12 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"personalization zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v13 = [v7 fromRecordSchema];
  v14 = v13;
  if (v13)
  {
    v15 = *(v13 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 isEqualToString:@"PersonalizationProfile"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"personalization record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v18 = [v7 toRecordSchema];
  v19 = [(FCCKRecordSchema *)v18 allEncryptedFieldNames];
  v20 = [v19 containsObject:@"data"];

  if ((v20 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"personalization record should have encrypted data"];
  }

  v21 = [v7 fromZoneSchema];
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 24);
  }

  else
  {
    v23 = 0;
  }

  v52 = v23;

  v24 = [v7 toZoneSchema];
  v25 = v24;
  if (v24)
  {
    v26 = *(v24 + 24);
  }

  else
  {
    v26 = 0;
  }

  v51 = v26;

  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  v28 = [v7 fromRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v3];

  v33 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:500000];
  [v32 setObject:v33 forKeyedSubscript:@"data"];

  [v32 setObject:&unk_1F2E6FD68 forKeyedSubscript:@"version"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"writerVersionHighWatermark"];
  [v32 setObject:&unk_1F2E6FCC0 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__5;
  v61 = __Block_byref_object_dispose__5;
  v62 = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__preparePersonalizationProfileAndReturnExpectations__block_invoke;
  v54[3] = &unk_1E7C37EF0;
  v54[4] = self;
  v34 = v32;
  v55 = v34;
  v56 = &v57;
  FCWaitUntilBlockIsInvoked(v54);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v58[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving personalization profile record: %@", v58[5]}];
  }

  v35 = objc_opt_new();
  v36 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v37 = [v36 privateCloudDatabase];
  [v35 setDatabase:v37];

  [v35 setZoneID:v52];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  v39 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v40 = [v39 privateCloudDatabase];
  [v38 setDatabase:v40];

  [v38 setZoneID:v51];
  [v38 setShouldExist:1];
  v41 = objc_opt_new();
  v42 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v43 = [v42 privateCloudDatabase];
  [v41 setDatabase:v43];

  v44 = [v53 toRecordID];
  [v41 setRecordID:v44];

  [v41 setShouldExist:1];
  v45 = objc_opt_new();
  v46 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v47 = [v46 privateCloudDatabase];
  [v45 setDatabase:v47];

  [v45 setRecordID:v3];
  [v45 setShouldExist:0];
  v63[0] = v35;
  v63[1] = v38;
  v63[2] = v41;
  v63[3] = v45;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

  _Block_object_dispose(&v57, 8);
  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__preparePersonalizationProfileAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__FCPrivateDataEncryptionMigrationHealthCheck__preparePersonalizationProfileAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __98__FCPrivateDataEncryptionMigrationHealthCheck__preparePersonalizationProfileAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareReferenceToChannelMembershipsAndReturnExpectations
{
  v95[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)v3 mappingFromRecordType:@"ChannelMemberships" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v4 fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 isEqualToString:@"ChannelMemberships"];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reference-to-membership zone schema has wrong zone name"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v4 fromZoneSchema];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v4 toZoneSchema];
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 16);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v13 isEqualToString:v17];

  if ((v18 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reference-to-membership zone name should be the same on client and server"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v19 = [v4 fromRecordSchema];
  v20 = v19;
  if (v19)
  {
    v21 = *(v19 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v23 = [v22 isEqualToString:@"ReferenceToMembership"];

  if ((v23 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reference-to-membership record schema has wrong record type"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v24 = [v4 fromRecordSchema];
  v25 = v24;
  if (v24)
  {
    v26 = *(v24 + 16);
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = [v4 toRecordSchema];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 isEqualToString:v31];

  if ((v32 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reference-to-membership record type should be the same on client and server"];
  }

  v33 = [v4 fromZoneSchema];
  v34 = v33;
  if (v33)
  {
    v35 = *(v33 + 24);
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__5;
  v92 = __Block_byref_object_dispose__5;
  v93 = 0;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke;
  v84[3] = &unk_1E7C37EF0;
  v37 = v36;
  v85 = v37;
  v86 = self;
  v87 = &v88;
  FCWaitUntilBlockIsInvoked(v84);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v89[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving reference-to-membership zone: %@", v89[5]}];
  }

  v38 = objc_alloc(MEMORY[0x1E695BA70]);
  v39 = [MEMORY[0x1E696AFB0] UUID];
  v40 = [v39 UUIDString];
  v41 = [v38 initWithRecordName:v40 zoneID:v37];

  v42 = objc_alloc(MEMORY[0x1E695BA60]);
  v43 = [v4 fromRecordSchema];
  v44 = v43;
  if (v43)
  {
    v45 = *(v43 + 16);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;
  v47 = [v42 initWithRecordType:v46 recordID:v41];

  v48 = [MEMORY[0x1E696AFB0] UUID];
  v49 = [v48 UUIDString];
  [v47 setObject:v49 forKeyedSubscript:@"membershipID"];

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__5;
  v82 = __Block_byref_object_dispose__5;
  v83 = 0;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_3;
  v75[3] = &unk_1E7C37EF0;
  v75[4] = self;
  v50 = v47;
  v76 = v50;
  v77 = &v78;
  FCWaitUntilBlockIsInvoked(v75);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v79[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving reference-to-membership record: %@", v79[5]}];
  }

  v51 = objc_opt_new();
  v52 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v53 = [v52 privateCloudDatabase];
  [v51 setDatabase:v53];

  [v51 setZoneID:v37];
  [v51 setShouldExist:0];
  v54 = objc_opt_new();
  v55 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v56 = [v55 privateCloudDatabase];
  [v54 setDatabase:v56];

  [v54 setZoneID:v37];
  [v54 setShouldExist:1];
  v57 = objc_opt_new();
  v58 = [v4 toRecordSchema];
  v59 = v58;
  if (v58)
  {
    v60 = *(v58 + 16);
  }

  else
  {
    v60 = 0;
  }

  v61 = v60;
  [v57 setRecordType:v61];

  v62 = [v4 toRecordSchema];
  v63 = [(FCCKRecordSchema *)v62 allUnencryptedFieldNames];
  [v57 setUnencryptedFields:v63];

  v64 = [v4 toRecordSchema];
  v65 = [(FCCKRecordSchema *)v64 allEncryptedFieldNames];
  [v57 setEncryptedFields:v65];

  v66 = [v50 valueStore];
  v67 = [v66 values];
  [v57 setExpectedValues:v67];

  v68 = objc_opt_new();
  v69 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v70 = [v69 privateCloudDatabase];
  [v68 setDatabase:v70];

  [v68 setZoneID:v37];
  v95[0] = v57;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
  [v68 setRecordTests:v71];

  v94[0] = v51;
  v94[1] = v54;
  v94[2] = v68;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v88, 8);

  v73 = *MEMORY[0x1E69E9840];

  return v72;
}

void __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
  v5 = [*(a1 + 40) container];
  v6 = [v5 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_2;
  v9[3] = &unk_1E7C37EC8;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 saveRecordZone:v4 completionHandler:v9];
}

void __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_4;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 saveRecord:v7 completionHandler:v9];
}

void __105__FCPrivateDataEncryptionMigrationHealthCheck__prepareReferenceToChannelMembershipsAndReturnExpectations__block_invoke_4(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (id)_prepareSentinelsAndReturnExpectations
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695BA90]);
  v4 = [v3 initWithZoneName:*MEMORY[0x1E695B800] ownerName:*MEMORY[0x1E695B728]];
  v5 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"static_sentinel" zoneID:v4];
  v6 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"static_sentinel_secure" zoneID:v4];
  v7 = objc_opt_new();
  v8 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  v9 = [v8 privateCloudDatabase];
  [v7 setDatabase:v9];

  [v7 setRecordID:v5];
  [v7 setShouldExist:1];
  v10 = objc_opt_new();
  v11 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  v12 = [v11 privateCloudDatabase];
  [v10 setDatabase:v12];

  [v10 setRecordID:v6];
  [v10 setShouldExist:1];
  v13 = objc_opt_new();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke;
  v19[3] = &unk_1E7C376A0;
  v19[4] = self;
  v20 = v5;
  v21 = v6;
  v14 = v6;
  v15 = v5;
  [v13 setBlock:v19];
  v22[0] = v7;
  v22[1] = v10;
  v22[2] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke(uint64_t a1)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_2;
  v30[3] = &unk_1E7C37EF0;
  v2 = *(a1 + 40);
  v30[4] = *(a1 + 32);
  v31 = v2;
  v32 = &v33;
  FCWaitUntilBlockIsInvoked(v30);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_4;
  v20 = &unk_1E7C37EF0;
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = &v24;
  FCWaitUntilBlockIsInvoked(&v17);
  v3 = [v34[5] encryptedValuesByKey];
  v4 = [v3 objectForKeyedSubscript:@"encryptionKey"];

  [MEMORY[0x1E696AF00] isMainThread];
  if (![v4 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sentinel is missing encryption key"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [v34[5] valuesByKey];
  v6 = [v5 objectForKeyedSubscript:@"version"];

  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sentinel is missing version"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [v34[5] valuesByKey];
  v8 = [v7 objectForKeyedSubscript:@"migratedUnencryptedData"];
  v9 = [v8 isEqual:MEMORY[0x1E695E118]];

  if ((v9 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sentinel is missing migration completion flag"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v10 = [v34[5] valuesByKey];
  v11 = [v10 objectForKeyedSubscript:@"deletedUnencryptedData"];
  v12 = [v11 isEqual:MEMORY[0x1E695E118]];

  if ((v12 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sentinel is missing deletion completion flag"];
  }

  v13 = [v25[5] encryptedValuesByKey];
  v14 = [v13 objectForKeyedSubscript:@"encryptionKey"];

  [MEMORY[0x1E696AF00] isMainThread];
  if (![v14 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"secure sentinel is missing encryption key"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v15 = [v25[5] valuesByKey];
  v16 = [v15 objectForKeyedSubscript:@"version"];

  if (!v16)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"secure sentinel is missing version"];
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if ([v4 isEqualToData:v14])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"regular sentinel and secure sentinel should have different encryption keys"];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v33, 8);
}

void __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) container];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_3;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 fetchRecordWithID:v7 completionHandler:v9];
}

void __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) secureContainer];
  v5 = [v4 privateCloudDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_5;
  v9[3] = &unk_1E7C37F18;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [v5 fetchRecordWithID:v7 completionHandler:v9];
}

void __85__FCPrivateDataEncryptionMigrationHealthCheck__prepareSentinelsAndReturnExpectations__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)fetchDesiredVersionForDatabase:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck_fetchDesiredVersionForDatabase_completion___block_invoke;
  v8[3] = &unk_1E7C37F40;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(FCCKPrivateDatabase *)a3 fetchSecureDatabaseSupportedWithCompletionHandler:v8];
}

void __89__FCPrivateDataEncryptionMigrationHealthCheck_fetchDesiredVersionForDatabase_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 40);
  if (a2)
  {
    v6 = [*(a1 + 32) toVersion];
  }

  else
  {
    v6 = 0;
  }

  (*(v5 + 16))(v5, v6, v7);
}

- (void)fetchCleanupToVersionForDatabase:(id)a3 completion:(id)a4
{
  v6 = a4;
  (*(a4 + 2))(v6, [(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion], 0);
}

@end