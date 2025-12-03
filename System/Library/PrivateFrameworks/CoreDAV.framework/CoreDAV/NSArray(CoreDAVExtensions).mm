@interface NSArray(CoreDAVExtensions)
+ (id)_arrayWithIntArg:()CoreDAVExtensions additionalArgs:;
+ (id)cdvArrayWithIntegers:()CoreDAVExtensions;
@end

@implementation NSArray(CoreDAVExtensions)

+ (id)_arrayWithIntArg:()CoreDAVExtensions additionalArgs:
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = a3;
    while (1)
    {
      v8 = [v6 numberWithInt:v7];
      [v5 addObject:v8];

      v9 = a4;
      a4 += 2;
      v7 = *v9;
      if (!v7)
      {
        break;
      }

      v6 = MEMORY[0x277CCABB0];
    }
  }

  return v5;
}

+ (id)cdvArrayWithIntegers:()CoreDAVExtensions
{
  v9 = [self _arrayWithIntArg:a3 additionalArgs:&a9];

  return v9;
}

@end