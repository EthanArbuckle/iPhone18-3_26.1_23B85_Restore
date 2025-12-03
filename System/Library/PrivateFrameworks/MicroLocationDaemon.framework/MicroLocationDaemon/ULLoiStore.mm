@interface ULLoiStore
+ (unsigned)maxEntriesInTable;
- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store;
- (BOOL)insertDataObjects:(const void *)objects;
- (BOOL)updateLoiIds:(const void *)ids withLoiGroupId:(const uuid *)id andLoiType:(const void *)type;
- (id)fetchLoiManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context;
- (id)getLoiIdsInLoiGroupId:(const uuid *)id;
- (id)insertDataObjects:;
- (optional<boost::uuids::uuid>)getLoiGroupIdForLoi:(SEL)loi;
- (optional<std::string>)getLoiTypeForLoi:(optional<std::string> *__return_ptr)retstr;
- (uint64_t)insertDataObjects:;
- (unsigned)countDistinctLoiGroups;
- (unsigned)countDistinctLoiTypes:(const void *)types;
- (vector<ULLoiDO,)fetchAllDistinctLoiGroups;
- (vector<ULLoiDO,)fetchLoiIdEntriesInLoiGroupId:(ULLoiStore *)self;
- (vector<ULLoiDO,)fetchLoiIdEntriesforLoiGroupIds:(ULLoiStore *)self withLimit:(SEL)limit;
- (vector<boost::uuids::uuid,)getDistinctHomeLoiGroupIdsWithLimit:(ULLoiStore *)self;
- (vector<boost::uuids::uuid,)getLoiGroupIdsForLois:(ULLoiStore *)self;
@end

@implementation ULLoiStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMiLoLoiTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71A00 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A56528;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULLoiDO,ULLoiMO>(self, objects, v7);
  std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (id)getLoiIdsInLoiGroupId:(const uuid *)id
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:id];
  uUIDString = [v5 UUIDString];

  v7 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  if (id->data[0])
  {
LABEL_2:
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"loiGroupId", uUIDString];
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v20 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v19 = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v14 = [(ULStore *)self fetchPropertyForEntityName:v11 propertyToFetch:@"loiId" distinctResults:1 byAndPredicates:v12 sortDescriptors:v13 andLimit:v7];
  }

  else
  {
    v15 = 1;
    while (v15 != 16)
    {
      if (id->data[v15++])
      {
        if ((v15 - 2) < 0xF)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    v21[0] = uUIDString;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (vector<ULLoiDO,)fetchLoiIdEntriesInLoiGroupId:(ULLoiStore *)self
{
  v19[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  uUIDString = [v8 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"loiGroupId", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v13 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v19[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(ULLoiStore *)self _fetchLoisByAndPredicates:array sortDescriptors:v14 andLimit:v13];
  std::vector<ULLoiDO>::__vdeallocate(retstr);
  *retstr = v17;
  memset(&v17, 0, sizeof(v17));
  v18 = &v17;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v18);

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULLoiDO,)fetchLoiIdEntriesforLoiGroupIds:(ULLoiStore *)self withLimit:(SEL)limit
{
  v19[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
  array = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"loiGroupId", v10];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(ULLoiStore *)self _fetchLoisByAndPredicates:array sortDescriptors:v14 andLimit:a5];
  std::vector<ULLoiDO>::__vdeallocate(retstr);
  *retstr = v17;
  memset(&v17, 0, sizeof(v17));
  v18 = &v17;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v18);

  objc_autoreleasePoolPop(v9);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULLoiDO,)fetchAllDistinctLoiGroups
{
  v5 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = &unk_25929B3B7;
  memset(v22, 0, sizeof(v22));
  v7 = objc_autoreleasePoolPush();
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__ULLoiStore_fetchAllDistinctLoiGroups__block_invoke;
  v12[3] = &unk_2798D47F0;
  v12[4] = self;
  v9 = v6;
  v15 = v5;
  v13 = v9;
  v14 = &v16;
  [managedObjectContext performBlockAndWait:v12];

  objc_autoreleasePoolPop(v7);
  v10 = v17;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<ULLoiDO>::__init_with_size[abi:ne200100]<ULLoiDO*,ULLoiDO*>(retstr, v10[6], v10[7], (v10[7] - v10[6]) >> 6);
  _Block_object_dispose(&v16, 8);
  v23 = v22;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v23);

  return result;
}

void __39__ULLoiStore_fetchAllDistinctLoiGroups__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v17[0] = @"loiGroupId";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v16 = @"loiGroupId";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v15 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v8 = [v2 fetchManagedObjectsForEntityName:v4 propertiesToFetch:v5 propertiesToGroupBy:v6 byAndPredicates:0 sortDescriptors:v7 andLimit:*(a1 + 56)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>(v8, &v12);
  v9 = *(*(a1 + 48) + 8);
  std::vector<ULLoiDO>::__vdeallocate((v9 + 48));
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  v13 = 0;
  v12 = 0uLL;
  v14 = &v12;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = [*(a1 + 32) managedObjectContext];
  [v10 reset];

  v11 = *MEMORY[0x277D85DE8];
}

- (vector<boost::uuids::uuid,)getDistinctHomeLoiGroupIdsWithLimit:(ULLoiStore *)self
{
  v21[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CCAC30];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"home"];
  v10 = [v8 predicateWithFormat:@"%K=%@", @"loiType", v9];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v21[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v15 = [(ULStore *)self fetchPropertyForEntityName:v13 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:array sortDescriptors:v14 andLimit:a4];

  ULDBUtils::boostUUIDsFromNSStringArray(v15, &v19);
  v16 = v20;
  *&retstr->var0 = v19;
  retstr->var2 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)countDistinctLoiGroups
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ULStore *)self fetchPropertyForEntityName:v4 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  LODWORD(v4) = [v5 count];
  return v4;
}

- (unsigned)countDistinctLoiTypes:(const void *)types
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(types + 23) >= 0)
  {
    typesCopy = types;
  }

  else
  {
    typesCopy = *types;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:typesCopy];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"loiType", v7];
  [array addObject:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(ULStore *)self fetchPropertyForEntityName:v10 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:0];

  LODWORD(v10) = [v11 count];
  return v10;
}

- (optional<boost::uuids::uuid>)getLoiGroupIdForLoi:(SEL)loi
{
  v22[1] = *MEMORY[0x277D85DE8];
  v19 = 0uLL;
  v20 = 0;
  std::vector<ULLoiDO>::reserve(&v19, 1uLL);
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  uUIDString = [v8 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"loiId", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [(ULLoiStore *)self _fetchLoisByAndPredicates:array sortDescriptors:v13 andLimit:1];
  std::vector<ULLoiDO>::__vdeallocate(&v19);
  v19 = v17;
  v20 = v18;
  v21 = &v17;
  v18 = 0;
  v17 = 0uLL;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v21);

  objc_autoreleasePoolPop(v7);
  if (v19 == *(&v19 + 1))
  {
    v14 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    retstr->var0 = *(v19 + 24);
    v14 = 1;
  }

  retstr->var1 = v14;
  *&v17 = &v19;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<std::string>)getLoiTypeForLoi:(optional<std::string> *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  v22[1] = *MEMORY[0x277D85DE8];
  v19 = 0uLL;
  v20 = 0;
  std::vector<ULLoiDO>::reserve(&v19, 1uLL);
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v3];
  uUIDString = [v7 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"loiId", uUIDString];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v22[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v4 _fetchLoisByAndPredicates:array sortDescriptors:v12 andLimit:1];
  std::vector<ULLoiDO>::__vdeallocate(&v19);
  v19 = v17;
  v20 = v18;
  v21 = &v17;
  v18 = 0;
  v17 = 0uLL;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v21);

  objc_autoreleasePoolPop(v6);
  v13 = v19;
  if (v19 == *(&v19 + 1))
  {
    v14 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    *&retstr->var0.var0 = *(v19 + 40);
    *(&retstr->var0.var1.var0.var1 + 2) = *(v13 + 56);
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = 0;
    v14 = 1;
  }

  retstr[1].var0.var0 = v14;
  *&v17 = &v19;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<boost::uuids::uuid,)getLoiGroupIdsForLois:(ULLoiStore *)self
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (*a4 == *(a4 + 1))
  {
    v16 = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    v7 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    v8 = objc_autoreleasePoolPush();
    v9 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    array = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"loiId", v9];
    [array addObject:v11];

    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v19[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = [(ULStore *)self fetchPropertyForEntityName:v14 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:array sortDescriptors:v15 andLimit:v7];

    objc_autoreleasePoolPop(v8);
    ULDBUtils::boostUUIDsFromNSStringArray(v16, retstr);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateLoiIds:(const void *)ids withLoiGroupId:(const uuid *)id andLoiType:(const void *)type
{
  v5 = *ids;
  v6 = *(ids + 1);
  if (v5 == v6)
  {
    return 1;
  }

  memset(v48, 0, sizeof(v48));
  __p = 0;
  v46 = 0;
  v47 = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&__p, v5, v6, (v6 - v5) >> 4);
  v10 = v46;
  if (v46 >= v47)
  {
    v13 = (v46 - __p) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v15 = v47 - __p;
    if ((v47 - __p) >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v16);
    }

    v17 = (16 * v13);
    *v17 = *id;
    v11 = (16 * v13 + 16);
    v18 = v17 - (v46 - __p);
    memcpy(v18, __p, v46 - __p);
    v19 = __p;
    __p = v18;
    v46 = v11;
    v47 = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v46 = *id;
    v11 = v10 + 16;
  }

  v20 = 126 - 2 * __clz((v11 - __p) >> 4);
  v46 = v11;
  if (v11 == __p)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,false>(__p, v11, &v49, v21, 1);
  v22 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::uuids::uuid *>,std::__wrap_iter<boost::uuids::uuid *>,std::__equal_to &>(__p, v46);
  if (v22 != v46)
  {
    v46 = v22;
  }

  v23 = objc_alloc(MEMORY[0x277CBEB18]);
  v24 = ULDBUtils::NSStringArrayFromBoostUUIDs(&__p);
  v25 = [v23 initWithArray:v24];

  array = [MEMORY[0x277CBEB18] array];
  v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"loiId", v25];
  [array addObject:v27];

  v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __53__ULLoiStore_updateLoiIds_withLoiGroupId_andLoiType___block_invoke;
  v34[3] = &unk_2798D4818;
  v34[4] = self;
  v30 = array;
  v35 = v30;
  v31 = v28;
  v36 = v31;
  idCopy = id;
  typeCopy = type;
  v32 = v25;
  v37 = v32;
  v38 = &v41;
  [managedObjectContext performBlockAndWait:v34];

  v12 = *(v42 + 24);
  _Block_object_dispose(&v41, 8);

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v41 = v48;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v41);
  return v12;
}

void __53__ULLoiStore_updateLoiIds_withLoiGroupId_andLoiType___block_invoke(uint64_t a1)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(a1 + 40);
  v42[0] = *(a1 + 48);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v29 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 andLimit:0];

  v7 = cl::chrono::CFAbsoluteTimeClock::now();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v29;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        [v11 setLastSeenTimeStamp:v7];
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*(a1 + 72)];
        v13 = [v12 UUIDString];
        [v11 setLoiGroupId:v13];

        v14 = *(a1 + 80);
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
        [v11 setLoiType:v15];

        v16 = *(a1 + 56);
        v17 = [v11 loiId];
        [v16 removeObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = *(a1 + 56);
  v18 = [v30 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v30);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*(a1 + 72)];
        v23 = [v22 UUIDString];
        v24 = *(a1 + 80);
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
        v26 = [*(a1 + 32) managedObjectContext];
        v27 = [ULLoiMO createWithLastSeenTimeStamp:v21 loiId:v23 loiGroupId:v25 loiType:v26 inManagedObjectContext:v7];
      }

      v18 = [v30 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store
{
  storeCopy = store;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__ULLoiStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke;
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

void __74__ULLoiStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke(void *a1)
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

- (id)fetchLoiManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context
{
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__25;
  v28 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
  uUIDString = [v8 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"loiId", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__ULLoiStore_fetchLoiManagedObjectWithUUID_withManagedObjectContext___block_invoke;
  v18[3] = &unk_2798D4840;
  v18[4] = self;
  v13 = array;
  v19 = v13;
  v20 = v12;
  v14 = contextCopy;
  v21 = v14;
  v22 = &v23;
  v15 = v12;
  [v14 performBlockAndWait:v18];

  objc_autoreleasePoolPop(v7);
  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __69__ULLoiStore_fetchLoiManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
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
  v4 = [ULLoiMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end