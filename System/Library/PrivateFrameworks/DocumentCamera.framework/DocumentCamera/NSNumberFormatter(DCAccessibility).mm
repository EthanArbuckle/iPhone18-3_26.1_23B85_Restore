@interface NSNumberFormatter(DCAccessibility)
+ (id)dcaxLocalizedDouble:()DCAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)dcaxLocalizedNumber:()DCAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)dcaxLocalizedPercentage:()DCAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)dcaxLocalizedUnsignedInteger:()DCAccessibility;
@end

@implementation NSNumberFormatter(DCAccessibility)

+ (id)dcaxLocalizedUnsignedInteger:()DCAccessibility
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v3 = [a1 dcaxLocalizedNumber:v2 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v3;
}

+ (id)dcaxLocalizedDouble:()DCAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v6 = [a1 dcaxLocalizedNumber:v5 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)dcaxLocalizedPercentage:()DCAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v6 = [a1 dcaxLocalizedNumber:v5 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)dcaxLocalizedNumber:()DCAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

@end