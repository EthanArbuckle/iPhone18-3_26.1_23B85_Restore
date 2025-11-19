@interface NSDecimalNumber(DecimalNumberShortcuts)
+ (id)abs:()DecimalNumberShortcuts;
- (BOOL)greaterThan:()DecimalNumberShortcuts;
- (BOOL)greaterThanOrEqual:()DecimalNumberShortcuts;
- (BOOL)isNegative;
- (BOOL)isOne;
- (BOOL)isPositive;
- (BOOL)isValid;
- (BOOL)isZero;
- (BOOL)lessThan:()DecimalNumberShortcuts;
- (BOOL)lessThanOrEqual:()DecimalNumberShortcuts;
@end

@implementation NSDecimalNumber(DecimalNumberShortcuts)

- (BOOL)isNegative
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isValid])
    {
      v2 = [MEMORY[0x277CCA980] zero];
      v1 = [v1 compare:v2] == -1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (BOOL)isPositive
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isValid])
    {
      v2 = [MEMORY[0x277CCA980] zero];
      v1 = [v1 compare:v2] == 1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (BOOL)isZero
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isValid])
    {
      v2 = [MEMORY[0x277CCA980] zero];
      v1 = [v1 compare:v2] == 0;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (BOOL)isOne
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isValid])
    {
      v2 = [MEMORY[0x277CCA980] one];
      v1 = [v1 compare:v2] == 0;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (BOOL)isValid
{
  v2 = [MEMORY[0x277CCA980] notANumber];
  v3 = [a1 compare:v2] != 0;

  return v3;
}

- (BOOL)lessThan:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = [a1 isValid] && objc_msgSend(v4, "isValid") && objc_msgSend(a1, "compare:", v4) == -1;

  return v5;
}

- (BOOL)lessThanOrEqual:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = ([a1 lessThan:v4] & 1) != 0 || objc_msgSend(a1, "compare:", v4) == 0;

  return v5;
}

- (BOOL)greaterThan:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = [a1 isValid] && objc_msgSend(v4, "isValid") && objc_msgSend(a1, "compare:", v4) == 1;

  return v5;
}

- (BOOL)greaterThanOrEqual:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = ([a1 greaterThan:v4] & 1) != 0 || objc_msgSend(a1, "compare:", v4) == 0;

  return v5;
}

+ (id)abs:()DecimalNumberShortcuts
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA980] zero];
  v5 = [v3 compare:v4];

  if (v5 == -1)
  {
    v7 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:1 exponent:0 isNegative:1];
    v6 = [v3 decimalNumberByMultiplyingBy:v7];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

@end