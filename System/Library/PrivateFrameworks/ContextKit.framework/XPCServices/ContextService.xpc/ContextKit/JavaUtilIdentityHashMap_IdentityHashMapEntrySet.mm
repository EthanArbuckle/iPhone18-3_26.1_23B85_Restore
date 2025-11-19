@interface JavaUtilIdentityHashMap_IdentityHashMapEntrySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilIdentityHashMap_IdentityHashMapEntrySet)initWithJavaUtilIdentityHashMap:(id)a3;
- (id)iterator;
- (int)size;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilIdentityHashMap_IdentityHashMapEntrySet

- (JavaUtilIdentityHashMap_IdentityHashMapEntrySet)initWithJavaUtilIdentityHashMap:(id)a3
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->associatedMap_, a3);
  return self;
}

- (int)size
{
  associatedMap = self->associatedMap_;
  if (!associatedMap)
  {
    JreThrowNullPointerException();
  }

  return associatedMap->size_;
}

- (void)clear
{
  associatedMap = self->associatedMap_;
  if (!associatedMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIdentityHashMap *)associatedMap clear];
}

- (BOOL)removeWithId:(id)a3
{
  v5 = [(JavaUtilIdentityHashMap_IdentityHashMapEntrySet *)self containsWithId:?];
  if (v5)
  {
    associatedMap = self->associatedMap_;
    if (!associatedMap || (v7 = JavaUtilMap_Entry_class_(), !a3))
    {
      JreThrowNullPointerException();
    }

    if (([v7 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    -[JavaUtilIdentityHashMap removeWithId:](associatedMap, "removeWithId:", [a3 getKey]);
  }

  return v5;
}

- (BOOL)containsWithId:(id)a3
{
  if (![JavaUtilMap_Entry_class_() isInstance:a3])
  {
    return 0;
  }

  associatedMap = self->associatedMap_;
  if (!associatedMap || (v6 = JavaUtilMap_Entry_class_(), !a3))
  {
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = sub_100261CB0(associatedMap, [a3 getKey]);
  if (!v7)
  {
    return 0;
  }

  return [(JavaUtilIdentityHashMap_IdentityHashMapEntry *)v7 isEqual:a3];
}

- (id)iterator
{
  v3 = [JavaUtilIdentityHashMap_IdentityHashMapEntrySet__1 alloc];
  associatedMap = self->associatedMap_;
  v5 = [JavaUtilIdentityHashMap_IdentityHashMapIterator alloc];
  JavaUtilIdentityHashMap_IdentityHashMapIterator_initWithJavaUtilMapEntry_Type_withJavaUtilIdentityHashMap_(v5, v3, associatedMap);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntrySet;
  [(JavaUtilIdentityHashMap_IdentityHashMapEntrySet *)&v3 dealloc];
}

@end