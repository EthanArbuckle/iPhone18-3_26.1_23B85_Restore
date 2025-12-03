@interface HKHeightNumberFormatter
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKHeightNumberFormatter

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  typeCopy = type;
  v9 = [controller unitForDisplayType:typeCopy];
  footUnit = [MEMORY[0x1E696C510] footUnit];
  if ([v9 isEqual:footUnit])
  {
    [numberCopy doubleValue];
    v12 = HKFormattedFeetAndInches(v11);
  }

  else
  {
    v13 = HKNumberFormatterWithDecimalPrecisionAndStyle(2, [typeCopy roundingMode], 1);
    v12 = [v13 stringFromNumber:numberCopy];
  }

  return v12;
}

@end