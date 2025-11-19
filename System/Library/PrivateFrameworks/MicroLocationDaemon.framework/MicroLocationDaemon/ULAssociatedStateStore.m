@interface ULAssociatedStateStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (vector<ULAssociatedStateDO,)fetchAllAssociatedStateBetweenTimes:(ULAssociatedStateStore *)self toTime:(SEL)a3 atLoiGroupId:(double)a4;
- (vector<boost::uuids::uuid,)getAllDistinctAssociatedStateLoiIds;
@end

@implementation ULAssociatedStateStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAssociatedStateTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A718F8 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  if (*a3 == *(a3 + 1))
  {
    inserted = 1;
  }

  else
  {
    v7 = [(ULStore *)self dbStore];
    v8 = (*(v7->var0 + 8))(v7);
    v9 = [(ULStore *)self managedObjectContext];
    v15 = [v8 fetchLoiManagedObjectWithUUID:a4 withManagedObjectContext:v9];

    if (!v15)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        operator new();
      }
    }

    v17[0] = &unk_286A55F18;
    v17[1] = &v15;
    v17[2] = &v16;
    v17[3] = v17;
    inserted = ULDBUtils::insertDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(self, a3, v17);
    std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::~__value_func[abi:ne200100](v17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<boost::uuids::uuid,)getAllDistinctAssociatedStateLoiIds
{
  v5 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"loi", @"loiId"];
  v10 = [(ULStore *)self fetchPropertyForEntityName:v7 propertyToFetch:v8 distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:v5];

  ULDBUtils::boostUUIDsFromNSStringArray(v10, retstr);

  return result;
}

- (vector<ULAssociatedStateDO,)fetchAllAssociatedStateBetweenTimes:(ULAssociatedStateStore *)self toTime:(SEL)a3 atLoiGroupId:(double)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a6];
  v12 = [v11 UUIDString];

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = MEMORY[0x277CCAC30];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v17 = [v14 predicateWithFormat:@"%K > %@ && %K <= %@", @"timestamp", v15, @"timestamp", v16];
  [v13 addObject:v17];

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v12];
  [v13 addObject:v18];

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v23[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [(ULAssociatedStateStore *)self _fetchAssociatedStatesByAndPredicates:v13 sortDescriptors:v20 andLimit:v10];

  v22 = *MEMORY[0x277D85DE8];
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

- (__n128)insertDataObjects:atLoiUUID:
{
  *a2 = &unk_286A55F18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = [**(a1 + 16) managedObjectContext];
  v5 = [ULAssociatedStateMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:v4];

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