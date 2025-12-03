@interface CNAutocompleteStoreQueryContext
+ (id)cacheBoundaryStrategies;
- (CNAutocompleteStoreQueryContext)init;
@end

@implementation CNAutocompleteStoreQueryContext

- (CNAutocompleteStoreQueryContext)init
{
  v15.receiver = self;
  v15.super_class = CNAutocompleteStoreQueryContext;
  v2 = [(CNAutocompleteStoreQueryContext *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CFBDC0]);
    cacheBoundaryStrategies = [objc_opt_class() cacheBoundaryStrategies];
    atomicCacheScheduler = [MEMORY[0x277CFBDC0] atomicCacheScheduler];
    v6 = [v3 initWithBoundingStrategies:cacheBoundaryStrategies resourceScheduler:atomicCacheScheduler];
    directoryServerReuseCache = v2->_directoryServerReuseCache;
    v2->_directoryServerReuseCache = v6;

    v8 = objc_alloc(MEMORY[0x277CFBDC0]);
    cacheBoundaryStrategies2 = [objc_opt_class() cacheBoundaryStrategies];
    atomicCacheScheduler2 = [MEMORY[0x277CFBDC0] atomicCacheScheduler];
    v11 = [v8 initWithBoundingStrategies:cacheBoundaryStrategies2 resourceScheduler:atomicCacheScheduler2];
    calendarServerReuseCache = v2->_calendarServerReuseCache;
    v2->_calendarServerReuseCache = v11;

    v13 = v2;
  }

  return v2;
}

+ (id)cacheBoundaryStrategies
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFBDC0] boundingStrategyWithTTL:3600.0];
  v7[0] = v2;
  v3 = [MEMORY[0x277CFBDC0] boundingStrategyWithCapacity:100];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end