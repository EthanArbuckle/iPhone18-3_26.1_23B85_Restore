@interface IRServiceStore
+ (id)fetchAllServicesContainingClientIdentifier:(id)identifier persistenceManager:(id)manager;
+ (id)fetchAllServicesWithPersistenceManager:(id)manager;
+ (id)generateLogForServicesDatabaseWithPersistenceManager:(id)manager;
+ (id)generateLogForStringNumEntitiesInDatabaseWithPersistenceManager:(id)manager;
+ (void)adjustDBToStaticTokens:(id)tokens;
+ (void)adjustFirstSeenDateOfCandidates:(id)candidates;
+ (void)idendifyAndDeleteDuplicateServicesWithWithPersistenceManager:(id)manager;
- (BOOL)_cleanupCandidatesWithDate:(id)date;
- (BOOL)_cleanupHistoryEventsWithDate:(id)date;
- (BOOL)_cleanupNotAirplayCandidates;
- (BOOL)_cleanupPredictionEventsInDateInterval:(id)interval;
- (BOOL)_cleanupReplayEventsWithDate:(id)date;
- (BOOL)_cleanupTrashedHistoryEvents;
- (BOOL)addCandidates:(id)candidates;
- (BOOL)addHistoryEvent:(id)event withLimit:(unint64_t)limit;
- (BOOL)addReplayEvents:(id)events withLimit:(unint64_t)limit;
- (BOOL)addService:(id)service;
- (BOOL)cleanupWithDate:(id)date dateIntervalOfMiLoPredictionsToDiscard:(id)discard;
- (BOOL)deleteCandidates:(id)candidates;
- (BOOL)deleteService;
- (BOOL)injectStatisticsRelationship;
- (BOOL)updateCandidate:(id)candidate;
- (BOOL)updateService:(id)service;
- (BOOL)updateStatistics:(id)statistics;
- (IRServiceStore)initWithPersistenceManager:(id)manager serviceIdentifier:(id)identifier;
- (id)fetchCandidatesContainer;
- (id)fetchHistoryEventsContainerWithLimit:(unint64_t)limit;
- (id)fetchReplayEventAtDate:(id)date;
- (id)fetchReplayEventsContainer;
- (id)fetchService;
- (id)fetchStatistics;
- (id)getReplayEventDescriptors;
@end

@implementation IRServiceStore

- (id)fetchService
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(IRStore *)self fetchObjectWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getReplayEventDescriptors
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  serviceIdentifier = [(IRServiceStore *)self serviceIdentifier];
  v5 = [v3 predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", serviceIdentifier];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v27[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = objc_opt_new();
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__IRServiceStore_Replay__getReplayEventDescriptors__block_invoke;
    v17[3] = &unk_2797E14E8;
    v18 = v9;
    v19 = &v20;
    [managedObjectContext performBlockAndWait:v17];

    v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v12 = v21[5];
    v26 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v12 sortUsingDescriptors:v13];

    v14 = [v21[5] copy];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __51__IRServiceStore_Replay__getReplayEventDescriptors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replayEvent];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__IRServiceStore_Replay__getReplayEventDescriptors__block_invoke_2;
  v3[3] = &unk_2797E14C0;
  v3[4] = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __51__IRServiceStore_Replay__getReplayEventDescriptors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IRReplayEventDescriptor alloc];
  v5 = [v3 date];
  v6 = [v3 contextChangeReason];
  v7 = [v3 systemState];

  v8 = [v7 convert];
  v9 = [(IRReplayEventDescriptor *)v4 initWithDate:v5 withContextChangeReason:v6 withSystemState:v8];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
}

- (IRServiceStore)initWithPersistenceManager:(id)manager serviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IRServiceStore;
  v8 = [(IRStore *)&v11 initWithPersistenceManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceIdentifier, identifier);
  }

  return v9;
}

+ (id)fetchAllServicesWithPersistenceManager:(id)manager
{
  managerCopy = manager;
  v4 = [[IRStore alloc] initWithPersistenceManager:managerCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(IRStore *)v4 fetchObjectsWithEntityName:v6 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  return v7;
}

+ (id)fetchAllServicesContainingClientIdentifier:(id)identifier persistenceManager:(id)manager
{
  v15[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  identifierCopy = identifier;
  v7 = [[IRStore alloc] initWithPersistenceManager:managerCopy];

  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K CONTAINS[cd] %@", @"clientIdentifier", identifierCopy];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15[0] = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(IRStore *)v7 fetchObjectsWithEntityName:v10 byAndPredicates:v11 sortDescriptors:0 andLimit:0];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)generateLogForStringNumEntitiesInDatabaseWithPersistenceManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = [[IRStore alloc] initWithPersistenceManager:managerCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = managerCopy;
  managedObjectModel = [managerCopy managedObjectModel];
  entities = [managedObjectModel entities];

  v7 = [entities countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = @"Memory: Entity count in database (for all services): \n";
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(entities);
        }

        managedObjectClassName = [*(*(&v24 + 1) + 8 * v11) managedObjectClassName];
        v14 = [(IRStore *)v4 countManagedObjectWithEntityName:managedObjectClassName byAndPredicates:0 sortDescriptors:0 andLimit:0];
        v10 = [(__CFString *)v12 stringByAppendingFormat:@"Entity Name: %@, Entity Count:%@\n", managedObjectClassName, v14];

        ++v11;
        v12 = v10;
      }

      while (v8 != v11);
      v8 = [entities countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = @"Memory: Entity count in database (for all services): \n";
  }

  v15 = MEMORY[0x277CCABB0];
  persistenceStore = [v23 persistenceStore];
  v17 = [persistenceStore url];
  path = [v17 path];
  0xF4240uLL = [v15 numberWithUnsignedLongLong:IRGetDiskUsageForPath(path) / 0xF4240uLL];
  v20 = [(__CFString *)v10 stringByAppendingFormat:@"Total Disk Size: %@M\n", 0xF4240uLL];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)generateLogForServicesDatabaseWithPersistenceManager:(id)manager
{
  v3 = [IRServiceStore fetchAllServicesWithPersistenceManager:manager];
  v4 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__IRServiceStore_generateLogForServicesDatabaseWithPersistenceManager___block_invoke;
  v13 = &unk_2797E1510;
  v14 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:&v10];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 componentsJoinedByString:@"\n"];
  v8 = [v6 stringWithFormat:@"Services in DB: \n%@", v7, v10, v11, v12, v13];

  return v8;
}

void __71__IRServiceStore_generateLogForServicesDatabaseWithPersistenceManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v9 = [v4 clientIdentifier];
  v5 = [v4 serviceIdentifier];
  [v4 servicePackage];
  v6 = IRServicePackageString();
  v7 = [v4 lastSeenDate];

  v8 = [v3 stringWithFormat:@"client:%@, service:%@, package:%@, last seen:%@", v9, v5, v6, v7];
  [v2 addObject:v8];
}

+ (void)idendifyAndDeleteDuplicateServicesWithWithPersistenceManager:(id)manager
{
  v49 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = [IRServiceStore fetchAllServicesWithPersistenceManager:managerCopy];
  v5 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        serviceIdentifier = [v11 serviceIdentifier];

        if (serviceIdentifier)
        {
          serviceIdentifier2 = [v11 serviceIdentifier];
          [v5 addObject:serviceIdentifier2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  v28 = v6;

  v29 = managerCopy;
  v14 = [[IRStore alloc] initWithPersistenceManager:managerCopy];
  v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenDate" ascending:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = *v38;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * j);
        v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceIdentifier", v18];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v46 = v19;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v45 = v32;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        v24 = [(IRStore *)v14 fetchManagedObjectsWithEntityName:v21 byAndPredicates:v22 sortDescriptors:v23 andLimit:0];

        managedObjectContext = [(IRStore *)v14 managedObjectContext];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke;
        v33[3] = &unk_2797E1560;
        v34 = v24;
        v35 = v18;
        v36 = v14;
        v26 = v24;
        [managedObjectContext performBlockAndWait:v33];
      }

      v16 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) count] >= 2)
  {
    v3 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke_cold_1(a1, v2, v3);
    }

    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke_59;
    v5[3] = &unk_2797E1538;
    v6 = *(a1 + 48);
    [v4 enumerateObjectsUsingBlock:v5];
    [*(a1 + 48) commitChangesToStore];
  }
}

void __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 managedObjectContext];
    [v5 deleteObject:v4];
  }
}

+ (void)adjustDBToStaticTokens:(id)tokens
{
  v46 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = [IRServiceStore fetchAllServicesWithPersistenceManager:tokensCopy];
  v5 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        clientIdentifier = [v11 clientIdentifier];

        if (clientIdentifier)
        {
          clientIdentifier2 = [v11 clientIdentifier];
          [v5 addObject:clientIdentifier2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v27 = v6;

  v14 = [[IRStore alloc] initWithPersistenceManager:tokensCopy];
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenDate" ascending:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v29 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"clientIdentifier", *(*(&v34 + 1) + 8 * j)];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v43 = v18;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v42 = v30;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v23 = [(IRStore *)v14 fetchManagedObjectsWithEntityName:v20 byAndPredicates:v21 sortDescriptors:v22 andLimit:0];

        managedObjectContext = [(IRStore *)v14 managedObjectContext];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __41__IRServiceStore_adjustDBToStaticTokens___block_invoke;
        v31[3] = &unk_2797E15B0;
        v32 = v23;
        v33 = v14;
        v25 = v23;
        [managedObjectContext performBlockAndWait:v31];
      }

      v16 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v16);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __41__IRServiceStore_adjustDBToStaticTokens___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__IRServiceStore_adjustDBToStaticTokens___block_invoke_2;
  v3[3] = &unk_2797E1588;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  [*(a1 + 40) commitChangesToStore];
}

void __41__IRServiceStore_adjustDBToStaticTokens___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v7 = [v4 managedObjectContext];
    [v7 deleteObject:v5];
  }

  else
  {
    v6 = a2;
    v7 = [v6 clientIdentifier];
    [v6 setServiceIdentifier:?];
  }
}

+ (void)adjustFirstSeenDateOfCandidates:(id)candidates
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  candidatesCopy = candidates;
  v5 = [v3 predicateWithFormat:@"%K = %@", @"firstSeenDate", 0];
  v12 = @"firstSeenDate";
  v6 = [MEMORY[0x277CBEAA8] now];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v8 = [[IRStore alloc] initWithPersistenceManager:candidatesCopy];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(IRStore *)v8 batchUpdateObjectsWithEntityName:v10 predicate:v5 propertiesToUpdate:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchCandidatesContainer
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(IRStore *)self fetchObjectWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchReplayEventsContainer
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(IRStore *)self fetchObjectWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchHistoryEventsContainerWithLimit:(unint64_t)limit
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"historyEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v28[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v27 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v11 = [(IRStore *)self fetchManagedObjectsWithEntityName:v8 byAndPredicates:v9 sortDescriptors:v10 andLimit:limit];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = objc_opt_new();
  managedObjectContext = [(IRStore *)self managedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__IRServiceStore_fetchHistoryEventsContainerWithLimit___block_invoke;
  v18[3] = &unk_2797E14E8;
  v13 = v11;
  v19 = v13;
  v20 = &v21;
  [managedObjectContext performBlockAndWait:v18];

  v14 = [IRHistoryEventsContainerDO alloc];
  v15 = [(IRHistoryEventsContainerDO *)v14 initWithHistoryEvents:v22[5]];

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __55__IRServiceStore_fetchHistoryEventsContainerWithLimit___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) reverseObjectEnumerator];
  v2 = [v7 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      v5 = [v3 convert];
      [v4 addObject:v5];

      v6 = [v7 nextObject];

      v3 = v6;
    }

    while (v6);
  }
}

- (id)fetchReplayEventAtDate:(id)date
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  serviceIdentifier = self->_serviceIdentifier;
  dateCopy = date;
  serviceIdentifier = [v4 predicateWithFormat:@"%K = %@", @"replayEventsContainer.service.serviceIdentifier", serviceIdentifier];
  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"date", dateCopy];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15[0] = serviceIdentifier;
  v15[1] = dateCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [(IRStore *)self fetchObjectWithEntityName:v10 byAndPredicates:v11 sortDescriptors:0 andLimit:0];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)fetchStatistics
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(IRStore *)self fetchObjectWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)addService:(id)service
{
  serviceCopy = service;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  managedObjectContext = [(IRStore *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__IRServiceStore_addService___block_invoke;
  v8[3] = &unk_2797E15D8;
  v6 = serviceCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [managedObjectContext performBlockAndWait:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

uint64_t __29__IRServiceStore_addService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [IRServiceMO MOService:v2 inManagedObjectContext:v3];

  result = [*(a1 + 40) commitChangesToStore];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)updateService:(id)service
{
  v23[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceIdentifier", self->_serviceIdentifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v23[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__IRServiceStore_updateService___block_invoke;
    v14[3] = &unk_2797E1600;
    v15 = v9;
    selfCopy = self;
    v18 = &v19;
    v16 = serviceCopy;
    [managedObjectContext performBlockAndWait:v14];

    v11 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t __32__IRServiceStore_updateService___block_invoke(uint64_t a1)
{
  [IRServiceMO setPropertiesOfServiceMO:*(a1 + 32) withServiceDO:*(a1 + 40)];
  result = [*(a1 + 48) commitChangesToStore];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)addCandidates:(id)candidates
{
  v23[1] = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v23[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__IRServiceStore_addCandidates___block_invoke;
    v14[3] = &unk_2797E1628;
    v15 = candidatesCopy;
    v16 = v9;
    selfCopy = self;
    v18 = &v19;
    [managedObjectContext performBlockAndWait:v14];

    v11 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __32__IRServiceStore_addCandidates___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __32__IRServiceStore_addCandidates___block_invoke_2;
  v8 = &unk_2797E13F8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  [v2 enumerateObjectsUsingBlock:&v5];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) commitChangesToStore];
}

void __32__IRServiceStore_addCandidates___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 managedObjectContext];
  v5 = [IRCandidateMO MOCandidate:v4 candidatesContainerMO:v2 inManagedObjectContext:v6];

  [v2 addCandidatesObject:v5];
}

- (BOOL)addHistoryEvent:(id)event withLimit:(unint64_t)limit
{
  v55[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v55[0] = v32;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__IRServiceStore_addHistoryEvent_withLimit___block_invoke;
    v33[3] = &unk_2797E1628;
    v34 = v9;
    v35 = eventCopy;
    selfCopy = self;
    v37 = &v38;
    [managedObjectContext performBlockAndWait:v33];

    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"historyEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v54 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v15 = [(IRStore *)self countManagedObjectWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

    v16 = 0;
    if (*(v39 + 24) == 1 && v15)
    {
      v17 = [v15 longLongValue] - limit;
      v18 = v17 & ~(v17 >> 63);
      v19 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v20 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        *buf = 136316162;
        v45 = "#service-store, ";
        v46 = 2112;
        v47 = v19;
        v48 = 2112;
        v49 = v15;
        v50 = 2112;
        v51 = v21;
        v52 = 2112;
        v53 = v22;
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_INFO, "%s[%@], Commiting history event to DB, numberOfHistoryEvents: %@, limit: %@, removing: %@", buf, 0x34u);

        v18 = v17 & ~(v17 >> 63);
      }

      if (v17 < 1)
      {
        v16 = 1;
      }

      else
      {
        v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
        v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"historyEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];

        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v43 = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v42 = v23;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v16 = [(IRStore *)self batchDeleteObjectsWithEntityName:v26 byAndPredicates:v27 sortDescriptors:v28 andLimit:v18];

        v11 = v24;
      }
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v16 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __44__IRServiceStore_addHistoryEvent_withLimit___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [IRHistoryEventMO historyEventMOWithhistoryEventDO:v3 historyEventsContainerMO:v2 inManagedObjectContext:v4];
  [v2 addHistoryEventsObject:v5];

  result = [*(a1 + 48) commitChangesToStore];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)updateCandidate:(id)candidate
{
  v26[2] = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"candidatesContainer.service.serviceIdentifier", self->_serviceIdentifier];
  v6 = MEMORY[0x277CCAC30];
  candidateIdentifier = [candidateCopy candidateIdentifier];
  v8 = [v6 predicateWithFormat:@"%K = %@", @"candidateIdentifier", candidateIdentifier];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v26[0] = v5;
  v26[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v12 = [(IRStore *)self fetchManagedObjectWithEntityName:v10 byAndPredicates:v11 sortDescriptors:0 andLimit:0];

  if (v12)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__IRServiceStore_updateCandidate___block_invoke;
    v17[3] = &unk_2797E1628;
    v18 = v12;
    v19 = candidateCopy;
    selfCopy = self;
    v21 = &v22;
    [managedObjectContext performBlockAndWait:v17];

    v14 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __34__IRServiceStore_updateCandidate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  [IRCandidateMO setPropertiesOfCandidateMO:v2 withCandidate:v3 managedObjectContext:v4];

  result = [*(a1 + 48) commitChangesToStore];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)addReplayEvents:(id)events withLimit:(unint64_t)limit
{
  v55[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v55[0] = v32;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__IRServiceStore_addReplayEvents_withLimit___block_invoke;
    v33[3] = &unk_2797E1628;
    v34 = eventsCopy;
    v35 = v9;
    selfCopy = self;
    v37 = &v38;
    [managedObjectContext performBlockAndWait:v33];

    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"replayEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v54 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v15 = [(IRStore *)self countManagedObjectWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

    v16 = 0;
    if (*(v39 + 24) == 1 && v15)
    {
      v17 = [v15 longLongValue] - limit;
      v18 = v17 & ~(v17 >> 63);
      v19 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v20 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        *buf = 136316162;
        v45 = "#service-store, ";
        v46 = 2112;
        v47 = v19;
        v48 = 2112;
        v49 = v15;
        v50 = 2112;
        v51 = v21;
        v52 = 2112;
        v53 = v22;
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEBUG, "%s[%@], Commiting replay events to DB, numberOfReplayEvents: %@, limit: %@, removing: %@", buf, 0x34u);

        v18 = v17 & ~(v17 >> 63);
      }

      if (v17 < 1)
      {
        v16 = 1;
      }

      else
      {
        v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
        v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"replayEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];

        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v43 = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v42 = v23;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v16 = [(IRStore *)self batchDeleteObjectsWithEntityName:v26 byAndPredicates:v27 sortDescriptors:v28 andLimit:v18];

        v11 = v24;
      }
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v16 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

void __44__IRServiceStore_addReplayEvents_withLimit___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__IRServiceStore_addReplayEvents_withLimit___block_invoke_2;
  v7[3] = &unk_2797E1650;
  v8 = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v6 = v2;
  [v3 enumerateObjectsUsingBlock:v7];
  [*(a1 + 40) addReplayEvent:v6];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) commitChangesToStore];
}

void __44__IRServiceStore_addReplayEvents_withLimit___block_invoke_2(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v7 = [v4 managedObjectContext];
  v6 = [IRReplayEventMO replayEventMOWithReplayEventDO:v5 replayEventsContainerMO:v3 inManagedObjectContext:v7];

  [v2 addObject:v6];
}

- (BOOL)updateStatistics:(id)statistics
{
  v23[1] = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v23[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v9 = [(IRStore *)self fetchManagedObjectWithEntityName:v7 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__IRServiceStore_updateStatistics___block_invoke;
    v14[3] = &unk_2797E1600;
    v15 = v9;
    selfCopy = self;
    v18 = &v19;
    v16 = statisticsCopy;
    [managedObjectContext performBlockAndWait:v14];

    v11 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t __35__IRServiceStore_updateStatistics___block_invoke(uint64_t a1)
{
  [IRStatisticsMO setPropertiesOfStatisticsMO:*(a1 + 32) withStatisticsDO:*(a1 + 40)];
  result = [*(a1 + 48) commitChangesToStore];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)injectStatisticsRelationship
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"service.serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v25[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v7 = [(IRStore *)self fetchManagedObjectWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceIdentifier", self->_serviceIdentifier];

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v24 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v13 = [(IRStore *)self fetchManagedObjectWithEntityName:v11 byAndPredicates:v12 sortDescriptors:0 andLimit:0];

    if (v13)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      managedObjectContext = [(IRStore *)self managedObjectContext];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __46__IRServiceStore_injectStatisticsRelationship__block_invoke;
      v17[3] = &unk_2797E15D8;
      v17[4] = self;
      v18 = v13;
      v19 = &v20;
      [managedObjectContext performBlockAndWait:v17];

      v8 = *(v21 + 24);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v8 = 0;
    }

    v3 = v9;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __46__IRServiceStore_injectStatisticsRelationship__block_invoke(uint64_t a1)
{
  v2 = [IRStatisticsMO alloc];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [(IRStatisticsMO *)v2 initWithContext:v3];

  [(IRStatisticsMO *)v4 setService:*(a1 + 40)];
  [*(a1 + 40) setStatistics:v4];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
}

- (BOOL)deleteService
{
  selfCopy = self;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceIdentifier", self->_serviceIdentifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v5 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  v7 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)deleteCandidates:(id)candidates
{
  selfCopy = self;
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  serviceIdentifier = self->_serviceIdentifier;
  candidatesCopy = candidates;
  serviceIdentifier = [v4 predicateWithFormat:@"%K = %@", @"candidatesContainer.service.serviceIdentifier", serviceIdentifier];
  v8 = MEMORY[0x277CCAC30];
  v9 = [candidatesCopy compactMap:&__block_literal_global_8];

  allObjects = [v9 allObjects];
  v11 = [v8 predicateWithFormat:@"%K IN %@", @"candidateIdentifier", allObjects];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17[0] = serviceIdentifier;
  v17[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)cleanupWithDate:(id)date dateIntervalOfMiLoPredictionsToDiscard:(id)discard
{
  dateCopy = date;
  discardCopy = discard;
  v8 = [(IRServiceStore *)self _cleanupCandidatesWithDate:dateCopy]&& [(IRServiceStore *)self _cleanupHistoryEventsWithDate:dateCopy]&& [(IRServiceStore *)self _cleanupReplayEventsWithDate:dateCopy]&& [(IRServiceStore *)self _cleanupTrashedHistoryEvents]&& [(IRServiceStore *)self _cleanupNotAirplayCandidates]&& (!discardCopy || [(IRServiceStore *)self _cleanupPredictionEventsInDateInterval:discardCopy]);

  return v8;
}

- (BOOL)_cleanupCandidatesWithDate:(id)date
{
  selfCopy = self;
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  serviceIdentifier = self->_serviceIdentifier;
  dateCopy = date;
  serviceIdentifier = [v4 predicateWithFormat:@"%K = %@", @"candidatesContainer.service.serviceIdentifier", serviceIdentifier];
  v8 = MEMORY[0x277CCAC30];
  v9 = +[IRPreferences shared];
  dbCleanupXPCActivityDeleteCandidatesThreshold = [v9 dbCleanupXPCActivityDeleteCandidatesThreshold];
  v11 = [v8 predicateWithFormat:@"(%@ - %K) > %@", dateCopy, @"lastSeenDate", dbCleanupXPCActivityDeleteCandidatesThreshold];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17[0] = serviceIdentifier;
  v17[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)_cleanupHistoryEventsWithDate:(id)date
{
  selfCopy = self;
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  serviceIdentifier = self->_serviceIdentifier;
  dateCopy = date;
  serviceIdentifier = [v4 predicateWithFormat:@"%K = %@", @"historyEventsContainer.service.serviceIdentifier", serviceIdentifier];
  v8 = MEMORY[0x277CCAC30];
  v9 = +[IRPreferences shared];
  dbCleanupXPCActivityDeleteHistoryEventsThreshold = [v9 dbCleanupXPCActivityDeleteHistoryEventsThreshold];
  v11 = [v8 predicateWithFormat:@"(%@ - %K) > %@", dateCopy, @"date", dbCleanupXPCActivityDeleteHistoryEventsThreshold];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17[0] = serviceIdentifier;
  v17[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)_cleanupReplayEventsWithDate:(id)date
{
  selfCopy = self;
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  serviceIdentifier = self->_serviceIdentifier;
  dateCopy = date;
  serviceIdentifier = [v4 predicateWithFormat:@"%K = %@", @"replayEventsContainer.service.serviceIdentifier", serviceIdentifier];
  v8 = MEMORY[0x277CCAC30];
  v9 = +[IRPreferences shared];
  dbCleanupXPCActivityDeleteReplayEventsThreshold = [v9 dbCleanupXPCActivityDeleteReplayEventsThreshold];
  v11 = [v8 predicateWithFormat:@"(%@ - %K) > %@", dateCopy, @"date", dbCleanupXPCActivityDeleteReplayEventsThreshold];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17[0] = serviceIdentifier;
  v17[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v13 byAndPredicates:v14 sortDescriptors:0 andLimit:0];

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)_cleanupTrashedHistoryEvents
{
  selfCopy = self;
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"historyEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"candidateIdenfifier", 0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10[0] = v3;
  v10[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  LOBYTE(selfCopy) = [(IRStore *)selfCopy batchDeleteObjectsWithEntityName:v6 byAndPredicates:v7 sortDescriptors:0 andLimit:0];

  v8 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)_cleanupNotAirplayCandidates
{
  fetchCandidatesContainer = [(IRServiceStore *)self fetchCandidatesContainer];
  candidates = [fetchCandidatesContainer candidates];
  v5 = [candidates allWhere:&__block_literal_global_110];

  if ([v5 count])
  {
    v6 = [(IRServiceStore *)self deleteCandidates:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_cleanupPredictionEventsInDateInterval:(id)interval
{
  v29[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"historyEvent.historyEventsContainer.service.serviceIdentifier", self->_serviceIdentifier];
  v6 = MEMORY[0x277CCAC30];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v9 = [v6 predicateWithFormat:@"%K >= %@ && %K <= %@", @"historyEvent.date", startDate, @"historyEvent.date", endDate];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v29[0] = v5;
  v29[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v13 = [(IRStore *)self fetchManagedObjectsWithEntityName:v11 byAndPredicates:v12 sortDescriptors:0 andLimit:0];

  v14 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v15 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = v15;
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *buf = 136315650;
    *&buf[4] = "#service-store, ";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v28 = v18;
    _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_INFO, "%s[%@], Found %@ events to mark as discarded events", buf, 0x20u);
  }

  if (v13 && [v13 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v28) = 0;
    managedObjectContext = [(IRStore *)self managedObjectContext];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__IRServiceStore__cleanupPredictionEventsInDateInterval___block_invoke;
    v23[3] = &unk_2797E1698;
    selfCopy = self;
    v26 = buf;
    v24 = v13;
    [managedObjectContext performBlockAndWait:v23];

    v20 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t __57__IRServiceStore__cleanupPredictionEventsInDateInterval___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 setLabel:{0, v10}];
        [v7 setPredictionId:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) commitChangesToStore];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __79__IRServiceStore_idendifyAndDeleteDuplicateServicesWithWithPersistenceManager___block_invoke_cold_1(uint64_t a1, void **a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CCABB0];
  v5 = *a2;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v9 = 138412546;
  v10 = v3;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_25543D000, v6, OS_LOG_TYPE_ERROR, "#service-store, [ErrorId - Duplicate Services] Identified multiple service with service identifier:%@, num services identified: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end