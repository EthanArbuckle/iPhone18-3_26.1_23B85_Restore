@interface ULServiceStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteAllServicesWithExceptions:(const void *)a3;
- (BOOL)deleteAllServicesWithUUIDs:()vector<boost:(std::allocator<boost::uuids::uuid>> *)a3 :uuids::uuid;
- (BOOL)deleteOldestsServicesPerClientAboveMaxCount;
- (BOOL)deleteServiceForUUID:(uuid)a3;
- (BOOL)insertDataObjects:(const void *)a3;
- (BOOL)updateAllServicesWithMatchingClientId:()basic_string<char withNewClientId:()std:(std::allocator<char>> *)var0 :char_traits<char>;
- (BOOL)updateAllServicesWithMatchingServiceUUID:(uuid)a3 withNewServiceUUID:(uuid)a4;
- (BOOL)updateServiceLocationTypes:(uuid)a3 withLocationTypes:(unint64_t)a4;
- (id)fetchServiceManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4;
- (id)getAllServiceUUIDs:(unint64_t)a3;
- (id)insertDataObjects:;
- (optional<ULServiceDO>)fetchServiceByUUID:()basic_string<char;
- (uint64_t)insertDataObjects:;
- (uint64_t)updateLastActiveTime:(uint64_t)a3 forService:(uint64_t)a4;
- (vector<ULServiceDO,)fetchAllServicesForClientId:(ULServiceStore *)self andUserId:(SEL)a3;
- (vector<ULServiceDO,)fetchAllServicesForServiceType:(ULServiceStore *)self onlyServicesWithLabels:(SEL)a3;
- (void)deleteOldestsServicesPerClientAboveMaxCount;
@end

@implementation ULServiceStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULServicesTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71BC8 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6 = self;
  v7[0] = &unk_286A56D00;
  v7[1] = &v6;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULServiceDO,ULServiceMO>(self, a3, v7);
  std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (BOOL)deleteServiceForUUID:(uuid)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v12];
  v6 = [v5 UUIDString];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", v6];
  [v4 addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v9 byAndPredicates:v4 sortDescriptors:0 andLimit:0];

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)deleteAllServicesWithUUIDs:()vector<boost:(std::allocator<boost::uuids::uuid>> *)a3 :uuids::uuid
{
  if (a3->var0 == a3->var1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceStore deleteAllServicesWithUUIDs:];
    }

    v10 = logObject_MicroLocation_Default;
    v9 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "#Warning No UUIDs were passed in to delete services", buf, 2u);
      return 0;
    }
  }

  else
  {
    v4 = ULDBUtils::NSStringArrayFromBoostUUIDs(a3);
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"serviceUUID", v4];
    [v5 addObject:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(ULStore *)self batchDeleteObjectsWithEntityName:v8 byAndPredicates:v5 sortDescriptors:0 andLimit:0];
  }

  return v9;
}

- (BOOL)deleteAllServicesWithExceptions:(const void *)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *a3;
  v8 = *(a3 + 1);
  if (*a3 != v8)
  {
    do
    {
      v9 = v7;
      if (*(v7 + 23) < 0)
      {
        v9 = *v7;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [v6 addObject:v10];

      v7 += 3;
    }

    while (v7 != v8);
  }

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"clientId", v6];
  [v5 addObject:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [(ULStore *)self batchDeleteObjectsWithEntityName:v13 byAndPredicates:v5 sortDescriptors:0 andLimit:0];

  return v14;
}

- (vector<ULServiceDO,)fetchAllServicesForServiceType:(ULServiceStore *)self onlyServicesWithLabels:(SEL)a3
{
  v5 = a5;
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%u", @"serviceType", a4];
  [v11 addObject:v12];

  if (v5)
  {
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count > 0", @"labels"];
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v21[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [(ULServiceStore *)self _fetchServicesByAndPredicates:v11 sortDescriptors:v15 andLimit:v9];
  std::vector<ULServiceDO>::__vdeallocate(&retstr->var0);
  *&retstr->var0 = v18;
  retstr->var2 = v19;
  v19 = 0;
  v18 = 0uLL;
  v20 = &v18;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v20);

  objc_autoreleasePoolPop(v10);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<ULServiceDO,)fetchAllServicesForClientId:(ULServiceStore *)self andUserId:(SEL)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = MEMORY[0x277CCAC30];
  if (*(a4 + 23) >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
  v14 = [v11 predicateWithFormat:@"%K=%@", @"clientId", v13];
  [v10 addObject:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v22[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [(ULServiceStore *)self _fetchServicesByAndPredicates:v10 sortDescriptors:v16 andLimit:v8];
  std::vector<ULServiceDO>::__vdeallocate(&retstr->var0);
  *&retstr->var0 = v19;
  retstr->var2 = v20;
  v20 = 0;
  v19 = 0uLL;
  v21 = &v19;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v21);

  objc_autoreleasePoolPop(v9);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULServiceDO>)fetchServiceByUUID:()basic_string<char
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = v3;
  v28 = v4;
  v23 = 0uLL;
  v24 = 0;
  std::vector<ULServiceDO>::reserve(&v23, 1uLL);
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v27];
  v10 = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", v10];
  [v8 addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v26 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [(ULServiceStore *)self _fetchServicesByAndPredicates:v8 sortDescriptors:v13 andLimit:1];
  std::vector<ULServiceDO>::__vdeallocate(&v23);
  v23 = v21;
  v24 = v22;
  v25 = &v21;
  v22 = 0;
  v21 = 0uLL;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v25);

  objc_autoreleasePoolPop(v7);
  v14 = v23;
  if (v23 == *(&v23 + 1))
  {
    v18 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    v15 = *(v23 + 16);
    *&retstr->var0.var0 = *v23;
    *(&retstr->var0.var2.var0.var1 + 1) = v15;
    *&retstr[1].var0.var2.var0.var1.var1 = *(v14 + 32);
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v16 = *(v14 + 48);
    v17 = *(v14 + 56);
    *(v14 + 48) = 0;
    retstr[2].var0.var1.var0 = v16;
    retstr[2].var0.var2.var0.var1.var1 = v17;
    *(&retstr[2].var0.var2.var0.var1 + 1) = *(v14 + 64);
    retstr[3].var0.var2.var0.var1.var1 = *(v14 + 80);
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    v18 = 1;
    *(v14 + 80) = 0;
  }

  retstr[3].var0.var1.var1.data[8] = v18;
  *&v21 = &v23;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)updateLastActiveTime:(uint64_t)a3 forService:(uint64_t)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v23[0] = a4;
  v23[1] = a5;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v23];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", v9];
  [v7 addObject:v10];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = [a1 managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ULServiceStore_updateLastActiveTime_forService___block_invoke;
  v15[3] = &unk_2798D4500;
  v15[4] = a1;
  v12 = v7;
  v18 = a2;
  v16 = v12;
  v17 = &v19;
  [v11 performBlockAndWait:v15];

  LOBYTE(v7) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __50__ULServiceStore_updateLastActiveTime_forService___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v9++) setLastActiveTimestamp:{*(a1 + 56), v12}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateServiceLocationTypes:(uuid)a3 withLocationTypes:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v22];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", v8];
  [v6 addObject:v9];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = [(ULStore *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ULServiceStore_updateServiceLocationTypes_withLocationTypes___block_invoke;
  v14[3] = &unk_2798D4500;
  v14[4] = self;
  v11 = v6;
  v16 = &v18;
  v17 = a4;
  v15 = v11;
  [v10 performBlockAndWait:v14];

  LOBYTE(v6) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void __63__ULServiceStore_updateServiceLocationTypes_withLocationTypes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v9++) setLocationTypes:{*(a1 + 56), v12}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__ULServiceStore_updateService_withServiceType_toNewServiceType___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v9++) setServiceType:{*(a1 + 56), v12}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getAllServiceUUIDs:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(ULStore *)self fetchPropertyForEntityName:v7 propertyToFetch:@"serviceUUID" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:a3];

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (BOOL)deleteOldestsServicesPerClientAboveMaxCount
{
  v91 = *MEMORY[0x277D85DE8];
  [(ULServiceStore *)self fetchAllRecordsWithLimit:0];
  if (v84 != v85)
  {
    v83[0] = 0;
    v83[1] = 0;
    v82 = v83;
    v2 = +[ULDefaultsSingleton shared];
    v3 = [v2 defaultsDictionary];

    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedUnsupervisedServicesPerClientAfterMaintenance"];
    v5 = [v3 objectForKey:v4];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 unsignedLongValue];
    }

    else
    {
      v6 = [&unk_286A71B80 unsignedLongValue];
    }

    v7 = v6;

    v87.__r_.__value_.__r.__words[0] = 1;
    v80 = &v87;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v82, &v87)[5] = v7;
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedBinaryRoiServicesPerClientAfterMaintenance"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 unsignedLongValue];
    }

    else
    {
      v12 = [&unk_286A71B80 unsignedLongValue];
    }

    v13 = v12;

    v87.__r_.__value_.__r.__words[0] = 2;
    v80 = &v87;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v82, &v87)[5] = v13;
    v14 = +[ULDefaultsSingleton shared];
    v15 = [v14 defaultsDictionary];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedMulticlassServicesPerClientAfterMaintenance"];
    v17 = [v15 objectForKey:v16];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v17 unsignedLongValue];
    }

    else
    {
      v18 = [&unk_286A71B80 unsignedLongValue];
    }

    v19 = v18;

    v87.__r_.__value_.__r.__words[0] = 3;
    v80 = &v87;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v82, &v87)[5] = v19;
    v20 = +[ULDefaultsSingleton shared];
    v21 = [v20 defaultsDictionary];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedSimilarityListServicesPerClientAfterMaintenance"];
    v23 = [v21 objectForKey:v22];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = [v23 unsignedLongValue];
    }

    else
    {
      v24 = [&unk_286A71B98 unsignedLongValue];
    }

    v25 = v24;

    v87.__r_.__value_.__r.__words[0] = 4;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v82, &v87)[5] = v25;
    v81[0] = 0;
    v81[1] = 0;
    v80 = v81;
    v27 = v84;
    v26 = v85;
    if (v84 == v85)
    {
      goto LABEL_80;
    }

    do
    {
      if (*(v27 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *(v27 + 32), *(v27 + 40));
      }

      else
      {
        v87 = *(v27 + 32);
      }

      v88 = *v27;
      __p = &v87;
      v28 = std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::__emplace_unique_key_args<std::pair<std::string,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,unsigned long long>&&>,std::tuple<>>(&v80, &v87.__r_.__value_.__l.__data_);
      v29 = v28;
      v30 = v28[9];
      if (v30 >= v28[10])
      {
        v31 = std::vector<ULServiceDO>::__emplace_back_slow_path<ULServiceDO const&>(v28 + 8, v27);
      }

      else
      {
        std::vector<ULServiceDO>::__construct_one_at_end[abi:ne200100]<ULServiceDO const&>((v28 + 8), v27);
        v31 = v30 + 88;
      }

      v29[9] = v31;
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      v27 += 88;
    }

    while (v27 != v26);
    v32 = v80;
    __p = 0;
    v78 = 0;
    v79 = 0;
    if (v80 == v81)
    {
LABEL_80:
      v67 = 1;
    }

    else
    {
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
        }

        p_size = &v32[1].__r_.__value_.__l.__size_;
        v34 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v35 = &v32[1].__r_.__value_.__l.__size_;
          if (v32[2].__r_.__value_.__s.__data_[7] < 0)
          {
            v35 = *p_size;
          }

          size = v32[2].__r_.__value_.__l.__size_;
          v37 = 0x2E8BA2E8BA2E8BA3 * ((v32[3].__r_.__value_.__r.__words[0] - v32[2].__r_.__value_.__r.__words[2]) >> 3);
          LODWORD(v87.__r_.__value_.__l.__data_) = 136315650;
          *(v87.__r_.__value_.__r.__words + 4) = v35;
          WORD2(v87.__r_.__value_.__r.__words[1]) = 2048;
          *(&v87.__r_.__value_.__r.__words[1] + 6) = v37;
          HIWORD(v87.__r_.__value_.__r.__words[2]) = 2048;
          v88 = size;
          _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_DEFAULT, "Pre-Maintenance for services: client: %s has: %ld services of serviceType: %llU", &v87, 0x20u);
        }

        v38 = &v32[2].__r_.__value_.__l.__size_;
        v39 = v83[0];
        if (!v83[0])
        {
          goto LABEL_43;
        }

        v40 = *v38;
        v41 = v83;
        do
        {
          v42 = v39[4];
          v43 = v42 >= v40;
          v44 = v42 < v40;
          if (v43)
          {
            v41 = v39;
          }

          v39 = v39[v44];
        }

        while (v39);
        if (v41 != v83 && v40 >= v41[4])
        {
          v86 = &v32[2].__r_.__value_.__s.__data_[8];
          v50 = std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v82, &v32[2].__r_.__value_.__l.__size_)[5];
          v51 = 0x2E8BA2E8BA2E8BA3 * ((v32[3].__r_.__value_.__r.__words[0] - v32[2].__r_.__value_.__r.__words[2]) >> 3);
          v52 = v51 - v50;
          if (v51 > v50)
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
            }

            v53 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
            {
              if (v32[2].__r_.__value_.__s.__data_[7] < 0)
              {
                p_size = *p_size;
              }

              v54 = *v38;
              LODWORD(v87.__r_.__value_.__l.__data_) = 134218754;
              *(v87.__r_.__value_.__r.__words + 4) = v52;
              WORD2(v87.__r_.__value_.__r.__words[1]) = 2080;
              *(&v87.__r_.__value_.__r.__words[1] + 6) = p_size;
              HIWORD(v87.__r_.__value_.__r.__words[2]) = 2048;
              v88 = v54;
              v89 = 2048;
              v90 = v50;
              _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_DEFAULT, "%ld entries to be deleted for client: %s serviceType: %llU (max allowed: %ld)", &v87, 0x2Au);
            }

            v55 = v32[2].__r_.__value_.__r.__words[2];
            data = v32[3].__r_.__value_.__l.__data_;
            v57 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((data - v55) >> 3));
            if (data == v55)
            {
              v58 = 0;
            }

            else
            {
              v58 = v57;
            }

            std::__introsort<std::_ClassicAlgPolicy,[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,false>(v55, data, v58, 1);
            if (88 * v52)
            {
              v59 = v32[2].__r_.__value_.__r.__words[2];
              v60 = v78;
              do
              {
                if (v60 >= v79)
                {
                  v61 = (v60 - __p) >> 4;
                  if ((v61 + 1) >> 60)
                  {
                    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                  }

                  v62 = (v79 - __p) >> 3;
                  if (v62 <= v61 + 1)
                  {
                    v62 = v61 + 1;
                  }

                  if (v79 - __p >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v63 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  if (v63)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v63);
                  }

                  v64 = (16 * v61);
                  *v64 = *(v59 + 8);
                  v60 = (16 * v61 + 16);
                  v65 = v64 - (v78 - __p);
                  memcpy(v65, __p, v78 - __p);
                  v66 = __p;
                  __p = v65;
                  v78 = v60;
                  v79 = 0;
                  if (v66)
                  {
                    operator delete(v66);
                  }
                }

                else
                {
                  *v60 = *(v59 + 8);
                  v60 += 16;
                }

                v78 = v60;
                v59 += 88;
              }

              while (v59 != 88 * v52 + v32[2].__r_.__value_.__r.__words[2]);
            }
          }
        }

        else
        {
LABEL_43:
          if (onceToken_MicroLocation_Default != -1)
          {
            [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
          }

          v45 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            v46 = *v38;
            LODWORD(v87.__r_.__value_.__l.__data_) = 134217984;
            *(v87.__r_.__value_.__r.__words + 4) = v46;
            _os_log_impl(&dword_258FE9000, v45, OS_LOG_TYPE_ERROR, "serviceType %llU not handled in delete old services per client", &v87, 0xCu);
          }
        }

        v47 = v32->__r_.__value_.__l.__size_;
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = v47->__r_.__value_.__r.__words[0];
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v32->__r_.__value_.__r.__words[2];
            v49 = *v48 == v32;
            v32 = v48;
          }

          while (!v49);
        }

        v32 = v48;
      }

      while (v48 != v81);
      v69 = __p;
      if (__p == v78)
      {
        v67 = 1;
        if (!__p)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
        }

        v70 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v87.__r_.__value_.__l.__data_) = 134217984;
          *(v87.__r_.__value_.__r.__words + 4) = (v78 - __p) >> 4;
          _os_log_impl(&dword_258FE9000, v70, OS_LOG_TYPE_DEFAULT, "Deleting total %ld service entries", &v87, 0xCu);
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v74, __p, v78, (v78 - __p) >> 4);
        v67 = [(ULServiceStore *)self deleteAllServicesWithUUIDs:&v74];
        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        v69 = __p;
        if (!__p)
        {
          goto LABEL_95;
        }
      }

      v78 = v69;
      operator delete(v69);
    }

LABEL_95:
    std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(&v80, v81[0]);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v82, v83[0]);
    goto LABEL_96;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
  }

  v68 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v87.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_DEFAULT, "Pre-Maintenance for services: no services found.", &v87, 2u);
  }

  v67 = 1;
LABEL_96:
  v87.__r_.__value_.__r.__words[0] = &v84;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v87);
  v71 = *MEMORY[0x277D85DE8];
  return v67;
}

- (BOOL)updateAllServicesWithMatchingServiceUUID:(uuid)a3 withNewServiceUUID:(uuid)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v17 = a4;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v18];
  v6 = [v5 UUIDString];

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v17];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceUUID", v6];
  v15 = @"serviceUUID";
  v16 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  LOBYTE(self) = [(ULStore *)self batchUpdateObjectsWithEntityName:v12 predicate:v9 propertiesToUpdate:v10];

  v13 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)updateAllServicesWithMatchingClientId:()basic_string<char withNewClientId:()std:(std::allocator<char>> *)var0 :char_traits<char>
{
  v4 = v3;
  v16[1] = *MEMORY[0x277D85DE8];
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:var0];
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K CONTAINS %@", @"clientId", v6];
  v15 = @"clientId";
  v16[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(ULStore *)self batchUpdateObjectsWithEntityName:v11 predicate:v8 propertiesToUpdate:v9];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)fetchServiceManagedObjectWithUUID:(const uuid *)a3 withManagedObjectContext:(id)a4
{
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__23;
  v27 = __Block_byref_object_dispose__23;
  v28 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceUUID", v9];
  [v10 addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ULServiceStore_fetchServiceManagedObjectWithUUID_withManagedObjectContext___block_invoke;
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

void __77__ULServiceStore_fetchServiceManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
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

- (void)deleteOldestsServicesPerClientAboveMaxCount
{
  v6 = a2;
  v7 = a1;
  v240 = *MEMORY[0x277D85DE8];
  v231 = a2;
  v232 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        goto LABEL_232;
      }

      if (v9 == 2)
      {
        v231 = v6 - 11;
        if (*(v6 - 8) >= *(v7 + 24))
        {
          goto LABEL_232;
        }

        v98 = &v232;
        v99 = &v231;
        goto LABEL_231;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      *&v238 = v7;
      *v237 = v7 + 88;
      *v235 = v6 - 11;
      v102 = *(v7 + 112);
      v103 = *(v6 - 8);
      if (v102 >= *(v7 + 24))
      {
        if (v103 >= v102)
        {
          goto LABEL_232;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235);
        v100 = *(*v237 + 24);
        v101 = *(v238 + 24);
LABEL_229:
        if (v100 >= v101)
        {
          goto LABEL_232;
        }

        v98 = &v238;
        v99 = v237;
      }

      else
      {
        v98 = &v238;
        if (v103 >= v102)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
          if (*(*v235 + 24) >= *(*v237 + 24))
          {
            goto LABEL_232;
          }

          v98 = v237;
        }

        v99 = v235;
      }

LABEL_231:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v98, v99);
      goto LABEL_232;
    }

    if (v9 == 4)
    {
      v231 = v6 - 11;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(v7, (v7 + 88), v7 + 176, (v6 - 11));
      goto LABEL_232;
    }

    if (v9 == 5)
    {
      break;
    }

LABEL_9:
    if (v8 <= 2111)
    {
      v104 = (v7 + 88);
      v106 = v7 == v6 || v104 == v6;
      if (a4)
      {
        if (!v106)
        {
          v107 = 0;
          v108 = v7;
          do
          {
            v109 = v104;
            if (*(v108 + 112) < *(v108 + 24))
            {
              v110 = *v104;
              *&v239 = v104[2];
              v238 = v110;
              v111 = v104[3];
              v112 = *(v108 + 120);
              *v235 = *(v108 + 128);
              *&v235[7] = *(v108 + 135);
              v113 = *(v108 + 143);
              *(v108 + 120) = 0;
              *(v108 + 128) = 0;
              *(v108 + 136) = 0;
              v114 = *(v108 + 144);
              v227 = *(v108 + 152);
              v115 = *(v108 + 153);
              *&v237[14] = *(v108 + 167);
              v222 = *(v108 + 175);
              *(v108 + 152) = 0;
              *(v108 + 160) = 0;
              *(v108 + 168) = 0;
              v116 = v107;
              *v237 = v115;
              while (1)
              {
                v117 = v116;
                v118 = v7 + v116;
                v119 = *(v7 + v116 + 16);
                *(v118 + 88) = *(v7 + v116);
                *(v118 + 104) = v119;
                if (*(v7 + v116 + 143) < 0)
                {
                  operator delete(*(v118 + 120));
                }

                *(v118 + 120) = *(v118 + 32);
                v120 = *(v118 + 48);
                v121 = *(v118 + 56);
                *(v118 + 55) = 0;
                *(v118 + 32) = 0;
                *(v118 + 136) = v120;
                *(v118 + 144) = v121;
                if (*(v118 + 175) < 0)
                {
                  operator delete(*(v118 + 152));
                }

                v122 = v7 + v117;
                *(v118 + 152) = *(v7 + v117 + 64);
                *(v118 + 168) = *(v7 + v117 + 80);
                *(v122 + 87) = 0;
                *(v122 + 64) = 0;
                if (!v117)
                {
                  break;
                }

                v116 = v117 - 88;
                if (v111 >= *(v122 - 64))
                {
                  v123 = v7 + v117;
                  goto LABEL_154;
                }
              }

              v123 = v7;
LABEL_154:
              v124 = v238;
              *(v123 + 16) = v239;
              *v123 = v124;
              *(v123 + 24) = v111;
              if (*(v123 + 55) < 0)
              {
                operator delete(*(v122 + 32));
              }

              *(v122 + 32) = v112;
              v125 = v7 + v117;
              v126 = *v235;
              *(v125 + 47) = *&v235[7];
              *(v125 + 40) = v126;
              *(v122 + 55) = v113;
              *(v123 + 56) = v114;
              if (*(v123 + 87) < 0)
              {
                operator delete(*(v122 + 64));
              }

              *(v122 + 64) = v227;
              v127 = *v237;
              *(v125 + 79) = *&v237[14];
              *(v125 + 65) = v127;
              *(v122 + 87) = v222;
            }

            v104 = v109 + 11;
            v107 += 88;
            v108 = v109;
          }

          while (v109 + 11 != v6);
        }
      }

      else if (!v106)
      {
        v195 = (v7 + 175);
        do
        {
          v196 = v104;
          if (*(v7 + 112) < *(v7 + 24))
          {
            v197 = *v104;
            *&v239 = v104[2];
            v238 = v197;
            v198 = v104[3];
            v199 = *(v7 + 120);
            *v235 = *(v7 + 128);
            *&v235[7] = *(v7 + 135);
            v200 = *(v7 + 143);
            *(v7 + 120) = 0;
            *(v7 + 128) = 0;
            *(v7 + 136) = 0;
            v201 = *(v7 + 144);
            v202 = *(v7 + 152);
            v203 = *(v7 + 153);
            *&v237[14] = *(v7 + 167);
            v204 = *(v7 + 175);
            *(v7 + 152) = 0;
            *(v7 + 160) = 0;
            *(v7 + 168) = 0;
            v205 = v195;
            *v237 = v203;
            do
            {
              *(v205 - 87) = *(v205 - 175);
              *(v205 - 71) = *(v205 - 159);
              v206 = (v205 - 55);
              if (*(v205 - 32) < 0)
              {
                operator delete(*v206);
              }

              *v206 = *(v205 - 143);
              *(v205 - 39) = *(v205 - 127);
              *(v205 - 120) = 0;
              *(v205 - 143) = 0;
              *(v205 - 31) = *(v205 - 119);
              v207 = v205 - 23;
              if (*v205 < 0)
              {
                operator delete(*v207);
              }

              v208 = *(v205 - 95);
              *(v205 - 88) = 0;
              v205 -= 88;
              *(v207 + 2) = v208;
              *v207 = *(v205 - 23);
              *(v205 - 23) = 0;
            }

            while (v198 < *(v205 - 151));
            v209 = v238;
            *(v205 - 71) = v239;
            *(v205 - 87) = v209;
            *(v205 - 63) = v198;
            if (*(v205 - 32) < 0)
            {
              operator delete(*(v205 - 55));
              v211 = *v205;
              *(v205 - 55) = v199;
              v212 = *&v235[7];
              *(v205 - 47) = *v235;
              *(v205 - 5) = v212;
              *(v205 - 32) = v200;
              *(v205 - 31) = v201;
              if (v211 < 0)
              {
                operator delete(*(v205 - 23));
              }
            }

            else
            {
              *(v205 - 55) = v199;
              v210 = *v235;
              *(v205 - 5) = *&v235[7];
              *(v205 - 47) = v210;
              *(v205 - 32) = v200;
              *(v205 - 31) = v201;
            }

            *(v205 - 23) = v202;
            v213 = *v237;
            *(v205 - 1) = *&v237[14];
            *(v205 - 22) = v213;
            *v205 = v204;
          }

          v104 = (v196 + 88);
          v195 += 88;
          v7 = v196;
        }

        while ((v196 + 88) != v6);
      }

      goto LABEL_232;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v128 = v10 >> 1;
        v129 = v10 >> 1;
        do
        {
          v130 = v129;
          if (v128 >= v129)
          {
            v131 = (2 * v129) | 1;
            v132 = v7 + 88 * v131;
            if (2 * v130 + 2 < v9 && *(v132 + 24) < *(v132 + 112))
            {
              v132 += 88;
              v131 = 2 * v130 + 2;
            }

            v133 = v7 + 88 * v130;
            v134 = *(v133 + 24);
            if (*(v132 + 24) >= v134)
            {
              v135 = *v133;
              *&v239 = *(v133 + 16);
              v238 = v135;
              v136 = *(v133 + 40);
              v216 = *(v133 + 32);
              *&v235[7] = *(v133 + 47);
              *v235 = v136;
              v137 = *(v133 + 55);
              *(v133 + 32) = 0;
              *(v133 + 40) = 0;
              *(v133 + 48) = 0;
              v214 = *(v133 + 56);
              v228 = *(v133 + 64);
              v138 = *(v133 + 79);
              *v237 = *(v133 + 65);
              *&v237[14] = v138;
              v218 = v137;
              v223 = *(v133 + 87);
              *(v133 + 64) = 0;
              *(v133 + 72) = 0;
              *(v133 + 80) = 0;
              do
              {
                v139 = v132;
                v140 = *(v132 + 16);
                *v133 = *v132;
                *(v133 + 16) = v140;
                if (*(v133 + 55) < 0)
                {
                  operator delete(*(v133 + 32));
                }

                v141 = *(v139 + 32);
                *(v133 + 48) = *(v139 + 48);
                *(v133 + 32) = v141;
                *(v139 + 55) = 0;
                *(v139 + 32) = 0;
                *(v133 + 56) = *(v139 + 56);
                if (*(v133 + 87) < 0)
                {
                  operator delete(*(v133 + 64));
                }

                v142 = *(v139 + 64);
                *(v133 + 80) = *(v139 + 80);
                *(v133 + 64) = v142;
                *(v139 + 87) = 0;
                *(v139 + 64) = 0;
                if (v128 < v131)
                {
                  break;
                }

                v143 = 2 * v131;
                v131 = (2 * v131) | 1;
                v132 = v7 + 88 * v131;
                v144 = v143 + 2;
                if (v144 < v9 && *(v132 + 24) < *(v132 + 112))
                {
                  v132 += 88;
                  v131 = v144;
                }

                v133 = v139;
              }

              while (*(v132 + 24) >= v134);
              v145 = v238;
              *(v139 + 16) = v239;
              *v139 = v145;
              *(v139 + 24) = v134;
              if (*(v139 + 55) < 0)
              {
                operator delete(*(v139 + 32));
                v149 = *(v139 + 87);
                v150 = *v235;
                *(v139 + 32) = v216;
                *(v139 + 40) = v150;
                *(v139 + 47) = *&v235[7];
                v147 = v223;
                *(v139 + 55) = v218;
                *(v139 + 56) = v214;
                v148 = v228;
                if (v149 < 0)
                {
                  operator delete(*(v139 + 64));
                }
              }

              else
              {
                v146 = *v235;
                *(v139 + 32) = v216;
                *(v139 + 40) = v146;
                *(v139 + 47) = *&v235[7];
                v147 = v223;
                *(v139 + 55) = v218;
                *(v139 + 56) = v214;
                v148 = v228;
              }

              *(v139 + 64) = v148;
              *(v139 + 65) = *v237;
              *(v139 + 79) = *&v237[14];
              *(v139 + 87) = v147;
            }
          }

          v129 = v130 - 1;
        }

        while (v130);
        v151 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
        do
        {
          v152 = 0;
          v153 = v6;
          v154 = *(v7 + 16);
          v238 = *v7;
          v239 = v154;
          v155 = *(v7 + 32);
          *v234 = *(v7 + 40);
          *&v234[7] = *(v7 + 47);
          v219 = *(v7 + 55);
          *(v7 + 40) = 0;
          *(v7 + 48) = 0;
          *(v7 + 32) = 0;
          v156 = *(v7 + 56);
          v224 = *(v7 + 64);
          v157 = *(v7 + 72);
          *&v233[7] = *(v7 + 79);
          *v233 = v157;
          v229 = *(v7 + 87);
          *(v7 + 64) = 0;
          *(v7 + 72) = 0;
          v158 = v7;
          *(v7 + 80) = 0;
          do
          {
            v159 = v158 + 88 * v152;
            v160 = v159 + 88;
            if (2 * v152 + 2 >= v151)
            {
              v152 = (2 * v152) | 1;
            }

            else
            {
              v161 = *(v159 + 112);
              v162 = *(v159 + 200);
              v163 = v159 + 176;
              if (v161 >= v162)
              {
                v152 = (2 * v152) | 1;
              }

              else
              {
                v160 = v163;
                v152 = 2 * v152 + 2;
              }
            }

            v164 = *(v160 + 16);
            *v158 = *v160;
            *(v158 + 16) = v164;
            if (*(v158 + 55) < 0)
            {
              operator delete(*(v158 + 32));
            }

            v165 = *(v160 + 32);
            *(v158 + 48) = *(v160 + 48);
            *(v158 + 32) = v165;
            *(v160 + 55) = 0;
            *(v160 + 32) = 0;
            *(v158 + 56) = *(v160 + 56);
            if (*(v158 + 87) < 0)
            {
              operator delete(*(v158 + 64));
            }

            v166 = *(v160 + 64);
            *(v158 + 80) = *(v160 + 80);
            *(v158 + 64) = v166;
            *(v160 + 87) = 0;
            *(v160 + 64) = 0;
            v158 = v160;
          }

          while (v152 <= ((v151 - 2) >> 1));
          v6 -= 11;
          if (v160 == v153 - 11)
          {
            v170 = v239;
            *v160 = v238;
            *(v160 + 16) = v170;
            if (*(v160 + 55) < 0)
            {
              operator delete(*(v160 + 32));
              v188 = *(v160 + 87);
              v189 = *v234;
              *(v160 + 32) = v155;
              *(v160 + 40) = v189;
              *(v160 + 47) = *&v234[7];
              *(v160 + 55) = v219;
              *(v160 + 56) = v156;
              if (v188 < 0)
              {
                operator delete(*(v160 + 64));
              }
            }

            else
            {
              v171 = *v234;
              *(v160 + 32) = v155;
              *(v160 + 40) = v171;
              *(v160 + 47) = *&v234[7];
              *(v160 + 55) = v219;
              *(v160 + 56) = v156;
            }

            v190 = *v233;
            *(v160 + 64) = v224;
            *(v160 + 72) = v190;
            *(v160 + 79) = *&v233[7];
            *(v160 + 87) = v229;
          }

          else
          {
            v167 = *(v153 - 9);
            *v160 = *v6;
            *(v160 + 16) = v167;
            if (*(v160 + 55) < 0)
            {
              operator delete(*(v160 + 32));
            }

            v168 = *(v153 - 7);
            *(v160 + 48) = *(v153 - 5);
            *(v160 + 32) = v168;
            *(v153 - 33) = 0;
            *(v153 - 56) = 0;
            *(v160 + 56) = *(v153 - 4);
            if (*(v160 + 87) < 0)
            {
              operator delete(*(v160 + 64));
            }

            v169 = *(v153 - 3);
            *(v160 + 80) = *(v153 - 1);
            *(v160 + 64) = v169;
            *(v153 - 1) = 0;
            *(v153 - 24) = 0;
            *v6 = v238;
            *(v153 - 9) = v239;
            if (*(v153 - 33) < 0)
            {
              operator delete(*(v153 - 7));
              v172 = *(v153 - 1);
              *(v153 - 7) = v155;
              *(v153 - 6) = *v234;
              *(v153 - 41) = *&v234[7];
              *(v153 - 33) = v219;
              *(v153 - 4) = v156;
              if (v172 < 0)
              {
                operator delete(*(v153 - 3));
              }
            }

            else
            {
              *(v153 - 7) = v155;
              *(v153 - 6) = *v234;
              *(v153 - 41) = *&v234[7];
              *(v153 - 33) = v219;
              *(v153 - 4) = v156;
            }

            v173 = *v233;
            *(v153 - 3) = v224;
            *(v153 - 2) = v173;
            *(v153 - 9) = *&v233[7];
            *(v153 - 1) = v229;
            v174 = v160 + 88 - v7;
            if (v174 >= 89)
            {
              v175 = (0x2E8BA2E8BA2E8BA3 * (v174 >> 3) - 2) >> 1;
              v176 = v7 + 88 * v175;
              v177 = *(v160 + 24);
              if (*(v176 + 24) < v177)
              {
                v178 = *v160;
                *&v237[16] = *(v160 + 16);
                *v237 = v178;
                v179 = *(v160 + 32);
                *v236 = *(v160 + 40);
                *&v236[7] = *(v160 + 47);
                v180 = *(v160 + 55);
                *(v160 + 40) = 0;
                *(v160 + 48) = 0;
                *(v160 + 32) = 0;
                v181 = *(v160 + 56);
                v230 = *(v160 + 64);
                *&v235[14] = *(v160 + 79);
                *v235 = *(v160 + 65);
                v225 = *(v160 + 87);
                *(v160 + 64) = 0;
                *(v160 + 72) = 0;
                *(v160 + 80) = 0;
                do
                {
                  v182 = v176;
                  v183 = *(v176 + 16);
                  *v160 = *v176;
                  *(v160 + 16) = v183;
                  if (*(v160 + 55) < 0)
                  {
                    operator delete(*(v160 + 32));
                  }

                  v184 = *(v182 + 32);
                  *(v160 + 48) = *(v182 + 48);
                  *(v160 + 32) = v184;
                  *(v182 + 55) = 0;
                  *(v182 + 32) = 0;
                  *(v160 + 56) = *(v182 + 56);
                  if (*(v160 + 87) < 0)
                  {
                    operator delete(*(v160 + 64));
                  }

                  v185 = *(v182 + 64);
                  *(v160 + 80) = *(v182 + 80);
                  *(v160 + 64) = v185;
                  *(v182 + 87) = 0;
                  *(v182 + 64) = 0;
                  if (!v175)
                  {
                    break;
                  }

                  v175 = (v175 - 1) >> 1;
                  v176 = v7 + 88 * v175;
                  v160 = v182;
                }

                while (*(v176 + 24) < v177);
                v186 = *v237;
                *(v182 + 16) = *&v237[16];
                *v182 = v186;
                *(v182 + 24) = v177;
                if (*(v182 + 55) < 0)
                {
                  operator delete(*(v182 + 32));
                  v191 = *(v182 + 87);
                  v192 = *v236;
                  *(v182 + 32) = v179;
                  *(v182 + 40) = v192;
                  *(v182 + 47) = *&v236[7];
                  *(v182 + 55) = v180;
                  *(v182 + 56) = v181;
                  if (v191 < 0)
                  {
                    operator delete(*(v182 + 64));
                  }
                }

                else
                {
                  v187 = *v236;
                  *(v182 + 32) = v179;
                  *(v182 + 40) = v187;
                  *(v182 + 47) = *&v236[7];
                  *(v182 + 55) = v180;
                  *(v182 + 56) = v181;
                }

                *(v182 + 64) = v230;
                *(v182 + 65) = *v235;
                *(v182 + 79) = *&v235[14];
                *(v182 + 87) = v225;
              }
            }
          }
        }

        while (v151-- > 2);
      }

      goto LABEL_232;
    }

    v11 = v9 >> 1;
    v12 = v7 + 88 * (v9 >> 1);
    if (v8 >= 0x2C01)
    {
      *&v238 = v7;
      *v237 = v12;
      *v235 = v6 - 11;
      v13 = *(v12 + 24);
      v14 = *(v6 - 8);
      if (v13 >= *(v7 + 24))
      {
        if (v14 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235), *(*v237 + 24) >= *(v238 + 24)))
        {
LABEL_26:
          v21 = v7 + 88 * v11;
          v22 = v21 - 88;
          *&v238 = v7 + 88;
          *v237 = v21 - 88;
          *v235 = v6 - 22;
          v23 = *(v21 - 64);
          v24 = *(v6 - 19);
          if (v23 >= *(v7 + 112))
          {
            if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235), *(*v237 + 24) >= *(v238 + 24)))
            {
LABEL_39:
              v27 = v7 + 88 * v11;
              v28 = v27 + 88;
              *&v238 = v7 + 176;
              *v237 = v27 + 88;
              *v235 = v6 - 33;
              v29 = *(v27 + 112);
              v30 = *(v6 - 30);
              if (v29 >= *(v7 + 200))
              {
                if (v30 >= v29 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235), *(*v237 + 24) >= *(v238 + 24)))
                {
LABEL_48:
                  *&v238 = v22;
                  *v237 = v12;
                  *v235 = v28;
                  v33 = *(v12 + 24);
                  v34 = *(v28 + 24);
                  if (v33 >= *(v22 + 24))
                  {
                    if (v34 >= v33)
                    {
                      goto LABEL_57;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235);
                    if (*(*v237 + 24) >= *(v238 + 24))
                    {
                      goto LABEL_57;
                    }

                    v35 = &v238;
                    v36 = v237;
                  }

                  else
                  {
                    v35 = &v238;
                    if (v34 >= v33)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
                      if (*(*v235 + 24) >= *(*v237 + 24))
                      {
LABEL_57:
                        v37 = *(v7 + 16);
                        v238 = *v7;
                        v239 = v37;
                        v38 = *(v7 + 32);
                        *v237 = *(v7 + 40);
                        *&v237[7] = *(v7 + 47);
                        v39 = *(v7 + 55);
                        *(v7 + 40) = 0;
                        *(v7 + 48) = 0;
                        *(v7 + 32) = 0;
                        v40 = *(v7 + 56);
                        v41 = *(v7 + 64);
                        v42 = *(v7 + 72);
                        *&v235[7] = *(v7 + 79);
                        *v235 = v42;
                        LOBYTE(v42) = *(v7 + 87);
                        *(v7 + 64) = 0;
                        *(v7 + 72) = 0;
                        *(v7 + 80) = 0;
                        v43 = *(v12 + 16);
                        *v7 = *v12;
                        *(v7 + 16) = v43;
                        v44 = *(v12 + 48);
                        v45 = *(v12 + 56);
                        *(v7 + 32) = *(v12 + 32);
                        *(v7 + 48) = v44;
                        *(v7 + 56) = v45;
                        *(v12 + 55) = 0;
                        *(v12 + 32) = 0;
                        v46 = *(v12 + 64);
                        *(v7 + 80) = *(v12 + 80);
                        *(v7 + 64) = v46;
                        *(v12 + 87) = 0;
                        *(v12 + 64) = 0;
                        v47 = v239;
                        *v12 = v238;
                        *(v12 + 16) = v47;
                        *(v12 + 32) = v38;
                        v48 = *v237;
                        *(v12 + 47) = *&v237[7];
                        *(v12 + 40) = v48;
                        *(v12 + 55) = v39;
                        *(v12 + 56) = v40;
                        *(v12 + 64) = v41;
                        v49 = *&v235[7];
                        *(v12 + 72) = *v235;
                        *(v12 + 79) = v49;
                        *(v12 + 87) = v42;
                        goto LABEL_58;
                      }

                      v35 = v237;
                    }

                    v36 = v235;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v35, v36);
                  goto LABEL_57;
                }

                v31 = &v238;
                v32 = v237;
              }

              else
              {
                v31 = &v238;
                if (v30 >= v29)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
                  if (*(*v235 + 24) >= *(*v237 + 24))
                  {
                    goto LABEL_48;
                  }

                  v31 = v237;
                }

                v32 = v235;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v31, v32);
              goto LABEL_48;
            }

            v25 = &v238;
            v26 = v237;
          }

          else
          {
            v25 = &v238;
            if (v24 >= v23)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
              if (*(*v235 + 24) >= *(*v237 + 24))
              {
                goto LABEL_39;
              }

              v25 = v237;
            }

            v26 = v235;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v25, v26);
          goto LABEL_39;
        }

        v15 = &v238;
        v16 = v237;
      }

      else
      {
        v15 = &v238;
        if (v14 >= v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
          if (*(*v235 + 24) >= *(*v237 + 24))
          {
            goto LABEL_26;
          }

          v15 = v237;
        }

        v16 = v235;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v15, v16);
      goto LABEL_26;
    }

    *&v238 = v12;
    *v237 = v7;
    *v235 = v6 - 11;
    v17 = *(v7 + 24);
    v18 = *(v6 - 8);
    if (v17 < *(v12 + 24))
    {
      v19 = &v238;
      if (v18 >= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v238, v237);
        if (*(*v235 + 24) >= *(*v237 + 24))
        {
          goto LABEL_58;
        }

        v19 = v237;
      }

      v20 = v235;
      goto LABEL_34;
    }

    if (v18 < v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235);
      if (*(*v237 + 24) < *(v238 + 24))
      {
        v19 = &v238;
        v20 = v237;
LABEL_34:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v19, v20);
      }
    }

LABEL_58:
    v226 = a3 - 1;
    if (a4)
    {
      v220 = a4;
      v50 = *(v7 + 24);
    }

    else
    {
      v50 = *(v7 + 24);
      if (*(v7 - 64) >= v50)
      {
        *v234 = v6;
        v63 = *v7;
        *&v239 = *(v7 + 16);
        v238 = v63;
        v65 = (v7 + 32);
        v64 = *(v7 + 32);
        *v235 = *(v7 + 40);
        *&v235[7] = *(v7 + 47);
        v66 = *(v7 + 55);
        *(v7 + 32) = 0;
        v67 = (v7 + 64);
        v221 = *(v7 + 64);
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *&v237[14] = *(v7 + 79);
        *v237 = *(v7 + 65);
        v68 = *(v7 + 87);
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        v69 = *(v7 + 56);
        if (v50 >= *(v6 - 8))
        {
          v85 = v7 + 88;
          do
          {
            v71 = v85;
            if (v85 >= v6)
            {
              break;
            }

            v86 = *(v85 + 24);
            v85 += 88;
          }

          while (v50 >= v86);
        }

        else
        {
          v70 = v7;
          do
          {
            v71 = v70 + 88;
            v72 = *(v70 + 112);
            v70 += 88;
          }

          while (v50 >= v72);
        }

        *v236 = v71;
        if (v71 < v6)
        {
          do
          {
            v87 = *(v6 - 8);
            v6 -= 11;
          }

          while (v50 < v87);
          *v234 = v6;
        }

        if (v71 < v6)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
            v71 = *v236;
            do
            {
              v88 = *(v71 + 112);
              v71 += 88;
            }

            while (v50 >= v88);
            *v236 = v71;
            v89 = *v234;
            do
            {
              v90 = *(v89 - 64);
              v89 -= 88;
            }

            while (v50 < v90);
            *v234 = v89;
          }

          while (v71 < v89);
        }

        v91 = (v71 - 88);
        if (v71 - 88 != v7)
        {
          v92 = *(v71 - 72);
          *v7 = *v91;
          *(v7 + 16) = v92;
          if (*(v7 + 55) < 0)
          {
            operator delete(*v65);
          }

          v93 = *(v71 - 56);
          *(v7 + 48) = *(v71 - 40);
          *v65 = v93;
          *(v71 - 33) = 0;
          *(v71 - 56) = 0;
          *(v7 + 56) = *(v71 - 32);
          if (*(v7 + 87) < 0)
          {
            operator delete(*v67);
          }

          v94 = *(v71 - 24);
          *(v7 + 80) = *(v71 - 8);
          *v67 = v94;
          *(v71 - 1) = 0;
          *(v71 - 24) = 0;
        }

        v95 = v238;
        *(v71 - 72) = v239;
        *v91 = v95;
        *(v71 - 64) = v50;
        if (*(v71 - 33) < 0)
        {
          operator delete(*(v71 - 56));
        }

        *(v71 - 56) = v64;
        v96 = *v235;
        *(v71 - 41) = *&v235[7];
        *(v71 - 48) = v96;
        *(v71 - 33) = v66;
        *(v71 - 32) = v69;
        if (*(v71 - 1) < 0)
        {
          operator delete(*(v71 - 24));
        }

        a4 = 0;
        *(v71 - 24) = v221;
        v97 = *v237;
        *(v71 - 9) = *&v237[14];
        *(v71 - 23) = v97;
        *(v71 - 1) = v68;
        v73 = *v236;
        v232 = *v236;
        a3 = v226;
        goto LABEL_122;
      }

      v220 = a4;
    }

    v51 = 0;
    v52 = *v7;
    *&v239 = *(v7 + 16);
    v238 = v52;
    v53 = (v7 + 32);
    v215 = *(v7 + 32);
    *v235 = *(v7 + 40);
    *&v235[7] = *(v7 + 47);
    v54 = *(v7 + 55);
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    v55 = *(v7 + 56);
    v56 = (v7 + 64);
    v217 = *(v7 + 64);
    *&v237[14] = *(v7 + 79);
    *v237 = *(v7 + 65);
    v57 = *(v7 + 87);
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    do
    {
      v58 = *(v7 + v51 + 112);
      v51 += 88;
    }

    while (v58 < v50);
    v59 = v7 + v51;
    *v236 = v7 + v51;
    if (v51 == 88)
    {
      while (v59 < v6)
      {
        v60 = v6 - 11;
        v62 = *(v6 - 8);
        v6 -= 11;
        if (v62 < v50)
        {
          goto LABEL_75;
        }
      }

      v60 = v6;
    }

    else
    {
      do
      {
        v60 = v6 - 11;
        v61 = *(v6 - 8);
        v6 -= 11;
      }

      while (v61 >= v50);
    }

LABEL_75:
    *v234 = v60;
    v73 = v7 + v51;
    if (v59 < v60)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
        v73 = *v236;
        do
        {
          v74 = *(v73 + 112);
          v73 += 88;
        }

        while (v74 < v50);
        *v236 = v73;
        v75 = *v234;
        do
        {
          v76 = *(v75 - 64);
          v75 -= 88;
        }

        while (v76 >= v50);
        *v234 = v75;
      }

      while (v73 < v75);
    }

    v77 = (v73 - 88);
    if (v73 - 88 != v7)
    {
      v78 = *(v73 - 72);
      *v7 = *v77;
      *(v7 + 16) = v78;
      if (*(v7 + 55) < 0)
      {
        operator delete(*v53);
      }

      v79 = *(v73 - 56);
      *(v7 + 48) = *(v73 - 40);
      *v53 = v79;
      *(v73 - 33) = 0;
      *(v73 - 56) = 0;
      *(v7 + 56) = *(v73 - 32);
      if (*(v7 + 87) < 0)
      {
        operator delete(*v56);
      }

      v80 = *(v73 - 24);
      *(v7 + 80) = *(v73 - 8);
      *v56 = v80;
      *(v73 - 1) = 0;
      *(v73 - 24) = 0;
    }

    v81 = v238;
    *(v73 - 72) = v239;
    *v77 = v81;
    *(v73 - 64) = v50;
    if (*(v73 - 33) < 0)
    {
      operator delete(*(v73 - 56));
    }

    *(v73 - 56) = v215;
    v82 = *v235;
    *(v73 - 41) = *&v235[7];
    *(v73 - 48) = v82;
    *(v73 - 33) = v54;
    *(v73 - 32) = v55;
    a3 = v226;
    if (*(v73 - 1) < 0)
    {
      operator delete(*(v73 - 24));
    }

    a4 = v220;
    *(v73 - 24) = v217;
    v83 = *v237;
    *(v73 - 9) = *&v237[14];
    *(v73 - 23) = v83;
    *(v73 - 1) = v57;
    if (v59 < v60)
    {
      goto LABEL_92;
    }

    v84 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *>(v232, v73 - 88);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *>(v73, v231))
    {
      if (!v84)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,false>(v232, v73 - 88, v226, v220 & 1);
        a4 = 0;
      }

      v232 = v73;
      goto LABEL_122;
    }

    if (v84)
    {
      goto LABEL_232;
    }

    v231 = (v73 - 88);
    v73 = v232;
LABEL_122:
    v6 = v231;
    v7 = v73;
  }

  v231 = v6 - 11;
  *&v238 = v7;
  *v237 = v7 + 88;
  *v235 = v7 + 176;
  *v236 = v7 + 264;
  *v234 = v6 - 11;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(v7, (v7 + 88), v7 + 176, v7 + 264);
  if (*(v6 - 8) < *(v7 + 288))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
    if (*(*v236 + 24) < *(v7 + 200))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v235, v236);
      if (*(*v235 + 24) < *(v7 + 112))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v237, v235);
        v100 = *(*v237 + 24);
        v101 = *(v7 + 24);
        goto LABEL_229;
      }
    }
  }

LABEL_232:
  v194 = *MEMORY[0x277D85DE8];
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
  v4 = [ULServiceMO createFromDO:a2 inManagedObjectContext:v3];

  return v4;
}

@end