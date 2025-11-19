@interface JavaLangSafeVarargs
+ (id)__annotations;
- (id)annotationType;
@end

@implementation JavaLangSafeVarargs

- (id)annotationType
{
  if (qword_100556910 != -1)
  {
    sub_100272734();
  }

  return qword_100556908;
}

+ (id)__annotations
{
  v8 = objc_alloc_init(JavaLangAnnotationDocumented);
  v2 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v9 = [(JavaLangAnnotationRetention *)v2 initWithValue:qword_100557C78];
  v3 = [JavaLangAnnotationTarget alloc];
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v6 = qword_100558248;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v7 = qword_100558238;
  v4 = [IOSObjectArray arrayWithObjects:&v6 count:2 type:NSObject_class_()];
  v10 = [(JavaLangAnnotationTarget *)v3 initWithValue:v4, v6, v7, v8, v9];
  return [IOSObjectArray arrayWithObjects:&v8 count:3 type:JavaLangAnnotationAnnotation_class_()];
}

@end