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
  selfCopy = self;
  if (self)
  {
    if ([self isValid])
    {
      zero = [MEMORY[0x277CCA980] zero];
      selfCopy = [selfCopy compare:zero] == -1;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (BOOL)isPositive
{
  selfCopy = self;
  if (self)
  {
    if ([self isValid])
    {
      zero = [MEMORY[0x277CCA980] zero];
      selfCopy = [selfCopy compare:zero] == 1;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (BOOL)isZero
{
  selfCopy = self;
  if (self)
  {
    if ([self isValid])
    {
      zero = [MEMORY[0x277CCA980] zero];
      selfCopy = [selfCopy compare:zero] == 0;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (BOOL)isOne
{
  selfCopy = self;
  if (self)
  {
    if ([self isValid])
    {
      v2 = [MEMORY[0x277CCA980] one];
      selfCopy = [selfCopy compare:v2] == 0;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (BOOL)isValid
{
  notANumber = [MEMORY[0x277CCA980] notANumber];
  v3 = [self compare:notANumber] != 0;

  return v3;
}

- (BOOL)lessThan:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = [self isValid] && objc_msgSend(v4, "isValid") && objc_msgSend(self, "compare:", v4) == -1;

  return v5;
}

- (BOOL)lessThanOrEqual:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = ([self lessThan:v4] & 1) != 0 || objc_msgSend(self, "compare:", v4) == 0;

  return v5;
}

- (BOOL)greaterThan:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = [self isValid] && objc_msgSend(v4, "isValid") && objc_msgSend(self, "compare:", v4) == 1;

  return v5;
}

- (BOOL)greaterThanOrEqual:()DecimalNumberShortcuts
{
  v4 = a3;
  v5 = ([self greaterThan:v4] & 1) != 0 || objc_msgSend(self, "compare:", v4) == 0;

  return v5;
}

+ (id)abs:()DecimalNumberShortcuts
{
  v3 = a3;
  zero = [MEMORY[0x277CCA980] zero];
  v5 = [v3 compare:zero];

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