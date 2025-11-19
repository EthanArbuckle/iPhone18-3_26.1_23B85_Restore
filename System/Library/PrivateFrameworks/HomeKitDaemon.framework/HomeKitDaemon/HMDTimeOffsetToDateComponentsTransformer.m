@interface HMDTimeOffsetToDateComponentsTransformer
+ (id)transformedValue:(id)a3 error:(id *)a4;
- (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDTimeOffsetToDateComponentsTransformer

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v9 = 0;
  v4 = HMDTimeOffsetToDateComponents([a3 integerValue], &v9);
  v5 = v4;
  if (v9 == 1)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v7 = 0;
  v4 = HMDTimeOffsetFromDateComponents(a3, &v7);
  if (v7)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end