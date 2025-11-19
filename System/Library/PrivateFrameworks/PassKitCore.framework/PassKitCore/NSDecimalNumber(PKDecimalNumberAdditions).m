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
  v2 = [MEMORY[0x1E696AB90] zero];
  v3 = [a1 compare:v2];

  if (v3 == -1)
  {
    v4 = [a1 pk_negativeValue];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (id)pk_negativeValue
{
  v2 = [MEMORY[0x1E696AB90] zero];
  if ([a1 isEqualToNumber:v2])
  {

LABEL_4:
    v5 = a1;
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E696AB90] notANumber];
  v4 = [a1 isEqualToNumber:v3];

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x1E696AB90] pk_negativeOne];
  v5 = [a1 decimalNumberByMultiplyingBy:v6];

LABEL_6:

  return v5;
}

- (BOOL)pk_isLessThanOrEqualToInteger:()PKDecimalNumberAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v3 = [a1 compare:v2];

  return (v3 + 1) < 2;
}

@end