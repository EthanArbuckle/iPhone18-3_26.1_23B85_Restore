@interface JavaMathDivision
+ (int)remainderWithJavaMathBigInteger:(id)integer withInt:(int)int;
@end

@implementation JavaMathDivision

+ (int)remainderWithJavaMathBigInteger:(id)integer withInt:(int)int
{
  if (!integer)
  {
    JreThrowNullPointerException();
  }

  v5 = *(integer + 1);
  v6 = *(integer + 4);

  return JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(v5, v6, int);
}

@end