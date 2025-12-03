@interface CSSFraction
- (CSSFraction)initWithNumerator:(unint64_t)numerator denominator:(unint64_t)denominator;
- (CSSFraction)simplifiedFraction;
- (unint64_t)greatestCommonDivisor;
@end

@implementation CSSFraction

- (CSSFraction)initWithNumerator:(unint64_t)numerator denominator:(unint64_t)denominator
{
  if (!denominator)
  {
    sub_10000618C(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CSSFraction;
  result = [(CSSFraction *)&v8 init];
  if (result)
  {
    result->_numerator = numerator;
    result->_denominator = denominator;
  }

  return result;
}

- (CSSFraction)simplifiedFraction
{
  greatestCommonDivisor = [(CSSFraction *)self greatestCommonDivisor];
  v4 = [objc_alloc(objc_opt_class()) initWithNumerator:-[CSSFraction numerator](self denominator:{"numerator") / greatestCommonDivisor, -[CSSFraction denominator](self, "denominator") / greatestCommonDivisor}];

  return v4;
}

- (unint64_t)greatestCommonDivisor
{
  numerator = [(CSSFraction *)self numerator];
  denominator = [(CSSFraction *)self denominator];
  if (!numerator)
  {
    return denominator;
  }

  do
  {
    v5 = numerator;
    numerator = denominator % numerator;
    denominator = v5;
  }

  while (numerator);
  return v5;
}

@end