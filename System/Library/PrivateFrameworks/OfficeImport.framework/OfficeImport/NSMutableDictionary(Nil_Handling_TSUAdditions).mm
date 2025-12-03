@interface NSMutableDictionary(Nil_Handling_TSUAdditions)
- (uint64_t)tsu_setNonNilValueForKey:()Nil_Handling_TSUAdditions fromDictionary:;
- (void)tsu_setNonNilObject:()Nil_Handling_TSUAdditions forKey:;
@end

@implementation NSMutableDictionary(Nil_Handling_TSUAdditions)

- (uint64_t)tsu_setNonNilValueForKey:()Nil_Handling_TSUAdditions fromDictionary:
{
  result = [a4 objectForKeyedSubscript:?];
  if (result)
  {

    return [self setObject:result forKeyedSubscript:a3];
  }

  return result;
}

- (void)tsu_setNonNilObject:()Nil_Handling_TSUAdditions forKey:
{
  if (a3)
  {
    return [self setObject:? forKeyedSubscript:?];
  }

  return self;
}

@end