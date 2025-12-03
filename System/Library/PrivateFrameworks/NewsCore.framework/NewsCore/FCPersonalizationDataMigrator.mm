@interface FCPersonalizationDataMigrator
- (FCPersonalizationDataMigrator)initWithTreatmentProvider:(id)provider;
- (id)keyValueStore:(id)store migrateObject:(id)object forKey:(id)key fromVersion:(unint64_t)version;
- (void)upgradeFromVersion2:(id)version2;
@end

@implementation FCPersonalizationDataMigrator

- (FCPersonalizationDataMigrator)initWithTreatmentProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = FCPersonalizationDataMigrator;
  v5 = [(FCPersonalizationDataMigrator *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(providerCopy);
    treatmentProvider = v5->_treatmentProvider;
    v5->_treatmentProvider = v6;
  }

  return v5;
}

- (void)upgradeFromVersion2:(id)version2
{
  version2Copy = version2;
  v5 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "upgrading personalization data store from v2 to v3", buf, 2u);
  }

  remoteRecord = [version2Copy remoteRecord];
  v7 = remoteRecord;
  if (remoteRecord)
  {
    v8 = [remoteRecord objectForKeyedSubscript:@"data"];

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

  treatmentProvider = [(FCPersonalizationDataMigrator *)self treatmentProvider];
  v11 = treatmentProvider[2]();

  v12 = [FCModifyPersonalizationOperation personalizationProfileFromRecord:v7];
  closedChangeGroups = [version2Copy closedChangeGroups];
  [FCModifyPersonalizationOperation applyChangeGroups:closedChangeGroups toProfile:v12 treatment:v11 prune:0];

  openChangeGroupDeltas = [version2Copy openChangeGroupDeltas];
  [FCModifyPersonalizationOperation applyDeltas:openChangeGroupDeltas toProfile:v12 treatment:v11 prune:1];

  [version2Copy setClosedChangeGroups:0];
  [version2Copy setOpenChangeGroupDeltas:0];
  aggregates = [v12 aggregates];
  [version2Copy setAggregates:aggregates];
}

- (id)keyValueStore:(id)store migrateObject:(id)object forKey:(id)key fromVersion:(unint64_t)version
{
  v33 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  objectCopy = object;
  keyCopy = key;
  v13 = objectCopy;
  data = v13;
  if (version == 1)
  {
    data = v13;
    if (![keyCopy isEqualToString:@"pb-data"])
    {
      goto LABEL_14;
    }

    selfCopy = self;
    v15 = [objc_alloc(MEMORY[0x1E69B6F00]) initWithData:v13];
    openChangeGroupDeltas = [v15 openChangeGroupDeltas];
    __80__FCPersonalizationDataMigrator_keyValueStore_migrateObject_forKey_fromVersion___block_invoke(openChangeGroupDeltas);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    closedChangeGroups = [v15 closedChangeGroups];
    v18 = [closedChangeGroups countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(closedChangeGroups);
          }

          deltas = [*(*(&v28 + 1) + 8 * i) deltas];
          __80__FCPersonalizationDataMigrator_keyValueStore_migrateObject_forKey_fromVersion___block_invoke(deltas);
        }

        v19 = [closedChangeGroups countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    self = selfCopy;
    [(FCPersonalizationDataMigrator *)selfCopy upgradeFromVersion2:v15];
    data = [v15 data];
  }

  if (version == 2 && [keyCopy isEqualToString:@"pb-data"])
  {
    v23 = [objc_alloc(MEMORY[0x1E69B6F00]) initWithData:v13];
    [(FCPersonalizationDataMigrator *)self upgradeFromVersion2:v23];
    data2 = [v23 data];

    data = data2;
  }

LABEL_14:

  v25 = *MEMORY[0x1E69E9840];

  return data;
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