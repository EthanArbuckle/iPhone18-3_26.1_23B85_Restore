@interface JavaMathRoundingModeEnum
+ (void)initialize;
- (JavaMathRoundingModeEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt;
@end

@implementation JavaMathRoundingModeEnum

- (JavaMathRoundingModeEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt
{
  JavaLangEnum_initWithNSString_withInt_(self, string, withInt);
  *(&self->super.ordinal_ + 1) = int;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"UP", 0);
    *(&v2->super.ordinal_ + 1) = 0;
    JavaMathRoundingModeEnum_values_[0] = v2;
    v3 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"DOWN", 1);
    *(&v3->super.ordinal_ + 1) = 1;
    qword_100557E18 = v3;
    v4 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"CEILING", 2);
    *(&v4->super.ordinal_ + 1) = 2;
    qword_100557E20 = v4;
    v5 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"FLOOR", 3);
    *(&v5->super.ordinal_ + 1) = 3;
    qword_100557E28 = v5;
    v6 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"HALF_UP", 4);
    *(&v6->super.ordinal_ + 1) = 4;
    qword_100557E30 = v6;
    v7 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"HALF_DOWN", 5);
    *(&v7->super.ordinal_ + 1) = 5;
    qword_100557E38 = v7;
    v8 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v8, @"HALF_EVEN", 6);
    *(&v8->super.ordinal_ + 1) = 6;
    qword_100557E40 = v8;
    v9 = [JavaMathRoundingModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v9, @"UNNECESSARY", 7);
    *(&v9->super.ordinal_ + 1) = 7;
    qword_100557E48 = v9;
    atomic_store(1u, JavaMathRoundingModeEnum__initialized);
  }
}

@end