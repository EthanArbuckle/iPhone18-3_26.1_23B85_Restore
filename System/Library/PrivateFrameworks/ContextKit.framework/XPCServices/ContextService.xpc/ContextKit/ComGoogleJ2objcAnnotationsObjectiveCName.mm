@interface ComGoogleJ2objcAnnotationsObjectiveCName
+ (id)__annotations;
- (ComGoogleJ2objcAnnotationsObjectiveCName)initWithValue:(id)a3;
- (id)annotationType;
@end

@implementation ComGoogleJ2objcAnnotationsObjectiveCName

- (ComGoogleJ2objcAnnotationsObjectiveCName)initWithValue:(id)a3
{
  v6.receiver = self;
  v6.super_class = ComGoogleJ2objcAnnotationsObjectiveCName;
  v4 = [(ComGoogleJ2objcAnnotationsObjectiveCName *)&v6 init];
  if (v4)
  {
    v4->value_ = a3;
  }

  return v4;
}

- (id)annotationType
{
  if (qword_100554B90 != -1)
  {
    sub_100185EE8();
  }

  return qword_100554B88;
}

+ (id)__annotations
{
  v2 = [JavaLangAnnotationTarget alloc];
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v5[0] = JavaLangAnnotationElementTypeEnum_values_;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v5[1] = qword_100558238;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v5[2] = qword_100558248;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C018();
  }

  v5[3] = qword_100558260;
  v6[0] = [(JavaLangAnnotationTarget *)v2 initWithValue:[IOSObjectArray arrayWithObjects:v5 count:4 type:NSObject_class_()]];
  v3 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100185EFC();
  }

  v6[1] = [(JavaLangAnnotationRetention *)v3 initWithValue:qword_100557C78];
  return [IOSObjectArray arrayWithObjects:v6 count:2 type:JavaLangAnnotationAnnotation_class_()];
}

@end