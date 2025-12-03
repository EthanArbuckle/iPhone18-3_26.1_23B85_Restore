@interface HKQuantity(Formatting)
- (id)localizedAttributedStringForType:()Formatting;
- (id)localizedAttributedStringForType:()Formatting parameters:;
- (id)localizedStringForType:()Formatting;
- (id)localizedStringForType:()Formatting parameters:;
- (id)unitStringForType:()Formatting;
@end

@implementation HKQuantity(Formatting)

- (id)unitStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [self unitStringForType:v4 parameters:v5];

  return v6;
}

- (id)localizedStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [self localizedStringForType:v4 parameters:v5];

  return v6;
}

- (id)localizedStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 valueString:v7 quantity:self];
  v9 = [v6 unitString:v7 quantity:self];

  LODWORD(v7) = [v6 hasSpaceBetweenValueAndUnit];
  v10 = HKFormatValueAndUnitWithSpaceBetweenValueAndUnit(v8, v9, v7);

  return v10;
}

- (id)localizedAttributedStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [self localizedAttributedStringForType:v4 parameters:v5];

  return v6;
}

- (id)localizedAttributedStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 valueString:v7 quantity:self];
  v9 = [v6 unitString:v7 quantity:self];

  valueFont = [v6 valueFont];
  if (valueFont)
  {
    [v6 valueFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
  }
  v11 = ;

  unitFont = [v6 unitFont];
  if (unitFont)
  {
    [v6 unitFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
  }
  v13 = ;

  useColor = [v6 useColor];
  [v6 hasSpaceBetweenValueAndUnit];
  v15 = HKFormatAttributedValueAndUnitWithSpaceBetweenValueAndUnit(v8, v9, v11, v13, useColor);

  return v15;
}

@end