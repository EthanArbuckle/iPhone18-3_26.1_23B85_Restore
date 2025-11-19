@interface JavaLangThread_StateEnum
+ (void)initialize;
@end

@implementation JavaLangThread_StateEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NEW", 0);
    JavaLangThread_StateEnum_values_[0] = v2;
    v3 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"RUNNABLE", 1);
    qword_100558C48 = v3;
    v4 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"BLOCKED", 2);
    qword_100558C50 = v4;
    v5 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"WAITING", 3);
    qword_100558C58 = v5;
    v6 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"TIMED_WAITING", 4);
    qword_100558C60 = v6;
    v7 = [JavaLangThread_StateEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"TERMINATED", 5);
    qword_100558C68 = v7;
    atomic_store(1u, JavaLangThread_StateEnum__initialized);
  }
}

@end