@interface ULScanningEventStore
+ (unsigned)maxEntriesInTable;
- (BOOL)addPhotoFeatures:(ULPhotoFeaturesDO *)a3 forScanningEvent:;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)fetchScanningEventManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4;
- (id)insertDataObjects:atLoiUUID:;
- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentScanTimeForLoiGroupId:(ULScanningEventStore *)self;
- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getOldestScanTimestamp;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (unsigned)countScanningEventsForLoiGroupId:(const uuid *)a3;
- (unsigned)countScanningEventsFromTime:(double)a3 toTime:(double)a4 atLoiGroupId:(const uuid *)a5;
- (vector<ULScanningEventDO,)fetchScanningEventsForUUIDs:(ULScanningEventStore *)self;
- (vector<ULScanningEventDO,)oneByOneFetchScanningEventsWithLOIGroupUUID:(ULScanningEventStore *)self scanType:(SEL)a3 motionState:(const uuid *)a4 scansWithPhotoFeatures:(optional<ULScanningEventDO:(optional<ULScanningEventDO:(optional<BOOL>)a7 :(id)a8 MotionState>)a6 :(id)a9 ScanType>)a5 startDate:(BOOL)a10 endDate:(unint64_t)a11 onlyScansWithLabels:(BOOL)a12 fetchLimit:(BOOL)a13 newest:ascending:;
- (vector<boost::uuids::uuid,)fetchDistinctScanningEventsUUIDsFromTime:(ULScanningEventStore *)self toTime:(SEL)a3 atLoiGroupId:(double)a4 withLimit:(double)a5;
- (vector<boost::uuids::uuid,)fetchDistinctScanningEventsUUIDsFromTime:(ULScanningEventStore *)self toTime:(SEL)a3 withScanType:(double)a4 Limit:(double)a5;
- (vector<boost::uuids::uuid,)fetchScanningEventUUIDsWithLOIGroupUUID:(ULScanningEventStore *)self scanType:(SEL)a3 motionState:(const uuid *)a4 scansWithPhotoFeatures:(optional<ULScanningEventDO:(optional<ULScanningEventDO:(optional<BOOL>)a7 :(id)a8 MotionState>)a6 :(id)a9 ScanType>)a5 startDate:(BOOL)a10 endDate:(unint64_t)a11 onlyScansWithLabels:(BOOL)a12 fetchLimit:(BOOL)a13 newest:ascending:;
- (vector<boost::uuids::uuid,)getScanningEventUUIDsAtLoiGroupId:(ULScanningEventStore *)self withScanType:(SEL)a3 startDate:(const void *)a4 endDate:(optional<ULScanningEventDO:(id)a6 :(id)a7 ScanType>)a5 onlyScansWithLabels:(BOOL)a8 Limit:(unsigned int)a9;
- (vector<std::pair<ULScanningEventDO,)fetchScanningEventsWithLabelObjectIDsForUUIDs:()std:(std:(ULScanningEventStore *)self :(SEL)a3 vector<NSManagedObjectID *>>>> *__return_ptr)retstr :(const void *)a4 allocator<std::pair<ULScanningEventDO;
- (vector<std::string,)selectAllScanningLOITypesFromTime:(ULScanningEventStore *)self withLimit:(SEL)a3;
@end

@implementation ULScanningEventStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULScanningEventsTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71B50 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = self;
  if (*a3 == *(a3 + 1))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = self;
    v7 = [(ULStore *)self dbStore];
    v8 = (*(v7->var0 + 8))(v7);
    v9 = [(ULStore *)v6 managedObjectContext];
    v22 = [v8 fetchLoiManagedObjectWithUUID:a4 withManagedObjectContext:v9];

    if (v22)
    {
      v24[0] = &unk_286A56B30;
      v24[1] = &v22;
      v24[2] = &v23;
      v24[3] = v24;
      LODWORD(v6) = ULDBUtils::insertDataObjects<ULScanningEventDO,ULScanningEventMO>(v6, a3, v24);
      std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::~__value_func[abi:ne200100](v24);
      if (v6)
      {
        v10 = [(ULStore *)v23 dbStore];
        v11 = (*(*v10 + 176))(v10);
        [v11 deleteOldestRecordsIfFull];

        v12 = [(ULStore *)v23 dbStore];
        v13 = (*(*v12 + 184))(v12);
        [v13 deleteOldestRecordsIfFull];

        v14 = [(ULStore *)v23 dbStore];
        v15 = (*(*v14 + 192))(v14);
        [v15 deleteOldestRecordsIfFull];

        v16 = [(ULStore *)v23 dbStore];
        v17 = (*(*v16 + 200))(v16);
        [v17 deleteOldestRecordsIfFull];

        LOBYTE(v6) = 1;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventStore insertDataObjects:atLoiUUID:];
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventStore insertDataObjects:atLoiUUID:];
      }

      v19 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v19))
      {
        operator new();
      }

      [(ULStore *)v6 resetMOC];
      LOBYTE(v6) = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)fetchScanningEventManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4
{
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"scanEventUUID", v9];
  [v10 addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__ULScanningEventStore_fetchScanningEventManagedObjectWithUUID_withManagedObjectContext___block_invoke;
  v18[3] = &unk_2798D4840;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v20 = v12;
  v14 = v6;
  v21 = v14;
  v22 = &v23;
  v15 = v12;
  [v14 performBlockAndWait:v18];

  objc_autoreleasePoolPop(v7);
  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __89__ULScanningEventStore_fetchScanningEventManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = a1[5];
  v12[0] = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 andLimit:1 returnObjectsAsFaults:1 withManagedObjectContext:a1[7]];

  v8 = [v7 firstObject];
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (vector<boost::uuids::uuid,)getScanningEventUUIDsAtLoiGroupId:(ULScanningEventStore *)self withScanType:(SEL)a3 startDate:(const void *)a4 endDate:(optional<ULScanningEventDO:(id)a6 :(id)a7 ScanType>)a5 onlyScansWithLabels:(BOOL)a8 Limit:(unsigned int)a9
{
  v9 = a8;
  v43[1] = *MEMORY[0x277D85DE8];
  v13 = a6;
  v14 = a7;
  context = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x277CBEB18] array];
  if ((*&a5 & 0x10000) != 0)
  {
    v16 = MEMORY[0x277CCAC30];
    v17 = [MEMORY[0x277CCABB0] numberWithShort:a5.var0.var1];
    v18 = [v16 predicateWithFormat:@"%K = %@", @"scanType", v17];
    [v15 addObject:v18];
  }

  if (v13)
  {
    v19 = MEMORY[0x277CCAC30];
    v20 = MEMORY[0x277CCABB0];
    [v13 timeIntervalSinceReferenceDate];
    v21 = [v20 numberWithDouble:?];
    v22 = [v19 predicateWithFormat:@"%K >= %@", @"timestamp", v21];
    [v15 addObject:v22];
  }

  if (v14)
  {
    v23 = MEMORY[0x277CCAC30];
    v24 = MEMORY[0x277CCABB0];
    [v14 timeIntervalSinceReferenceDate];
    v25 = [v24 numberWithDouble:?];
    v26 = [v23 predicateWithFormat:@"%K <= %@", @"timestamp", v25];
    [v15 addObject:v26];
  }

  if (v9)
  {
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count > 0", @"labels"];
    [v15 addObject:v27];
  }

  if (*(a4 + 16) == 1)
  {
    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(a4 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v29 = [v28 initWithUUIDBytes:a4];
    v30 = [v29 UUIDString];

    v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v30];
    [v15 addObject:v31];
  }

  v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v43[0] = v32;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v36 = [(ULStore *)self fetchPropertyForEntityName:v34 propertyToFetch:@"scanEventUUID" distinctResults:1 byAndPredicates:v15 sortDescriptors:v35 andLimit:a9];

  objc_autoreleasePoolPop(context);
  ULDBUtils::boostUUIDsFromNSStringArray(v36, retstr);

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULScanningEventDO,)fetchScanningEventsForUUIDs:(ULScanningEventStore *)self
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (*a4 == *(a4 + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULScanningEventStore insertDataObjects:atLoiUUID:];
    }

    v15 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "#Warning passed empty UUIDs so we can't fetch scanning events", buf, 2u);
    }

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    v7 = objc_autoreleasePoolPush();
    v8 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v9 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"scanEventUUID", v9];
    [v10 addObject:v11];

    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(ULScanningEventStore *)self _fetchScanningEventsByAndPredicates:v10 sortDescriptors:v13 andLimit:v8];
    std::vector<ULScanningEventDO>::__vdeallocate(retstr);
    *&retstr->var0 = *buf;
    retstr->var2 = v18;
    v18 = 0;
    memset(buf, 0, sizeof(buf));
    v19 = buf;
    std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&v19);

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<std::pair<ULScanningEventDO,)fetchScanningEventsWithLabelObjectIDsForUUIDs:()std:(std:(ULScanningEventStore *)self :(SEL)a3 vector<NSManagedObjectID *>>>> *__return_ptr)retstr :(const void *)a4 allocator<std::pair<ULScanningEventDO
{
  if (*a4 == *(a4 + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULScanningEventStore insertDataObjects:atLoiUUID:];
    }

    v18 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "#Warning passed empty UUIDs so we can't fetch scanning events", buf, 2u);
    }

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x4812000000;
    v27 = __Block_byref_object_copy__42;
    v28 = __Block_byref_object_dispose__43;
    v29 = &unk_25929B3B7;
    memset(v30, 0, 24);
    v7 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v8 = objc_autoreleasePoolPush();
    v9 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"scanEventUUID", v9];
    [v10 addObject:v11];

    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
    v13 = [(ULStore *)self managedObjectContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__ULScanningEventStore_fetchScanningEventsWithLabelObjectIDsForUUIDs___block_invoke;
    v19[3] = &unk_2798D48E0;
    v19[4] = self;
    v14 = v10;
    v20 = v14;
    v15 = v12;
    v23 = v7;
    v21 = v15;
    v22 = buf;
    [v13 performBlockAndWait:v19];

    objc_autoreleasePoolPop(v8);
    v16 = v25;
    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = 0;
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__init_with_size[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(retstr, *(v16 + 6), *(v16 + 7), 0x14C1BACF914C1BADLL * ((*(v16 + 7) - *(v16 + 6)) >> 3));
    _Block_object_dispose(buf, 8);
    v31 = v30;
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&v31);
  }

  return result;
}

void __70__ULScanningEventStore_fetchScanningEventsWithLabelObjectIDsForUUIDs___block_invoke(uint64_t a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = *(a1 + 40);
  v73[0] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
  v28 = [v1 fetchManagedObjectsWithEntityName:v3 byAndPredicates:v4 sortDescriptors:v5 andLimit:*(a1 + 64)];

  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::reserve((*(*(a1 + 56) + 8) + 48), [v28 count]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v28;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v72 count:16];
  if (v31)
  {
    v30 = *v40;
    do
    {
      v6 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * v6);
        if (v7)
        {
          [*(*(&v39 + 1) + 8 * v6) convertToDO];
          if (v71)
          {
            v37 = 0uLL;
            v38 = 0;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v8 = [v7 labels];
            v9 = [v8 countByEnumeratingWithState:&v33 objects:v57 count:16];
            if (v9)
            {
              v10 = *v34;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v34 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = [*(*(&v33 + 1) + 8 * i) objectID];
                  v13 = *(&v37 + 1);
                  if (*(&v37 + 1) >= v38)
                  {
                    v15 = (*(&v37 + 1) - v37) >> 3;
                    if ((v15 + 1) >> 61)
                    {
                      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                    }

                    v16 = (v38 - v37) >> 2;
                    if (v16 <= v15 + 1)
                    {
                      v16 = v15 + 1;
                    }

                    if (v38 - v37 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v17 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v17 = v16;
                    }

                    v46 = &v37;
                    if (v17)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(&v37, v17);
                    }

                    *buf = 0;
                    *v45 = 8 * v15;
                    *&v45[16] = 0;
                    **v45 = v12;
                    *&v45[8] = 8 * v15 + 8;
                    std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(&v37, buf);
                    v14 = *(&v37 + 1);
                    std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(buf);
                  }

                  else
                  {
                    **(&v37 + 1) = v12;
                    v14 = v13 + 8;
                  }

                  *(&v37 + 1) = v14;
                }

                v9 = [v8 countByEnumeratingWithState:&v33 objects:v57 count:16];
              }

              while (v9);
            }

            if ((v71 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v18 = *(*(a1 + 56) + 8);
            ULScanningEventDO::ULScanningEventDO(buf);
            v55 = v37;
            v56 = v38;
            v38 = 0;
            v37 = 0uLL;
            std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::push_back[abi:ne200100]((v18 + 48), buf);
            v43 = &v55;
            std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v43);
            v43 = &v54;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v43);
            if (__p)
            {
              v53 = __p;
              operator delete(__p);
            }

            if (v50)
            {
              v51 = v50;
              operator delete(v50);
            }

            if (v48)
            {
              v49 = v48;
              operator delete(v48);
            }

            v43 = &v47;
            std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v43);
            if (SHIBYTE(v46) < 0)
            {
              operator delete(*&v45[8]);
            }

            *buf = &v37;
            std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
            v19 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          v71 = 0;
          v69 = 0u;
          memset(v70, 0, sizeof(v70));
          v67 = 0u;
          v68 = 0u;
          *v65 = 0u;
          *v66 = 0u;
          *v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          *v59 = 0u;
          v60 = 0u;
          v58 = 0u;
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULScanningEventStore insertDataObjects:atLoiUUID:];
        }

        v20 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v7 entity];
          v22 = [v21 name];
          *buf = 68289283;
          *&buf[4] = 0;
          *v45 = 2082;
          *&v45[2] = "";
          *&v45[10] = 2113;
          *&v45[12] = v22;
          _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULScanningEventStore insertDataObjects:atLoiUUID:];
        }

        v23 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v23))
        {
          v24 = [v7 entity];
          v25 = [v24 name];
          *buf = 68289283;
          *&buf[4] = 0;
          *v45 = 2082;
          *&v45[2] = "";
          *&v45[10] = 2113;
          *&v45[12] = v25;
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
        }

        std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__base_destruct_at_end[abi:ne200100](*(*(a1 + 56) + 8) + 48, *(*(*(a1 + 56) + 8) + 48));
        v19 = 0;
LABEL_46:
        if (v71 == 1)
        {
          *buf = v70 + 8;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
          if (v66[1])
          {
            *&v67 = v66[1];
            operator delete(v66[1]);
          }

          if (v65[0])
          {
            v65[1] = v65[0];
            operator delete(v65[0]);
          }

          if (v63[1])
          {
            *&v64 = v63[1];
            operator delete(v63[1]);
          }

          *buf = &v62;
          std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
          if (SBYTE7(v60) < 0)
          {
            operator delete(v59[0]);
          }
        }

        if (!v19)
        {
          goto LABEL_58;
        }

        ++v6;
      }

      while (v6 != v31);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v72 count:16];
    }

    while (v31);
  }

LABEL_58:

  v26 = [*(a1 + 32) managedObjectContext];
  [v26 reset];

  v27 = *MEMORY[0x277D85DE8];
}

- (unsigned)countScanningEventsForLoiGroupId:(const uuid *)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v8];
  [v6 addObject:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(ULStore *)self countManagedObjectsWithEntityName:v11 byAndPredicates:v6 sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v5);
  if (v12)
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unsigned)countScanningEventsFromTime:(double)a3 toTime:(double)a4 atLoiGroupId:(const uuid *)a5
{
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
  v11 = [v10 UUIDString];

  v12 = MEMORY[0x277CCAC30];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v15 = [v12 predicateWithFormat:@"%K > %@ && %K <= %@", @"timestamp", v13, @"timestamp", v14];
  [v9 addObject:v15];

  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v11];
  [v9 addObject:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [(ULStore *)self countManagedObjectsWithEntityName:v18 byAndPredicates:v9 sortDescriptors:0 andLimit:0];

  if (v19)
  {
    v20 = [v19 unsignedIntValue];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (vector<boost::uuids::uuid,)fetchDistinctScanningEventsUUIDsFromTime:(ULScanningEventStore *)self toTime:(SEL)a3 atLoiGroupId:(double)a4 withLimit:(double)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a6];
  v15 = [v14 UUIDString];

  v16 = MEMORY[0x277CCAC30];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v19 = [v16 predicateWithFormat:@"%K > %@ && %K <= %@", @"timestamp", v17, @"timestamp", v18];
  [v13 addObject:v19];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v15];
  [v13 addObject:v20];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v28[0] = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v25 = [(ULStore *)self fetchPropertyForEntityName:v23 propertyToFetch:@"scanEventUUID" distinctResults:1 byAndPredicates:v13 sortDescriptors:v24 andLimit:a7];

  ULDBUtils::boostUUIDsFromNSStringArray(v25, retstr);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<boost::uuids::uuid,)fetchDistinctScanningEventsUUIDsFromTime:(ULScanningEventStore *)self toTime:(SEL)a3 withScanType:(double)a4 Limit:(double)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"scanResult", &unk_286A71B20];
  [v13 addObject:v14];

  if ((*&a6 & 0x10000) != 0)
  {
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithShort:a6.var0.var1];
    v17 = [v15 predicateWithFormat:@"%K = %@", @"scanType", v16];
    [v13 addObject:v17];
  }

  v18 = MEMORY[0x277CCAC30];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v21 = [v18 predicateWithFormat:@"%K > %@ && %K <= %@", @"timestamp", v19, @"timestamp", v20];
  [v13 addObject:v21];

  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v29[0] = v22;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = [(ULStore *)self fetchPropertyForEntityName:v24 propertyToFetch:@"scanEventUUID" distinctResults:1 byAndPredicates:v13 sortDescriptors:v25 andLimit:a7];

  ULDBUtils::boostUUIDsFromNSStringArray(v26, retstr);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentScanTimeForLoiGroupId:(ULScanningEventStore *)self
{
  v2 = v1;
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v2];
  v6 = [v5 UUIDString];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v6];
  [v4 addObject:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v19[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12 = [(ULStore *)self fetchPropertyForEntityName:v10 propertyToFetch:@"timestamp" distinctResults:1 byAndPredicates:v4 sortDescriptors:v11 andLimit:1];

  if ([v12 count])
  {
    v13 = [v12 firstObject];
    [v13 doubleValue];
    v15 = v14;

    v16.var0.var0 = v15;
  }

  else
  {
    v16.var0.var0 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getOldestScanTimestamp
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [(ULStore *)self fetchPropertyForEntityName:v4 propertyToFetch:@"timestamp" distinctResults:1 byAndPredicates:0 sortDescriptors:v5 andLimit:1];

  if ([v6 count])
  {
    v7 = [v6 firstObject];
    [v7 doubleValue];
    v9 = v8;

    v10.var0.var0 = v9;
  }

  else
  {
    v10.var0.var0 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (vector<std::string,)selectAllScanningLOITypesFromTime:(ULScanningEventStore *)self withLimit:(SEL)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277CCAC30];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12 = [v10 predicateWithFormat:@"%K > %@", @"timestamp", v11];
  [v9 addObject:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"loi", @"loiType"];
  v16 = [(ULStore *)self fetchPropertyForEntityName:v14 propertyToFetch:v15 distinctResults:1 byAndPredicates:v9 sortDescriptors:0 andLimit:a5];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
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

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteOrphanRecords
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL", @"loi"];
  [v3 addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:v3 sortDescriptors:0 andLimit:0];

  return self;
}

- (vector<boost::uuids::uuid,)fetchScanningEventUUIDsWithLOIGroupUUID:(ULScanningEventStore *)self scanType:(SEL)a3 motionState:(const uuid *)a4 scansWithPhotoFeatures:(optional<ULScanningEventDO:(optional<ULScanningEventDO:(optional<BOOL>)a7 :(id)a8 MotionState>)a6 :(id)a9 ScanType>)a5 startDate:(BOOL)a10 endDate:(unint64_t)a11 onlyScansWithLabels:(BOOL)a12 fetchLimit:(BOOL)a13 newest:ascending:
{
  v54[1] = *MEMORY[0x277D85DE8];
  v52 = a8;
  v53 = a9;
  v20 = objc_autoreleasePoolPush();
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  context = v20;
  v23 = [v22 UUIDString];

  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v23];
  [v21 addObject:v24];

  if ((*&a5 & 0x10000) != 0)
  {
    v25 = MEMORY[0x277CCAC30];
    v26 = [MEMORY[0x277CCABB0] numberWithShort:a5.var0.var1];
    v27 = [v25 predicateWithFormat:@"%K = %@", @"scanType", v26];
    [v21 addObject:v27];
  }

  if ((*&a6 & 0x10000) != 0)
  {
    v28 = MEMORY[0x277CCAC30];
    v29 = [MEMORY[0x277CCABB0] numberWithShort:a6.var0.var1];
    v30 = [v28 predicateWithFormat:@"%K = %@", @"motionState", v29];
    [v21 addObject:v30];
  }

  if ((*&a7 & 0x100) != 0)
  {
    if (a7.var0.var0)
    {
      [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count != 0", @"photoFeatures"];
    }

    else
    {
      [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 0", @"photoFeatures"];
    }
    v31 = ;
    [v21 addObject:v31];
  }

  if (v52)
  {
    v32 = MEMORY[0x277CCAC30];
    v33 = MEMORY[0x277CCABB0];
    [v52 timeIntervalSinceReferenceDate];
    v34 = [v33 numberWithDouble:?];
    v35 = [v32 predicateWithFormat:@"%K >= %@", @"timestamp", v34];
    [v21 addObject:v35];
  }

  if (v53)
  {
    v36 = MEMORY[0x277CCAC30];
    v37 = MEMORY[0x277CCABB0];
    [v53 timeIntervalSinceReferenceDate];
    v38 = [v37 numberWithDouble:?];
    v39 = [v36 predicateWithFormat:@"%K <= %@", @"timestamp", v38];
    [v21 addObject:v39];
  }

  if (a10)
  {
    v40 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count > 0", @"labels"];
    [v21 addObject:v40];
  }

  if (a11)
  {
    v41 = !a12;
  }

  else
  {
    v41 = a13;
  }

  v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v41];
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v54[0] = v42;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  v46 = [(ULStore *)self fetchPropertyForEntityName:v44 propertyToFetch:@"scanEventUUID" distinctResults:1 byAndPredicates:v21 sortDescriptors:v45 andLimit:a11];

  objc_autoreleasePoolPop(context);
  if (v41 != a13)
  {
    v47 = [v46 reverseObjectEnumerator];
    v48 = [v47 allObjects];

    v46 = v48;
  }

  ULDBUtils::boostUUIDsFromNSStringArray(v46, retstr);

  v50 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULScanningEventDO,)oneByOneFetchScanningEventsWithLOIGroupUUID:(ULScanningEventStore *)self scanType:(SEL)a3 motionState:(const uuid *)a4 scansWithPhotoFeatures:(optional<ULScanningEventDO:(optional<ULScanningEventDO:(optional<BOOL>)a7 :(id)a8 MotionState>)a6 :(id)a9 ScanType>)a5 startDate:(BOOL)a10 endDate:(unint64_t)a11 onlyScansWithLabels:(BOOL)a12 fetchLimit:(BOOL)a13 newest:ascending:
{
  v37 = *MEMORY[0x277D85DE8];
  v18 = a8;
  v19 = a9;
  LOWORD(v27) = __PAIR16__(a13, a12);
  LOBYTE(v26) = a10;
  [(ULScanningEventStore *)self fetchScanningEventUUIDsWithLOIGroupUUID:a4 scanType:*&a5 motionState:*&a6 scansWithPhotoFeatures:*&a7 startDate:v18 endDate:v19 onlyScansWithLabels:v26 fetchLimit:a11 newest:v27 ascending:?];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v20 = v34;
  v21 = v35;
  if (v34 != v35)
  {
    do
    {
      v36 = *v20;
      v31 = 0;
      v32 = 0;
      __p = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v36, &v37, 1uLL);
      [(ULScanningEventStore *)self fetchScanningEventsForUUIDs:&__p];
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v33[0] != v33[1])
      {
        var1 = retstr->var1;
        if (var1 >= retstr->var2)
        {
          v23 = std::vector<ULScanningEventDO>::__emplace_back_slow_path<ULScanningEventDO>(retstr);
        }

        else
        {
          ULScanningEventDO::ULScanningEventDO(retstr->var1);
          v23 = (var1 + 272);
        }

        retstr->var1 = v23;
      }

      __p = v33;
      std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v20;
    }

    while (v20 != v21);
    v20 = v34;
  }

  if (v20)
  {
    v35 = v20;
    operator delete(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addPhotoFeatures:(ULPhotoFeaturesDO *)a3 forScanningEvent:
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = v3;
  v29 = v4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v28];
  v10 = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"scanEventUUID", v10];
  [v8 addObject:v11];

  v12 = [(ULStore *)self managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3321888768;
  v17[2] = __58__ULScanningEventStore_addPhotoFeatures_forScanningEvent___block_invoke;
  v17[3] = &unk_286A56A98;
  v17[4] = self;
  v13 = v8;
  v18 = v13;
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3->var0.var0, a3->var0.var1, a3->var0.var1 - a3->var0.var0);
  var0 = a3[1].var0.var0;
  v19 = &v24;
  [v12 performBlockAndWait:v17];

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  objc_autoreleasePoolPop(v7);
  v14 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __58__ULScanningEventStore_addPhotoFeatures_forScanningEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v8 count])
  {
    v5 = [v8 firstObject];
    v6 = [*(a1 + 32) managedObjectContext];
    v7 = [ULPhotoFeaturesMO createFromDO:a1 + 56 withScanningEventMO:v5 inManagedObjectContext:v6];
    [v5 addPhotoFeaturesObject:v7];

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v5 = [*(a1 + 32) managedObjectContext];
    [v5 reset];
  }
}

- (__n128)insertDataObjects:atLoiUUID:
{
  *a2 = &unk_286A56B30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = [**(a1 + 16) managedObjectContext];
  v5 = [ULScanningEventMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:v4];

  return v5;
}

- (uint64_t)insertDataObjects:atLoiUUID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end