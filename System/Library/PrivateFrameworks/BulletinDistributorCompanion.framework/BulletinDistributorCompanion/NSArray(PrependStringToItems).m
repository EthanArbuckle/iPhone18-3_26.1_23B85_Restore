@interface NSArray(PrependStringToItems)
+ (id)arrayWithArray:()PrependStringToItems prependPath:;
@end

@implementation NSArray(PrependStringToItems)

+ (id)arrayWithArray:()PrependStringToItems prependPath:
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 count];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [v5 objectAtIndexedSubscript:i];
        v11 = [v6 stringByAppendingPathComponent:v10];
        [v8 setObject:v11 atIndexedSubscript:i];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end