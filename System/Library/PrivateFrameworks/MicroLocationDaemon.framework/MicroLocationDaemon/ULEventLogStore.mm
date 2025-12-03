@interface ULEventLogStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (optional<ULEventLogDO>)fetchMostRecentLoggedEventBeforeTime:(optional<ULEventLogDO> *__return_ptr)retstr;
- (uint64_t)insertDataObjects:;
- (vector<ULEventLogDO,)fetchLoggedEventsFromTime:(ULEventLogStore *)self toTime:(SEL)time limit:(optional<const double>)limit;
@end

@implementation ULEventLogStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLoggedEventsTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A719B8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A561F0;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULEventLogDO,ULEventLogMO>(self, objects, v7);
  std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULEventLogDO,)fetchLoggedEventsFromTime:(ULEventLogStore *)self toTime:(SEL)time limit:(optional<const double>)limit
{
  v6 = a6;
  var1 = a5.var1;
  v8 = a5.var0.var1;
  v9 = limit.var1;
  v10 = limit.var0.var1;
  v34[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (!a6)
  {
    v13 = +[ULDefaultsSingleton shared];
    defaultsDictionary = [v13 defaultsDictionary];

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
    v16 = [defaultsDictionary objectForKey:v15];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedIntValue = [v16 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = [&unk_286A719A0 unsignedIntValue];
    }

    v18 = unsignedIntValue;

    v6 = v18;
  }

  v19 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    v21 = MEMORY[0x277CCAC30];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v23 = [v21 predicateWithFormat:@"%K > %@", @"timestamp", v22];
    [array addObject:v23];
  }

  if (var1)
  {
    v24 = MEMORY[0x277CCAC30];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v26 = [v24 predicateWithFormat:@"%K <= %@", @"timestamp", v25];
    [array addObject:v26];
  }

  v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v34[0] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [(ULEventLogStore *)self _fetchLoggedEventsByAndPredicates:array sortDescriptors:v28 andLimit:v6];
  std::vector<ULEventLogDO>::__vdeallocate(retstr);
  *&retstr->var0 = v31;
  retstr->var2 = v32;
  v32 = 0;
  v31 = 0uLL;
  v33 = &v31;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v33);

  objc_autoreleasePoolPop(v19);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULEventLogDO>)fetchMostRecentLoggedEventBeforeTime:(optional<ULEventLogDO> *__return_ptr)retstr
{
  [v1 fetchLoggedEventsFromTime:0 toTime:0 limit:{v2, 1, 1}];
  v4 = v9[0];
  if (v9[0] == v9[1])
  {
    v7 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    *&retstr->var0.var0 = *v9[0];
    v5 = v4[2];
    v6 = v4[3];
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *(&retstr->var0.var1.var0.var0.var1 + 2) = v5;
    retstr[1].var0.var1.var0.var0.var1.var0 = v6;
    v7 = 1;
  }

  retstr[1].var0.var1.var0.var0.var0.var0[8] = v7;
  v10 = v9;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  return result;
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
  v4 = [ULEventLogMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end