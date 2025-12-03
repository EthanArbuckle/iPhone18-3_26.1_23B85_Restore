@interface HDMCSymptomHistoryBuilder
- (HDMCSymptomHistoryBuilder)initWithCurrentDayIndex:(int64_t)index;
- (unint64_t)recentSymptoms;
- (void)addSymptoms:(unint64_t)symptoms forDayIndex:(int64_t)index;
@end

@implementation HDMCSymptomHistoryBuilder

- (HDMCSymptomHistoryBuilder)initWithCurrentDayIndex:(int64_t)index
{
  v7.receiver = self;
  v7.super_class = HDMCSymptomHistoryBuilder;
  v3 = [(HDMCSymptomHistoryBuilder *)&v7 init];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mostRecentDayBySymptom = v3->_mostRecentDayBySymptom;
    v3->_mostRecentDayBySymptom = dictionary;
  }

  return v3;
}

- (void)addSymptoms:(unint64_t)symptoms forDayIndex:(int64_t)index
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = HKMCDaySummarySymptomArrayFromSymptoms();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_mostRecentDayBySymptom objectForKeyedSubscript:v11];
        v13 = v12;
        if (!v12 || [v12 integerValue] < index)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:index];
          [(NSMutableDictionary *)self->_mostRecentDayBySymptom setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)recentSymptoms
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableDictionary *)self->_mostRecentDayBySymptom keysSortedByValueUsingSelector:sel_compare_];
  reverseObjectEnumerator = [v2 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v5 = [allObjects count];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [allObjects subarrayWithRange:{0, v6}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 |= [*(*(&v16 + 1) + 8 * i) integerValue];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

@end