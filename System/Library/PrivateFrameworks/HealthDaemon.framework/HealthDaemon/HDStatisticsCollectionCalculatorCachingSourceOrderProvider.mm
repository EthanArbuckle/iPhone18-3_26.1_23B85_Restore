@interface HDStatisticsCollectionCalculatorCachingSourceOrderProvider
+ (id)sleepSourceOrderProviderForProfile:(id)profile;
- (HDStatisticsCollectionCalculatorCachingSourceOrderProvider)initWithProfile:(id)profile quantityType:(id)type;
- (id)orderedSourceIDsWithUnorderedIDs:(id)ds;
- (id)sourceForSourceID:(int64_t)d;
@end

@implementation HDStatisticsCollectionCalculatorCachingSourceOrderProvider

+ (id)sleepSourceOrderProviderForProfile:(id)profile
{
  v3 = MEMORY[0x277CCD0C0];
  v4 = *MEMORY[0x277CCBAB8];
  profileCopy = profile;
  v6 = [v3 categoryTypeForIdentifier:v4];
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  v8 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v6 aggregationStyle:1 canonicalUnit:countUnit];

  v9 = [[HDStatisticsCollectionCalculatorCachingSourceOrderProvider alloc] initWithProfile:profileCopy quantityType:v8];

  return v9;
}

- (HDStatisticsCollectionCalculatorCachingSourceOrderProvider)initWithProfile:(id)profile quantityType:(id)type
{
  v10.receiver = self;
  v10.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
  v4 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v10 initWithProfile:profile quantityType:type];
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

- (id)sourceForSourceID:(int64_t)d
{
  cachedSources = self->_cachedSources;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v7 = [(NSMutableDictionary *)cachedSources objectForKeyedSubscript:v6];

  if (!v7)
  {
    v11.receiver = self;
    v11.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
    v7 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v11 sourceForSourceID:d];
    v8 = self->_cachedSources;
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)orderedSourceIDsWithUnorderedIDs:(id)ds
{
  dsCopy = ds;
  v5 = [MEMORY[0x277CBEB98] setWithArray:self->_cachedOrderedSourceIDs];
  v6 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
  if (([v5 isEqualToSet:v6] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HDStatisticsCollectionCalculatorCachingSourceOrderProvider;
    v7 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v12 orderedSourceIDsWithUnorderedIDs:dsCopy];
    cachedOrderedSourceIDs = self->_cachedOrderedSourceIDs;
    self->_cachedOrderedSourceIDs = v7;
  }

  v9 = self->_cachedOrderedSourceIDs;
  v10 = v9;

  return v9;
}

@end