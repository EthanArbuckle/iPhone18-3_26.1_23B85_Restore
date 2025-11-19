@interface NSNumberFormatter(ICAccessibility)
+ (id)icaxLocalizedDouble:()ICAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)icaxLocalizedNumber:()ICAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)icaxLocalizedPercentage:()ICAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)icaxLocalizedUnsignedInteger:()ICAccessibility;
@end

@implementation NSNumberFormatter(ICAccessibility)

+ (id)icaxLocalizedUnsignedInteger:()ICAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v3 = [a1 icaxLocalizedNumber:v2 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v3;
}

+ (id)icaxLocalizedDouble:()ICAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [a1 icaxLocalizedNumber:v5 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)icaxLocalizedPercentage:()ICAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [a1 icaxLocalizedNumber:v5 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)icaxLocalizedNumber:()ICAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

@end