@interface IRReplayDatabaseHandler
+ (id)exportDatabaseToPath:(id)a3;
- (IRReplayDatabaseHandler)initWithPeristenceManager:(id)a3;
- (IRReplayDatabaseHandler)initWithStoreDirectory:(id)a3;
- (id)deviceAttributesFromCandidateIdentifier:(id)a3 withServiceIdentifier:(id)a4;
- (id)deviceAttributesSetFromCandidateIdentifier:(id)a3 withServiceIdentifier:(id)a4;
- (id)getAllServices;
- (id)getEventsForServiceIdentifier:(id)a3;
- (id)getSortedEventsForServiceIdentifier:(id)a3;
- (id)getSortedHistoryEventsForServiceIdentifier:(id)a3;
- (id)inspectEventByDate:(id)a3 andServiceIdentifier:(id)a4 historyEvents:(id)a5;
@end

@implementation IRReplayDatabaseHandler

- (IRReplayDatabaseHandler)initWithStoreDirectory:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IRReplayDatabaseHandler;
  v5 = [(IRReplayDatabaseHandler *)&v14 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [IRPersistenceManager alloc];
  v7 = +[IRPersistenceManager defaultModelsDirectory];
  v8 = [(IRPersistenceManager *)v6 initWithModelsDirectory:v7 storesDirectory:v4];
  persistanceManager = v5->_persistanceManager;
  v5->_persistanceManager = v8;

  if (![(IRPersistenceManager *)v5->_persistanceManager connectToStore])
  {
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "#appDBHandler, Could not connect to store", v13, 2u);
    }

    v10 = 0;
  }

  else
  {
LABEL_3:
    v10 = v5;
  }

  return v10;
}

- (IRReplayDatabaseHandler)initWithPeristenceManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IRReplayDatabaseHandler;
  v6 = [(IRReplayDatabaseHandler *)&v12 init];
  p_isa = &v6->super.isa;
  if (v6 && (objc_storeStrong(&v6->_persistanceManager, a3), ([p_isa[1] connectToStore] & 1) == 0))
  {
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#appDBHandler, Could not connect to store", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = p_isa;
  }

  return v8;
}

+ (id)exportDatabaseToPath:(id)a3
{
  v3 = a3;
  v4 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__12;
  v31 = __Block_byref_object_dispose__12;
  v32 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  v5 = MEMORY[0x277D212E8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke;
  v16 = &unk_2797E2160;
  v6 = v4;
  v17 = v6;
  v19 = &v27;
  v7 = v3;
  v18 = v7;
  v20 = &v21;
  [v5 databaseExportwithReply:&v13];
  v8 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v6, v8);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{0, v13, v14, v15, v16}];
  v10 = v28[5];
  v28[5] = v9;

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_1(v6, v7);
    }

LABEL_4:
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_34;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) BOOLValue])
  {
    if (!v5)
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_6();
      }

      goto LABEL_4;
    }

    v48 = *MEMORY[0x277CCA180];
    v49[0] = &unk_2867690B8;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:*(a1 + 40)];

    if (v10)
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_4();
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = *(a1 + 40);
      v46 = 0;
      v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v8 error:&v46];
      v14 = v46;

      if ((v13 & 1) == 0)
      {
        v36 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_3(v14, v36);
        }

        dispatch_semaphore_signal(*(a1 + 32));

LABEL_33:
        goto LABEL_34;
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v39 = v5;
    obj = v5;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v38 = v8;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [MEMORY[0x277CCAA00] defaultManager];
          v21 = [v19 path];
          v22 = [v20 fileExistsAtPath:v21];

          if ((v22 & 1) == 0)
          {
            v35 = *MEMORY[0x277D21260];
            if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
            {
              __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_5(v35, v19);
            }

            dispatch_semaphore_signal(*(a1 + 32));

            v6 = 0;
            v5 = v39;
            v8 = v38;
            goto LABEL_33;
          }

          v23 = MEMORY[0x277CBEBC0];
          v24 = MEMORY[0x277CCACA8];
          v25 = *(a1 + 40);
          v26 = [v19 lastPathComponent];
          v27 = [v24 stringWithFormat:@"%@/%@", v25, v26];
          v28 = [v23 fileURLWithPath:v27 isDirectory:0];

          v29 = [MEMORY[0x277CCAA00] defaultManager];
          [v29 copyItemAtURL:v19 toURL:v28 error:0];
        }

        v16 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        v8 = v38;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v30 = [obj firstObject];
    v31 = [v30 URLByDeletingLastPathComponent];
    v32 = *(*(a1 + 56) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    v34 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, v34, OS_LOG_TYPE_DEFAULT, "#appDBHandler, database export reply finished", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
    v5 = v39;
    goto LABEL_33;
  }

  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_2();
  }

LABEL_34:

  v37 = *MEMORY[0x277D85DE8];
}

- (id)getAllServices
{
  v2 = [IRServiceStore fetchAllServicesWithPersistenceManager:self->_persistanceManager];
  if (v2)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__12;
    v10 = __Block_byref_object_dispose__12;
    v11 = objc_opt_new();
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__IRReplayDatabaseHandler_getAllServices__block_invoke;
    v5[3] = &unk_2797E2188;
    v5[4] = &v6;
    [v2 enumerateObjectsUsingBlock:v5];
    v3 = [v7[5] copy];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRReplayDatabaseHandler getAllServices];
    }

    v3 = 0;
  }

  return v3;
}

void __41__IRReplayDatabaseHandler_getAllServices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 clientIdentifier];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v3 serviceIdentifier];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (id)getSortedEventsForServiceIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v4];

  v6 = [(IRServiceStore *)v5 fetchReplayEventsContainer];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v8 = [v6 replayEvents];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v8 sortedArrayUsingDescriptors:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getEventsForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v4];

  v6 = [(IRServiceStore *)v5 getReplayEventDescriptors];

  return v6;
}

- (id)getSortedHistoryEventsForServiceIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v4];

  v6 = +[IRPreferences shared];
  v7 = [v6 numberOfEventsToSaveInDisk];
  v8 = -[IRServiceStore fetchHistoryEventsContainerWithLimit:](v5, "fetchHistoryEventsContainerWithLimit:", [v7 unsignedIntValue]);

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v10 = [v8 historyEvents];
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v10 sortedArrayUsingDescriptors:v11];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRReplayDatabaseHandler getSortedHistoryEventsForServiceIdentifier:];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)inspectEventByDate:(id)a3 andServiceIdentifier:(id)a4 historyEvents:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v10];

  v12 = [(IRServiceStore *)v11 fetchReplayEventAtDate:v8];
  if (v12)
  {
    v13 = [(IRServiceStore *)v11 fetchService];
    if (v13)
    {
      v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K<=%@", @"date", v8];
      v14 = [v9 filteredArrayUsingPredicate:v27];
      v15 = +[IRPreferences shared];
      v16 = [v15 numberOfHistoryEventsInCache];
      v17 = [v16 unsignedIntValue];

      v18 = [v14 count];
      v19 = (v18 - v17) & ~((v18 - v17) >> 63);
      if (v18 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v18;
      }

      v21 = [IRHistoryEventsContainerDO alloc];
      v22 = [v14 subarrayWithRange:{v19, v20}];
      v23 = [(IRHistoryEventsContainerDO *)v21 initWithHistoryEvents:v22];

      v24 = -[IRReplayEventRunner initWithServicePackage:]([IRReplayEventRunner alloc], "initWithServicePackage:", [v13 servicePackage]);
      [(IRReplayEventRunner *)v24 runSingleReplayEvent:v12 withHistoryEventsContainer:v23];
      v25 = [(IRReplayEventRunner *)v24 contextsInspection];
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRReplayDatabaseHandler inspectEventByDate:andServiceIdentifier:historyEvents:];
      }

      v25 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRReplayDatabaseHandler inspectEventByDate:andServiceIdentifier:historyEvents:];
    }

    v25 = 0;
  }

  return v25;
}

- (id)deviceAttributesFromCandidateIdentifier:(id)a3 withServiceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v8 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v7];
  v9 = [(IRServiceStore *)v8 fetchCandidatesContainer];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 candidates];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__IRReplayDatabaseHandler_deviceAttributesFromCandidateIdentifier_withServiceIdentifier___block_invoke;
    v14[3] = &unk_2797E21B0;
    v15 = v6;
    v16 = &v18;
    [v11 enumerateObjectsUsingBlock:v14];

    v12 = v19[5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "error in fetchCandidatesContainer", buf, 2u);
    }

    v12 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __89__IRReplayDatabaseHandler_deviceAttributesFromCandidateIdentifier_withServiceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 candidateIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  v5 = v19;
  if (v4)
  {
    v6 = [v19 nodes];
    v7 = [v6 anyObject];

    v8 = [v7 avOutputDevice];

    if (v8)
    {
      v9 = objc_opt_new();
      v10 = [v7 avOutputDevice];
      v11 = [v10 deviceID];
      [v9 setDeviceId:v11];

      v12 = [v7 avOutputDevice];
      v13 = [v12 deviceName];
      [v9 setDeviceName:v13];
    }

    else
    {
      v14 = [v7 rapportDevice];

      if (!v14)
      {
LABEL_7:

        v5 = v19;
        goto LABEL_8;
      }

      v9 = objc_opt_new();
      v15 = [v7 rapportDevice];
      v16 = [v15 name];
      [v9 setDeviceName:v16];

      v12 = [v7 rapportDevice];
      v13 = [v12 rapportEffectiveID];
      [v9 setDeviceId:v13];
    }

    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v9;

    goto LABEL_7;
  }

LABEL_8:
}

- (id)deviceAttributesSetFromCandidateIdentifier:(id)a3 withServiceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = objc_opt_new();
  v8 = [[IRServiceStore alloc] initWithPersistenceManager:self->_persistanceManager serviceIdentifier:v7];
  v9 = [(IRServiceStore *)v8 fetchCandidatesContainer];
  v10 = [v9 candidates];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__IRReplayDatabaseHandler_deviceAttributesSetFromCandidateIdentifier_withServiceIdentifier___block_invoke;
  v14[3] = &unk_2797E21B0;
  v11 = v6;
  v15 = v11;
  v16 = &v17;
  [v10 enumerateObjectsUsingBlock:v14];

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __92__IRReplayDatabaseHandler_deviceAttributesSetFromCandidateIdentifier_withServiceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 nodes];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __92__IRReplayDatabaseHandler_deviceAttributesSetFromCandidateIdentifier_withServiceIdentifier___block_invoke_2;
    v7[3] = &unk_2797E0CF8;
    v7[4] = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

void __92__IRReplayDatabaseHandler_deviceAttributesSetFromCandidateIdentifier_withServiceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_opt_new();
  v4 = [v12 avOutputDevice];

  if (v4)
  {
    v5 = [v12 avOutputDevice];
    v6 = [v5 deviceID];
    [v3 setDeviceId:v6];

    v7 = [v12 avOutputDevice];
    v8 = [v7 deviceName];
    [v3 setDeviceName:v8];
  }

  else
  {
    v9 = [v12 rapportDevice];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [v12 rapportDevice];
    v11 = [v10 name];
    [v3 setDeviceName:v11];

    v7 = [v12 rapportDevice];
    v8 = [v7 rapportEffectiveID];
    [v3 setDeviceId:v8];
  }

LABEL_6:
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

void __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#appDBHandler, [ErrorId - Export DB exception] get exception %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#appDBHandler, [ErrorId - Export DB directory create error] failed to create directory, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __48__IRReplayDatabaseHandler_exportDatabaseToPath___block_invoke_cold_5(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "#appDBHandler, [ErrorId - Export DB non existing file] got a non-existing file from exportDatabase! This should never happen. path: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end