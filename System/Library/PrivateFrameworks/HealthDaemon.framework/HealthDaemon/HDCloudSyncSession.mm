@interface HDCloudSyncSession
- (BOOL)requiresSyncForChangesFromAnchorRangeMap:(id)map;
- (id)syncPredicate;
- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class;
- (void)setExcludedSyncStores:(id)stores;
@end

@implementation HDCloudSyncSession

- (void)setExcludedSyncStores:(id)stores
{
  storesCopy = stores;
  syncStore = [(HDSyncSession *)self syncStore];
  v5 = [storesCopy setByAddingObject:syncStore];

  excludedSyncStores = self->_excludedSyncStores;
  self->_excludedSyncStores = v5;
}

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(HDCloudSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:class];
}

- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 3145728;
  }

  else
  {
    return 0x80000;
  }
}

- (id)syncPredicate
{
  v29.receiver = self;
  v29.super_class = HDCloudSyncSession;
  syncPredicate = [(HDSyncSession *)&v29 syncPredicate];
  syncStore = [(HDSyncSession *)self syncStore];
  dateInterval = [syncPredicate dateInterval];
  startDate = [dateInterval startDate];
  shardPredicate = [syncStore shardPredicate];
  startDate2 = [shardPredicate startDate];
  v9 = HKDateMin();

  dateInterval2 = [syncPredicate dateInterval];
  endDate = [dateInterval2 endDate];
  shardPredicate2 = [syncStore shardPredicate];
  endDate2 = [shardPredicate2 endDate];
  v14 = HKDateMax();

  v27 = v14;
  v28 = v9;
  v15 = [HDCloudSyncStore shardIntervalWithStartDate:v9 endDate:v14];
  shardPredicate3 = [syncStore shardPredicate];

  if (shardPredicate3)
  {
    shardPredicate4 = [syncStore shardPredicate];
    type = [shardPredicate4 type];

    shardPredicate3 = type == 0;
  }

  v19 = [HDSyncPredicate alloc];
  excludedSyncProvenances = [syncPredicate excludedSyncProvenances];
  includedObjectTypes = [syncPredicate includedObjectTypes];
  defaultMaximumObjectAge = [syncPredicate defaultMaximumObjectAge];
  defaultMaximumTombstoneAge = [syncPredicate defaultMaximumTombstoneAge];
  maximumObjectAgeByType = [syncPredicate maximumObjectAgeByType];
  v25 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:excludedSyncProvenances dateInterval:v15 shouldIncludeDatelessObjects:shardPredicate3 includedObjectTypes:includedObjectTypes defaultMaximumObjectAge:defaultMaximumObjectAge defaultMaximumTombstoneAge:defaultMaximumTombstoneAge maximumObjectAgeByType:maximumObjectAgeByType];

  return v25;
}

- (BOOL)requiresSyncForChangesFromAnchorRangeMap:(id)map
{
  v23 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  syncStore = [(HDSyncSession *)self syncStore];
  [syncStore primaryOrderedSyncEntities];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v16 = 0;
        v17 = 0;
        v16 = HDSyncAnchorRangeMake(-1, -1);
        v17 = v11;
        syncEntityIdentifier = [v10 syncEntityIdentifier];
        v13 = [mapCopy getAnchorRange:&v16 forSyncEntityIdentifier:syncEntityIdentifier];

        if (v13 && v17 > v16)
        {
          LOBYTE(v7) = 1;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

@end