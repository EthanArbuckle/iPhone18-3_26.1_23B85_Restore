@interface JavaMathDivision
+ (int)remainderWithJavaMathBigInteger:(id)a3 withInt:(int)a4;
@end

@implementation JavaMathDivision

+ (int)remainderWithJavaMathBigInteger:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 1);
  v6 = *(a3 + 4);

  return JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(v5, v6, a4);
}

@end