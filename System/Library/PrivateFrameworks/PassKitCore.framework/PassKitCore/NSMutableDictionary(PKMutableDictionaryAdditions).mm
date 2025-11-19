@interface NSMutableDictionary(PKMutableDictionaryAdditions)
- (id)getOrCreateObjectForKey:()PKMutableDictionaryAdditions creationBlock:;
- (void)safelySetObject:()PKMutableDictionaryAdditions forKey:;
@end

@implementation NSMutableDictionary(PKMutableDictionaryAdditions)

- (void)safelySetObject:()PKMutableDictionaryAdditions forKey:
{
  if (a3)
  {
    if (a4)
    {
      return [a1 setObject:? forKey:?];
    }
  }

  return a1;
}

- (id)getOrCreateObjectForKey:()PKMutableDictionaryAdditions creationBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = v7[2](v7);
    [a1 setObject:v9 forKeyedSubscript:v6];
  }

  v10 = [a1 objectForKeyedSubscript:v6];

  return v10;
}

@end