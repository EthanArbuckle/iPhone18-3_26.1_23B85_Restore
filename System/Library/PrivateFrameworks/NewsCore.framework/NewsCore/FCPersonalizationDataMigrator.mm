@interface FCPersonalizationDataMigrator
- (FCPersonalizationDataMigrator)initWithTreatmentProvider:(id)a3;
- (id)keyValueStore:(id)a3 migrateObject:(id)a4 forKey:(id)a5 fromVersion:(unint64_t)a6;
- (void)upgradeFromVersion2:(id)a3;
@end

@implementation FCPersonalizationDataMigrator

- (FCPersonalizationDataMigrator)initWithTreatmentProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCPersonalizationDataMigrator;
  v5 = [(FCPersonalizationDataMigrator *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    treatmentProvider = v5->_treatmentProvider;
    v5->_treatmentProvider = v6;
  }

  return v5;
}

- (void)upgradeFromVersion2:(id)a3
{
  v4 = a3;
  v5 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "upgrading personalization data store from v2 to v3", buf, 2u);
  }

  v6 = [v4 remoteRecord];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"data"];

    if (!v8)
    {
      v9 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "ignoring locally-cached PersonalizationProfile record since it lost its data when decoding", v16, 2u);
      }

      v7 = 0;
    }
  }

  v10 = [(FCPersonalizationDataMigrator *)self treatmentProvider];
  v11 = v10[2]();

  v12 = [FCModifyPersonalizationOperation personalizationProfileFromRecord:v7];
  v13 = [v4 closedChangeGroups];
  [FCModifyPersonalizationOperation applyChangeGroups:v13 toProfile:v12 treatment:v11 prune:0];

  v14 = [v4 openChangeGroupDeltas];
  [FCModifyPersonalizationOperation applyDeltas:v14 toProfile:v12 treatment:v11 prune:1];

  [v4 setClosedChangeGroups:0];
  [v4 setOpenChangeGroupDeltas:0];
  v15 = [v12 aggregates];
  [v4 setAggregates:v15];
}

- (id)keyValueStore:(id)a3 migrateObject:(id)a4 forKey:(id)a5 fromVersion:(unint64_t)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  v14 = v13;
  if (a6 == 1)
  {
    v14 = v13;
    if (![v12 isEqualToString:@"pb-data"])
    {
      goto LABEL_14;
    }

    v27 = self;
    v15 = [objc_alloc(MEMORY[0x1E69B6F00]) initWithData:v13];
    v16 = [v15 openChangeGroupDeltas];
    __80__FCPersonalizationDataMigrator_keyValueStore_migrateObject_forKey_fromVersion___block_invoke(v16);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = [v15 closedChangeGroups];
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v28 + 1) + 8 * i) deltas];
          __80__FCPersonalizationDataMigrator_keyValueStore_migrateObject_forKey_fromVersion___block_invoke(v22);
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    self = v27;
    [(FCPersonalizationDataMigrator *)v27 upgradeFromVersion2:v15];
    v14 = [v15 data];
  }

  if (a6 == 2 && [v12 isEqualToString:@"pb-data"])
  {
    v23 = [objc_alloc(MEMORY[0x1E69B6F00]) initWithData:v13];
    [(FCPersonalizationDataMigrator *)self upgradeFromVersion2:v23];
    v24 = [v23 data];

    v14 = v24;
  }

LABEL_14:

  v25 = *MEMORY[0x1E69E9840];

  return v14;
}

void __80__FCPersonalizationDataMigrator_keyValueStore_migrateObject_forKey_fromVersion___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 eventsCount];
        if (v7)
        {
          v8 = v7;
          for (j = 0; j != v8; ++j)
          {
            v10 = [v6 events];
            v11 = *(v10 + 4 * j) & 0x1F | (*(v10 + 4 * j) >> 5 << 6);
            *([v6 events] + 4 * j) = v11;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end