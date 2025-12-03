@interface JavaUtilCollections_CheckedMap_CheckedEntrySet
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilCollections_CheckedMap_CheckedEntrySet)initWithJavaUtilSet:(id)set withIOSClass:(id)class;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedMap_CheckedEntrySet

- (JavaUtilCollections_CheckedMap_CheckedEntrySet)initWithJavaUtilSet:(id)set withIOSClass:(id)class
{
  JreStrongAssign(&self->s_, set);
  JreStrongAssign(&self->valueType_, class);
  return self;
}

- (id)iterator
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  iterator = [(JavaUtilSet *)s iterator];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator alloc];
  JreStrongAssign(&v6->i_, iterator);
  JreStrongAssign(&v6->valueType_, valueType);

  return v6;
}

- (id)toArray
{
  v3 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self size];
  v4 = [IOSObjectArray arrayWithLength:v3 type:NSObject_class_()];
  iterator = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
  if (v3 >= 1)
  {
    v6 = iterator;
    if (!iterator)
    {
      JreThrowNullPointerException();
    }

      ;
    }
  }

  return v4;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  v5 = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self size];
  if (!array)
  {
    goto LABEL_12;
  }

  v6 = v5;
  if (*(array + 2) < v5)
  {
    array = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(array "getClass")], v5);
    objc_opt_class();
    if (!array)
    {
      [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  iterator = [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)self iterator];
  if (v6 > 0)
  {
    v8 = iterator;
    if (iterator)
    {
        ;
      }

      goto LABEL_9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_9:
  if (v6 < *(array + 2))
  {
    IOSObjectArray_Set(array, v6, 0);
  }

  return array;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s retainAllWithJavaUtilCollection:collection];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s removeAllWithJavaUtilCollection:collection];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s containsAllWithJavaUtilCollection:collection];
}

- (BOOL)removeWithId:(id)id
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s removeWithId:id];
}

- (BOOL)containsWithId:(id)id
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s containsWithId:id];
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

- (BOOL)isEqual:(id)equal
{
  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)s isEqual:equal];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap_CheckedEntrySet;
  [(JavaUtilCollections_CheckedMap_CheckedEntrySet *)&v3 dealloc];
}

@end