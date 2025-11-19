@interface CSSFraction
- (CSSFraction)initWithNumerator:(unint64_t)a3 denominator:(unint64_t)a4;
- (CSSFraction)simplifiedFraction;
- (unint64_t)greatestCommonDivisor;
@end

@implementation CSSFraction

- (CSSFraction)initWithNumerator:(unint64_t)a3 denominator:(unint64_t)a4
{
  if (!a4)
  {
    sub_10000618C(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CSSFraction;
  result = [(CSSFraction *)&v8 init];
  if (result)
  {
    result->_numerator = a3;
    result->_denominator = a4;
  }

  return result;
}

- (CSSFraction)simplifiedFraction
{
  v3 = [(CSSFraction *)self greatestCommonDivisor];
  v4 = [objc_alloc(objc_opt_class()) initWithNumerator:-[CSSFraction numerator](self denominator:{"numerator") / v3, -[CSSFraction denominator](self, "denominator") / v3}];

  return v4;
}

- (unint64_t)greatestCommonDivisor
{
  v3 = [(CSSFraction *)self numerator];
  v4 = [(CSSFraction *)self denominator];
  if (!v3)
  {
    return v4;
  }

  do
  {
    v5 = v3;
    v3 = v4 % v3;
    v4 = v5;
  }

  while (v3);
  return v5;
}

@end