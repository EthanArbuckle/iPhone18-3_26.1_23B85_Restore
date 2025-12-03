@interface NSMutableDictionary(ITK)
- (void)itk_addEntriesFromNonNilDictionary:()ITK;
- (void)itk_removeObjectForNonNilKey:()ITK;
- (void)itk_setNonNilObject:()ITK forKey:;
- (void)itk_setNonNilObject:()ITK forNonNilKey:;
@end

@implementation NSMutableDictionary(ITK)

- (void)itk_removeObjectForNonNilKey:()ITK
{
  if (a3)
  {
    return [self removeObjectForKey:?];
  }

  return self;
}

- (void)itk_addEntriesFromNonNilDictionary:()ITK
{
  if (a3)
  {
    return [self addEntriesFromDictionary:?];
  }

  return self;
}

- (void)itk_setNonNilObject:()ITK forKey:
{
  if (a3)
  {
    return [self setObject:? forKeyedSubscript:?];
  }

  return self;
}

- (void)itk_setNonNilObject:()ITK forNonNilKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKeyedSubscript:?];
    }
  }

  return self;
}

@end