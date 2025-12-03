@interface NSMutableDictionary(IntentsFoundation)
- (id)if_popObjectForKey:()IntentsFoundation;
- (void)if_setBoolIfYES:()IntentsFoundation forKey:;
- (void)if_setObjectIfNonNil:()IntentsFoundation forKey:;
@end

@implementation NSMutableDictionary(IntentsFoundation)

- (id)if_popObjectForKey:()IntentsFoundation
{
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (v5)
  {
    [self removeObjectForKey:v4];
  }

  return v5;
}

- (void)if_setBoolIfYES:()IntentsFoundation forKey:
{
  if (a3)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = a4;
    v7 = [v5 numberWithBool:1];
    [self setObject:v7 forKey:v6];
  }
}

- (void)if_setObjectIfNonNil:()IntentsFoundation forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  return self;
}

@end