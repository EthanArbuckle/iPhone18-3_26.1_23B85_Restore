@interface NSDictionary(TSUAdditions)
- (uint64_t)tsu_BOOLValueForKey:()TSUAdditions;
- (uint64_t)tsu_allKeysAsSet;
- (uint64_t)tsu_objectOfClass:()TSUAdditions forKey:;
@end

@implementation NSDictionary(TSUAdditions)

- (uint64_t)tsu_BOOLValueForKey:()TSUAdditions
{
  v1 = [self objectForKey:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (uint64_t)tsu_objectOfClass:()TSUAdditions forKey:
{
  result = [self objectForKey:a4];
  if (result)
  {

    return TSUDynamicCast(a3, result);
  }

  return result;
}

- (uint64_t)tsu_allKeysAsSet
{
  v1 = MEMORY[0x277CBEB98];
  allKeys = [self allKeys];

  return [v1 setWithArray:allKeys];
}

@end