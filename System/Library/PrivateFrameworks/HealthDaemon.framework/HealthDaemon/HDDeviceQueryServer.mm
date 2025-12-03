@interface HDDeviceQueryServer
- (void)_queue_start;
@end

@implementation HDDeviceQueryServer

- (void)_queue_start
{
  v27.receiver = self;
  v27.super_class = HDDeviceQueryServer;
  [(HDQueryServer *)&v27 _queue_start];
  objectType = [(HDQueryServer *)self objectType];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__71;
  v25[4] = __Block_byref_object_dispose__71;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__71;
  v23[4] = __Block_byref_object_dispose__71;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HDDeviceQueryServer__queue_start__block_invoke;
  aBlock[3] = &unk_27861DDF8;
  aBlock[4] = self;
  aBlock[5] = v23;
  aBlock[6] = v21;
  v4 = _Block_copy(aBlock);
  v5 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  profile = [(HDQueryServer *)self profile];
  database = [profile database];
  v19 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__HDDeviceQueryServer__queue_start__block_invoke_297;
  v14[3] = &unk_27861DE48;
  v14[4] = self;
  v8 = objectType;
  v15 = v8;
  v17 = v25;
  v18 = v23;
  v9 = v4;
  v16 = v9;
  v10 = [database performTransactionWithContext:v5 error:&v19 block:v14 inaccessibilityHandler:0];
  v11 = v19;

  if (v10)
  {
    (*(v9 + 2))(v9, 1);
  }

  else
  {
    clientProxy = [(HDQueryServer *)self clientProxy];
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v11 forQuery:queryUUID];
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
}

void __35__HDDeviceQueryServer__queue_start__block_invoke(void *a1, uint64_t a2)
{
  v4 = *(*(a1[5] + 8) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__HDDeviceQueryServer__queue_start__block_invoke_2;
  v13[3] = &unk_27861DDD0;
  v13[4] = a1[4];
  v5 = [v4 hk_map:v13];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[4];
  if (v9)
  {
    v10 = [v9 clientProxy];
    v9 = a1[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a1[6] + 8) + 24);
  v12 = [v9 queryUUID];
  [v10 clientRemote_deliverDevices:v5 done:a2 reset:v11 query:v12];

  *(*(a1[6] + 8) + 24) = 0;
}

id __35__HDDeviceQueryServer__queue_start__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 deviceManager];
  v12 = 0;
  v6 = [v5 deviceForPersistentID:v3 error:&v12];
  v7 = v12;

  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup device for ID %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __35__HDDeviceQueryServer__queue_start__block_invoke_297(uint64_t a1, void *a2, uint64_t a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) client];
  v7 = [v6 authorizationOracle];

  v8 = [v7 authorizationStatusRecordForType:*(a1 + 40) error:a3];
  v9 = v8;
  if (v8)
  {
    if (([v8 authorizationStatus] == 103 || objc_msgSend(v9, "authorizationStatus") == 101) && !objc_msgSend(v9, "authorizationMode"))
    {
      v13 = [*(a1 + 32) objectType];
      v14 = [v7 additionalAuthorizationPredicateForObjectType:v13 error:a3];

      if (v14)
      {
        v34 = [objc_msgSend(*(a1 + 40) "dataObjectClass")];
        v15 = [*(a1 + 32) profile];
        v16 = [v15 deviceManager];
        v38 = [v16 deviceEntityForNoDeviceWithError:a3];

        v17 = MEMORY[0x277D10B18];
        v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v38, "persistentID")}];
        v39 = [v17 predicateWithProperty:@"data_provenances.device_id" notEqualToValue:v18];

        v19 = [*(a1 + 32) objectType];
        v36 = HDSampleEntityPredicateForDataType(v19);

        v20 = [*(a1 + 32) filter];
        v21 = [*(a1 + 32) profile];
        v22 = [v20 predicateWithProfile:v21];

        v37 = v14;
        v23 = v22;
        v24 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v36 otherPredicate:v22];
        v25 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v24 otherPredicate:v14];

        v26 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v25 otherPredicate:v39];

        v27 = objc_alloc_init(MEMORY[0x277D10B80]);
        [v27 setEntityClass:v34];
        [v27 setPredicate:v26];
        v28 = objc_alloc(MEMORY[0x277D10B78]);
        v29 = [v5 databaseForEntityClass:v34];
        v30 = [v28 initWithDatabase:v29 descriptor:v27];

        v43[0] = @"data_provenances.device_id";
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __35__HDDeviceQueryServer__queue_start__block_invoke_2_308;
        v40[3] = &unk_27861DE20;
        v32 = *(a1 + 64);
        v40[4] = *(a1 + 32);
        v42 = v32;
        v35 = *(a1 + 48);
        v33 = v35;
        v41 = v35;
        v10 = [v30 enumerateProperties:v31 error:a3 enumerationHandler:v40];

        goto LABEL_7;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:4 format:@"Client is not authorized for this query."];
    }
  }

  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __35__HDDeviceQueryServer__queue_start__block_invoke_2_308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || (objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    return 0;
  }

  v6 = MEMORY[0x22AAC6C80](a3, 0);
  if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v6] & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0x64)
    {
      (*(*(a1 + 40) + 16))();
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
  }

  return 1;
}

@end