@interface JavaLangReflectAccessibleObject
- (id)getAnnotationWithIOSClass:(id)a3;
- (id)getAnnotationsFromAccessor:(id)a3;
@end

@implementation JavaLangReflectAccessibleObject

- (id)getAnnotationWithIOSClass:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaLangReflectAccessibleObject *)self getAnnotations];
  v5 = v4[2];
  if (v5 < 1)
  {
    return 0;
  }

  for (i = v4; ; i += 2)
  {
    v7 = *(i + 3);
    if ([a3 isInstance:v7])
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

- (id)getAnnotationsFromAccessor:(id)a3
{
  if (a3)
  {
    v4 = [IOSObjectArray arrayWithLength:0 type:NSObject_class_()];

    return [a3 invokeWithId:0 withNSObjectArray:v4];
  }

  else
  {
    v6 = JavaLangAnnotationAnnotation_class_();

    return [IOSObjectArray arrayWithLength:0 type:v6];
  }
}

@end