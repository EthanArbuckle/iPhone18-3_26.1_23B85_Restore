@interface NSDictionary(CRKAdditions)
- (id)crk_dictionaryByAddingEntriesFromDictionary:()CRKAdditions;
- (id)crk_keyValueObservingNewObject;
- (id)crk_keyValueObservingOldObject;
@end

@implementation NSDictionary(CRKAdditions)

- (id)crk_keyValueObservingOldObject
{
  v2 = *MEMORY[0x277CCA300];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 objectForKeyedSubscript:v2];
  }

  return v4;
}

- (id)crk_keyValueObservingNewObject
{
  v2 = *MEMORY[0x277CCA2F0];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 objectForKeyedSubscript:v2];
  }

  return v4;
}

- (id)crk_dictionaryByAddingEntriesFromDictionary:()CRKAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

@end