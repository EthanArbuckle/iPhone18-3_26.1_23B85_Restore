@interface ULCustomLoiStore
+ (unsigned)maxEntriesInTable;
- (BOOL)addServiceToCustomLoiMapping:(const uuid *)mapping loiId:(const uuid *)id;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)objects forServiceUUID:(const uuid *)d atLoiUUID:(const uuid *)iD;
- (BOOL)removeServiceToCustomLoiMapping:(const uuid *)mapping loiId:(const uuid *)id;
- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:;
- (id)insertDataObjects:forServiceUUID:atLoiUUID:;
- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:;
- (vector<boost::uuids::uuid,)getAllCustomLoiIdsForServiceId:(ULCustomLoiStore *)self;
- (vector<boost::uuids::uuid,)getAllDistinctCustomLoiIds;
- (vector<boost::uuids::uuid,)getAllServicesEnabledAtCustomLoiId:(ULCustomLoiStore *)self;
@end

@implementation ULCustomLoiStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMiLoCustomLoiTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71970 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects forServiceUUID:(const uuid *)d atLoiUUID:(const uuid *)iD
{
  v22 = *MEMORY[0x277D85DE8];
  if (*objects != *(objects + 1))
  {
    dbStore = [(ULStore *)self dbStore];
    v9 = (*(dbStore->var0 + 13))(dbStore);
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v21 = [v9 fetchServiceManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

    if (!v21)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        operator new();
      }
    }

    dbStore2 = [(ULStore *)self dbStore];
    v14 = (*(dbStore2->var0 + 8))(dbStore2);
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v20 = [v14 fetchLoiManagedObjectWithUUID:iD withManagedObjectContext:managedObjectContext2];

    if (!v20)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v17 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v17))
      {
        operator new();
      }
    }

    operator new();
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)removeServiceToCustomLoiMapping:(const uuid *)mapping loiId:(const uuid *)id
{
  array = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:id];
  uUIDString = [v8 UUIDString];

  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:mapping];
  uUIDString2 = [v10 UUIDString];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiId", uUIDString];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", uUIDString2];
  [array addObject:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v15 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (BOOL)addServiceToCustomLoiMapping:(const uuid *)mapping loiId:(const uuid *)id
{
  v20 = *MEMORY[0x277D85DE8];
  if ([ULCustomLoiStore removeServiceToCustomLoiMapping:"removeServiceToCustomLoiMapping:loiId:" loiId:?])
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
    v7 = *mapping->data;
    v8 = *&mapping->data[8];
    v9 = *id->data;
    v10 = *&id->data[8];
    v11 = cl::chrono::CFAbsoluteTimeClock::now();
    ULCustomLoiDO::ULCustomLoiDO(buf, v7, v8, v9, v10, v11);
    std::vector<ULCustomLoiDO>::push_back[abi:ne200100](&__p, buf);
    v12 = [(ULCustomLoiStore *)self insertDataObjects:&__p forServiceUUID:mapping atLoiUUID:id];
    if (!v12)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v13 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "#Warning Failed to add Service Id to LOI Id mapping", buf, 2u);
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (vector<boost::uuids::uuid,)getAllServicesEnabledAtCustomLoiId:(ULCustomLoiStore *)self
{
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  uUIDString = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiId", uUIDString];
  [array addObject:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"service", @"serviceUUID"];
  v16 = [(ULStore *)self fetchPropertyForEntityName:v13 propertyToFetch:v14 distinctResults:0 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v7);
  ULDBUtils::boostUUIDsFromNSStringArray(v16, retstr);

  return result;
}

- (vector<boost::uuids::uuid,)getAllCustomLoiIdsForServiceId:(ULCustomLoiStore *)self
{
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  uUIDString = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", uUIDString];
  [array addObject:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"loi", @"loiId"];
  v16 = [(ULStore *)self fetchPropertyForEntityName:v13 propertyToFetch:v14 distinctResults:0 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v7);
  ULDBUtils::boostUUIDsFromNSStringArray(v16, retstr);

  return result;
}

- (vector<boost::uuids::uuid,)getAllDistinctCustomLoiIds
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v8 = [defaultsDictionary objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v8 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71988 unsignedIntValue];
  }

  v10 = unsignedIntValue;

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"loi", @"loiId"];
  v19[0] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = [(ULStore *)self fetchPropertyForEntityName:v13 propertyToFetch:v14 distinctResults:1 byAndPredicates:0 sortDescriptors:v15 andLimit:v10];

  ULDBUtils::boostUUIDsFromNSStringArray(v16, retstr);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteOrphanRecords
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL || %K = NIL", @"loi", @"service"];
  [array addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:
{
  *a2 = &unk_286A56108;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forServiceUUID:atLoiUUID:
{
  v3 = **(self + 8);
  v4 = **(self + 16);
  managedObjectContext = [**(self + 24) managedObjectContext];
  v6 = [ULCustomLoiMO createFromDO:a2 withServiceMO:v3 loiMO:v4 inManagedObjectContext:managedObjectContext];

  return v6;
}

- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end