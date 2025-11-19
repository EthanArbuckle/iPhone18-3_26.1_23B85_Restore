@interface ULMeasurementStore
+ (unsigned)maxEntriesInTable;
- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)a3 andLimit:(unint64_t)a4 usingDistinctRecords:(BOOL)a5 intoTargetStore:(id)a6;
- (BOOL)deleteMeasurementsFromRecordingUUIDs:(const void *)a3;
- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4;
- (BOOL)insertDataObjects:(const void *)a3;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (unsigned)numLocalizationScansFromTime:(double)a3 toTime:(double)a4;
- (unsigned)numRecordingScansFromTime:(double)a3 toTime:(double)a4;
- (vector<ULMeasurementDO,)fetchAllLocalizingMeasurementsWithLimit:(ULMeasurementStore *)self;
- (vector<ULMeasurementDO,)fetchLearningMeasurementsAtLoiGroupId:(ULMeasurementStore *)self fromTime:(SEL)a3 toTime:(const uuid *)a4;
- (vector<ULMeasurementDO,)fetchMeasurementsForRecordingUUIDs:(ULMeasurementStore *)self;
@end

@implementation ULMeasurementStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A717F0 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6 = self;
  v7[0] = &unk_286A55C60;
  v7[1] = &v6;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(self, a3, v7);
  std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4
{
  v35 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULMeasurementStore deleteRecordsOlderThan:orNewerThan:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 136315138;
    v34 = [v9 UTF8String];
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Deleting old records for entity: %s", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [(ULStore *)self dbStore];
  v12 = (*(v11->var0 + 12))(v11);
  v13 = [v12 getRecordingUUIDsOlderThan:a3 orNewerThan:a4];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v13];
  [v10 addObject:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(ULStore *)self batchDeleteObjectsWithEntityName:v16 byAndPredicates:v10 sortDescriptors:0 andLimit:0];

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277CCAC30];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v21 = [v19 predicateWithFormat:@"%K < %@", @"scanCFTimestamp", v20];
  [v18 addObject:v21];

  v22 = +[ULDefaultsSingleton shared];
  v23 = [v22 defaultsDictionary];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMaxOldEntriesToDelete"];
  v25 = [v23 objectForKey:v24];
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = [v25 unsignedIntValue];
  }

  else
  {
    v26 = [&unk_286A71808 unsignedIntValue];
  }

  v27 = v26;

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [(ULStore *)self batchDeleteObjectsWithEntityName:v29 byAndPredicates:v18 sortDescriptors:0 andLimit:v27];

  v31 = *MEMORY[0x277D85DE8];
  return v17 && v30;
}

- (BOOL)deleteMeasurementsFromRecordingUUIDs:(const void *)a3
{
  if (*a3 == *(a3 + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMeasurementStore deleteRecordsOlderThan:orNewerThan:];
    }

    v12 = logObject_MicroLocation_Default;
    v11 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#Warning No UUIDs are passed in to delete measurements entries", buf, 2u);
      return 0;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = ULDBUtils::NSStringArrayFromBoostUUIDs(a3);
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v7];
    [v6 addObject:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(ULStore *)self batchDeleteObjectsWithEntityName:v10 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

    objc_autoreleasePoolPop(v5);
  }

  return v11;
}

- (vector<ULMeasurementDO,)fetchMeasurementsForRecordingUUIDs:(ULMeasurementStore *)self
{
  v18[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v9 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v9];
  [v10 addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [(ULMeasurementStore *)self _fetchMeasurementEntriesByAndPredicates:v10 sortDescriptors:v13 andLimit:v8];
  std::vector<ULMeasurementDO>::__vdeallocate(&retstr->var0);
  *retstr = v16;
  memset(&v16, 0, sizeof(v16));
  v17 = &v16;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v17);

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULMeasurementDO,)fetchLearningMeasurementsAtLoiGroupId:(ULMeasurementStore *)self fromTime:(SEL)a3 toTime:(const uuid *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(ULStore *)self dbStore];
  v15 = (*(v14->var0 + 12))(v14);
  *&v24.var0 = *a4;
  LOBYTE(v24.var2) = 1;
  v16 = [v15 getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:&v24 fromTime:*&a5 toTime:1 withLimit:{*&a6, 1, 0}];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v16];
  [v13 addObject:v17];

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v23 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [(ULMeasurementStore *)self _fetchMeasurementEntriesByAndPredicates:v13 sortDescriptors:v19 andLimit:v12];
  std::vector<ULMeasurementDO>::__vdeallocate(&retstr->var0);
  *retstr = v24;
  memset(&v24, 0, sizeof(v24));
  v22 = &v24;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v22);

  objc_autoreleasePoolPop(v11);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULMeasurementDO,)fetchAllLocalizingMeasurementsWithLimit:(ULMeasurementStore *)self
{
  v19[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(ULStore *)self dbStore];
  v10 = (*(v9->var0 + 12))(v9);
  v11 = [v10 getRecordingUUIDsForLocalizationActionsFromTime:0 toTime:{0, 0, 0}];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(ULMeasurementStore *)self _fetchMeasurementEntriesByAndPredicates:v8 sortDescriptors:v14 andLimit:a4];
  std::vector<ULMeasurementDO>::__vdeallocate(&retstr->var0);
  *retstr = v17;
  memset(&v17, 0, sizeof(v17));
  v18 = &v17;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v18);

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)numRecordingScansFromTime:(double)a3 toTime:(double)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(ULStore *)self dbStore];
  v10 = (*(v9->var0 + 12))(v9);
  v21[0] = 0;
  v21[16] = 0;
  v11 = [v10 getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:v21 fromTime:*&a3 toTime:1 withLimit:{*&a4, 1, 0}];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanMCTimestamp" ascending:0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v20 = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v17 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"scanMCTimestamp" distinctResults:1 byAndPredicates:v8 sortDescriptors:v16 andLimit:0];

  objc_autoreleasePoolPop(v7);
  LODWORD(v8) = [v17 count];

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unsigned)numLocalizationScansFromTime:(double)a3 toTime:(double)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(ULStore *)self dbStore];
  v10 = (*(v9->var0 + 12))(v9);
  v11 = [v10 getRecordingUUIDsForLocalizationActionsFromTime:*&a3 toTime:{1, *&a4, 1}];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanMCTimestamp" ascending:0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v20[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"scanMCTimestamp" distinctResults:1 byAndPredicates:v8 sortDescriptors:v16 andLimit:0];

  objc_autoreleasePoolPop(v7);
  LODWORD(v8) = [v17 count];

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)a3 andLimit:(unint64_t)a4 usingDistinctRecords:(BOOL)a5 intoTargetStore:(id)a6
{
  v6 = a5;
  v10 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEB18] array];
  if (v6)
  {
    v13 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v14 = [(ULStore *)self dbStore];
    v15 = (*(v14->var0 + 12))(v14);
    v16 = [v15 getDistinctRecordingUUIDsWithLimit:v13];

    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v16];
    [v12 addObject:v17];
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v19 = [(ULStore *)self managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__ULMeasurementStore_batchTransferRecordsUsingBatchSize_andLimit_usingDistinctRecords_intoTargetStore___block_invoke;
  v25[3] = &unk_2798D47A0;
  v29 = &v32;
  v25[4] = self;
  v20 = v12;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  v30 = a3;
  v31 = a4;
  v22 = v10;
  v28 = v22;
  [v19 performBlockAndWait:v25];

  objc_autoreleasePoolPop(v11);
  v23 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __103__ULMeasurementStore_batchTransferRecordsUsingBatchSize_andLimit_usingDistinctRecords_intoTargetStore___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = a1[5];
  v8[0] = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  *(*(a1[8] + 8) + 24) = [v2 batchTransferManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 batchSize:a1[9] limit:a1[10] intoTargetStore:a1[7]];

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)insertDataObjects:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  v3 = [**(a1 + 8) managedObjectContext];
  v4 = [ULMeasurementMO_deprecated createFromDO:a2 inManagedObjectContext:v3];

  return v4;
}

@end