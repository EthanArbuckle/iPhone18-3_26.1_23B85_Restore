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
  v7 = [v6 completionHandlerAdapter];
  [a1 membersOfGroupWithIdentifier:v5 completion:v7];

  v8 = [v6 future];
  v13 = 0;
  v9 = [v8 result:&v13];
  v10 = v13;

  v11 = [MEMORY[0x277CFBEA0] resultWithValue:v9 orError:v10];

  return v11;
}

- (id)_cna_objectsMatching:()Autocomplete
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 completionHandlerAdapter];
  [a1 objectsMatching:v5 completion:v7];

  v8 = [v6 future];

  return v8;
}

@end