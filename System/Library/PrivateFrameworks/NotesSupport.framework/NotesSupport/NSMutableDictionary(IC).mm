@interface NSMutableDictionary(IC)
+ (id)ic_dictionaryFromNonNilDictionary:()IC;
- (void)ic_removeObjectForNonNilKey:()IC;
- (void)ic_setNonNilObject:()IC forKey:;
- (void)ic_setNonNilObject:()IC forNonNilKey:;
@end

@implementation NSMutableDictionary(IC)

- (void)ic_removeObjectForNonNilKey:()IC
{
  if (a3)
  {
    return [a1 removeObjectForKey:?];
  }

  return a1;
}

- (void)ic_setNonNilObject:()IC forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKeyedSubscript:?];
  }

  return a1;
}

- (void)ic_setNonNilObject:()IC forNonNilKey:
{
  if (a3)
  {
    if (a4)
    {
      return [a1 setObject:? forKeyedSubscript:?];
    }
  }

  return a1;
}

+ (id)ic_dictionaryFromNonNilDictionary:()IC
{
  if (a3)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionary];
  }
  v3 = ;

  return v3;
}

@end