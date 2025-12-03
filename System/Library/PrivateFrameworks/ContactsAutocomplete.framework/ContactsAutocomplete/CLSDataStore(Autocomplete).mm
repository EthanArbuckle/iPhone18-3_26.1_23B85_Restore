@interface CLSDataStore(Autocomplete)
- (id)_cna_membersOfGroupWithIdentifier:()Autocomplete;
- (id)_cna_objectsMatching:()Autocomplete;
@end

@implementation CLSDataStore(Autocomplete)

- (id)_cna_membersOfGroupWithIdentifier:()Autocomplete
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  completionHandlerAdapter = [v6 completionHandlerAdapter];
  [self membersOfGroupWithIdentifier:v5 completion:completionHandlerAdapter];

  future = [v6 future];
  v13 = 0;
  v9 = [future result:&v13];
  v10 = v13;

  v11 = [MEMORY[0x277CFBEA0] resultWithValue:v9 orError:v10];

  return v11;
}

- (id)_cna_objectsMatching:()Autocomplete
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  completionHandlerAdapter = [v6 completionHandlerAdapter];
  [self objectsMatching:v5 completion:completionHandlerAdapter];

  future = [v6 future];

  return future;
}

@end