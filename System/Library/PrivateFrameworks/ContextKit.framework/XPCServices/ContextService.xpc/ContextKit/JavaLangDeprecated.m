@interface JavaLangDeprecated
+ (id)__annotations;
- (id)annotationType;
@end

@implementation JavaLangDeprecated

- (id)annotationType
{
  if (qword_100555030 != -1)
  {
    sub_1002074A4();
  }

  return qword_100555028;
}

+ (id)__annotations
{
  v4[0] = objc_alloc_init(JavaLangAnnotationDocumented);
  v2 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v4[1] = [(JavaLangAnnotationRetention *)v2 initWithValue:qword_100557C78];
  return [IOSObjectArray arrayWithObjects:v4 count:2 type:JavaLangAnnotationAnnotation_class_()];
}

@end