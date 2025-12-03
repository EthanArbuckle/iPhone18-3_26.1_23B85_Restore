@interface NSPersistentStore
- (id)_deleteChangesWithDuration:(void *)duration entity:(uint64_t)entity context:(double)context error:;
@end

@implementation NSPersistentStore

- (id)_deleteChangesWithDuration:(void *)duration entity:(uint64_t)entity context:(double)context error:
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    durationCopy = duration;
    v9 = a2;
    [durationCopy hmd_assertIsExecuting];
    fetchRequest = [MEMORY[0x277CBE4A8] fetchRequest];
    entity = [fetchRequest entity];
    propertiesByName = [entity propertiesByName];
    v13 = [propertiesByName objectForKeyedSubscript:@"changedEntity"];

    propertiesByName2 = [entity propertiesByName];
    v15 = [propertiesByName2 objectForKeyedSubscript:@"changeType"];

    v16 = MEMORY[0x277CCAC30];
    v29 = v13;
    name = [v13 name];
    name2 = [v9 name];

    name3 = [v15 name];
    v20 = [v16 predicateWithFormat:@"(%K == %@) AND (%K == %ld)", name, name2, name3, 2];

    [fetchRequest setPredicate:v20];
    if (context <= 2.22044605e-16 || fabs(context + -2.22044605e-16) < 2.22044605e-16)
    {
      v23 = [MEMORY[0x277CBE4B0] fetchHistoryWithFetchRequest:fetchRequest];
    }

    else
    {
      v21 = [MEMORY[0x277CBEAA8] now];
      v22 = [v21 dateByAddingTimeInterval:-context];

      v23 = [MEMORY[0x277CBE4B0] fetchHistoryAfterDate:v22];
      [v23 setFetchRequest:fetchRequest];
    }

    v31[0] = self;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v23 setAffectedStores:v24];

    [v23 setFetchBatchSize:20];
    [v23 setResultType:4];
    v25 = [durationCopy executeRequest:v23 error:entity];

    if (v25)
    {
      result = [v25 result];
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return result;
}

void __83__NSPersistentStore_HomeKitDaemon__hmd_tombstonesForEntity_duration_context_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 changedObjectID];
  v4 = [v3 tombstone];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

void __93__NSPersistentStore_HomeKitDaemon__hmd_deletedModelIDsForEntity_modelIDKey_duration_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tombstone];
  v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

void __97__NSPersistentStore_HomeKitDaemon__hmd_modelWasDeletedWithID_modelIDKey_entity_duration_context___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 tombstone];
  v7 = [v6 objectForKeyedSubscript:a1[4]];

  if ([v7 isEqual:a1[5]])
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end