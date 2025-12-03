@interface HKRelativeNumberFormatter
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKRelativeNumberFormatter

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  v7 = HKNumberFormatterWithDecimalPrecisionAndStyle(2, [type roundingMode], 1);
  v8 = [v7 copy];

  plusSign = [v8 plusSign];
  [v8 setPositivePrefix:plusSign];

  hk_testableCurrentLocale = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
  [v8 setLocale:hk_testableCurrentLocale];

  v11 = [v8 stringFromNumber:&unk_1F43848B0];
  v12 = [v8 stringFromNumber:&unk_1F43848C0];
  v13 = [v8 stringFromNumber:numberCopy];

  if (([v13 isEqualToString:v11] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", v12))
  {
    [v8 setPositivePrefix:0];
    v14 = [v8 stringFromNumber:&unk_1F43848C0];
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;

  return v15;
}

@end