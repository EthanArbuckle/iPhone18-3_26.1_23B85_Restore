@interface HKHeightNumberFormatter
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKHeightNumberFormatter

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 unitForDisplayType:v8];
  v10 = [MEMORY[0x1E696C510] footUnit];
  if ([v9 isEqual:v10])
  {
    [v7 doubleValue];
    v12 = HKFormattedFeetAndInches(v11);
  }

  else
  {
    v13 = HKNumberFormatterWithDecimalPrecisionAndStyle(2, [v8 roundingMode], 1);
    v12 = [v13 stringFromNumber:v7];
  }

  return v12;
}

@end