@interface ULWiFiHistogramStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (optional<ULWiFiHistogramDO>)fetchMostRecentWifiHistogramAtLoiGroupId:(optional<ULWiFiHistogramDO> *__return_ptr)retstr beforeTime:(ULWiFiHistogramStore *)self;
- (uint64_t)insertDataObjects:atLoiUUID:;
@end

@implementation ULWiFiHistogramStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWiFiHistogramTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71CA0 unsignedIntValue];
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

    if (v15)
    {
      v17[0] = &unk_286A56E48;
      v17[1] = &v15;
      v17[2] = &v16;
      v17[3] = v17;
      inserted = ULDBUtils::insertDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(self, a3, v17);
      std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::~__value_func[abi:ne200100](v17);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        operator new();
      }

      [(ULStore *)self resetMOC:v15];
      inserted = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (optional<ULWiFiHistogramDO>)fetchMostRecentWifiHistogramAtLoiGroupId:(optional<ULWiFiHistogramDO> *__return_ptr)retstr beforeTime:(ULWiFiHistogramStore *)self
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v28[1] = *MEMORY[0x277D85DE8];
  v25 = 0uLL;
  v26 = 0;
  std::vector<ULWiFiHistogramDO>::reserve(&v25, 1uLL);
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v7];
  v13 = [v12 UUIDString];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", v13];
  [v11 addObject:v14];

  if (v5)
  {
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v17 = [v15 predicateWithFormat:@"%K <= %@", @"timestamp", v16];
    [v11 addObject:v17];
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v28[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [(ULWiFiHistogramStore *)self _fetchWiFiHistogramByAndPredicates:v11 sortDescriptors:v19 andLimit:1];
  std::vector<ULWiFiHistogramDO>::__vdeallocate(&v25);
  v25 = v23;
  v26 = v24;
  v27 = &v23;
  v24 = 0;
  v23 = 0uLL;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v27);

  objc_autoreleasePoolPop(v10);
  if (v25 == *(&v25 + 1))
  {
    v20 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    ULWiFiHistogramDO::ULWiFiHistogramDO(retstr, v25);
    v20 = 1;
  }

  LOBYTE(retstr[1].var0.var3.var1.var3) = v20;
  *&v23 = &v25;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v23);
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
  *a2 = &unk_286A56E48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = [**(a1 + 16) managedObjectContext];
  v5 = [ULWiFiHistogramMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:v4];

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