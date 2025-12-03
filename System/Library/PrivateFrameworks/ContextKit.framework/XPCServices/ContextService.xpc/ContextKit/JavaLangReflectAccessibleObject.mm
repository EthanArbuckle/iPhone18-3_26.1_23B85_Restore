@interface JavaLangReflectAccessibleObject
- (id)getAnnotationWithIOSClass:(id)class;
- (id)getAnnotationsFromAccessor:(id)accessor;
@end

@implementation JavaLangReflectAccessibleObject

- (id)getAnnotationWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  getAnnotations = [(JavaLangReflectAccessibleObject *)self getAnnotations];
  v5 = getAnnotations[2];
  if (v5 < 1)
  {
    return 0;
  }

  for (i = getAnnotations; ; i += 2)
  {
    v7 = *(i + 3);
    if ([class isInstance:v7])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return v7;
}

- (id)getAnnotationsFromAccessor:(id)accessor
{
  if (accessor)
  {
    v4 = [IOSObjectArray arrayWithLength:0 type:NSObject_class_()];

    return [accessor invokeWithId:0 withNSObjectArray:v4];
  }

  else
  {
    v6 = JavaLangAnnotationAnnotation_class_();

    return [IOSObjectArray arrayWithLength:0 type:v6];
  }
}

@end