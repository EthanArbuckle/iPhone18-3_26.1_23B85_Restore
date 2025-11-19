@interface ULModelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteModelsForService:(uuid)a3;
- (BOOL)deleteOrphanRecords;
- (BOOL)deleteUnneededModelsWithNumNonLslsModeltoKeep:(unsigned int)a3 numLSLModelsToKeep:(unsigned int)a4;
- (BOOL)insertDataObjects:(const void *)a3 forServiceUUID:(const void *)a4 atLoiUUID:(const void *)a5;
- (BOOL)updateHomeSlamModelForModelUUID:(const uuid *)a3 modelAsNSData:(id)a4;
- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:;
- (id)fetchModelManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4;
- (id)fetchVMKModelFor:(id)a3;
- (id)insertDataObjects:forServiceUUID:atLoiUUID:;
- (optional<ULModelDO>)fetchMostRecentMagicalMomentsModelAtLoiGroupId:(uuid)a3;
- (optional<ULModelDO>)fetchMostRecentModelForServiceUuid:(uuid)a3 atLoiGroupId:;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForClient:(ULModelStore *)self atLoiGroupId:(uuid)a3;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForService:(ULModelStore *)self atLoiGroupId:(uuid)a3;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(uuid)a3 atLoiGroupId:;
- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:;
- (vector<ULModelDO,)fetchModelsAtLoiGroupId:(ULModelStore *)self andLimit:(SEL)a3;
- (vector<ULModelDO,)fetchMostRecentModels;
- (void)insertVMKModel:(id)a3 for:(id)a4;
@end

@implementation ULModelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71A90 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 forServiceUUID:(const void *)a4 atLoiUUID:(const void *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  if (*a3 != *(a3 + 1))
  {
    v21 = 0;
    if (*(a4 + 16) == 1)
    {
      v8 = [(ULStore *)self dbStore];
      v9 = (*(v8->var0 + 13))(v8);
      if ((*(a4 + 16) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v10 = [(ULStore *)self managedObjectContext];
      v21 = [v9 fetchServiceManagedObjectWithUUID:a4 withManagedObjectContext:v10];

      if (!v21)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          if (*(a4 + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v12 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v12))
        {
          if (*(a4 + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }

    v20 = 0;
    if (*(a5 + 16) == 1)
    {
      v13 = [(ULStore *)self dbStore];
      v14 = (*(v13->var0 + 8))(v13);
      if ((*(a5 + 16) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v15 = [(ULStore *)self managedObjectContext];
      v20 = [v14 fetchLoiManagedObjectWithUUID:a5 withManagedObjectContext:v15];

      if (!v20)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v16 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          if (*(a5 + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v17))
        {
          if (*(a5 + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }

    v23 = 0;
    operator new();
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)deleteUnneededModelsWithNumNonLslsModeltoKeep:(unsigned int)a3 numLSLModelsToKeep:(unsigned int)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v28 = a4;
    v29 = 1026;
    v30 = a3;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEBUG, "Keeping %{public}d models for LSL models, %{public}d models per other types", buf, 0xEu);
  }

  context = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:1];
  v8 = 0;
  v9 = 1;
  do
  {
    if (v8 == 2)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v8];
    [v11 addObject:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v26 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v16 = [(ULStore *)self countManagedObjectsWithEntityName:v14 byAndPredicates:v11 sortDescriptors:v15 andLimit:0];

    if ([v16 unsignedIntValue] > v10)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = v7;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v20 = -[ULStore batchDeleteObjectsWithEntityName:byAndPredicates:sortDescriptors:andLimit:](self, "batchDeleteObjectsWithEntityName:byAndPredicates:sortDescriptors:andLimit:", v18, v11, v19, [v16 unsignedIntValue] - v10);

      v9 &= v20;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 6);

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
  return v9 & 1;
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

- (BOOL)deleteModelsForService:(uuid)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v12];
  v6 = [v5 UUIDString];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", v6];
  [v4 addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v9 byAndPredicates:v4 sortDescriptors:0 andLimit:0];

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForClient:(ULModelStore *)self atLoiGroupId:(uuid)a3
{
  v5 = v4;
  v6 = v3;
  v7 = *&a3.data[8];
  v30[1] = *MEMORY[0x277D85DE8];
  v27 = 0uLL;
  v28 = 0;
  std::vector<ULModelDO>::reserve(&v27, 1uLL);
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v7];
  [v11 addObject:v12];

  if (v7)
  {
    if (*(v6 + 24) != 1)
    {
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCAC30];
    if (*(v6 + 23) >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *v6;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    v16 = [v13 predicateWithFormat:@"%K.%K=%@", @"service", @"clientId", v15];
    [v11 addObject:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=NIL", @"service"];
    [v11 addObject:v15];
  }

LABEL_9:
  if (*(v5 + 16) == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v5 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = [v17 initWithUUIDBytes:v5];
    v19 = [v18 UUIDString];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", v19];
    [v11 addObject:v20];
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v30[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [(ULModelStore *)self _fetchModelsByAndPredicates:v11 sortDescriptors:v22 andLimit:1];
  std::vector<ULModelDO>::__vdeallocate(&v27);
  v27 = v25;
  v28 = v26;
  v29 = &v25;
  v26 = 0;
  v25 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v29);

  objc_autoreleasePoolPop(v10);
  if (v27 == *(&v27 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v27);
  }

  *&v25 = &v27;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v25);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForService:(ULModelStore *)self atLoiGroupId:(uuid)a3
{
  v5 = v4;
  v6 = v3;
  v7 = *&a3.data[8];
  v30[1] = *MEMORY[0x277D85DE8];
  v27 = 0uLL;
  v28 = 0;
  std::vector<ULModelDO>::reserve(&v27, 1uLL);
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v7];
  [v11 addObject:v12];

  if (*(v6 + 16) == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v6 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v14 = [v13 initWithUUIDBytes:v6];
    v15 = [v14 UUIDString];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", v15];
    [v11 addObject:v16];
  }

  if (*(v5 + 16) == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v5 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = [v17 initWithUUIDBytes:v5];
    v19 = [v18 UUIDString];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", v19];
    [v11 addObject:v20];
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v30[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [(ULModelStore *)self _fetchModelsByAndPredicates:v11 sortDescriptors:v22 andLimit:1];
  std::vector<ULModelDO>::__vdeallocate(&v27);
  v27 = v25;
  v28 = v26;
  v29 = &v25;
  v26 = 0;
  v25 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v29);

  objc_autoreleasePoolPop(v10);
  if (v27 == *(&v27 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v27);
  }

  *&v25 = &v27;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v25);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULModelDO,)fetchModelsAtLoiGroupId:(ULModelStore *)self andLimit:(SEL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v20];
  v11 = [v10 UUIDString];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", v11];
  [v9 addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v19 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [(ULModelStore *)self _fetchModelsByAndPredicates:v9 sortDescriptors:v14 andLimit:a5];
  std::vector<ULModelDO>::__vdeallocate(&retstr->var0);
  *retstr = v17;
  memset(&v17, 0, sizeof(v17));
  v18 = &v17;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v18);

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(uuid)a3 atLoiGroupId:
{
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[16] = 0;
  v6 = *v3;
  v7 = *(v3 + 16);
  result = [(ULModelStore *)self fetchMostRecentModelOfModelType:*&a3.data[8] ForService:v8 atLoiGroupId:&v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULModelDO>)fetchMostRecentMagicalMomentsModelAtLoiGroupId:(uuid)a3
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(__p) = 0;
  v8 = 0;
  v9 = *&a3.data[8];
  v10 = v3;
  v11 = 1;
  result = [(ULModelStore *)self fetchMostRecentModelOfModelType:0 ForClient:&__p atLoiGroupId:&v9];
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelForServiceUuid:(uuid)a3 atLoiGroupId:
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = *&a3.data[8];
  v29 = v3;
  v26 = v4;
  v27 = v5;
  v22 = 0uLL;
  v23 = 0;
  std::vector<ULModelDO>::reserve(&v22, 1uLL);
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v28];
  v11 = [v10 UUIDString];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", v11];
  [v9 addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v26];
  v14 = [v13 UUIDString];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", v14];
  [v9 addObject:v15];

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v25 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [(ULModelStore *)self _fetchModelsByAndPredicates:v9 sortDescriptors:v17 andLimit:1];
  std::vector<ULModelDO>::__vdeallocate(&v22);
  v22 = v20;
  v23 = v21;
  v24 = &v20;
  v21 = 0;
  v20 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v24);

  objc_autoreleasePoolPop(v8);
  if (v22 == *(&v22 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v22);
  }

  *&v20 = &v22;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v20);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULModelDO,)fetchMostRecentModels
{
  v5 = 0;
  v17 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  do
  {
    v9 = 0;
    v10 = 0;
    v8[0] = 0;
    result = [(ULModelStore *)self fetchMostRecentModelOfModelType:v5 ForService:&v9 + 1 atLoiGroupId:v8];
    if (v16 == 1)
    {
      result = std::vector<ULModelDO>::push_back[abi:ne200100](retstr, &v11);
      if (v16)
      {
        if (v15 == 1 && v14 < 0)
        {
          operator delete(v13);
        }

        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
      }
    }

    v5 = (v5 + 1);
  }

  while (v5 != 6);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)fetchModelManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"modelUUID", v8];
  [v9 addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17;
  v26 = __Block_byref_object_dispose__17;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__ULModelStore_fetchModelManagedObjectWithUUID_withManagedObjectContext___block_invoke;
  v17[3] = &unk_2798D4840;
  v17[4] = self;
  v12 = v9;
  v18 = v12;
  v19 = v11;
  v13 = v6;
  v20 = v13;
  v21 = &v22;
  v14 = v11;
  [v13 performBlockAndWait:v17];
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __73__ULModelStore_fetchModelManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
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

- (BOOL)updateHomeSlamModelForModelUUID:(const uuid *)a3 modelAsNSData:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
    v9 = [v8 UUIDString];
    v10 = [v7 predicateWithFormat:@"%K = %@ AND %K = %@", @"modelUUID", v9, @"modelType", &unk_286A71A78];

    v17 = @"model";
    v18[0] = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(ULStore *)self batchUpdateObjectsWithEntityName:v13 predicate:v10 propertiesToUpdate:v11];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:
{
  *a2 = &unk_286A56800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forServiceUUID:atLoiUUID:
{
  v3 = **(a1 + 8);
  v4 = **(a1 + 16);
  v5 = [**(a1 + 24) managedObjectContext];
  v6 = [ULModelMO createFromDO:a2 withServiceMO:v3 loiMO:v4 inManagedObjectContext:v5];

  return v6;
}

- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (id)fetchVMKModelFor:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v4, &v17);
  if ((v18 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *buf = v17;
  v20 = 1;
  [(ULModelStore *)self fetchMostRecentModelOfModelType:5 atLoiGroupId:buf];
  if ((v28 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v6 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *&buf[4] = v4;
    v7 = "There is not vmk model for locationID: %@, returning an empty model";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_258FE9000, v8, v9, v7, buf, 0xCu);
LABEL_19:
    v11 = [MEMORY[0x277CBEA90] data];
    goto LABEL_20;
  }

  if (v24 != 2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v10 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *&buf[4] = v4;
    v7 = "There is no valid vmk model for locationID: %@, this is a serious error, returning empty model";
    v8 = v10;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if ((v23 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "There is an empty vmk model for locationID: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v15 = v22;
  v16 = *(v22 + 23);
  if (v16 < 0)
  {
    v15 = *v22;
    v16 = v22[1];
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:v16];
LABEL_20:
  v12 = v11;
  if (v28 == 1)
  {
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)insertVMKModel:(id)a3 for:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    CLMicroLocationProto::VMKModel::VMKModel(&v23);
    v8 = v6;
    v9 = [v6 bytes];
    v10 = [v6 length];
    v25 |= 1u;
    if (v24 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::__assign_external(v24, v9, v10);
    CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v7, &buf);
    if ((v36 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v11 = *buf.var0.data;
    v12 = *&buf.var0.data[8];
    LODWORD(v26[0]) = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(v26);
    v13 = boost::uuids::random_generator_pure::operator()(v26);
    v15 = v14;
    v16 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(v22, &v23);
    ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(&v28, v22);
    v29[44] = 2;
    LOBYTE(__p) = 0;
    v21 = 0;
    LOBYTE(v33[0]) = 0;
    v34 = 0;
    ULModelDO::ULModelDO(&buf, v13, v15, &v28, &__p, v33, v11, v12, v16);
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28.var0.data);
    CLMicroLocationProto::VMKModel::~VMKModel(v22);
    boost::uuids::detail::random_provider_base::destroy(v26);
    ULModelDO::ULModelDO(&v28, &buf);
    memset(v22, 0, sizeof(v22));
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v22, &v28, v33, 1uLL);
    LOBYTE(v33[0]) = 0;
    v34 = 0;
    v26[0] = v11;
    v26[1] = v12;
    v27 = 1;
    [(ULModelStore *)self insertDataObjects:v22 forServiceUUID:v33 atLoiUUID:v26];
    v33[0] = v22;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](v33);
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v37);
    CLMicroLocationProto::VMKModel::~VMKModel(&v23);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) insertVMKModel:for:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf.var0.data = 0;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Trying to insert an empty vmk model, doing nothing", buf.var0.data, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end