@interface HKQuantityRange(Formatting)
- (id)_valueStringForType:()Formatting parameters:;
- (id)localizedAttributedStringForType:()Formatting;
- (id)localizedAttributedStringForType:()Formatting parameters:;
- (id)localizedStringForType:()Formatting;
- (id)localizedStringForType:()Formatting parameters:;
- (id)unitStringForType:()Formatting;
- (id)unitStringForType:()Formatting parameters:;
@end

@implementation HKQuantityRange(Formatting)

- (id)unitStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [a1 unitStringForType:v4 parameters:v5];

  return v6;
}

- (id)unitStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 maximum];
  v9 = [v6 unitString:v7 quantity:v8];

  return v9;
}

- (id)localizedStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [a1 localizedStringForType:v4 parameters:v5];

  return v6;
}

- (id)localizedStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _valueStringForType:v7 parameters:v6];
  v9 = [a1 maximum];
  v10 = [v6 unitString:v7 quantity:v9];

  LODWORD(v7) = [v6 hasSpaceBetweenValueAndUnit];
  v11 = HKFormatValueAndUnitWithSpaceBetweenValueAndUnit(v8, v10, v7);

  return v11;
}

- (id)localizedAttributedStringForType:()Formatting
{
  v4 = a3;
  v5 = objc_alloc_init(HKQuantityFormattingParameters);
  v6 = [a1 localizedAttributedStringForType:v4 parameters:v5];

  return v6;
}

- (id)localizedAttributedStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _valueStringForType:v7 parameters:v6];
  v9 = [a1 maximum];
  v10 = [v6 unitString:v7 quantity:v9];

  v11 = [v6 valueFont];
  if (v11)
  {
    [v6 valueFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
  }
  v12 = ;

  v13 = [v6 unitFont];
  if (v13)
  {
    [v6 unitFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
  }
  v14 = ;

  v15 = [v6 useColor];
  [v6 hasSpaceBetweenValueAndUnit];
  v16 = HKFormatAttributedValueAndUnitWithSpaceBetweenValueAndUnit(v8, v10, v12, v14, v15);

  return v16;
}

- (id)_valueStringForType:()Formatting parameters:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 minimum];
  v9 = [v6 valueString:v7 quantity:v8];

  v10 = [a1 maximum];
  v11 = [v6 valueString:v7 quantity:v10];

  if ([v9 isEqualToString:v11])
  {
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"RANGE_STRING %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v12 = [v13 stringWithFormat:v15, v9, v11];
  }

  return v12;
}

@end