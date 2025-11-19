@interface ULHomeSlamAnalyticEventStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)a3;
- (id)insertDataObjects:;
- (optional<ULHomeSlamAnalyticEventDO>)fetchFirstEvent;
- (optional<ULHomeSlamAnalyticEventDO>)fetchLatestAnalyticEventType:(ULHomeSlamAnalyticEventStore *)self beforeTime:;
- (uint64_t)insertDataObjects:;
- (vector<ULHomeSlamAnalyticEventDO,)fetchAnalyticEventsASCFromTime:(ULHomeSlamAnalyticEventStore *)self toTime:(SEL)a3;
@end

@implementation ULHomeSlamAnalyticEventStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticEventsTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A719D0 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6 = self;
  v7[0] = &unk_286A562D8;
  v7[1] = &v6;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(self, a3, v7);
  std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULHomeSlamAnalyticEventDO,)fetchAnalyticEventsASCFromTime:(ULHomeSlamAnalyticEventStore *)self toTime:(SEL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v12 = [v9 predicateWithFormat:@"%K > %@ && %K <= %@", @"timestamp", v10, @"timestamp", v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(ULHomeSlamAnalyticEventStore *)self _fetchAnalyticEventsByAndPredicates:v8 sortDescriptors:v14 andLimit:+[ULHomeSlamAnalyticEventStore maxEntriesInTable]];

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<ULHomeSlamAnalyticEventDO>)fetchLatestAnalyticEventType:(ULHomeSlamAnalyticEventStore *)self beforeTime:
{
  v4 = v3;
  v5 = v1;
  v7 = v2;
  v26[1] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  std::vector<ULHomeSlamAnalyticEventDO>::reserve(__p, 1uLL);
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = *v5;
  v12 = v5[1];
  if (*v5 != v12)
  {
    do
    {
      v13 = [MEMORY[0x277CCABB0] numberWithShort:*v11];
      [v10 addObject:v13];

      ++v11;
    }

    while (v11 != v12);
  }

  v14 = MEMORY[0x277CCAC30];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v16 = [v14 predicateWithFormat:@"%K <= %@", @"timestamp", v15];
  [v9 addObject:v16];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"event", v10];
  [v9 addObject:v17];

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v26[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [(ULHomeSlamAnalyticEventStore *)self _fetchAnalyticEventsByAndPredicates:v9 sortDescriptors:v19 andLimit:1];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v22;
  v25 = v23;

  objc_autoreleasePoolPop(v8);
  v20 = __p[0];
  if (__p[0] != __p[1])
  {
    *v7 = *__p[0];
    *(v7 + 16) = 1;
LABEL_8:
    __p[1] = v20;
    operator delete(v20);
    goto LABEL_9;
  }

  *v7 = 0;
  *(v7 + 16) = 0;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (optional<ULHomeSlamAnalyticEventDO>)fetchFirstEvent
{
  v3 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  std::vector<ULHomeSlamAnalyticEventDO>::reserve(__p, 1uLL);
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(ULHomeSlamAnalyticEventStore *)self _fetchAnalyticEventsByAndPredicates:v5 sortDescriptors:v7 andLimit:1];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v10;
  v13 = v11;

  objc_autoreleasePoolPop(v4);
  v8 = __p[0];
  if (__p[0] != __p[1])
  {
    *v3 = *__p[0];
    *(v3 + 16) = 1;
LABEL_6:
    __p[1] = v8;
    operator delete(v8);
    goto LABEL_7;
  }

  *v3 = 0;
  *(v3 + 16) = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
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
  v4 = [ULHomeSlamAnalyticEventMO createFromDO:a2 inManagedObjectContext:v3];

  return v4;
}

@end