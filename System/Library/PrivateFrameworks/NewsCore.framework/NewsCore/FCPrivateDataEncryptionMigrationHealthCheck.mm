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
- (void)fetchCleanupToVersionForDatabase:(id)database completion:(id)completion;
- (void)fetchDesiredVersionForDatabase:(id)database completion:(id)completion;
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
  array = [MEMORY[0x1E695DF70] array];
  _prepareHistoryAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareHistoryAndReturnExpectations];
  [array addObjectsFromArray:_prepareHistoryAndReturnExpectations];

  _prepareIssueHistoryAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareIssueHistoryAndReturnExpectations];
  [array addObjectsFromArray:_prepareIssueHistoryAndReturnExpectations];

  _prepareReadingListAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareReadingListAndReturnExpectations];
  [array addObjectsFromArray:_prepareReadingListAndReturnExpectations];

  _prepareSubscriptionsAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSubscriptionsAndReturnExpectations];
  [array addObjectsFromArray:_prepareSubscriptionsAndReturnExpectations];

  _prepareSensitiveSubscriptionsAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSensitiveSubscriptionsAndReturnExpectations];
  [array addObjectsFromArray:_prepareSensitiveSubscriptionsAndReturnExpectations];

  _prepareUserInfoAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareUserInfoAndReturnExpectations];
  [array addObjectsFromArray:_prepareUserInfoAndReturnExpectations];

  _prepareTagSettingsAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareTagSettingsAndReturnExpectations];
  [array addObjectsFromArray:_prepareTagSettingsAndReturnExpectations];

  _preparePersonalizationProfileAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _preparePersonalizationProfileAndReturnExpectations];
  [array addObjectsFromArray:_preparePersonalizationProfileAndReturnExpectations];

  _prepareReferenceToChannelMembershipsAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareReferenceToChannelMembershipsAndReturnExpectations];
  [array addObjectsFromArray:_prepareReferenceToChannelMembershipsAndReturnExpectations];

  _prepareSentinelsAndReturnExpectations = [(FCPrivateDataEncryptionMigrationHealthCheck *)self _prepareSentinelsAndReturnExpectations];
  [array addObjectsFromArray:_prepareSentinelsAndReturnExpectations];

  v14 = [FCCKPrivateDatabase alloc];
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  containerIdentifier = [container containerIdentifier];
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  containerIdentifier2 = [secureContainer containerIdentifier];
  v19 = [(FCCKPrivateDatabase *)v14 initWithContainerIdentifier:containerIdentifier secureContainerIdentifier:containerIdentifier2 productionEnvironment:1 encryptionDelegate:self networkBehaviorMonitor:0 privateDataSyncingEnabled:1];

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
  v21 = array;
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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__FCPrivateDataEncryptionMigrationHealthCheck__eraseAllPrivateData__block_invoke;
  v30[3] = &unk_1E7C37E78;
  v5 = v3;
  v31 = v5;
  [(FCCKPrivateDatabaseSchema *)schema enumerateZoneSchemasWithBlock:v30];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [v6 setDatabase:privateCloudDatabase];

  allObjects = [v5 allObjects];
  [v6 setRecordZoneIDsToDelete:allObjects];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase2 = [secureContainer privateCloudDatabase];
  [v11 setDatabase:privateCloudDatabase2];

  allObjects2 = [v5 allObjects];
  [v11 setRecordZoneIDsToDelete:allObjects2];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"ReadingHistory" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"articleID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading history record should have encrypted articleID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v65];

  [v32 setObject:v26 forKeyedSubscript:@"articleID"];
  [v32 setObject:v64 forKeyedSubscript:@"sourceChannelTagID"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v32 setObject:uUIDString forKeyedSubscript:@"deviceID"];

  date = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date forKeyedSubscript:@"lastVisited"];

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
  date2 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date2 forKeyedSubscript:@"listeningProgressLastSaved"];

  date3 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date3 forKeyedSubscript:@"lastListened"];

  [v32 setObject:&stru_1F2DC7DC0 forKeyedSubscript:@"readingPosition"];
  date4 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date4 forKeyedSubscript:@"readingPositionLastSaved"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v40 setDatabase:privateCloudDatabase];

  [v40 setZoneID:v67];
  [v40 setShouldExist:1];
  v43 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v43 setDatabase:privateCloudDatabase2];

  [v43 setZoneID:v25];
  [v43 setShouldExist:0];
  v46 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v48 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v49 = *(toRecordSchema2 + 16);
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  [v46 setRecordType:v50];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v46 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v46 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v39 valueStore];
  values = [valueStore values];
  [v46 setExpectedValues:values];

  v57 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v57 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"IssueReadingHistory" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"issueID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"issue reading history record should have encrypted issueID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v61];

  [v32 setObject:v26 forKeyedSubscript:@"issueID"];
  date = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date forKeyedSubscript:@"lastVisited"];

  date2 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date2 forKeyedSubscript:@"lastBadged"];

  date3 = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date3 forKeyedSubscript:@"lastEngaged"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v37 setDatabase:privateCloudDatabase];

  [v37 setZoneID:v63];
  [v37 setShouldExist:1];
  v40 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v40 setDatabase:privateCloudDatabase2];

  [v40 setZoneID:v25];
  [v40 setShouldExist:0];
  v43 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v45 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v46 = *(toRecordSchema2 + 16);
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;
  [v43 setRecordType:v47];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v43 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v43 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v36 valueStore];
  values = [valueStore values];
  [v43 setExpectedValues:values];

  v54 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v54 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"ReadingList" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"articleID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"reading list record should have encrypted articleID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v59];

  [v32 setObject:v26 forKeyedSubscript:@"articleID"];
  date = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date forKeyedSubscript:@"dateAdded"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v35 setDatabase:privateCloudDatabase];

  [v35 setZoneID:v61];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v38 setDatabase:privateCloudDatabase2];

  [v38 setZoneID:v25];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v43 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v44 = *(toRecordSchema2 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v41 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v34 valueStore];
  values = [valueStore values];
  [v41 setExpectedValues:values];

  v52 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v52 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"Subscriptions" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"subscriptions record should have encrypted tagID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
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
  date = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date forKeyedSubscript:@"dateAdded"];

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
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [v35 setDatabase:privateCloudDatabase];

  [v35 setZoneID:v61];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  container2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container2 privateCloudDatabase];
  [v38 setDatabase:privateCloudDatabase2];

  [v38 setZoneID:v25];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v43 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v44 = *(toRecordSchema2 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v41 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v34 valueStore];
  values = [valueStore values];
  [v41 setExpectedValues:values];

  v52 = objc_opt_new();
  containerWithZoneWidePCS = [(FCPrivateDataEncryptionMigrationHealthCheck *)self containerWithZoneWidePCS];
  privateCloudDatabase3 = [containerWithZoneWidePCS privateCloudDatabase];
  [v52 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"SensitiveSubscriptions" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"sensitive subscriptions record should have encrypted tagID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v61];

  [v32 setObject:@"autoFavoriteTag" forKeyedSubscript:@"subscriptionType"];
  [v32 setObject:&unk_1F2E6FD38 forKeyedSubscript:@"subscriptionOrigin"];
  date = [MEMORY[0x1E695DF00] date];
  [v32 setObject:date forKeyedSubscript:@"dateAdded"];

  [v32 setObject:v26 forKeyedSubscript:@"tagID"];
  [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"notificationsEnabled"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v32 setObject:uUIDString forKeyedSubscript:@"groupID"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v37 setDatabase:privateCloudDatabase];

  [v37 setZoneID:v63];
  [v37 setShouldExist:1];
  v40 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v40 setDatabase:privateCloudDatabase2];

  [v40 setZoneID:v25];
  [v40 setShouldExist:0];
  v43 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v45 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v46 = *(toRecordSchema2 + 16);
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;
  [v43 setRecordType:v47];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v43 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v43 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v36 valueStore];
  values = [valueStore values];
  [v43 setExpectedValues:values];

  v54 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v54 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"UserInfo" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"feldsparID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"user info record should have encrypted feldsparID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v27 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v28 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v25 initWithRecordType:v29 recordID:v63];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v30 setObject:uUIDString forKeyedSubscript:@"feldsparID"];

  date = [MEMORY[0x1E695DF00] date];
  [v30 setObject:date forKeyedSubscript:@"lastOpenedDate"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v35 setDatabase:privateCloudDatabase];

  [v35 setZoneID:v65];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v38 setDatabase:privateCloudDatabase2];

  [v38 setZoneID:v64];
  [v38 setShouldExist:0];
  v41 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v43 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v44 = *(toRecordSchema2 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v41 setRecordType:v45];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v41 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v41 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v34 valueStore];
  values = [valueStore values];
  [v41 setExpectedValues:values];

  v52 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v52 setDatabase:privateCloudDatabase3];

  [v52 setZoneID:v65];
  v86[0] = v41;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
  [v52 setRecordTests:v55];

  v56 = objc_opt_new();
  secureContainer3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase4 = [secureContainer3 privateCloudDatabase];
  [v56 setDatabase:privateCloudDatabase4];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"UserInfo" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v11 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v12 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v17 = [allEncryptedFieldNames containsObject:@"tagID"];

  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"tag settings record should have encrypted tagID"];
  }

  fromZoneSchema2 = [v4 fromZoneSchema];
  v19 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v20 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  toZoneSchema = [v4 toZoneSchema];
  v23 = toZoneSchema;
  if (toZoneSchema)
  {
    v24 = *(toZoneSchema + 24);
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
  selfCopy = self;
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [v27 initWithRecordType:v31 recordID:v60];

  [v32 setObject:v26 forKeyedSubscript:@"tagID"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v32 setObject:uUIDString forKeyedSubscript:@"accessToken"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v36 setDatabase:privateCloudDatabase];

  [v36 setZoneID:v62];
  [v36 setShouldExist:1];
  v39 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v39 setDatabase:privateCloudDatabase2];

  [v39 setZoneID:v25];
  [v39 setShouldExist:0];
  v42 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v44 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v45 = *(toRecordSchema2 + 16);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;
  [v42 setRecordType:v46];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v42 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames2 = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v42 setEncryptedFields:allEncryptedFieldNames2];

  valueStore = [v35 valueStore];
  values = [valueStore values];
  [v42 setExpectedValues:values];

  v53 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer2 privateCloudDatabase];
  [v53 setDatabase:privateCloudDatabase3];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v53 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordID:v3 toVersion:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion]];

  schema2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v6 = *MEMORY[0x1E695B800];
  v7 = [(FCCKPrivateDatabaseSchema *)schema2 mappingFromRecordType:*MEMORY[0x1E695B800] inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v53 fromZoneSchema];
  v9 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v10 = *(fromZoneSchema + 16);
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
  fromRecordSchema = [v7 fromRecordSchema];
  v14 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v15 = *(fromRecordSchema + 16);
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
  toRecordSchema = [v7 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema allEncryptedFieldNames];
  v20 = [allEncryptedFieldNames containsObject:@"data"];

  if ((v20 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"personalization record should have encrypted data"];
  }

  fromZoneSchema2 = [v7 fromZoneSchema];
  v22 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v23 = *(fromZoneSchema2 + 24);
  }

  else
  {
    v23 = 0;
  }

  v52 = v23;

  toZoneSchema = [v7 toZoneSchema];
  v25 = toZoneSchema;
  if (toZoneSchema)
  {
    v26 = *(toZoneSchema + 24);
  }

  else
  {
    v26 = 0;
  }

  v51 = v26;

  v27 = objc_alloc(MEMORY[0x1E695BA60]);
  fromRecordSchema2 = [v7 fromRecordSchema];
  v29 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v30 = *(fromRecordSchema2 + 16);
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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v35 setDatabase:privateCloudDatabase];

  [v35 setZoneID:v52];
  [v35 setShouldExist:1];
  v38 = objc_opt_new();
  secureContainer2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase2 = [secureContainer2 privateCloudDatabase];
  [v38 setDatabase:privateCloudDatabase2];

  [v38 setZoneID:v51];
  [v38 setShouldExist:1];
  v41 = objc_opt_new();
  secureContainer3 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase3 = [secureContainer3 privateCloudDatabase];
  [v41 setDatabase:privateCloudDatabase3];

  toRecordID = [v53 toRecordID];
  [v41 setRecordID:toRecordID];

  [v41 setShouldExist:1];
  v45 = objc_opt_new();
  secureContainer4 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase4 = [secureContainer4 privateCloudDatabase];
  [v45 setDatabase:privateCloudDatabase4];

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
  schema = [(FCPrivateDataEncryptionMigrationHealthCheck *)self schema];
  v4 = [(FCCKPrivateDatabaseSchema *)schema mappingFromRecordType:@"ChannelMemberships" inZoneName:[(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion] toVersion:?];

  [MEMORY[0x1E696AF00] isMainThread];
  fromZoneSchema = [v4 fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 16);
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
  fromZoneSchema2 = [v4 fromZoneSchema];
  v11 = fromZoneSchema2;
  if (fromZoneSchema2)
  {
    v12 = *(fromZoneSchema2 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  toZoneSchema = [v4 toZoneSchema];
  v15 = toZoneSchema;
  if (toZoneSchema)
  {
    v16 = *(toZoneSchema + 16);
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
  fromRecordSchema = [v4 fromRecordSchema];
  v20 = fromRecordSchema;
  if (fromRecordSchema)
  {
    v21 = *(fromRecordSchema + 16);
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
  fromRecordSchema2 = [v4 fromRecordSchema];
  v25 = fromRecordSchema2;
  if (fromRecordSchema2)
  {
    v26 = *(fromRecordSchema2 + 16);
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  toRecordSchema = [v4 toRecordSchema];
  v29 = toRecordSchema;
  if (toRecordSchema)
  {
    v30 = *(toRecordSchema + 16);
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

  fromZoneSchema3 = [v4 fromZoneSchema];
  v34 = fromZoneSchema3;
  if (fromZoneSchema3)
  {
    v35 = *(fromZoneSchema3 + 24);
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
  selfCopy = self;
  v87 = &v88;
  FCWaitUntilBlockIsInvoked(v84);
  [MEMORY[0x1E696AF00] isMainThread];
  if (v89[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error saving reference-to-membership zone: %@", v89[5]}];
  }

  v38 = objc_alloc(MEMORY[0x1E695BA70]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v41 = [v38 initWithRecordName:uUIDString zoneID:v37];

  v42 = objc_alloc(MEMORY[0x1E695BA60]);
  fromRecordSchema3 = [v4 fromRecordSchema];
  v44 = fromRecordSchema3;
  if (fromRecordSchema3)
  {
    v45 = *(fromRecordSchema3 + 16);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;
  v47 = [v42 initWithRecordType:v46 recordID:v41];

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [v47 setObject:uUIDString2 forKeyedSubscript:@"membershipID"];

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
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase = [secureContainer privateCloudDatabase];
  [v51 setDatabase:privateCloudDatabase];

  [v51 setZoneID:v37];
  [v51 setShouldExist:0];
  v54 = objc_opt_new();
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase2 = [container privateCloudDatabase];
  [v54 setDatabase:privateCloudDatabase2];

  [v54 setZoneID:v37];
  [v54 setShouldExist:1];
  v57 = objc_opt_new();
  toRecordSchema2 = [v4 toRecordSchema];
  v59 = toRecordSchema2;
  if (toRecordSchema2)
  {
    v60 = *(toRecordSchema2 + 16);
  }

  else
  {
    v60 = 0;
  }

  v61 = v60;
  [v57 setRecordType:v61];

  toRecordSchema3 = [v4 toRecordSchema];
  allUnencryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema3 allUnencryptedFieldNames];
  [v57 setUnencryptedFields:allUnencryptedFieldNames];

  toRecordSchema4 = [v4 toRecordSchema];
  allEncryptedFieldNames = [(FCCKRecordSchema *)toRecordSchema4 allEncryptedFieldNames];
  [v57 setEncryptedFields:allEncryptedFieldNames];

  valueStore = [v50 valueStore];
  values = [valueStore values];
  [v57 setExpectedValues:values];

  v68 = objc_opt_new();
  container2 = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase3 = [container2 privateCloudDatabase];
  [v68 setDatabase:privateCloudDatabase3];

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
  container = [(FCPrivateDataEncryptionMigrationHealthCheck *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [v7 setDatabase:privateCloudDatabase];

  [v7 setRecordID:v5];
  [v7 setShouldExist:1];
  v10 = objc_opt_new();
  secureContainer = [(FCPrivateDataEncryptionMigrationHealthCheck *)self secureContainer];
  privateCloudDatabase2 = [secureContainer privateCloudDatabase];
  [v10 setDatabase:privateCloudDatabase2];

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

- (void)fetchDesiredVersionForDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__FCPrivateDataEncryptionMigrationHealthCheck_fetchDesiredVersionForDatabase_completion___block_invoke;
  v8[3] = &unk_1E7C37F40;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(FCCKPrivateDatabase *)database fetchSecureDatabaseSupportedWithCompletionHandler:v8];
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

- (void)fetchCleanupToVersionForDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(FCPrivateDataEncryptionMigrationHealthCheck *)self toVersion], 0);
}

@end