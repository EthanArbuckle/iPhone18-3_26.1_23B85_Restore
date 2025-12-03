@interface ULRecordingEventStore
+ (unsigned)maxEntriesInTable;
- (BOOL)batchTransferRecordingEventsForRecordingUUIDs:(const void *)ds withEventTypes:(const void *)types batchSize:(unint64_t)size andLimit:(unsigned int)limit intoTargetStore:(id)store;
- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store;
- (BOOL)deleteRecordingEventsFromRecordingUUIDs:(const void *)ds;
- (BOOL)insertDataObjects:(const void *)objects;
- (double)getOldestRecordingTimestamp;
- (id)getDistinctRecordingUUIDsWithLimit:(unsigned int)limit;
- (id)getRecordingUUIDsForLocalizationActionsFromTime:(optional<const double>)time toTime:(optional<const double>)toTime;
- (id)getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:(optional<const boost:(optional<const double>)id :(optional<const double>)a5 uuids:(unsigned int)uuids :uuid> *)a3 fromTime:toTime:withLimit:;
- (id)getRecordingUUIDsOlderThan:(double)than orNewerThan:(double)newerThan;
- (id)getTriggerUUIDsForLoiGroupId:(const uuid *)id;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (unsigned)countRecordingEventsForLoiGroupId:(const uuid *)id;
- (unsigned)countRecordingEventsFromTime:(double)time toTime:(double)toTime atLoiGroupId:(const uuid *)id;
- (vector<ULRecordingEventDO,)_fetchRecordingEventTriggers:(ULRecordingEventStore *)self atLoiGroupId:(SEL)id fromTime:(const void *)time toTime:(const void *)toTime withLimit:(optional<const double>)limit;
- (vector<ULRecordingEventDO,)fetchRecordingEventTriggersForLearningMeasurements:(ULRecordingEventStore *)self;
- (vector<ULRecordingEventDO,)fetchRecordingEventTriggersForLearningMeasurements:(ULRecordingEventStore *)self atLoiGroupId:(SEL)id;
- (vector<ULRecordingEventDO,)fetchRecordingEventsForRecordingUUIDs:(ULRecordingEventStore *)self;
- (vector<ULRecordingEventDO,)fetchRecordingEventsFromTriggerUUIDs:(ULRecordingEventStore *)self;
- (vector<ULRecordingEventDO,)fetchRecordingEventsWithScanMeasurements:(ULRecordingEventStore *)self fromTime:(SEL)time toTime:(const void *)toTime withLimit:(double)limit;
- (vector<boost::uuids::uuid,)fetchDistinctRecordingEventsFromTime:(ULRecordingEventStore *)self toTime:(SEL)time atLoiGroupId:(double)id withLimit:(double)limit;
- (vector<std::string,)selectAllRecordingLOITypesFromTime:(ULRecordingEventStore *)self andLimit:(SEL)limit;
- (void)fetchMostRecentRecordingForLoiGroupId:(uint64_t)id@<X8>;
- (void)fetchRecordingEventTriggersForLearningMeasurements:(uint64_t)measurements atLoiGroupId:(char)id;
@end

@implementation ULRecordingEventStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingEventsTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A718C8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A55D48;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(self, objects, v7);
  std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (BOOL)deleteRecordingEventsFromRecordingUUIDs:(const void *)ds
{
  if (*ds == *(ds + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRecordingEventStore deleteRecordingEventsFromRecordingUUIDs:];
    }

    v12 = logObject_MicroLocation_Default;
    v11 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#Warning No UUIDs were passed in to delete recording events", buf, 2u);
      return 0;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = ULDBUtils::NSStringArrayFromBoostUUIDs(ds);
    array = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v6];
    [array addObject:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(ULStore *)self batchDeleteObjectsWithEntityName:v10 byAndPredicates:array sortDescriptors:0 andLimit:0];

    objc_autoreleasePoolPop(v5);
  }

  return v11;
}

- (vector<ULRecordingEventDO,)fetchRecordingEventsFromTriggerUUIDs:(ULRecordingEventStore *)self
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (*a4 == *(a4 + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRecordingEventStore deleteRecordingEventsFromRecordingUUIDs:];
    }

    v14 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "#Warning passed empty UUIDs so we can't fetch recording events", buf, 2u);
    }

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    v7 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v8 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"triggerUUID", v8];
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:0];
    v18[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v17 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(ULRecordingEventStore *)self _fetchRecordingEventsByAndPredicates:v11 sortDescriptors:v12 andLimit:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULRecordingEventDO,)fetchRecordingEventsForRecordingUUIDs:(ULRecordingEventStore *)self
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (*a4 == *(a4 + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRecordingEventStore deleteRecordingEventsFromRecordingUUIDs:];
    }

    v14 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "#Warning passed empty UUIDs so we can't fetch recording events", buf, 2u);
    }

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    v7 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v8 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v8];
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:0];
    v18[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v17 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(ULRecordingEventStore *)self _fetchRecordingEventsByAndPredicates:v11 sortDescriptors:v12 andLimit:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULRecordingEventDO,)_fetchRecordingEventTriggers:(ULRecordingEventStore *)self atLoiGroupId:(SEL)id fromTime:(const void *)time toTime:(const void *)toTime withLimit:(optional<const double>)limit
{
  v8 = *&a7.var1;
  var1 = a7.var0.var1;
  v10 = *&limit.var1;
  v11 = limit.var0.var1;
  v51 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = __Block_byref_object_copy__4;
  v45 = __Block_byref_object_dispose__4;
  v46 = &unk_25929B3B7;
  memset(v47, 0, 24);
  context = objc_autoreleasePoolPush();
  v49 = *toTime;
  v50 = *(toTime + 16);
  v34 = [(ULRecordingEventStore *)self getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:&v49 fromTime:*&v11 toTime:v10 withLimit:*&var1, v8, 0];
  v16 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v16 setName:@"minRecTimestamp"];
  v17 = MEMORY[0x277CCA9C0];
  v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"recordingTimestamp"];
  v48 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v20 = [v17 expressionForFunction:@"min:" arguments:v19];
  [v16 setExpression:v20];

  [v16 setExpressionResultType:500];
  array = [MEMORY[0x277CBEB18] array];
  v22 = ULDBUtils::eventTypesToNSArray(time);
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"eventType", v22];
  [array addObject:v23];

  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v34];
  [array addObject:v24];

  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __93__ULRecordingEventStore__fetchRecordingEventTriggers_atLoiGroupId_fromTime_toTime_withLimit___block_invoke;
  v35[3] = &unk_2798D4750;
  v35[4] = self;
  v27 = v16;
  v36 = v27;
  v28 = array;
  v37 = v28;
  v29 = v25;
  v40 = a8;
  v38 = v29;
  v39 = &v41;
  [managedObjectContext performBlockAndWait:v35];

  objc_autoreleasePoolPop(context);
  v30 = v42;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<ULRecordingEventDO>::__init_with_size[abi:ne200100]<ULRecordingEventDO*,ULRecordingEventDO*>(retstr, v30[6], v30[7], 0xEF7BDEF7BDEF7BDFLL * ((v30[7] - v30[6]) >> 3));
  _Block_object_dispose(&v41, 8);
  *&v49 = v47;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v49);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void __93__ULRecordingEventStore__fetchRecordingEventTriggers_atLoiGroupId_fromTime_toTime_withLimit___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(a1 + 40);
  v19[0] = @"recordingUUID";
  v19[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v18 = @"recordingUUID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v8 = *(a1 + 48);
  v17 = *(a1 + 56);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v10 = [v2 fetchManagedObjectsForEntityName:v4 propertiesToFetch:v6 propertiesToGroupBy:v7 byAndPredicates:v8 sortDescriptors:v9 andLimit:*(a1 + 72)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(v10, &v14);
  v11 = *(*(a1 + 64) + 8);
  std::vector<ULRecordingEventDO>::__vdeallocate((v11 + 48));
  *(v11 + 48) = v14;
  *(v11 + 64) = v15;
  v15 = 0;
  v14 = 0uLL;
  v16 = &v14;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v16);
  v12 = [*(a1 + 32) managedObjectContext];
  [v12 reset];

  v13 = *MEMORY[0x277D85DE8];
}

- (vector<ULRecordingEventDO,)fetchRecordingEventsWithScanMeasurements:(ULRecordingEventStore *)self fromTime:(SEL)time toTime:(const void *)toTime withLimit:(double)limit
{
  v11 = *MEMORY[0x277D85DE8];
  HIBYTE(v9) = 0;
  v10 = 0;
  LODWORD(v9) = a7;
  result = [(ULRecordingEventStore *)self _fetchRecordingEventTriggers:toTime atLoiGroupId:&v9 + 7 fromTime:*&limit toTime:1 withLimit:*&a6, 1, v9];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULRecordingEventDO,)fetchRecordingEventTriggersForLearningMeasurements:(ULRecordingEventStore *)self atLoiGroupId:(SEL)id
{
  v9 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningRecordingLimit"];
  v12 = [defaultsDictionary objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v12 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71898 unsignedIntValue];
  }

  v14 = unsignedIntValue;

  LODWORD(v19) = v14;
  [(ULRecordingEventStore *)self _fetchRecordingEventTriggers:a4 atLoiGroupId:a5 fromTime:0 toTime:0 withLimit:0, 0, v19];
  var1 = retstr->var1;
  v16 = 126 - 2 * __clz(0xEF7BDEF7BDEF7BDFLL * ((var1 - retstr->var0) >> 3));
  if (var1 == retstr->var0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,false>(retstr->var0->var0.data, var1->var0.data, v17, 1);
  return result;
}

- (vector<ULRecordingEventDO,)fetchRecordingEventTriggersForLearningMeasurements:(ULRecordingEventStore *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[16] = 0;
  result = [(ULRecordingEventStore *)self fetchRecordingEventTriggersForLearningMeasurements:a4 atLoiGroupId:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getTriggerUUIDsForLoiGroupId:(const uuid *)id
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v8 = (*(dbStore->var0 + 8))(dbStore);
  v9 = [v8 getLoiIdsInLoiGroupId:id];

  v19[0] = 0;
  v19[1] = 0;
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v19];
  uUIDString = [v10 UUIDString];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NIL && %K != %@", @"triggerUUID", @"triggerUUID", uUIDString];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v9];
  [array addObject:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"triggerUUID" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v5);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unsigned)countRecordingEventsFromTime:(double)time toTime:(double)toTime atLoiGroupId:(const uuid *)id
{
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v11 = MEMORY[0x277CCAC30];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:toTime];
  v14 = [v11 predicateWithFormat:@"%K > %@ && %K <= %@", @"recordingTimestamp", v12, @"recordingTimestamp", v13];
  [array addObject:v14];

  dbStore = [(ULStore *)self dbStore];
  v16 = (*(dbStore->var0 + 8))(dbStore);
  v17 = [v16 getLoiIdsInLoiGroupId:id];

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v17];
  [array addObject:v18];

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [(ULStore *)self countManagedObjectsWithEntityName:v20 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v9);
  if (v21)
  {
    unsignedIntValue = [v21 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (vector<boost::uuids::uuid,)fetchDistinctRecordingEventsFromTime:(ULRecordingEventStore *)self toTime:(SEL)time atLoiGroupId:(double)id withLimit:(double)limit
{
  v30[1] = *MEMORY[0x277D85DE8];
  v13 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v15 = MEMORY[0x277CCAC30];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:id];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:limit];
  v18 = [v15 predicateWithFormat:@"%K > %@ && %K <= %@", @"recordingTimestamp", v16, @"recordingTimestamp", v17];
  [array addObject:v18];

  dbStore = [(ULStore *)self dbStore];
  v20 = (*(dbStore->var0 + 8))(dbStore);
  v21 = [v20 getLoiIdsInLoiGroupId:a6];

  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v21];
  [array addObject:v22];

  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:0];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v30[0] = v23;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v27 = [(ULStore *)self fetchPropertyForEntityName:v25 propertyToFetch:@"recordingUUID" distinctResults:1 byAndPredicates:array sortDescriptors:v26 andLimit:a7];

  objc_autoreleasePoolPop(v13);
  ULDBUtils::boostUUIDsFromNSStringArray(v27, retstr);

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:(optional<const boost:(optional<const double>)id :(optional<const double>)a5 uuids:(unsigned int)uuids :uuid> *)a3 fromTime:toTime:withLimit:
{
  var1 = a5.var1;
  v8 = a5.var0.var1;
  v9 = id.var1;
  v10 = id.var0.var1;
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"eventType", &unk_286A71838];
  [array addObject:v14];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"eventSubType", &unk_286A71850];
  [array addObject:v15];

  if (v9 && var1)
  {
    v16 = v10;
    v17 = MEMORY[0x277CCAC30];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v20 = [v17 predicateWithFormat:@"%K > %@ && %K <= %@", @"recordingTimestamp", v18, @"recordingTimestamp", v19];
    [array addObject:v20];
  }

  if (a3->var1)
  {
    dbStore = [(ULStore *)self dbStore];
    v22 = (*(dbStore->var0 + 8))(dbStore);
    v23 = v22;
    if (!a3->var1)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v24 = [v22 getLoiIdsInLoiGroupId:a3];

    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v24];
    [array addObject:v25];
  }

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [(ULStore *)self fetchPropertyForEntityName:v27 propertyToFetch:@"recordingUUID" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:uuids];

  objc_autoreleasePoolPop(context);

  return v28;
}

- (id)getRecordingUUIDsForLocalizationActionsFromTime:(optional<const double>)time toTime:(optional<const double>)toTime
{
  var1 = toTime.var1;
  v5 = toTime.var0.var1;
  v6 = time.var1;
  v7 = time.var0.var1;
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"eventType", &unk_286A71838];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"eventSubType", &unk_286A73C50];
  [array addObject:v12];

  if (v6 && var1)
  {
    v13 = v7;
    v14 = MEMORY[0x277CCAC30];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    v17 = [v14 predicateWithFormat:@"%K > %@ && %K <= %@", @"recordingTimestamp", v15, @"recordingTimestamp", v16];
    [array addObject:v17];
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [(ULStore *)self fetchPropertyForEntityName:v19 propertyToFetch:@"recordingUUID" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v9);

  return v20;
}

- (id)getRecordingUUIDsOlderThan:(double)than orNewerThan:(double)newerThan
{
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:than];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:newerThan];
  v12 = [v9 predicateWithFormat:@"%K < %@ || %K > %@", @"recordingTimestamp", v10, @"recordingTimestamp", v11];
  [array addObject:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(ULStore *)self fetchPropertyForEntityName:v14 propertyToFetch:@"recordingUUID" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v7);

  return v15;
}

- (id)getDistinctRecordingUUIDsWithLimit:(unsigned int)limit
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(ULStore *)self fetchPropertyForEntityName:v7 propertyToFetch:@"recordingUUID" distinctResults:1 byAndPredicates:0 sortDescriptors:v8 andLimit:limit];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)fetchMostRecentRecordingForLoiGroupId:(uint64_t)id@<X8>
{
  v26[1] = *MEMORY[0x277D85DE8];
  v23 = 0uLL;
  v24 = 0;
  std::vector<ULRecordingEventDO>::reserve(&v23, 1uLL);
  v6 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [self dbStore];
  v9 = (*(*dbStore + 64))(dbStore);
  v10 = [v9 getLoiIdsInLoiGroupId:a2];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v10];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:0];
  v26[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [self _fetchRecordingEventsByAndPredicates:array sortDescriptors:v13 andLimit:1];
  std::vector<ULRecordingEventDO>::__vdeallocate(&v23);
  v23 = v21;
  v24 = v22;
  v25 = &v21;
  v22 = 0;
  v21 = 0uLL;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v25);

  objc_autoreleasePoolPop(v6);
  v14 = v23;
  if (v23 == *(&v23 + 1))
  {
    v19 = 0;
    *id = 0;
  }

  else
  {
    v15 = *v23;
    *(id + 16) = *(v23 + 16);
    *id = v15;
    v16 = *(v14 + 24);
    *(id + 40) = *(v14 + 40);
    *(id + 24) = v16;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 24) = 0;
    v17 = *(v14 + 48);
    *(id + 60) = *(v14 + 60);
    *(id + 48) = v17;
    CLMicroLocationProto::RecordingEvent::RecordingEvent((id + 80), (v14 + 80));
    v18 = *(v14 + 224);
    *(id + 240) = *(v14 + 240);
    *(id + 224) = v18;
    v19 = 1;
  }

  *(id + 248) = v19;
  *&v21 = &v23;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v21);
  v20 = *MEMORY[0x277D85DE8];
}

- (double)getOldestRecordingTimestamp
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = cl::chrono::CFAbsoluteTimeClock::now();
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [self _fetchRecordingEventsByAndPredicates:0 sortDescriptors:v4 andLimit:1];

  if (v7[1] != v7[0])
  {
    v2 = *(v7[0] + 16);
  }

  v8 = v7;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v8);

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (vector<std::string,)selectAllRecordingLOITypesFromTime:(ULRecordingEventStore *)self andLimit:(SEL)limit
{
  v35 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v11 = MEMORY[0x277CCAC30];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v13 = [v11 predicateWithFormat:@"%K > %@", @"recordingTimestamp", v12];
  [array addObject:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"loiType" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:a5];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        if (v21)
        {
          [v21 stdString];
          if (v29)
          {
            var1 = retstr->var1;
            if (var1 >= retstr->var2)
            {
              v24 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(retstr, __p);
            }

            else
            {
              if (SHIBYTE(v28) < 0)
              {
                std::string::__init_copy_ctor_external(retstr->var1, __p[0], __p[1]);
              }

              else
              {
                v23 = *__p;
                var1->__r_.__value_.__r.__words[2] = v28;
                *&var1->__r_.__value_.__l.__data_ = v23;
              }

              v24 = var1 + 1;
            }

            retstr->var1 = v24;
            if ((v29 & 1) != 0 && SHIBYTE(v28) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v9);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store
{
  storeCopy = store;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__ULRecordingEventStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke;
  v14[3] = &unk_2798D4728;
  v17 = &v20;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  sizeCopy = size;
  limitCopy = limit;
  v12 = storeCopy;
  v16 = v12;
  [managedObjectContext performBlockAndWait:v14];

  LOBYTE(storeCopy) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return storeCopy;
}

void __85__ULRecordingEventStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7[0] = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  *(*(a1[7] + 8) + 24) = [v2 batchTransferManagedObjectsWithEntityName:v4 byAndPredicates:0 sortDescriptors:v5 batchSize:a1[8] limit:a1[9] intoTargetStore:a1[6]];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)batchTransferRecordingEventsForRecordingUUIDs:(const void *)ds withEventTypes:(const void *)types batchSize:(unint64_t)size andLimit:(unsigned int)limit intoTargetStore:(id)store
{
  storeCopy = store;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v12 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v14 = ULDBUtils::NSStringArrayFromBoostUUIDs(ds);
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v14];
  [array addObject:v15];

  v16 = ULDBUtils::eventTypesToNSArray(types);
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"eventType", v16];
  [array addObject:v17];

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __121__ULRecordingEventStore_batchTransferRecordingEventsForRecordingUUIDs_withEventTypes_batchSize_andLimit_intoTargetStore___block_invoke;
  v25[3] = &unk_2798D47C8;
  v29 = &v32;
  v25[4] = self;
  v20 = array;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  sizeCopy = size;
  limitCopy = limit;
  v22 = storeCopy;
  v28 = v22;
  [managedObjectContext performBlockAndWait:v25];

  objc_autoreleasePoolPop(v12);
  LOBYTE(v21) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __121__ULRecordingEventStore_batchTransferRecordingEventsForRecordingUUIDs_withEventTypes_batchSize_andLimit_intoTargetStore___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(a1 + 40);
  v8[0] = *(a1 + 48);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  *(*(*(a1 + 64) + 8) + 24) = [v2 batchTransferManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 batchSize:*(a1 + 72) limit:*(a1 + 80) intoTargetStore:*(a1 + 56)];

  v7 = *MEMORY[0x277D85DE8];
}

- (unsigned)countRecordingEventsForLoiGroupId:(const uuid *)id
{
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v7 = (*(dbStore->var0 + 8))(dbStore);
  v8 = [v7 getLoiIdsInLoiGroupId:id];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v8];
  [array addObject:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(ULStore *)self countManagedObjectsWithEntityName:v11 byAndPredicates:array sortDescriptors:0 andLimit:0];

  if (v12)
  {
    unsignedIntValue = [v12 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)fetchRecordingEventTriggersForLearningMeasurements:(uint64_t)measurements atLoiGroupId:(char)id
{
  v243 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v7 = a2;
    v225 = a2 - 31;
    selfCopy5 = self;
    while (1)
    {
      while (1)
      {
        self = selfCopy5;
        v9 = v7 - selfCopy5;
        v10 = 0xEF7BDEF7BDEF7BDFLL * (v7 - selfCopy5);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self, self + 31, v225);
              goto LABEL_313;
            case 4:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self, self + 31, self + 62);
              v95 = bswap64(*v225);
              v96 = bswap64(self[62]);
              if (v95 != v96 || (v95 = bswap64(*(a2 - 30)), v96 = bswap64(self[63]), v95 != v96))
              {
                v200 = v95 < v96 ? -1 : 1;
                if (v200 < 0)
                {
                  std::swap[abi:ne200100]<ULRecordingEventDO>(self + 31, v225);
                  v201 = bswap64(self[62]);
                  v202 = bswap64(self[31]);
                  if (v201 == v202 && (v201 = bswap64(self[63]), v202 = bswap64(self[32]), v201 == v202))
                  {
                    v203 = 0;
                  }

                  else
                  {
                    v203 = v201 < v202 ? -1 : 1;
                  }

                  if (v203 < 0)
                  {
                    std::swap[abi:ne200100]<ULRecordingEventDO>((self + 31), self + 31);
                    v221 = bswap64(self[31]);
                    v222 = bswap64(*self);
                    if (v221 == v222 && (v221 = bswap64(self[32]), v222 = bswap64(self[1]), v221 == v222))
                    {
                      v223 = 0;
                    }

                    else
                    {
                      v223 = v221 < v222 ? -1 : 1;
                    }

                    if (v223 < 0)
                    {
                      std::swap[abi:ne200100]<ULRecordingEventDO>(self, (self + 31));
                    }
                  }
                }
              }

              goto LABEL_313;
            case 5:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self, self + 31, self + 62, self + 93, v225);
              goto LABEL_313;
          }
        }

        else
        {
          if (v10 < 2)
          {
            goto LABEL_313;
          }

          v7 = a2;
          if (v10 == 2)
          {
            v97 = bswap64(*(a2 - 31));
            v98 = bswap64(*self);
            if (v97 != v98 || (v97 = bswap64(*(a2 - 30)), v98 = bswap64(self[1]), v97 != v98))
            {
              if (v97 < v98)
              {
                v199 = -1;
              }

              else
              {
                v199 = 1;
              }

              if (v199 < 0)
              {
                std::swap[abi:ne200100]<ULRecordingEventDO>(self, (a2 - 31));
              }
            }

            goto LABEL_313;
          }
        }

        if (v9 <= 5951)
        {
          if (id)
          {
            if (self != v7)
            {
              v99 = self + 31;
              if (self + 31 != a2)
              {
                v100 = 0;
                selfCopy2 = self;
                do
                {
                  v102 = v99;
                  v103 = bswap64(selfCopy2[31]);
                  v104 = bswap64(*selfCopy2);
                  if (v103 != v104 || (v103 = bswap64(v102[1]), v104 = bswap64(selfCopy2[1]), v103 != v104))
                  {
                    v105 = v103 < v104 ? -1 : 1;
                    if (v105 < 0)
                    {
                      v106 = *v102;
                      v236 = v102[2];
                      v235 = v106;
                      __p = *(selfCopy2 + 17);
                      v238 = selfCopy2[36];
                      selfCopy2[34] = 0;
                      selfCopy2[35] = 0;
                      selfCopy2[36] = 0;
                      v239[0] = *(selfCopy2 + 37);
                      *(v239 + 12) = *(selfCopy2 + 308);
                      CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (selfCopy2 + 41));
                      v242 = *(selfCopy2 + 488);
                      v241 = *(selfCopy2 + 59);
                      v107 = v100;
                      while (1)
                      {
                        v108 = self + v107;
                        *(v108 + 248) = *(self + v107);
                        *(v108 + 33) = *(self + v107 + 16);
                        if (*(self + v107 + 295) < 0)
                        {
                          operator delete(*(v108 + 34));
                        }

                        *(v108 + 17) = *(v108 + 24);
                        *(v108 + 36) = *(v108 + 5);
                        v108[47] = 0;
                        v108[24] = 0;
                        *(v108 + 296) = *(v108 + 3);
                        *(v108 + 308) = *(v108 + 60);
                        CLMicroLocationProto::RecordingEvent::CopyFrom((v108 + 328), (v108 + 80));
                        v109 = self + v107;
                        *(self + v107 + 472) = *(self + v107 + 224);
                        *(self + v107 + 488) = *(self + v107 + 240);
                        if (!v107)
                        {
                          break;
                        }

                        v110 = bswap64(v235);
                        v111 = bswap64(*(v109 - 31));
                        if (v110 == v111 && (v110 = bswap64(*(&v235 + 1)), v111 = bswap64(*(v109 - 30)), v110 == v111))
                        {
                          v112 = 0;
                        }

                        else if (v110 < v111)
                        {
                          v112 = -1;
                        }

                        else
                        {
                          v112 = 1;
                        }

                        v107 -= 248;
                        if ((v112 & 0x80000000) == 0)
                        {
                          selfCopy3 = self + v107 + 248;
                          goto LABEL_165;
                        }
                      }

                      selfCopy3 = self;
LABEL_165:
                      v114 = v235;
                      *(selfCopy3 + 16) = v236;
                      *selfCopy3 = v114;
                      if (*(selfCopy3 + 47) < 0)
                      {
                        operator delete(*(v109 + 3));
                      }

                      v115 = __p;
                      *(v109 + 5) = v238;
                      *(v109 + 24) = v115;
                      HIBYTE(v238) = 0;
                      LOBYTE(__p) = 0;
                      v116 = v239[0];
                      *(v109 + 60) = *(v239 + 12);
                      *(v109 + 3) = v116;
                      CLMicroLocationProto::RecordingEvent::CopyFrom((v109 + 80), v240);
                      v117 = v241;
                      v109[240] = v242;
                      *(v109 + 14) = v117;
                      CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
                      if (SHIBYTE(v238) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }

                  v99 = v102 + 31;
                  v100 += 248;
                  selfCopy2 = v102;
                }

                while (v102 + 31 != a2);
              }
            }
          }

          else if (self != v7)
          {
            v204 = self + 31;
            if (self + 31 != a2)
            {
              v205 = self - 31;
              do
              {
                v206 = v204;
                v207 = bswap64(self[31]);
                v208 = bswap64(*self);
                if (v207 != v208 || (v207 = bswap64(v206[1]), v208 = bswap64(self[1]), v207 != v208))
                {
                  v209 = v207 < v208 ? -1 : 1;
                  if (v209 < 0)
                  {
                    v210 = *v206;
                    v236 = v206[2];
                    v235 = v210;
                    __p = *(self + 17);
                    v238 = self[36];
                    self[34] = 0;
                    self[35] = 0;
                    self[36] = 0;
                    v239[0] = *(self + 37);
                    *(v239 + 12) = *(self + 308);
                    CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (self + 41));
                    v242 = *(self + 488);
                    v241 = *(self + 59);
                    v211 = v205;
                    do
                    {
                      *(v211 + 31) = *(v211 + 31);
                      v211[64] = v211[33];
                      v212 = (v211 + 65);
                      if (*(v211 + 543) < 0)
                      {
                        operator delete(*v212);
                      }

                      *v212 = *(v211 + 17);
                      v211[67] = v211[36];
                      *(v211 + 295) = 0;
                      *(v211 + 272) = 0;
                      *(v211 + 34) = *(v211 + 37);
                      *(v211 + 556) = *(v211 + 308);
                      CLMicroLocationProto::RecordingEvent::CopyFrom((v211 + 72), (v211 + 41));
                      *(v211 + 736) = *(v211 + 488);
                      *(v211 + 45) = *(v211 + 59);
                      v213 = bswap64(v235);
                      v214 = bswap64(*v211);
                      if (v213 == v214 && (v213 = bswap64(*(&v235 + 1)), v214 = bswap64(v211[1]), v213 == v214))
                      {
                        v215 = 0;
                      }

                      else if (v213 < v214)
                      {
                        v215 = -1;
                      }

                      else
                      {
                        v215 = 1;
                      }

                      v211 -= 31;
                    }

                    while (v215 < 0);
                    v216 = v235;
                    v211[64] = v236;
                    *(v211 + 31) = v216;
                    v217 = (v211 + 65);
                    if (*(v211 + 543) < 0)
                    {
                      operator delete(*v217);
                    }

                    v218 = __p;
                    v211[67] = v238;
                    *v217 = v218;
                    HIBYTE(v238) = 0;
                    LOBYTE(__p) = 0;
                    v219 = v239[0];
                    *(v211 + 556) = *(v239 + 12);
                    *(v211 + 34) = v219;
                    CLMicroLocationProto::RecordingEvent::CopyFrom((v211 + 72), v240);
                    v220 = v241;
                    *(v211 + 736) = v242;
                    *(v211 + 45) = v220;
                    CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
                    if (SHIBYTE(v238) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                v204 = v206 + 31;
                v205 += 31;
                self = v206;
              }

              while (v206 + 31 != a2);
            }
          }

          goto LABEL_313;
        }

        if (!measurements)
        {
          if (self != v7)
          {
            v118 = v11 >> 1;
            v119 = v11 >> 1;
            do
            {
              v120 = v119;
              if (v118 >= v119)
              {
                v121 = (2 * v119) | 1;
                v122 = &self[31 * v121];
                if (2 * v119 + 2 < v10)
                {
                  v123 = bswap64(*v122);
                  v124 = bswap64(v122[31]);
                  if (v123 == v124 && (v123 = bswap64(v122[1]), v124 = bswap64(v122[32]), v123 == v124))
                  {
                    v125 = 0;
                  }

                  else
                  {
                    v125 = v123 < v124 ? -1 : 1;
                  }

                  if (v125 < 0)
                  {
                    v122 += 31;
                    v121 = 2 * v119 + 2;
                  }
                }

                v126 = &self[31 * v119];
                v127 = bswap64(*v122);
                v128 = bswap64(*v126);
                if (v127 == v128 && (v127 = bswap64(v122[1]), v128 = bswap64(v126[1]), v127 == v128) || (v127 < v128 ? (v129 = -1) : (v129 = 1), (v129 & 0x80000000) == 0))
                {
                  v130 = *v126;
                  v236 = v126[2];
                  v235 = v130;
                  v131 = *(v126 + 3);
                  v238 = v126[5];
                  __p = v131;
                  v126[4] = 0;
                  v126[5] = 0;
                  v126[3] = 0;
                  v132 = *(v126 + 3);
                  *(v239 + 12) = *(v126 + 60);
                  v239[0] = v132;
                  CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (v126 + 10));
                  v133 = *(v126 + 14);
                  v242 = *(v126 + 240);
                  v241 = v133;
                  do
                  {
                    v134 = v122;
                    v135 = *v122;
                    v126[2] = v122[2];
                    *v126 = v135;
                    if (*(v126 + 47) < 0)
                    {
                      operator delete(v126[3]);
                    }

                    v136 = *(v122 + 3);
                    v126[5] = v122[5];
                    *(v126 + 3) = v136;
                    *(v122 + 47) = 0;
                    *(v122 + 24) = 0;
                    v137 = *(v122 + 3);
                    *(v126 + 60) = *(v122 + 60);
                    *(v126 + 3) = v137;
                    CLMicroLocationProto::RecordingEvent::CopyFrom((v126 + 10), (v122 + 10));
                    v138 = *(v122 + 14);
                    *(v126 + 240) = *(v122 + 240);
                    *(v126 + 14) = v138;
                    if (v118 < v121)
                    {
                      break;
                    }

                    v122 = &self[31 * ((2 * v121) | 1)];
                    if (2 * v121 + 2 >= v10)
                    {
                      v121 = (2 * v121) | 1;
                    }

                    else
                    {
                      v139 = bswap64(*v122);
                      v140 = bswap64(v122[31]);
                      if (v139 == v140 && (v139 = bswap64(v122[1]), v140 = bswap64(v122[32]), v139 == v140))
                      {
                        v141 = 0;
                      }

                      else
                      {
                        v141 = v139 < v140 ? -1 : 1;
                      }

                      if (v141 >= 0)
                      {
                        v121 = (2 * v121) | 1;
                      }

                      else
                      {
                        v122 += 31;
                        v121 = 2 * v121 + 2;
                      }
                    }

                    v142 = bswap64(*v122);
                    v143 = bswap64(v235);
                    if (v142 == v143 && (v142 = bswap64(v122[1]), v143 = bswap64(*(&v235 + 1)), v142 == v143))
                    {
                      v144 = 0;
                    }

                    else
                    {
                      v144 = v142 < v143 ? -1 : 1;
                    }

                    v126 = v134;
                  }

                  while ((v144 & 0x80000000) == 0);
                  v145 = v235;
                  v134[2] = v236;
                  *v134 = v145;
                  if (*(v134 + 47) < 0)
                  {
                    operator delete(v134[3]);
                  }

                  v146 = __p;
                  v134[5] = v238;
                  *(v134 + 3) = v146;
                  HIBYTE(v238) = 0;
                  LOBYTE(__p) = 0;
                  v147 = *(v239 + 12);
                  *(v134 + 3) = v239[0];
                  *(v134 + 60) = v147;
                  CLMicroLocationProto::RecordingEvent::CopyFrom((v134 + 10), v240);
                  v148 = v241;
                  *(v134 + 240) = v242;
                  *(v134 + 14) = v148;
                  CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
                  if (SHIBYTE(v238) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              v119 = v120 - 1;
            }

            while (v120);
            v149 = 0xEF7BDEF7BDEF7BDFLL * (v9 >> 3);
            do
            {
              v228 = self[2];
              v227 = *self;
              v229 = *(self + 3);
              v230 = self[5];
              self[4] = 0;
              self[5] = 0;
              self[3] = 0;
              *v231 = *(self + 3);
              *&v231[12] = *(self + 60);
              CLMicroLocationProto::RecordingEvent::RecordingEvent(v232, (self + 10));
              v150 = 0;
              v151 = *(self + 14);
              v234 = *(self + 240);
              v233 = v151;
              selfCopy4 = self;
              do
              {
                v153 = &selfCopy4[31 * v150];
                v154 = v153 + 31;
                v155 = 2 * v150;
                v150 = (2 * v150) | 1;
                v156 = v155 + 2;
                if (v155 + 2 < v149)
                {
                  v157 = (v153 + 62);
                  v158 = v153[62];
                  v159 = bswap64(v153[31]);
                  v160 = bswap64(v158);
                  if (v159 == v160 && (v159 = bswap64(v154[1]), v160 = bswap64(*(v157 + 1)), v159 == v160))
                  {
                    v161 = 0;
                  }

                  else
                  {
                    v161 = v159 < v160 ? -1 : 1;
                  }

                  if (v161 < 0)
                  {
                    v154 = v157;
                    v150 = v156;
                  }
                }

                v162 = *v154;
                selfCopy4[2] = v154[2];
                *selfCopy4 = v162;
                if (*(selfCopy4 + 47) < 0)
                {
                  operator delete(selfCopy4[3]);
                }

                v163 = *(v154 + 3);
                selfCopy4[5] = v154[5];
                *(selfCopy4 + 3) = v163;
                *(v154 + 47) = 0;
                *(v154 + 24) = 0;
                v164 = *(v154 + 3);
                *(selfCopy4 + 60) = *(v154 + 60);
                *(selfCopy4 + 3) = v164;
                CLMicroLocationProto::RecordingEvent::CopyFrom((selfCopy4 + 10), (v154 + 10));
                v165 = *(v154 + 14);
                *(selfCopy4 + 240) = *(v154 + 240);
                *(selfCopy4 + 14) = v165;
                selfCopy4 = v154;
              }

              while (v150 <= ((v149 - 2) >> 1));
              v166 = a2 - 31;
              if (v154 == a2 - 31)
              {
                v154[2] = v228;
                *v154 = v227;
                if (*(v154 + 47) < 0)
                {
                  operator delete(v154[3]);
                }

                v154[5] = v230;
                *(v154 + 3) = v229;
                *(v154 + 3) = *v231;
                *(v154 + 60) = *&v231[12];
                CLMicroLocationProto::RecordingEvent::CopyFrom((v154 + 10), v232);
                v180 = v233;
                *(v154 + 240) = v234;
                *(v154 + 14) = v180;
              }

              else
              {
                v167 = *v166;
                v154[2] = *(a2 - 29);
                *v154 = v167;
                if (*(v154 + 47) < 0)
                {
                  operator delete(v154[3]);
                }

                v168 = *(a2 - 14);
                v154[5] = *(a2 - 26);
                *(v154 + 3) = v168;
                *(a2 - 201) = 0;
                *(a2 - 224) = 0;
                v169 = *(a2 - 25);
                *(v154 + 60) = *(a2 - 188);
                *(v154 + 3) = v169;
                CLMicroLocationProto::RecordingEvent::CopyFrom((v154 + 10), (a2 - 21));
                v170 = (a2 - 28);
                v171 = *(a2 - 3);
                *(v154 + 240) = *(a2 - 8);
                *(v154 + 14) = v171;
                *(a2 - 29) = v228;
                *v166 = v227;
                if (*(a2 - 201) < 0)
                {
                  operator delete(*v170);
                }

                v172 = a2 - 25;
                *(a2 - 26) = v230;
                *v170 = v229;
                *(v172 + 12) = *&v231[12];
                *v172 = *v231;
                CLMicroLocationProto::RecordingEvent::CopyFrom((a2 - 21), v232);
                v173 = a2 - 3;
                v174 = v233;
                *(v173 + 16) = v234;
                *v173 = v174;
                v175 = v154 - self + 248;
                if (v175 >= 249)
                {
                  v176 = (-2 - 0x1084210842108421 * (v175 >> 3)) >> 1;
                  v177 = &self[31 * v176];
                  v178 = bswap64(*v177);
                  v179 = bswap64(*v154);
                  if (v178 != v179 || (v178 = bswap64(v177[1]), v179 = bswap64(v154[1]), v178 != v179))
                  {
                    v181 = v178 < v179 ? -1 : 1;
                    if (v181 < 0)
                    {
                      v182 = *v154;
                      v236 = v154[2];
                      v235 = v182;
                      v183 = v154[5];
                      __p = *(v154 + 3);
                      v238 = v183;
                      v154[4] = 0;
                      v154[5] = 0;
                      v154[3] = 0;
                      v184 = *(v154 + 60);
                      v239[0] = *(v154 + 3);
                      *(v239 + 12) = v184;
                      CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (v154 + 10));
                      v185 = *(v154 + 14);
                      v242 = *(v154 + 240);
                      v241 = v185;
                      do
                      {
                        v186 = v177;
                        v187 = *v177;
                        v154[2] = v177[2];
                        *v154 = v187;
                        if (*(v154 + 47) < 0)
                        {
                          operator delete(v154[3]);
                        }

                        v188 = *(v177 + 3);
                        v154[5] = v177[5];
                        *(v154 + 3) = v188;
                        *(v177 + 47) = 0;
                        *(v177 + 24) = 0;
                        v189 = *(v177 + 3);
                        *(v154 + 60) = *(v177 + 60);
                        *(v154 + 3) = v189;
                        CLMicroLocationProto::RecordingEvent::CopyFrom((v154 + 10), (v177 + 10));
                        v190 = *(v177 + 14);
                        *(v154 + 240) = *(v177 + 240);
                        *(v154 + 14) = v190;
                        if (!v176)
                        {
                          break;
                        }

                        v176 = (v176 - 1) >> 1;
                        v177 = &self[31 * v176];
                        v191 = bswap64(*v177);
                        v192 = bswap64(v235);
                        if (v191 == v192 && (v191 = bswap64(v177[1]), v192 = bswap64(*(&v235 + 1)), v191 == v192))
                        {
                          v193 = 0;
                        }

                        else
                        {
                          v193 = v191 < v192 ? -1 : 1;
                        }

                        v154 = v186;
                      }

                      while (v193 < 0);
                      v194 = v235;
                      v186[2] = v236;
                      *v186 = v194;
                      if (*(v186 + 47) < 0)
                      {
                        operator delete(v186[3]);
                      }

                      v195 = __p;
                      v186[5] = v238;
                      *(v186 + 3) = v195;
                      HIBYTE(v238) = 0;
                      LOBYTE(__p) = 0;
                      v196 = *(v239 + 12);
                      *(v186 + 3) = v239[0];
                      *(v186 + 60) = v196;
                      CLMicroLocationProto::RecordingEvent::CopyFrom((v186 + 10), v240);
                      v197 = v241;
                      *(v186 + 240) = v242;
                      *(v186 + 14) = v197;
                      CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
                      if (SHIBYTE(v238) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }
                }
              }

              CLMicroLocationProto::RecordingEvent::~RecordingEvent(v232);
              a2 -= 31;
            }

            while (v149-- > 2);
          }

          goto LABEL_313;
        }

        v12 = v10 >> 1;
        v13 = &self[31 * (v10 >> 1)];
        if (v9 < 0x7C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(v13, self, v225);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self, v13, v225);
          v14 = &self[31 * v12 - 31];
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self + 31, v14, a2 - 62);
          v15 = &self[31 * v12];
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(self + 62, v15 + 31, a2 - 93);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(v14, v13, v15 + 31);
          std::swap[abi:ne200100]<ULRecordingEventDO>(self, v13);
        }

        --measurements;
        if (id)
        {
          break;
        }

        v16 = bswap64(*(self - 31));
        v17 = bswap64(*self);
        if (v16 != v17 || (v16 = bswap64(*(self - 30)), v17 = bswap64(self[1]), v16 != v17))
        {
          v25 = v16 < v17 ? -1 : 1;
          if (v25 < 0)
          {
            break;
          }
        }

        v18 = *self;
        v236 = self[2];
        v235 = v18;
        v19 = self[5];
        __p = *(self + 3);
        v238 = v19;
        self[4] = 0;
        self[5] = 0;
        self[3] = 0;
        v20 = *(self + 60);
        v239[0] = *(self + 3);
        *(v239 + 12) = v20;
        CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (self + 10));
        v21 = *(self + 14);
        v242 = *(self + 240);
        v241 = v21;
        v22 = bswap64(v235);
        v23 = bswap64(*v225);
        if (v22 == v23 && (v22 = bswap64(*(&v235 + 1)), v23 = bswap64(*(a2 - 30)), v22 == v23))
        {
          v24 = 0;
        }

        else if (v22 < v23)
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        if (v24 < 0)
        {
          selfCopy5 = self;
          do
          {
            do
            {
              v68 = selfCopy5[31];
              selfCopy5 += 31;
              v69 = bswap64(v235);
              v70 = bswap64(v68);
              if (v69 != v70)
              {
                break;
              }

              v69 = bswap64(*(&v235 + 1));
              v70 = bswap64(selfCopy5[1]);
            }

            while (v69 == v70);
            if (v69 < v70)
            {
              v71 = -1;
            }

            else
            {
              v71 = 1;
            }
          }

          while ((v71 & 0x80000000) == 0);
        }

        else
        {
          v64 = self + 31;
          do
          {
            selfCopy5 = v64;
            if (v64 >= v7)
            {
              break;
            }

            v65 = bswap64(v235);
            v66 = bswap64(*selfCopy5);
            if (v65 == v66 && (v65 = bswap64(*(&v235 + 1)), v66 = bswap64(selfCopy5[1]), v65 == v66))
            {
              v67 = 0;
            }

            else
            {
              v67 = v65 < v66 ? -1 : 1;
            }

            v64 = selfCopy5 + 31;
          }

          while ((v67 & 0x80000000) == 0);
        }

        v72 = v7;
        if (selfCopy5 < v7)
        {
          v72 = v7;
          do
          {
            v73 = *(v72 - 248);
            v72 -= 248;
            v74 = bswap64(v235);
            v75 = bswap64(v73);
            if (v74 == v75)
            {
              v74 = bswap64(*(&v235 + 1));
              v75 = bswap64(*(v72 + 8));
              if (v74 == v75)
              {
                break;
              }
            }

            v76 = v74 < v75 ? -1 : 1;
          }

          while (v76 < 0);
        }

        while (selfCopy5 < v72)
        {
          std::swap[abi:ne200100]<ULRecordingEventDO>(selfCopy5, v72);
          do
          {
            do
            {
              v77 = selfCopy5[31];
              selfCopy5 += 31;
              v78 = bswap64(v235);
              v79 = bswap64(v77);
              if (v78 != v79)
              {
                break;
              }

              v78 = bswap64(*(&v235 + 1));
              v79 = bswap64(selfCopy5[1]);
            }

            while (v78 == v79);
            if (v78 < v79)
            {
              v80 = -1;
            }

            else
            {
              v80 = 1;
            }
          }

          while ((v80 & 0x80000000) == 0);
          do
          {
            v81 = *(v72 - 248);
            v72 -= 248;
            v82 = bswap64(v235);
            v83 = bswap64(v81);
            if (v82 == v83)
            {
              v82 = bswap64(*(&v235 + 1));
              v83 = bswap64(*(v72 + 8));
              if (v82 == v83)
              {
                break;
              }
            }

            v84 = v82 < v83 ? -1 : 1;
          }

          while (v84 < 0);
        }

        v85 = selfCopy5 - 31;
        if (selfCopy5 - 31 != self)
        {
          v86 = *v85;
          self[2] = *(selfCopy5 - 29);
          *self = v86;
          if (*(self + 47) < 0)
          {
            operator delete(self[3]);
          }

          v87 = *(selfCopy5 - 14);
          self[5] = *(selfCopy5 - 26);
          *(self + 3) = v87;
          *(selfCopy5 - 201) = 0;
          *(selfCopy5 - 224) = 0;
          v88 = *(selfCopy5 - 25);
          *(self + 60) = *(selfCopy5 - 188);
          *(self + 3) = v88;
          CLMicroLocationProto::RecordingEvent::CopyFrom((self + 10), (selfCopy5 - 21));
          v89 = *(selfCopy5 - 3);
          *(self + 240) = *(selfCopy5 - 8);
          *(self + 14) = v89;
        }

        v90 = v235;
        *(selfCopy5 - 29) = v236;
        *v85 = v90;
        v91 = (selfCopy5 - 28);
        if (*(selfCopy5 - 201) < 0)
        {
          operator delete(*v91);
        }

        v92 = __p;
        *(selfCopy5 - 26) = v238;
        *v91 = v92;
        HIBYTE(v238) = 0;
        LOBYTE(__p) = 0;
        v93 = v239[0];
        *(selfCopy5 - 188) = *(v239 + 12);
        *(selfCopy5 - 25) = v93;
        CLMicroLocationProto::RecordingEvent::CopyFrom((selfCopy5 - 21), v240);
        v94 = v241;
        *(selfCopy5 - 8) = v242;
        *(selfCopy5 - 3) = v94;
        CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
        if (SHIBYTE(v238) < 0)
        {
          operator delete(__p);
        }

LABEL_79:
        id = 0;
      }

      v26 = *self;
      v236 = self[2];
      v235 = v26;
      v27 = self[5];
      __p = *(self + 3);
      v238 = v27;
      self[4] = 0;
      self[5] = 0;
      self[3] = 0;
      v28 = *(self + 60);
      v239[0] = *(self + 3);
      *(v239 + 12) = v28;
      CLMicroLocationProto::RecordingEvent::RecordingEvent(v240, (self + 10));
      v29 = 0;
      v30 = *(self + 14);
      v242 = *(self + 240);
      v241 = v30;
      do
      {
        v31 = bswap64(self[v29 + 31]);
        v32 = bswap64(v235);
        if (v31 == v32 && (v31 = bswap64(self[v29 + 32]), v32 = bswap64(*(&v235 + 1)), v31 == v32))
        {
          v33 = 0;
        }

        else if (v31 < v32)
        {
          v33 = -1;
        }

        else
        {
          v33 = 1;
        }

        v29 += 31;
      }

      while (v33 < 0);
      v34 = &self[v29];
      v35 = v7;
      if (v29 == 31)
      {
        v35 = v7;
        while (v34 < v35)
        {
          v40 = *(v35 - 31);
          v35 -= 31;
          v41 = bswap64(v40);
          v42 = bswap64(v235);
          if (v41 == v42)
          {
            v41 = bswap64(v35[1]);
            v42 = bswap64(*(&v235 + 1));
            if (v41 == v42)
            {
              continue;
            }
          }

          v43 = v41 < v42 ? -1 : 1;
          if (v43 < 0)
          {
            break;
          }
        }
      }

      else
      {
        do
        {
          do
          {
            v36 = *(v35 - 31);
            v35 -= 31;
            v37 = bswap64(v36);
            v38 = bswap64(v235);
            if (v37 != v38)
            {
              break;
            }

            v37 = bswap64(v35[1]);
            v38 = bswap64(*(&v235 + 1));
          }

          while (v37 == v38);
          if (v37 < v38)
          {
            v39 = -1;
          }

          else
          {
            v39 = 1;
          }
        }

        while ((v39 & 0x80000000) == 0);
      }

      selfCopy5 = v34;
      if (v34 < v35)
      {
        v44 = v35;
        do
        {
          std::swap[abi:ne200100]<ULRecordingEventDO>(selfCopy5, v44);
          do
          {
            v45 = selfCopy5[31];
            selfCopy5 += 31;
            v46 = bswap64(v45);
            v47 = bswap64(v235);
            if (v46 == v47)
            {
              v46 = bswap64(selfCopy5[1]);
              v47 = bswap64(*(&v235 + 1));
              if (v46 == v47)
              {
                break;
              }
            }

            v48 = v46 < v47 ? -1 : 1;
          }

          while (v48 < 0);
          do
          {
            do
            {
              v50 = *(v44 - 248);
              v44 -= 248;
              v51 = bswap64(v50);
              v52 = bswap64(v235);
              if (v51 != v52)
              {
                break;
              }

              v51 = bswap64(*(v44 + 8));
              v52 = bswap64(*(&v235 + 1));
            }

            while (v51 == v52);
            if (v51 < v52)
            {
              v49 = -1;
            }

            else
            {
              v49 = 1;
            }
          }

          while ((v49 & 0x80000000) == 0);
        }

        while (selfCopy5 < v44);
      }

      v53 = selfCopy5 - 31;
      if (selfCopy5 - 31 != self)
      {
        v54 = *v53;
        self[2] = *(selfCopy5 - 29);
        *self = v54;
        if (*(self + 47) < 0)
        {
          operator delete(self[3]);
        }

        v55 = *(selfCopy5 - 14);
        self[5] = *(selfCopy5 - 26);
        *(self + 3) = v55;
        *(selfCopy5 - 201) = 0;
        *(selfCopy5 - 224) = 0;
        v56 = *(selfCopy5 - 25);
        *(self + 60) = *(selfCopy5 - 188);
        *(self + 3) = v56;
        CLMicroLocationProto::RecordingEvent::CopyFrom((self + 10), (selfCopy5 - 21));
        v57 = *(selfCopy5 - 3);
        *(self + 240) = *(selfCopy5 - 8);
        *(self + 14) = v57;
      }

      v58 = v235;
      *(selfCopy5 - 29) = v236;
      *v53 = v58;
      v59 = (selfCopy5 - 28);
      if (*(selfCopy5 - 201) < 0)
      {
        operator delete(*v59);
      }

      v60 = __p;
      *(selfCopy5 - 26) = v238;
      *v59 = v60;
      HIBYTE(v238) = 0;
      LOBYTE(__p) = 0;
      v61 = v239[0];
      *(selfCopy5 - 188) = *(v239 + 12);
      *(selfCopy5 - 25) = v61;
      CLMicroLocationProto::RecordingEvent::CopyFrom((selfCopy5 - 21), v240);
      v7 = a2;
      v62 = v241;
      *(selfCopy5 - 8) = v242;
      *(selfCopy5 - 3) = v62;
      CLMicroLocationProto::RecordingEvent::~RecordingEvent(v240);
      if (SHIBYTE(v238) < 0)
      {
        operator delete(__p);
      }

      if (v34 < v35)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,false>(self, selfCopy5 - 31, measurements, id & 1);
        goto LABEL_79;
      }

      v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *>(self, selfCopy5 - 31);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *>(selfCopy5, a2))
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_78;
      }
    }

    a2 = selfCopy5 - 31;
    if (!v63)
    {
      continue;
    }

    break;
  }

LABEL_313:
  v224 = *MEMORY[0x277D85DE8];
}

- (uint64_t)insertDataObjects:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  managedObjectContext = [**(self + 8) managedObjectContext];
  v4 = [ULRecordingEventMO_deprecated createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end