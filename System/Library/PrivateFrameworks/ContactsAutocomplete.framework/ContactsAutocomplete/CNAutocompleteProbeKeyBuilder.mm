@interface CNAutocompleteProbeKeyBuilder
+ (id)builderWithKey:(id)key;
- (CNAutocompleteProbeKeyBuilder)initWithKey:(id)key;
- (id)addBatchIndex:(unint64_t)index;
- (id)addDuetModelID;
- (id)addDuetReturnedResults:(BOOL)results;
- (id)build;
- (id)prediction;
- (id)prefixedSearch;
- (void)useString:(id)string forSuffixAtIndex:(unint64_t)index;
@end

@implementation CNAutocompleteProbeKeyBuilder

+ (id)builderWithKey:(id)key
{
  keyCopy = key;
  v5 = [[self alloc] initWithKey:keyCopy];

  return v5;
}

- (CNAutocompleteProbeKeyBuilder)initWithKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = CNAutocompleteProbeKeyBuilder;
  v6 = [(CNAutocompleteProbeKeyBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
    prefixes = v7->_prefixes;
    v7->_prefixes = MEMORY[0x277CBEBF8];

    suffixes = v7->_suffixes;
    v7->_suffixes = &unk_282793688;
  }

  return v7;
}

- (void)useString:(id)string forSuffixAtIndex:(unint64_t)index
{
  stringCopy = string;
  suffixes = [(CNAutocompleteProbeKeyBuilder *)self suffixes];
  v9 = [suffixes mutableCopy];

  [v9 replaceObjectAtIndex:index withObject:stringCopy];
  v8 = [v9 copy];
  [(CNAutocompleteProbeKeyBuilder *)self setSuffixes:v8];
}

- (id)addDuetReturnedResults:(BOOL)results
{
  v4 = CNAutocompleteProbeKeyUsageMonitorDuetReturnedResults;
  if (!results)
  {
    v4 = CNAutocompleteProbeKeyUsageMonitorNoResultsFromDuet;
  }

  [(CNAutocompleteProbeKeyBuilder *)self useString:*v4 forSuffixAtIndex:1];
  return self;
}

- (id)addBatchIndex:(unint64_t)index
{
  v4 = CNAutocompleteProbeBatchKey(index);
  [(CNAutocompleteProbeKeyBuilder *)self useString:v4 forSuffixAtIndex:0];

  return self;
}

- (id)prediction
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"prediction";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  prefixes = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayByAddingObjectsFromArray:prefixes];
  [(CNAutocompleteProbeKeyBuilder *)self setPrefixes:v5];

  v6 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)prefixedSearch
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"prefixed";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  prefixes = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayByAddingObjectsFromArray:prefixes];
  [(CNAutocompleteProbeKeyBuilder *)self setPrefixes:v5];

  v6 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)addDuetModelID
{
  v3 = CNAutocompleteProbeDuetModelID();
  [(CNAutocompleteProbeKeyBuilder *)self useString:v3 forSuffixAtIndex:2];

  return self;
}

- (id)build
{
  v3 = MEMORY[0x277CBEB18];
  prefixes = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayWithArray:prefixes];

  v6 = [(CNAutocompleteProbeKeyBuilder *)self key];
  [v5 addObject:v6];

  suffixes = [(CNAutocompleteProbeKeyBuilder *)self suffixes];
  v8 = [suffixes _cn_filter:&__block_literal_global_17];
  [v5 addObjectsFromArray:v8];

  v10 = CNAutocompleteProbeBuildKey(v5, v9);

  return v10;
}

@end