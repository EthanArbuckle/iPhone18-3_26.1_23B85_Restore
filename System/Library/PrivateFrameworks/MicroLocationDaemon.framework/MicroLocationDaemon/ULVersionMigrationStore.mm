@interface ULVersionMigrationStore
- (BOOL)_commitBatchForEntityName:(id)name migratingAttribute:(id)attribute stop:(BOOL *)stop;
- (BOOL)_connectLabelsToScanningEvents;
- (BOOL)_createScanningEventFromRecordingEvent:(id)event withRelatedLOIObjectID:(id)d;
- (BOOL)_migrateAttributeToRelationshipForEntityName:(id)name deprecatedAttribute:(id)attribute sortAttribute:(id)sortAttribute relationship:(id)relationship relatedEntityName:(id)entityName relatedAttribute:(id)relatedAttribute relatedSortAttribute:(id)relatedSortAttribute fetchBatchSize:(unint64_t)self0;
- (BOOL)_migrateAttributesToRelationships;
- (BOOL)_migrateConfigurations;
- (BOOL)_migrateMeasurements;
- (BOOL)_migrateRecordingEvents;
- (BOOL)_updateLabelsContextLayers;
- (BOOL)performVersionMigrationForModelVersion:(id)version;
- (ULVersionMigrationStore)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (id).cxx_construct;
- (id)_getTriggerToRecordingUUIDMap;
- (id)_getUUIDToObjectIDMapForRelatedEntityName:(id)name relatedAttribute:(id)attribute relatedSortAttribute:(id)sortAttribute filterUUIDs:(id)ds;
- (void)_connectLabelsInBatch:(id)batch withTriggerUUIDMap:(id)map andScanEventsUUIDMap:(id)dMap;
- (void)_createAnchorAppearanceMapMOFromConfigurationMO:(id)o withLOIObjectID:(id)d;
- (void)_createBLEMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_createMeasurementFromDeprecatedMeasurement:(id)measurement withRelatedScanningEventObjectID:(id)d;
- (void)_createUWBMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_createWiFiHistogramMOFromConfigurationMO:(id)o withLOIObjectID:(id)d;
- (void)_createWiFiMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_migrateBatch:(id)batch forDeprecatedAttribute:(id)attribute relationship:(id)relationship withRelationUUIDMap:(id)map;
- (void)_migrateConfigurationInBatch:(id)batch withLOIMap:(id)map;
- (void)_migrateMeasurementsInBatch:(id)batch withRelationUUIDMap:(id)map;
- (void)_migrateRecordingEventsInBatch:(id)batch withRelationUUIDMap:(id)map;
- (void)_updateContextLayersForLabelsInBatch:(id)batch;
- (void)setAnchorDeviceModelAllowedMap:()map<std:()DeviceModel :()std:(std:(DeviceModel>>> *)std :allocator<std::pair<const)std::string :less<std::string> string;
@end

@implementation ULVersionMigrationStore

- (ULVersionMigrationStore)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v7.receiver = self;
  v7.super_class = ULVersionMigrationStore;
  v3 = [(ULStore *)&v7 initWithDbStore:store];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    [(ULVersionMigrationStore *)v3 setHandledRecordingUUIDs:v4];

    CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(v6);
    [(ULVersionMigrationStore *)v3 setAnchorDeviceModelAllowedMap:v6];
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v6, v6[1]);
  }

  return v3;
}

- (BOOL)performVersionMigrationForModelVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy unsignedIntValue] > 1)
  {
    v9 = 1;
  }

  else
  {
    _migrateAttributesToRelationships = [(ULVersionMigrationStore *)self _migrateAttributesToRelationships];
    _migrateConfigurations = [(ULVersionMigrationStore *)self _migrateConfigurations];
    _migrateRecordingEvents = [(ULVersionMigrationStore *)self _migrateRecordingEvents];
    _migrateMeasurements = [(ULVersionMigrationStore *)self _migrateMeasurements];
    v9 = (_migrateAttributesToRelationships && _migrateConfigurations && _migrateRecordingEvents && _migrateMeasurements) & [(ULVersionMigrationStore *)self _connectLabelsToScanningEvents];
  }

  if ([versionCopy unsignedIntValue] <= 2)
  {
    v9 &= [(ULVersionMigrationStore *)self _updateLabelsContextLayers];
  }

  return v9;
}

- (BOOL)_migrateAttributeToRelationshipForEntityName:(id)name deprecatedAttribute:(id)attribute sortAttribute:(id)sortAttribute relationship:(id)relationship relatedEntityName:(id)entityName relatedAttribute:(id)relatedAttribute relatedSortAttribute:(id)relatedSortAttribute fetchBatchSize:(unint64_t)self0
{
  nameCopy = name;
  attributeCopy = attribute;
  sortAttributeCopy = sortAttribute;
  relationshipCopy = relationship;
  entityNameCopy = entityName;
  relatedAttributeCopy = relatedAttribute;
  relatedSortAttributeCopy = relatedSortAttribute;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke;
  v35[3] = &unk_2798D4AC0;
  v35[4] = self;
  v32 = nameCopy;
  v22 = nameCopy;
  v36 = v22;
  v31 = attributeCopy;
  v23 = attributeCopy;
  v37 = v23;
  v24 = entityNameCopy;
  v38 = v24;
  v25 = relatedAttributeCopy;
  v39 = v25;
  v30 = relatedAttributeCopy;
  v26 = relatedSortAttributeCopy;
  v40 = v26;
  v27 = sortAttributeCopy;
  v41 = v27;
  sizeCopy = size;
  v28 = relationshipCopy;
  v42 = v28;
  v43 = &v45;
  [managedObjectContext performBlockAndWait:{v35, v30, v31, v32}];

  LOBYTE(attribute) = *(v46 + 24);
  _Block_object_dispose(&v45, 8);

  return attribute;
}

void __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fetchPropertyForEntityName:*(a1 + 40) propertyToFetch:*(a1 + 48) distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) _getUUIDToObjectIDMapForRelatedEntityName:*(a1 + 56) relatedAttribute:*(a1 + 64) relatedSortAttribute:*(a1 + 72) filterUUIDs:v2];
    if ([v3 count])
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v5 = MEMORY[0x277CCAC30];
      v6 = *(a1 + 48);
      v7 = [v3 allKeys];
      v8 = [v5 predicateWithFormat:@"%K IN %@", v6, v7];
      [v4 addObject:v8];

      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*(a1 + 80) ascending:1];
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v24[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v13 = *(a1 + 104);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke_2;
      v18[3] = &unk_2798D4A98;
      v18[4] = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = *(a1 + 88);
      v14 = v3;
      v15 = *(a1 + 96);
      v21 = v14;
      v23 = v15;
      v22 = *(a1 + 40);
      [v10 efficientlyFetchManagedObjectsWithEntityName:v11 byAndPredicates:0 sortDescriptors:v12 andLimit:0 fetchBatchSize:v13 andApplyBlock:v18];
    }
  }

  v16 = [*(a1 + 32) managedObjectContext];
  [v16 reset];

  v17 = *MEMORY[0x277D85DE8];
}

void __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) _migrateBatch:v5 forDeprecatedAttribute:*(a1 + 40) relationship:*(a1 + 48) withRelationUUIDMap:*(a1 + 56)];
    *(*(*(a1 + 72) + 8) + 24) &= [*(a1 + 32) _commitBatchForEntityName:*(a1 + 64) migratingAttribute:*(a1 + 40) stop:a3];
    v5 = v6;
  }
}

- (void)_migrateBatch:(id)batch forDeprecatedAttribute:(id)attribute relationship:(id)relationship withRelationUUIDMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  attributeCopy = attribute;
  relationshipCopy = relationship;
  mapCopy = map;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = batchCopy;
  v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 valueForKey:attributeCopy];
        v18 = [mapCopy objectForKeyedSubscript:v17];

        if (v18)
        {
          managedObjectContext = [(ULStore *)self managedObjectContext];
          v20 = [managedObjectContext existingObjectWithID:v18 error:0];
          [v16 setValue:v20 forKey:relationshipCopy];
        }

        [v16 setValue:0 forKey:attributeCopy];
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_commitBatchForEntityName:(id)name migratingAttribute:(id)attribute stop:(BOOL *)stop
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeCopy = attribute;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v21 = 0;
    v13 = [managedObjectContext2 save:&v21];
    v14 = v21;

    if (v14)
    {
      *stop = 1;
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289795;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2114;
        v27 = v14;
        v28 = 2113;
        v29 = nameCopy;
        v30 = 2113;
        v31 = attributeCopy;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Version Migration: Error migrating batch. Could not save changes to store, error:%{public, location:escape_only}@, Migrating Entity:%{private, location:escape_only}@, Migrating Property:%{private, location:escape_only}@}", buf, 0x30u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289795;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2114;
        v27 = v14;
        v28 = 2113;
        v29 = nameCopy;
        v30 = 2113;
        v31 = attributeCopy;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Version Migration: Error migrating batch. Could not save changes to store", "{msg%{public}.0s:Version Migration: Error migrating batch. Could not save changes to store, error:%{public, location:escape_only}@, Migrating Entity:%{private, location:escape_only}@, Migrating Property:%{private, location:escape_only}@}", buf, 0x30u);
      }

      dbStore = [(ULStore *)self dbStore];
      v18 = (*(dbStore->var0 + 2))(dbStore);
      [v18 handleDatabaseError:v14];
    }
  }

  else
  {
    v13 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_getUUIDToObjectIDMapForRelatedEntityName:(id)name relatedAttribute:(id)attribute relatedSortAttribute:(id)sortAttribute filterUUIDs:(id)ds
{
  v36[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeCopy = attribute;
  sortAttributeCopy = sortAttribute;
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  if (dsCopy)
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", attributeCopy, dsCopy];
    [array addObject:dsCopy];
  }

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:sortAttributeCopy ascending:1];
  v36[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v19 = [(ULStore *)self fetchManagedObjectsWithEntityName:nameCopy byAndPredicates:array sortDescriptors:v17 andLimit:0 returnObjectsAsFaults:1 withManagedObjectContext:managedObjectContext];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__26;
  v34 = __Block_byref_object_dispose__26;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  managedObjectContext2 = [(ULStore *)self managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __119__ULVersionMigrationStore__getUUIDToObjectIDMapForRelatedEntityName_relatedAttribute_relatedSortAttribute_filterUUIDs___block_invoke;
  v26[3] = &unk_2798D4578;
  v21 = v19;
  v27 = v21;
  v29 = &v30;
  v22 = attributeCopy;
  v28 = v22;
  [managedObjectContext2 performBlockAndWait:v26];

  v23 = v31[5];
  _Block_object_dispose(&v30, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __119__ULVersionMigrationStore__getUUIDToObjectIDMapForRelatedEntityName_relatedAttribute_relatedSortAttribute_filterUUIDs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 objectID];
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v9 = [v6 valueForKey:*(a1 + 40)];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrateAttributesToRelationships
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAssociatedStateTableMigrationPageSize"];
  v10 = [defaultsDictionary objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v10 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71C58 unsignedIntValue];
  }

  v12 = unsignedIntValue;

  v51 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v4 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"timestamp" relationship:@"loi" relatedEntityName:v6 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:v12];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = +[ULDefaultsSingleton shared];
  defaultsDictionary2 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRapportTableMigrationPageSize"];
  v20 = [defaultsDictionary2 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue2 = [v20 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = [&unk_286A71C58 unsignedIntValue];
  }

  v22 = unsignedIntValue2;

  v23 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v14 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"generationTimestamp" relationship:@"loi" relatedEntityName:v16 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:v22];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v25 deprecatedAttribute:@"serviceUUID_deprecated" sortAttribute:@"receivedTimestamp" relationship:@"service" relatedEntityName:v27 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::LabelTableMigrationPageSize>()];

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v30 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"lastSeenTimeStamp" relationship:@"loi" relatedEntityName:v32 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:ULSettings::get<ULSettings::CustomLoiTableMigrationPageSize>()];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  LOBYTE(v32) = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v35 deprecatedAttribute:@"serviceId_deprecated" sortAttribute:@"lastSeenTimeStamp" relationship:@"service" relatedEntityName:v37 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::CustomLoiTableMigrationPageSize>()];

  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v39 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"generationTimestamp" relationship:@"loi" relatedEntityName:v41 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:ULSettings::get<ULSettings::ModelTableMigrationPageSize>()];

  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v44 deprecatedAttribute:@"serviceUUID_deprecated" sortAttribute:@"generationTimestamp" relationship:@"service" relatedEntityName:v46 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::ModelTableMigrationPageSize>()];
  v48 = v51 && v23 && v28 && v33;
  v49 = v32 & v42 & v47;

  return v48 & v49;
}

- (BOOL)_migrateConfigurations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ULVersionMigrationStore__migrateConfigurations__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __49__ULVersionMigrationStore__migrateConfigurations__block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchPropertyForEntityName:v4 propertyToFetch:@"loiId" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 _getUUIDToObjectIDMapForRelatedEntityName:v8 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" filterUUIDs:v5];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] array];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"configurationType", &unk_286A73C68];
      [v10 addObject:v11];

      v12 = MEMORY[0x277CCAC30];
      v13 = [v9 allKeys];
      v14 = [v12 predicateWithFormat:@"%K IN %@", @"loiId", v13];
      [v10 addObject:v14];

      v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:1];
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v28 = NSStringFromClass(v16);
      v33[0] = v29;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v18 = +[ULDefaultsSingleton shared];
      v19 = [v18 defaultsDictionary];

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULConfigurationTableMigrationPageSize"];
      v21 = [v19 objectForKey:v20];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v22 = [v21 unsignedIntValue];
      }

      else
      {
        v22 = [&unk_286A71C70 unsignedIntValue];
      }

      v23 = v22;

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__ULVersionMigrationStore__migrateConfigurations__block_invoke_59;
      v30[3] = &unk_2798D4AE8;
      v30[4] = *(a1 + 32);
      v24 = v9;
      v25 = *(a1 + 40);
      v31 = v24;
      v32 = v25;
      [v15 efficientlyFetchManagedObjectsWithEntityName:v28 byAndPredicates:v10 sortDescriptors:v17 andLimit:0 fetchBatchSize:v23 andApplyBlock:v30];
    }
  }

  v26 = [*(a1 + 32) managedObjectContext];
  [v26 reset];

  v27 = *MEMORY[0x277D85DE8];
}

void __49__ULVersionMigrationStore__migrateConfigurations__block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateConfigurationInBatch:v5 withLOIMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateConfigurationInBatch:(id)batch withLOIMap:(id)map
{
  v22 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = batchCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        loiId = [v12 loiId];
        v14 = [mapCopy objectForKeyedSubscript:loiId];

        if (v14)
        {
          configurationType = [v12 configurationType];
          if (configurationType)
          {
            if (configurationType == 1)
            {
              [(ULVersionMigrationStore *)self _createAnchorAppearanceMapMOFromConfigurationMO:v12 withLOIObjectID:v14];
            }
          }

          else
          {
            [(ULVersionMigrationStore *)self _createWiFiHistogramMOFromConfigurationMO:v12 withLOIObjectID:v14];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_createWiFiHistogramMOFromConfigurationMO:(id)o withLOIObjectID:(id)d
{
  oCopy = o;
  dCopy = d;
  v8 = [(ULVersionMigrationStore *)self _getConfigProtoFromConfigurationMO:oCopy];
  if (v13)
  {
    if ((*(v13 + 48) & 4) != 0)
    {
      v10 = *(v13 + 16);
      if (!v10)
      {
        v10 = *(CLMicroLocationProto::Configuration::default_instance(v8) + 16);
      }

      CLMicroLocationProto::WifiHistogram::WifiHistogram(buf, v10);
      CLMicroLocationProto::WifiHistogram::ByteSize(buf);
      operator new[]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Version Migration: wifiHistogram proto not found in configuration", buf, 2u);
    }

    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

- (void)_createAnchorAppearanceMapMOFromConfigurationMO:(id)o withLOIObjectID:(id)d
{
  oCopy = o;
  dCopy = d;
  v8 = [(ULVersionMigrationStore *)self _getConfigProtoFromConfigurationMO:oCopy];
  if (v13)
  {
    if ((*(v13 + 48) & 8) != 0)
    {
      v10 = *(v13 + 24);
      if (!v10)
      {
        v10 = *(CLMicroLocationProto::Configuration::default_instance(v8) + 24);
      }

      CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(buf, v10);
      CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(buf);
      operator new[]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Version Migration: anchorAppearance proto not found in configuration", buf, 2u);
    }

    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

- (BOOL)_migrateRecordingEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchPropertyForEntityName:v4 propertyToFetch:@"loiId" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 _getUUIDToObjectIDMapForRelatedEntityName:v8 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" filterUUIDs:v5];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] array];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"eventType", &unk_286A71C28];
      [v10 addObject:v11];

      v12 = MEMORY[0x277CCAC30];
      v13 = [v9 allKeys];
      v14 = [v12 predicateWithFormat:@"%K IN %@", @"loiId", v13];
      [v10 addObject:v14];

      v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:1];
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v28 = NSStringFromClass(v16);
      v33[0] = v29;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v18 = +[ULDefaultsSingleton shared];
      v19 = [v18 defaultsDictionary];

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingEventTableMigrationPageSize"];
      v21 = [v19 objectForKey:v20];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v22 = [v21 unsignedIntValue];
      }

      else
      {
        v22 = [&unk_286A71C58 unsignedIntValue];
      }

      v23 = v22;

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke_2;
      v30[3] = &unk_2798D4AE8;
      v30[4] = *(a1 + 32);
      v24 = v9;
      v25 = *(a1 + 40);
      v31 = v24;
      v32 = v25;
      [v15 efficientlyFetchManagedObjectsWithEntityName:v28 byAndPredicates:v10 sortDescriptors:v17 andLimit:0 fetchBatchSize:v23 andApplyBlock:v30];
    }
  }

  v26 = [*(a1 + 32) managedObjectContext];
  [v26 reset];

  v27 = *MEMORY[0x277D85DE8];
}

void __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateRecordingEventsInBatch:v5 withRelationUUIDMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateRecordingEventsInBatch:(id)batch withRelationUUIDMap:(id)map
{
  v26 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = batchCopy;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        loiId = [v11 loiId];
        v13 = [mapCopy objectForKeyedSubscript:loiId];

        if (v13)
        {
          handledRecordingUUIDs = [(ULVersionMigrationStore *)self handledRecordingUUIDs];
          recordingUUID = [v11 recordingUUID];
          v16 = [handledRecordingUUIDs containsObject:recordingUUID];

          if ((v16 & 1) == 0)
          {
            if ([(ULVersionMigrationStore *)self _createScanningEventFromRecordingEvent:v11 withRelatedLOIObjectID:v13])
            {
              handledRecordingUUIDs2 = [(ULVersionMigrationStore *)self handledRecordingUUIDs];
              recordingUUID2 = [v11 recordingUUID];
              [handledRecordingUUIDs2 addObject:recordingUUID2];
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_createScanningEventFromRecordingEvent:(id)event withRelatedLOIObjectID:(id)d
{
  eventCopy = event;
  dCopy = d;
  event = [eventCopy event];
  bytes = [event bytes];
  event2 = [eventCopy event];
  [event2 length];
  v11 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v32, bytes);

  if (v11)
  {
    v12 = [ULScanningEventMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v14 = [(ULScanningEventMO *)v12 initWithContext:managedObjectContext];

    recordingUUID = [eventCopy recordingUUID];
    [(ULScanningEventMO *)v14 setScanEventUUID:recordingUUID];

    deviceClass = [MEMORY[0x277D28868] deviceClass];
    [(ULScanningEventMO *)v14 setDeviceIdentifier:deviceClass];

    [eventCopy recordingTimestamp];
    [(ULScanningEventMO *)v14 setTimestamp:?];
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v18 = [managedObjectContext2 existingObjectWithID:dCopy error:0];
    [(ULScanningEventMO *)v14 setLoi:v18];

    -[ULScanningEventMO setScanType:](v14, "setScanType:", [eventCopy eventSubType] != 2);
    [(ULScanningEventMO *)v14 setBleSuspended:v32[77] & ((v35 & 0x2000) >> 13)];
    [(ULScanningEventMO *)v14 setUwbSuspended:v32[76] & ((v35 & 0x800) >> 11)];
    [(ULScanningEventMO *)v14 setWifiDisabled:0];
    [(ULScanningEventMO *)v14 setScanResult:0];
    v19 = [(ULScanningEventMO *)v14 setMotionState:0];
    if ((v36 & 2) != 0 && v33 <= 3)
    {
      v19 = [(ULScanningEventMO *)v14 setMotionState:(0x3000200020001uLL >> (16 * v33)) & 3];
    }

    if (v36)
    {
      v20 = v34;
      if (!v34)
      {
        v19 = CLMicroLocationProto::RecordingEvent::default_instance(v19);
        v20 = *(v19 + 16);
      }

      if (*(v20 + 24))
      {
        v21 = v34;
        if (!v34)
        {
          v19 = CLMicroLocationProto::RecordingEvent::default_instance(v19);
          v21 = *(v19 + 16);
        }

        if ((*(v21 + 24) & 2) != 0)
        {
          v22 = MEMORY[0x277CCABB0];
          v23 = v34;
          if (!v34)
          {
            v23 = *(CLMicroLocationProto::RecordingEvent::default_instance(v19) + 128);
          }

          v24 = [v22 numberWithUnsignedLongLong:*(v23 + 8)];
          [(ULScanningEventMO *)v14 setWifiAssociationBSSID:v24];

          v26 = MEMORY[0x277CCABB0];
          v27 = v34;
          if (!v34)
          {
            v27 = *(CLMicroLocationProto::RecordingEvent::default_instance(v25) + 128);
          }

          v28 = [v26 numberWithInt:*(v27 + 16)];
          [(ULScanningEventMO *)v14 setWifiAssociationRSSI:v28];
        }
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Version Migration: Failed to deserialize recordingEvent protobuf from byte stream", v31, 2u);
    }
  }

  CLMicroLocationProto::RecordingEvent::~RecordingEvent(v32);

  return v11;
}

- (BOOL)_migrateMeasurements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ULVersionMigrationStore__migrateMeasurements__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __47__ULVersionMigrationStore__migrateMeasurements__block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 _getUUIDToObjectIDMapForRelatedEntityName:v4 relatedAttribute:@"scanEventUUID" relatedSortAttribute:@"timestamp" filterUUIDs:0];

  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = MEMORY[0x277CCAC30];
    v8 = [v5 allKeys];
    v9 = [v7 predicateWithFormat:@"%K IN %@", @"recordingUUID", v8];
    [v6 addObject:v9];

    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:1];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v28[0] = v24;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v14 = +[ULDefaultsSingleton shared];
    v15 = [v14 defaultsDictionary];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMigrationPageSize"];
    v17 = [v15 objectForKey:v16];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v17 unsignedIntValue];
    }

    else
    {
      v18 = [&unk_286A71C58 unsignedIntValue];
    }

    v19 = v18;

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__ULVersionMigrationStore__migrateMeasurements__block_invoke_2;
    v25[3] = &unk_2798D4AE8;
    v25[4] = *(a1 + 32);
    v20 = v5;
    v21 = *(a1 + 40);
    v26 = v20;
    v27 = v21;
    [v10 efficientlyFetchManagedObjectsWithEntityName:v12 byAndPredicates:v6 sortDescriptors:v13 andLimit:0 fetchBatchSize:v19 andApplyBlock:v25];
  }

  v22 = [*(a1 + 32) managedObjectContext];
  [v22 reset];

  v23 = *MEMORY[0x277D85DE8];
}

void __47__ULVersionMigrationStore__migrateMeasurements__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateMeasurementsInBatch:v5 withRelationUUIDMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateMeasurementsInBatch:(id)batch withRelationUUIDMap:(id)map
{
  v21 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = batchCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        recordingUUID = [v12 recordingUUID];
        v14 = [mapCopy objectForKeyedSubscript:recordingUUID];

        if (v14)
        {
          [(ULVersionMigrationStore *)self _createMeasurementFromDeprecatedMeasurement:v12 withRelatedScanningEventObjectID:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_createMeasurementFromDeprecatedMeasurement:(id)measurement withRelatedScanningEventObjectID:(id)d
{
  measurementCopy = measurement;
  dCopy = d;
  operator new();
}

- (void)_createWiFiMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 4) != 0)
  {
    v9 = [ULWiFiMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v11 = [(ULWiFiMeasurementMO *)v9 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v13 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULWiFiMeasurementMO *)v11 setScanningEvent:v13];

    v14 = [(ULWiFiMeasurementMO *)v11 setTimestamp:*(a4.var0->var0 + 1)];
    v15 = *(a4.var0->var0 + 2);
    if (!v15)
    {
      v15 = *(CLMicroLocationProto::Measurement::default_instance(v14) + 16);
    }

    [(ULWiFiMeasurementMO *)v11 setChannel:*(v15 + 32)];
    v16 = -[ULWiFiMeasurementMO setFlags:](v11, "setFlags:", [measurementCopy flags]);
    v17 = *(a4.var0->var0 + 2);
    if (!v17)
    {
      v17 = *(CLMicroLocationProto::Measurement::default_instance(v16) + 16);
    }

    v18 = [(ULWiFiMeasurementMO *)v11 setRssi:*(v17 + 20)];
    v19 = *(a4.var0->var0 + 2);
    if (!v19)
    {
      v19 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 16);
    }

    [(ULWiFiMeasurementMO *)v11 setSourceBSSID:*(v19 + 24)];
    if ([(ULWiFiMeasurementMO *)v11 channel]<= 13)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    [(ULWiFiMeasurementMO *)v11 setBand:v20];
  }
}

- (void)_createBLEMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  v35 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 0x40) != 0)
  {
    v10 = [ULBLEMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v12 = [(ULBLEMeasurementMO *)v10 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v14 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULBLEMeasurementMO *)v12 setScanningEvent:v14];

    v15 = [(ULBLEMeasurementMO *)v12 setTimestamp:*(a4.var0->var0 + 1)];
    v16 = *(a4.var0->var0 + 6);
    if (!v16)
    {
      v16 = *(CLMicroLocationProto::Measurement::default_instance(v15) + 48);
    }

    v17 = [(ULBLEMeasurementMO *)v12 setRssi:*(v16 + 20)];
    v18 = *(a4.var0->var0 + 6);
    if (!v18)
    {
      v17 = CLMicroLocationProto::Measurement::default_instance(v17);
      v18 = *(v17 + 6);
    }

    if ((*(v18 + 64) & 0x80) != 0)
    {
      v19 = *(a4.var0->var0 + 6);
      if (!v19)
      {
        v19 = *(CLMicroLocationProto::Measurement::default_instance(v17) + 48);
      }

      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v19 + 48), v33);
      if (v34 == 1)
      {
        v20 = objc_alloc(MEMORY[0x277CCAD78]);
        if ((v34 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v21 = [v20 initWithUUIDBytes:v33];
        uUIDString = [v21 UUIDString];
        [(ULBLEMeasurementMO *)v12 setSourceIdsUUID:uUIDString];
      }
    }

    v23 = [(ULBLEMeasurementMO *)v12 setDeviceModel:0];
    v24 = *(a4.var0->var0 + 6);
    if (!v24)
    {
      v23 = CLMicroLocationProto::Measurement::default_instance(v23);
      v24 = *(v23 + 6);
    }

    if ((*(v24 + 64) & 0x40) != 0)
    {
      v25 = *(a4.var0->var0 + 6);
      if (!v25)
      {
        v25 = *(CLMicroLocationProto::Measurement::default_instance(v23) + 48);
      }

      v26 = *(v25 + 40);
      if (*(v26 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *v26, *(v26 + 1));
      }

      else
      {
        v27 = *v26;
        v31.__r_.__value_.__r.__words[2] = *(v26 + 2);
        *&v31.__r_.__value_.__l.__data_ = v27;
      }

      v32 = 1;
      [(ULVersionMigrationStore *)self anchorDeviceModelAllowedMap];
      [(ULBLEMeasurementMO *)v12 setDeviceModel:CLMicroLocationUtils::convertModelStringToDeviceModel(&v31, v29)];
      std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v29, v30);
      if (v32 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_createUWBMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  v29 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 0x80) != 0)
  {
    v10 = [ULUWBMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v12 = [(ULUWBMeasurementMO *)v10 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v14 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULUWBMeasurementMO *)v12 setScanningEvent:v14];

    v15 = [(ULUWBMeasurementMO *)v12 setTimestamp:*(a4.var0->var0 + 1)];
    v17 = *(a4.var0->var0 + 7);
    if (!v17)
    {
      v17 = *(CLMicroLocationProto::Measurement::default_instance(v15) + 56);
    }

    LODWORD(v16) = *(v17 + 20);
    v18 = [(ULUWBMeasurementMO *)v12 setRange:v16];
    v19 = *(a4.var0->var0 + 7);
    if (!v19)
    {
      v18 = CLMicroLocationProto::Measurement::default_instance(v18);
      v19 = *(v18 + 7);
    }

    if ((*(v19 + 56) & 0x10) != 0)
    {
      v20 = *(a4.var0->var0 + 7);
      if (!v20)
      {
        v20 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 56);
      }

      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v20 + 32), v27);
      if (v28 == 1)
      {
        v21 = objc_alloc(MEMORY[0x277CCAD78]);
        if ((v28 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v22 = [v21 initWithUUIDBytes:v27];
        uUIDString = [v22 UUIDString];
        [(ULUWBMeasurementMO *)v12 setSourceIdsUUID:uUIDString];
      }
    }

    v24 = [(ULUWBMeasurementMO *)v12 setDeviceModel:0];
    v25 = *(a4.var0->var0 + 7);
    if (!v25)
    {
      v25 = *(CLMicroLocationProto::Measurement::default_instance(v24) + 56);
    }

    if (*(v25 + 40) == 2)
    {
      [(ULUWBMeasurementMO *)v12 setDeviceModel:2];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connectLabelsToScanningEvents
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  _getTriggerToRecordingUUIDMap = [(ULVersionMigrationStore *)self _getTriggerToRecordingUUIDMap];
  if ([_getTriggerToRecordingUUIDMap count])
  {
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke;
    v7[3] = &unk_2798D4B38;
    v7[4] = self;
    v8 = _getTriggerToRecordingUUIDMap;
    v9 = &v10;
    [managedObjectContext performBlockAndWait:v7];

    v5 = *(v11 + 24);
  }

  else
  {
    v5 = 1;
  }

  _Block_object_dispose(&v10, 8);
  return v5 & 1;
}

void __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [*(a1 + 40) allValues];
  v6 = [v2 _getUUIDToObjectIDMapForRelatedEntityName:v4 relatedAttribute:@"scanEventUUID" relatedSortAttribute:@"timestamp" filterUUIDs:v5];

  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = MEMORY[0x277CCAC30];
    v9 = [*(a1 + 40) allKeys];
    v10 = [v8 predicateWithFormat:@"%K IN %@", @"triggerUUID_deprecated", v9];
    [v7 addObject:v10];

    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v26[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v16 = ULSettings::get<ULSettings::LabelTableMigrationPageSize>();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke_2;
    v22[3] = &unk_2798D4B10;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v17;
    v18 = v6;
    v19 = *(a1 + 48);
    v24 = v18;
    v25 = v19;
    [v12 efficientlyFetchManagedObjectsWithEntityName:v14 byAndPredicates:v7 sortDescriptors:v15 andLimit:0 fetchBatchSize:v16 andApplyBlock:v22];
  }

  v20 = [*(a1 + 32) managedObjectContext];
  [v20 reset];

  v21 = *MEMORY[0x277D85DE8];
}

void __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _connectLabelsInBatch:v5 withTriggerUUIDMap:*(a1 + 40) andScanEventsUUIDMap:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 56) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:@"triggerUUID_deprecated" stop:a3];

    v5 = v9;
  }
}

- (void)_connectLabelsInBatch:(id)batch withTriggerUUIDMap:(id)map andScanEventsUUIDMap:(id)dMap
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  dMapCopy = dMap;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = batchCopy;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        triggerUUID_deprecated = [v13 triggerUUID_deprecated];
        v15 = [mapCopy objectForKeyedSubscript:triggerUUID_deprecated];

        if (v15)
        {
          v16 = [dMapCopy objectForKeyedSubscript:v15];
          if (v16)
          {
            managedObjectContext = [(ULStore *)selfCopy managedObjectContext];
            v18 = [managedObjectContext existingObjectWithID:v16 error:0];
            [v13 setScanningEvent:v18];

            scanningEvent = [v13 scanningEvent];
            v20 = [scanningEvent loi];
            [v13 setLoi:v20];
          }

          [v13 setTriggerUUID_deprecated:0];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_getTriggerToRecordingUUIDMap
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v24 = [(ULStore *)self fetchPropertyForEntityName:v4 propertyToFetch:@"triggerUUID_deprecated" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"triggerUUID", v24];
  [array addObject:v6];

  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
  v33[0] = @"triggerUUID";
  v33[1] = @"recordingUUID";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v32 = v25;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  LOBYTE(v22) = 1;
  v23 = [(ULStore *)self fetchPropertiesForEntityName:v8 propertiesToFetch:v26 propertiesToGroupBy:0 distinctResults:1 byAndPredicates:array sortDescriptors:v9 andLimit:0 resetContext:v22];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v23;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"triggerUUID"];
        v17 = [v15 objectForKeyedSubscript:@"recordingUUID"];
        v18 = v17;
        if (v16)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          [dictionary setObject:v17 forKeyedSubscript:v16];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)_updateContextLayersForLabelsInBatch:(id)batch
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  batchCopy = batch;
  v4 = [batchCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(batchCopy);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        service = [v7 service];
        serviceUUID = [service serviceUUID];
        v11 = [v8 initWithUUIDString:serviceUUID];

        v12 = [MEMORY[0x277D28788] getDefaultContextLayerForService:v11];
        [v7 setContextLayerType:{objc_msgSend(MEMORY[0x277D28788], "contextLayerEnumFromStringType:", v12)}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [batchCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLabelsContextLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"contextLayerType", &unk_286A71C40];
  [v3 addObject:v4];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NIL", @"service"];
  [v3 addObject:v5];

  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v15[0] = v2;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = ULSettings::get<ULSettings::LabelTableMigrationPageSize>();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke_109;
  v13[3] = &unk_2798D4528;
  v14 = *(a1 + 32);
  [v6 efficientlyFetchManagedObjectsWithEntityName:v8 byAndPredicates:v3 sortDescriptors:v9 andLimit:0 fetchBatchSize:v10 andApplyBlock:v13];

  v11 = [*(a1 + 32) managedObjectContext];
  [v11 reset];

  v12 = *MEMORY[0x277D85DE8];
}

void __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke_109(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _updateContextLayersForLabelsInBatch:v5];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 40) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:@"contextLayerType" stop:a3];

    v5 = v9;
  }
}

- (void)setAnchorDeviceModelAllowedMap:()map<std:()DeviceModel :()std:(std:(DeviceModel>>> *)std :allocator<std::pair<const)std::string :less<std::string> string
{
  p_anchorDeviceModelAllowedMap = &self->_anchorDeviceModelAllowedMap;
  if (p_anchorDeviceModelAllowedMap != std)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,DeviceModel>,std::__tree_node<std::__value_type<std::string,DeviceModel>,void *> *,long>>(p_anchorDeviceModelAllowedMap, std->__tree_.__begin_node_, &std->__tree_.__end_node_.__left_);
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end