@interface NSArray(RepeatedInitializer)
+ (id)arrayWithObject:()RepeatedInitializer repeated:;
@end

@implementation NSArray(RepeatedInitializer)

+ (id)arrayWithObject:()RepeatedInitializer repeated:
{
  v5 = a3;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  {
    v7 = [v5 copy];
    [i addObject:v7];
  }

  return i;
}

@end