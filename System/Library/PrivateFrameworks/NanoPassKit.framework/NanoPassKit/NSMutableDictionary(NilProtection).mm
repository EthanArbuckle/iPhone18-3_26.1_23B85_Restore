@interface NSMutableDictionary(NilProtection)
+ (id)npkDictionaryWithObjectsAndKeys:()NilProtection;
+ (uint64_t)_processArgumentWithMutableDictionary:()NilProtection object:key:;
- (uint64_t)npkSetObject:()NilProtection forKey:;
@end

@implementation NSMutableDictionary(NilProtection)

- (uint64_t)npkSetObject:()NilProtection forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

+ (uint64_t)_processArgumentWithMutableDictionary:()NilProtection object:key:
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    [a3 npkSetObject:a4 forKey:a5];
  }

  return v6;
}

+ (id)npkDictionaryWithObjectsAndKeys:()NilProtection
{
  v10 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = v10;
  v20 = &a10;
  v13 = a9;
  if ([MEMORY[0x277CBEB38] _processArgumentWithMutableDictionary:dictionary object:v12 key:v13])
  {
    v14 = v12;
    do
    {
      v15 = *v20;

      v16 = v20 + 1;
      v20 += 2;
      v17 = *v16;

      v14 = v15;
      v13 = v17;
    }

    while (([MEMORY[0x277CBEB38] _processArgumentWithMutableDictionary:dictionary object:v15 key:v17] & 1) != 0);
  }

  else
  {
    v17 = v13;
    v15 = v12;
  }

  v18 = dictionary;

  return v18;
}

@end