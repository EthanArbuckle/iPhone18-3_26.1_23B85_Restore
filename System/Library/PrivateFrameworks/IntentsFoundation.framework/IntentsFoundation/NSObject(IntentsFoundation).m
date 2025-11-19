@interface NSObject(IntentsFoundation)
- (void)if_setValueIfNonNil:()IntentsFoundation forKey:;
- (void)if_setValueIfYES:()IntentsFoundation forKey:;
@end

@implementation NSObject(IntentsFoundation)

- (void)if_setValueIfYES:()IntentsFoundation forKey:
{
  if (a3)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = a4;
    v7 = [v5 numberWithBool:1];
    [a1 setValue:v7 forKey:v6];
  }
}

- (void)if_setValueIfNonNil:()IntentsFoundation forKey:
{
  if (a3)
  {
    return [a1 setValue:? forKey:?];
  }

  return a1;
}

@end