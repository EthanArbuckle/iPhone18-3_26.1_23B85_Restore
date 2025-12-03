@interface NSDecimalNumber(PKDecimalNumberAdditions)
+ (id)pk_negativeOne;
- (BOOL)pk_isLessThanOrEqualToInteger:()PKDecimalNumberAdditions;
- (id)pk_absoluteValue;
- (id)pk_negativeValue;
@end

@implementation NSDecimalNumber(PKDecimalNumberAdditions)

+ (id)pk_negativeOne
{
  if (qword_1ED6D1238 != -1)
  {
    dispatch_once(&qword_1ED6D1238, &__block_literal_global_206);
  }

  v1 = qword_1ED6D1230;

  return v1;
}

- (id)pk_absoluteValue
{
  zero = [MEMORY[0x1E696AB90] zero];
  v3 = [self compare:zero];

  if (v3 == -1)
  {
    selfCopy = [self pk_negativeValue];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pk_negativeValue
{
  zero = [MEMORY[0x1E696AB90] zero];
  if ([self isEqualToNumber:zero])
  {

LABEL_4:
    selfCopy = self;
    goto LABEL_6;
  }

  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v4 = [self isEqualToNumber:notANumber];

  if (v4)
  {
    goto LABEL_4;
  }

  pk_negativeOne = [MEMORY[0x1E696AB90] pk_negativeOne];
  selfCopy = [self decimalNumberByMultiplyingBy:pk_negativeOne];

LABEL_6:

  return selfCopy;
}

- (BOOL)pk_isLessThanOrEqualToInteger:()PKDecimalNumberAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v3 = [self compare:v2];

  return (v3 + 1) < 2;
}

@end