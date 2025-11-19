@interface NSArray(PrimitiveArrayConstructible)
+ (void)newArrayFromDoubles:()PrimitiveArrayConstructible size:;
+ (void)newArrayFromFloats:()PrimitiveArrayConstructible size:;
+ (void)newArrayFromIntegers:()PrimitiveArrayConstructible size:;
@end

@implementation NSArray(PrimitiveArrayConstructible)

+ (void)newArrayFromDoubles:()PrimitiveArrayConstructible size:
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = a3;
    v6 = a4;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    do
    {
      v7 = *v5++;
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v7];
      [v4 addObject:v8];

      --v6;
    }

    while (v6);
  }

  return v4;
}

+ (void)newArrayFromIntegers:()PrimitiveArrayConstructible size:
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = a3;
    v6 = a4;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    do
    {
      v7 = *v5++;
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v7];
      [v4 addObject:v8];

      --v6;
    }

    while (v6);
  }

  return v4;
}

+ (void)newArrayFromFloats:()PrimitiveArrayConstructible size:
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = a3;
    v6 = a4;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    do
    {
      v7 = *v5++;
      v8 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v9) = v7;
      v10 = [v8 initWithFloat:v9];
      [v4 addObject:v10];

      --v6;
    }

    while (v6);
  }

  return v4;
}

@end