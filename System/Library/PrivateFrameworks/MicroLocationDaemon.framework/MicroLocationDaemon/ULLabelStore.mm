@interface ULLabelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)deleteSimilarityListLabelsOlderThan:(double)a3 orNewerThan:(double)a4;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (BOOL)insertDataObjects:(const void *)a3 forScanningEventUUID:(const uuid *)a4 andServiceUUID:(const uuid *)a5;
- (__n128)insertDataObjects:atLoiUUID:;
- (__n128)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (uint64_t)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (vector<ULLabelDO,)fetchAllRecordsWithLimit:(ULLabelStore *)self;
- (vector<ULLabelDOAndObjectID,)fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID:(ULLabelStore *)self;
@end

@implementation ULLabelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingLabelsTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A719E8 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 forScanningEventUUID:(const uuid *)a4 andServiceUUID:(const uuid *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  if (*a3 == *(a3 + 1))
  {
    v14 = 1;
  }

  else
  {
    v8 = [(ULStore *)self dbStore];
    v9 = (*(v8->var0 + 18))(v8);
    v10 = [(ULStore *)self managedObjectContext];
    v22 = [v9 fetchScanningEventManagedObjectWithUUID:a4 withManagedObjectContext:v10];

    if (v22)
    {
      v11 = [(ULStore *)self dbStore];
      v12 = (*(v11->var0 + 13))(v11);
      v13 = [(ULStore *)self managedObjectContext];
      v21 = [v12 fetchServiceManagedObjectWithUUID:a5 withManagedObjectContext:v13];

      if (v21)
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v18 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v18))
      {
        operator new();
      }

      [(ULStore *)self resetMOC];
      v14 = 0;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v16))
      {
        operator new();
      }

      [(ULStore *)self resetMOC];
      v14 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v7 = [(ULStore *)self dbStore];
  v8 = (*(v7->var0 + 8))(v7);
  v9 = [(ULStore *)self managedObjectContext];
  v15 = [v8 fetchLoiManagedObjectWithUUID:a4 withManagedObjectContext:v9];

  if (v15)
  {
    v17[0] = &unk_286A56450;
    v17[1] = &v15;
    v17[2] = &v16;
    v17[3] = v17;
    inserted = ULDBUtils::insertDataObjects<ULLabelDO,ULLabelMO>(self, a3, v17);
    std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::~__value_func[abi:ne200100](v17);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    inserted = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULLabelDO,)fetchAllRecordsWithLimit:(ULLabelStore *)self
{
  ULDBUtils::fetchAllAsDataObjectsWithLimit<ULLabelDOAndObjectID,ULLabelMO>(self, a4, &v7);
  memset(v6, 0, sizeof(v6));
  std::vector<ULLabelDOAndObjectID>::__init_with_size[abi:ne200100]<ULLabelDOAndObjectID*,ULLabelDOAndObjectID*>(v6, v7, v8, 0xF0F0F0F0F0F0F0F1 * ((v8 - v7) >> 3));
  ULLabelDOAndObjectID::labelDOs(v6, retstr);
  v9 = v6;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = &v7;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v9);
  return result;
}

- (BOOL)deleteSimilarityListLabelsOlderThan:(double)a3 orNewerThan:(double)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12 = [v9 predicateWithFormat:@"%K < %@ || %K > %@", @"receivedTimestamp", v10, @"receivedTimestamp", v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %u", @"service", @"serviceType", 4];
  [v8 addObject:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v15 byAndPredicates:v8 sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v7);
  return self;
}

- (BOOL)deleteOrphanRecords
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL || %K = NIL", @"scanningEvent", @"service"];
  [v3 addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:v3 sortDescriptors:0 andLimit:0];

  return self;
}

- (vector<ULLabelDOAndObjectID,)fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID:(ULLabelStore *)self
{
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  [(ULLabelStore *)self fetchLabelsWithLOIGroupUUID:a4 andContextLayers:v5 limit:0 ascending:1];
  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v5);
}

- (__n128)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  *a2 = &unk_286A563C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  v3 = **(a1 + 8);
  v4 = **(a1 + 16);
  v5 = [**(a1 + 24) managedObjectContext];
  v6 = [ULLabelMO createFromDO:a2 withScanningEventMO:v3 serviceMO:v4 inManagedObjectContext:v5];

  return v6;
}

- (uint64_t)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (__n128)insertDataObjects:atLoiUUID:
{
  *a2 = &unk_286A56450;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = [**(a1 + 16) managedObjectContext];
  v5 = [ULLabelMO createFromDO:a2 withLoi:v3 inManagedObjectContext:v4];

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