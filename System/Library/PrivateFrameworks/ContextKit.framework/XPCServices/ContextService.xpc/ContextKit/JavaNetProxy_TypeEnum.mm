@interface JavaNetProxy_TypeEnum
+ (void)initialize;
@end

@implementation JavaNetProxy_TypeEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaNetProxy_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"DIRECT", 0);
    JavaNetProxy_TypeEnum_values_[0] = v2;
    v3 = [JavaNetProxy_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"HTTP", 1);
    qword_100557EE8 = v3;
    v4 = [JavaNetProxy_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"SOCKS", 2);
    qword_100557EF0 = v4;
    atomic_store(1u, JavaNetProxy_TypeEnum__initialized);
  }
}

@end