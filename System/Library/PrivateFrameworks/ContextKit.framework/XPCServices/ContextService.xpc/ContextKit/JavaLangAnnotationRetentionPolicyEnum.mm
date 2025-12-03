@interface JavaLangAnnotationRetentionPolicyEnum
+ (void)initialize;
@end

@implementation JavaLangAnnotationRetentionPolicyEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaLangAnnotationRetentionPolicyEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"SOURCE", 0);
    JavaLangAnnotationRetentionPolicyEnum_values_[0] = v2;
    v3 = [JavaLangAnnotationRetentionPolicyEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"CLASS", 1);
    qword_100557C70 = v3;
    v4 = [JavaLangAnnotationRetentionPolicyEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"RUNTIME", 2);
    qword_100557C78 = v4;
    atomic_store(1u, JavaLangAnnotationRetentionPolicyEnum__initialized);
  }
}

@end