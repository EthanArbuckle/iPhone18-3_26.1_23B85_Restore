@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
@end

@implementation JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet

- (id)iterator
{
  v3 = [JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet__1 alloc];
  c = self->super.super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v3->iterator_, [(JavaUtilCollection *)c iterator]);

  return v3;
}

- (id)toArray
{
  c = self->super.super.c_;
  if (!c)
  {
    goto LABEL_6;
  }

  v4 = [(JavaUtilCollection *)c size];
  v5 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_()];
  v6 = [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *)self iterator];
  v7 = (v4 - 1);
  if (v7 < 0)
  {
    return v5;
  }

  v8 = v6;
  if (!v6)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  do
  {
    IOSObjectArray_Set(v5, v7--, [v8 next]);
  }

  while (v7 != -1);
  return v5;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  c = self->super.super.c_;
  if (!c)
  {
    goto LABEL_15;
  }

  v6 = [(JavaUtilCollection *)c size];
  v7 = [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *)self iterator];
  if (!a3)
  {
    goto LABEL_15;
  }

  v8 = v7;
  if (v6 > *(a3 + 2))
  {
    a3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], v6);
    objc_opt_class();
    if (!a3)
    {
      goto LABEL_15;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  if (v6 <= 0)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

    ;
  }

LABEL_12:
  if (v6 < *(a3 + 2))
  {
    IOSObjectArray_Set(a3, v6, 0);
  }

  return a3;
}

@end