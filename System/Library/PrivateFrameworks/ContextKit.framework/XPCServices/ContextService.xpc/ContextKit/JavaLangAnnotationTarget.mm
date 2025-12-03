@interface JavaLangAnnotationTarget
+ (id)__annotations;
- (JavaLangAnnotationTarget)initWithValue:(id)value;
- (id)annotationType;
@end

@implementation JavaLangAnnotationTarget

- (JavaLangAnnotationTarget)initWithValue:(id)value
{
  v6.receiver = self;
  v6.super_class = JavaLangAnnotationTarget;
  v4 = [(JavaLangAnnotationTarget *)&v6 init];
  if (v4)
  {
    v4->value_ = value;
  }

  return v4;
}

- (id)annotationType
{
  if (qword_100554F90 != -1)
  {
    sub_1001F1A64();
  }

  return qword_100554F88;
}

+ (id)__annotations
{
  v6[0] = objc_alloc_init(JavaLangAnnotationDocumented);
  v2 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v6[1] = [(JavaLangAnnotationRetention *)v2 initWithValue:qword_100557C78];
  v3 = [JavaLangAnnotationTarget alloc];
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v5 = qword_100558258;
  v6[2] = [(JavaLangAnnotationTarget *)v3 initWithValue:[IOSObjectArray arrayWithObjects:&v5 count:1 type:NSObject_class_()]];
  return [IOSObjectArray arrayWithObjects:v6 count:3 type:JavaLangAnnotationAnnotation_class_()];
}

@end