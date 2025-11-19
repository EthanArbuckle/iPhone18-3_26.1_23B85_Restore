@interface HDCloudSyncSession
- (BOOL)requiresSyncForChangesFromAnchorRangeMap:(id)a3;
- (id)syncPredicate;
- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)a3;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)a3;
- (void)setExcludedSyncStores:(id)a3;
@end

@implementation HDCloudSyncSession

- (void)setExcludedSyncStores:(id)a3
{
  v4 = a3;
  v7 = [(HDSyncSession *)self syncStore];
  v5 = [v4 setByAddingObject:v7];

  excludedSyncStores = self->_excludedSyncStores;
  self->_excludedSyncStores = v5;
}

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(HDCloudSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:a3];
}

- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
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
  v3 = [(HDSyncSession *)&v29 syncPredicate];
  v4 = [(HDSyncSession *)self syncStore];
  v5 = [v3 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 shardPredicate];
  v8 = [v7 startDate];
  v9 = HKDateMin();

  v10 = [v3 dateInterval];
  v11 = [v10 endDate];
  v12 = [v4 shardPredicate];
  v13 = [v12 endDate];
  v14 = HKDateMax();

  v27 = v14;
  v28 = v9;
  v15 = [HDCloudSyncStore shardIntervalWithStartDate:v9 endDate:v14];
  v16 = [v4 shardPredicate];

  if (v16)
  {
    v17 = [v4 shardPredicate];
    v18 = [v17 type];

    v16 = v18 == 0;
  }

  v19 = [HDSyncPredicate alloc];
  v20 = [v3 excludedSyncProvenances];
  v21 = [v3 includedObjectTypes];
  v22 = [v3 defaultMaximumObjectAge];
  v23 = [v3 defaultMaximumTombstoneAge];
  v24 = [v3 maximumObjectAgeByType];
  v25 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:v20 dateInterval:v15 shouldIncludeDatelessObjects:v16 includedObjectTypes:v21 defaultMaximumObjectAge:v22 defaultMaximumTombstoneAge:v23 maximumObjectAgeByType:v24];

  return v25;
}

- (BOOL)requiresSyncForChangesFromAnchorRangeMap:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSyncSession *)self syncStore];
  [v5 primaryOrderedSyncEntities];
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
        v12 = [v10 syncEntityIdentifier];
        v13 = [v4 getAnchorRange:&v16 forSyncEntityIdentifier:v12];

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