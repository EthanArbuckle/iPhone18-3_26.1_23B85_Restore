@interface JavaUtilCollections_CheckedMap_CheckedEntrySet
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (JavaUtilCollections_CheckedMap_CheckedEntrySet)initWithJavaUtilSet:(id)a3 withIOSClass:(id)a4;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedMap_CheckedEntrySet

- (JavaUtilCollections_CheckedMap_CheckedEntrySet)initWithJavaUtilSet:(id)a3 withIOSClass:(id)a4
{
  JreStrongAssign(&self->s_, a3);
  JreStrongAssign(&self->valueType_, a4);
  return self;
}

- (id)iterator
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilSet *)s iterator];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator alloc];
  JreStrongAssign(&v6->i_, v4);
  JreStrongAssign(&v6->valueType_, valueType);

  return v6;
}

- (id)toArray
{
  v3 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self size];
  v4 = [IOSObjectArray arrayWithLength:v3 type:NSObject_class_()];
  v5 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
  if (v3 >= 1)
  {
    v6 = v5;
    if (!v5)
    {
      JreThrowNullPointerException();
    }

      ;
    }
  }

  return v4;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  v5 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self size];
  if (!a3)
  {
    goto LABEL_12;
  }

  v6 = v5;
  if (*(a3 + 2) < v5)
  {
    a3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], v5);
    objc_opt_class();
    if (!a3)
    {
      [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  v7 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
  if (v6 > 0)
  {
    v8 = v7;
    if (v7)
    {
        ;
      }

      goto LABEL_9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_9:
  if (v6 < *(a3 + 2))
  {
    IOSObjectArray_Set(a3, v6, 0);
  }

  return a3;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s retainAllWithJavaUtilCollection:a3];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s removeAllWithJavaUtilCollection:a3];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s containsAllWithJavaUtilCollection:a3];
}

- (BOOL)removeWithId:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s removeWithId:a3];
}

- (BOOL)containsWithId:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s containsWithId:a3];
}

- (BOOL)isEmpty
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s isEmpty];
}

- (void)clear
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)s clear];
}

- (int)size
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s size];
}

- (unint64_t)hash
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s hash];
}

- (BOOL)isEqual:(id)a3
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s isEqual:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap_CheckedEntrySet;
  [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)&v3 dealloc];
}

@end