@interface NMAPISearchGroupRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPISearchGroupRequest

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = NMAPISearchGroupRequest;
  v5 = [(NMAPIURLRequest *)&v24 urlComponentsWithStoreURLBag:bag error:error];
  v6 = v5;
  if (self->_resultsPerSection)
  {
    queryItems = [v5 queryItems];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    v9 = [queryItems filteredArrayUsingPredicate:v8];
    [v6 setQueryItems:v9];

    v10 = MEMORY[0x277CCAD18];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_resultsPerSection];
    stringValue = [v11 stringValue];
    v13 = [v10 queryItemWithName:@"limit" value:stringValue];

    queryItems2 = [v6 queryItems];
    v15 = [queryItems2 arrayByAddingObject:v13];
    [v6 setQueryItems:v15];
  }

  queryItems3 = [v6 queryItems];
  v17 = MEMORY[0x277CCAD18];
  v18 = [&unk_286C7E450 componentsJoinedByString:{@", "}];
  v19 = [v17 queryItemWithName:@"with" value:v18];
  v25[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v21 = [queryItems3 arrayByAddingObjectsFromArray:v20];
  [v6 setQueryItems:v21];

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __62__NMAPISearchGroupRequest_urlComponentsWithStoreURLBag_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"limit"];

  return v3 ^ 1u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NMAPISearchGroupRequest;
  result = [(NMAPIURLRequest *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 17) = self->_resultsPerSection;
  }

  return result;
}

@end