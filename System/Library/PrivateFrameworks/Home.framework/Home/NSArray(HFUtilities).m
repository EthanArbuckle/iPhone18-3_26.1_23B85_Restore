@interface NSArray(HFUtilities)
+ (id)hf_arrayWithNumbersInRange:()HFUtilities stride:;
@end

@implementation NSArray(HFUtilities)

+ (id)hf_arrayWithNumbersInRange:()HFUtilities stride:
{
  v8 = objc_opt_new();
  v9 = a3 + a4;
  if (!__CFADD__(a3, a4))
  {
    do
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v8 addObject:v10];

      a3 += a5;
    }

    while (a3 <= v9);
  }

  v11 = [v8 copy];

  return v11;
}

@end