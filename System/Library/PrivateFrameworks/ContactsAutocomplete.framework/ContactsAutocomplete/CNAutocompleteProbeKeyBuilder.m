@interface CNAutocompleteProbeKeyBuilder
+ (id)builderWithKey:(id)a3;
- (CNAutocompleteProbeKeyBuilder)initWithKey:(id)a3;
- (id)addBatchIndex:(unint64_t)a3;
- (id)addDuetModelID;
- (id)addDuetReturnedResults:(BOOL)a3;
- (id)build;
- (id)prediction;
- (id)prefixedSearch;
- (void)useString:(id)a3 forSuffixAtIndex:(unint64_t)a4;
@end

@implementation CNAutocompleteProbeKeyBuilder

+ (id)builderWithKey:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKey:v4];

  return v5;
}

- (CNAutocompleteProbeKeyBuilder)initWithKey:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNAutocompleteProbeKeyBuilder;
  v6 = [(CNAutocompleteProbeKeyBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
    prefixes = v7->_prefixes;
    v7->_prefixes = MEMORY[0x277CBEBF8];

    suffixes = v7->_suffixes;
    v7->_suffixes = &unk_282793688;
  }

  return v7;
}

- (void)useString:(id)a3 forSuffixAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNAutocompleteProbeKeyBuilder *)self suffixes];
  v9 = [v7 mutableCopy];

  [v9 replaceObjectAtIndex:a4 withObject:v6];
  v8 = [v9 copy];
  [(CNAutocompleteProbeKeyBuilder *)self setSuffixes:v8];
}

- (id)addDuetReturnedResults:(BOOL)a3
{
  v4 = CNAutocompleteProbeKeyUsageMonitorDuetReturnedResults;
  if (!a3)
  {
    v4 = CNAutocompleteProbeKeyUsageMonitorNoResultsFromDuet;
  }

  [(CNAutocompleteProbeKeyBuilder *)self useString:*v4 forSuffixAtIndex:1];
  return self;
}

- (id)addBatchIndex:(unint64_t)a3
{
  v4 = CNAutocompleteProbeBatchKey(a3);
  [(CNAutocompleteProbeKeyBuilder *)self useString:v4 forSuffixAtIndex:0];

  return self;
}

- (id)prediction
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"prediction";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  [(CNAutocompleteProbeKeyBuilder *)self setPrefixes:v5];

  v6 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)prefixedSearch
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"prefixed";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
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
  v4 = [(CNAutocompleteProbeKeyBuilder *)self prefixes];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNAutocompleteProbeKeyBuilder *)self key];
  [v5 addObject:v6];

  v7 = [(CNAutocompleteProbeKeyBuilder *)self suffixes];
  v8 = [v7 _cn_filter:&__block_literal_global_17];
  [v5 addObjectsFromArray:v8];

  v10 = CNAutocompleteProbeBuildKey(v5, v9);

  return v10;
}

@end