@interface CNProbabilityUtilityTestDouble
- (CNProbabilityUtilityTestDouble)initWithExpectedResult:(BOOL)a3;
@end

@implementation CNProbabilityUtilityTestDouble

- (CNProbabilityUtilityTestDouble)initWithExpectedResult:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNProbabilityUtilityTestDouble;
  v4 = [(CNProbabilityUtilityTestDouble *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_expectedResult = a3;
    v6 = v4;
  }

  return v5;
}

@end