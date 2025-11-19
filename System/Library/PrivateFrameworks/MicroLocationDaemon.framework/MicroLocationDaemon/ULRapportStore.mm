@interface ULRapportStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (vector<ULRapportDO,)fetchRapportEntriesAtLoiFromTime:(ULRapportStore *)self toTime:(SEL)a3 loiGroupId:(double)a4;
@end

@implementation ULRapportStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRapportTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71AF0 unsignedIntValue];
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
        [ULRapportStore insertDataObjects:atLoiUUID:];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportStore insertDataObjects:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        operator new();
      }
    }

    v17[0] = &unk_286A56A10;
    v17[1] = &v15;
    v17[2] = &v16;
    v17[3] = v17;
    inserted = ULDBUtils::insertDataObjects<ULRapportDO,ULRapportMO>(self, a3, v17);
    std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::~__value_func[abi:ne200100](v17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULRapportDO,)fetchRapportEntriesAtLoiFromTime:(ULRapportStore *)self toTime:(SEL)a3 loiGroupId:(double)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 unsignedIntValue];
  }

  else
  {
    v15 = [&unk_286A71B08 unsignedIntValue];
  }

  v16 = v15;

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v17 = objc_autoreleasePoolPush();
  v18 = [MEMORY[0x277CBEB18] array];
  if (*(a6 + 16) == 1)
  {
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(a6 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v20 = [v19 initWithUUIDBytes:a6];
    v21 = [v20 UUIDString];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v21];
    [v18 addObject:v22];
  }

  v23 = MEMORY[0x277CCAC30];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v26 = [v23 predicateWithFormat:@"%K > %@ && %K <= %@", @"generationTimestamp", v24, @"generationTimestamp", v25];
  [v18 addObject:v26];

  v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v34[0] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [(ULRapportStore *)self _fetchRapportsByAndPredicates:v18 sortDescriptors:v28 andLimit:v16];
  std::vector<ULRapportDO>::__vdeallocate(&retstr->var0);
  *&retstr->var0 = v31;
  retstr->var2 = v32;
  v32 = 0;
  v31 = 0uLL;
  v33 = &v31;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&v33);

  objc_autoreleasePoolPop(v17);
  v30 = *MEMORY[0x277D85DE8];
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
  *a2 = &unk_286A56A10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = [**(a1 + 16) managedObjectContext];
  v5 = [ULRapportMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:v4];

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