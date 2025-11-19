@interface HDStatisticsCollectionCalculatorCachingSourceOrderProvider
+ (id)sleepSourceOrderProviderForProfile:(id)a3;
- (HDStatisticsCollectionCalculatorCachingSourceOrderProvider)initWithProfile:(id)a3 quantityType:(id)a4;
- (id)orderedSourceIDsWithUnorderedIDs:(id)a3;
- (id)sourceForSourceID:(int64_t)a3;
@end

@implementation HDStatisticsCollectionCalculatorCachingSourceOrderProvider

+ (id)sleepSourceOrderProviderForProfile:(id)a3
{
  v3 = MEMORY[0x277CCD0C0];
  v4 = *MEMORY[0x277CCBAB8];
  v5 = a3;
  v6 = [v3 categoryTypeForIdentifier:v4];
  v7 = [MEMORY[0x277CCDAB0] countUnit];
  v8 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v6 aggregationStyle:1 canonicalUnit:v7];

  v9 = [[HDStatisticsCollectionCalculatorCachingSourceOrderProvider alloc] initWithProfile:v5 quantityType:v8];

  return v9;
}

- (HDStatisticsCollectionCalculatorCachingSourceOrderProvider)initWithProfile:(id)a3 quantityType:(id)a4
{
  v10.receiver = self;
  v10.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
  v4 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v10 initWithProfile:a3 quantityType:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedSources = v4->_cachedSources;
    v4->_cachedSources = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    cachedOrderedSourceIDs = v4->_cachedOrderedSourceIDs;
    v4->_cachedOrderedSourceIDs = v7;
  }

  return v4;
}

- (id)sourceForSourceID:(int64_t)a3
{
  cachedSources = self->_cachedSources;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v7 = [(NSMutableDictionary *)cachedSources objectForKeyedSubscript:v6];

  if (!v7)
  {
    v11.receiver = self;
    v11.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
    v7 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v11 sourceForSourceID:a3];
    v8 = self->_cachedSources;
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)orderedSourceIDsWithUnorderedIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithArray:self->_cachedOrderedSourceIDs];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  if (([v5 isEqualToSet:v6] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
    v7 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v12 orderedSourceIDsWithUnorderedIDs:v4];
    cachedOrderedSourceIDs = self->_cachedOrderedSourceIDs;
    self->_cachedOrderedSourceIDs = v7;
  }

  v9 = self->_cachedOrderedSourceIDs;
  v10 = v9;

  return v9;
}

@end