@interface JavaUtilFormatter_BigDecimalLayoutFormEnum
+ (void)initialize;
@end

@implementation JavaUtilFormatter_BigDecimalLayoutFormEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaUtilFormatter_BigDecimalLayoutFormEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"SCIENTIFIC", 0);
    JavaUtilFormatter_BigDecimalLayoutFormEnum_values_[0] = v2;
    v3 = [JavaUtilFormatter_BigDecimalLayoutFormEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"DECIMAL_FLOAT", 1);
    qword_100557C50 = v3;
    atomic_store(1u, JavaUtilFormatter_BigDecimalLayoutFormEnum__initialized);
  }
}

@end