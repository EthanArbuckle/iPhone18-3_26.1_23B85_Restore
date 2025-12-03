@interface NSNumber(PKDecimalNumberAdditions)
- (BOOL)pk_isIntegralNumber;
- (BOOL)pk_isNegativeNumber;
- (BOOL)pk_isNotANumber;
- (BOOL)pk_isPositiveNumber;
- (BOOL)pk_isZeroNumber;
@end

@implementation NSNumber(PKDecimalNumberAdditions)

- (BOOL)pk_isIntegralNumber
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  [self decimalValue];
  result = 0;
  if ((v4[0] & 0x1F00) != 0x1000)
  {
    v2[0] = 0;
    v2[1] = 0;
    v3 = 0;
    MEMORY[0x1B26F82E0](v2, v4, 0, 0);
    return MEMORY[0x1B26F82D0](v2, v4) == 0;
  }

  return result;
}

- (BOOL)pk_isNegativeNumber
{
  if ([self pk_isNotANumber])
  {
    return 0;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  v2 = [self compare:zero] == -1;

  return v2;
}

- (BOOL)pk_isPositiveNumber
{
  if ([self pk_isNotANumber])
  {
    return 0;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  v2 = [self compare:zero] == 1;

  return v2;
}

- (BOOL)pk_isZeroNumber
{
  if ([self pk_isNotANumber])
  {
    return 0;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  v2 = [self compare:zero] == 0;

  return v2;
}

- (BOOL)pk_isNotANumber
{
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v3 = [self compare:notANumber] == 0;

  return v3;
}

@end