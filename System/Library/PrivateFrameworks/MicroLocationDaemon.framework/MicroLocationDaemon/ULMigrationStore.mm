@interface ULMigrationStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (vector<ULMigrationDO,)fetchMigrationEntriesWithStates:(ULMigrationStore *)self limit:(SEL)limit;
@end

@implementation ULMigrationStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMigrationTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71A60 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A56718;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULMigrationDO,ULMigrationMO>(self, objects, v7);
  std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULMigrationDO,)fetchMigrationEntriesWithStates:(ULMigrationStore *)self limit:(SEL)limit
{
  v22[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v12 = *a4;
  v13 = *(a4 + 1);
  if (*a4 != v13)
  {
    do
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:*v12];
      [array2 addObject:v14];

      ++v12;
    }

    while (v12 != v13);
  }

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"state", array2];
  [array addObject:v15];

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [(ULMigrationStore *)self _fetchMigrationsByAndPredicates:array sortDescriptors:v17 andLimit:a5];
  *&retstr->var0 = v20;
  retstr->var2 = v21;

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
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
  v4 = [ULMigrationMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end