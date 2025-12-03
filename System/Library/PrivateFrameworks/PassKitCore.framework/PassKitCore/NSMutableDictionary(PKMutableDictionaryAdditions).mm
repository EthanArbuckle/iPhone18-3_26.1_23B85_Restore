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
      return [self setObject:? forKey:?];
    }
  }

  return self;
}

- (id)getOrCreateObjectForKey:()PKMutableDictionaryAdditions creationBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [self objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = v7[2](v7);
    [self setObject:v9 forKeyedSubscript:v6];
  }

  v10 = [self objectForKeyedSubscript:v6];

  return v10;
}

@end