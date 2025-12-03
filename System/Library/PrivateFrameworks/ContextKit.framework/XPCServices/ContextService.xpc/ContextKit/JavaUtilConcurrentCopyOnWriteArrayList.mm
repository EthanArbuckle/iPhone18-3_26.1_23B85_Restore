@interface JavaUtilConcurrentCopyOnWriteArrayList
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addIfAbsentWithId:(id)id;
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iterator;
- (id)listIterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)addAllAbsentWithJavaUtilCollection:(id)collection;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (int)size;
- (void)__javaClone;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList

- (id)clone
{
  v5.receiver = self;
  v5.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  clone = [(JavaUtilConcurrentCopyOnWriteArrayList *)&v5 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v3 = atomic_load(clone + 1);
  if (!v3)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign(clone + 1, [v3 clone]);
  return clone;
}

- (int)size
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 8);
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_containsAllWithJavaUtilCollection_withNSObjectArray_withInt_withInt_(collection, v4, 0, v5);
}

- (int)indexOfWithId:(id)id
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, 0, v5);
}

- (int)lastIndexOfWithId:(id)id
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_lastIndexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, 0, v5);
}

- (BOOL)isEmpty
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 8) == 0;
}

- (id)iterator
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2[2];
  v4 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v4->index_ = 0;
  JreStrongAssign(&v4->snapshot_, v2);
  v4->from_ = 0;
  v4->to_ = v3;
  v4->index_ = 0;

  return v4;
}

- (id)listIterator
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2[2];
  v4 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v4->index_ = 0;
  JreStrongAssign(&v4->snapshot_, v2);
  v4->from_ = 0;
  v4->to_ = v3;
  v4->index_ = 0;

  return v4;
}

- (id)toArray
{
  v3 = atomic_load(&self->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  v3 = atomic_load(&self->elements_);
  if (!v3 || (v4 = array) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v3[2];
  if (v5 <= *(array + 2))
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, array, 0, v3[2]);
    v6 = v3[2];
    if (v6 < v4[2])
    {
      IOSObjectArray_Set(v4, v6, 0);
    }
  }

  else
  {
    v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_withIOSClass_(v3, v5, [array getClass]);
    objc_opt_class();
    if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    hasNext = [JavaUtilList_class_() isInstance:equal];
    if (!hasNext)
    {
      return hasNext;
    }

    v8 = atomic_load(&self->elements_);
    v9 = JavaUtilList_class_();
    if (equal)
    {
      if (([v9 isInstance:equal] & 1) == 0)
      {
LABEL_23:
        JreThrowClassCastException();
      }

      iterator = [equal iterator];
      if (v8)
      {
        v11 = iterator;
        v12 = (v8 + 24);
        v13 = v8 + 24 + 8 * *(v8 + 8);
        while (v12 < v13)
        {
          if (!v11)
          {
            goto LABEL_22;
          }

          v15 = *v12++;
          v14 = v15;
          hasNext = [v11 hasNext];
          if (!hasNext)
          {
            return hasNext;
          }

          if ((LibcoreUtilObjects_equalWithId_withId_(v14, [v11 next]) & 1) == 0)
          {
            LOBYTE(hasNext) = 0;
            return hasNext;
          }
        }

        if (v11)
        {
          LOBYTE(hasNext) = [v11 hasNext] ^ 1;
          return hasNext;
        }
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  if (self == equal)
  {
    LOBYTE(hasNext) = 1;
    return hasNext;
  }

  v5 = atomic_load(&self->elements_);
  objc_opt_class();
  if (!equal)
  {
    goto LABEL_22;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = atomic_load(equal + 1);

  LOBYTE(hasNext) = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v5, v6);
  return hasNext;
}

- (BOOL)addWithId:(id)id
{
  objc_sync_enter(self);
  p_elements = &self->elements_;
  v6 = atomic_load(&self->elements_);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSObjectArray arrayWithLength:*(v6 + 8) + 1 type:NSObject_class_()];
  v8 = atomic_load(p_elements);
  v9 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, 0, v7, 0, *(v9 + 8));
  v10 = atomic_load(p_elements);
  IOSObjectArray_Set(v7, *(v10 + 8), id);
  JreVolatileStrongAssign(&self->elements_, v7);
  objc_sync_exit(self);
  return 1;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self addAllWithInt:*(v5 + 8) withJavaUtilCollection:collection];
  objc_sync_exit(self);
  return v6;
}

- (int)addAllAbsentWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  if (!collection)
  {
    JreThrowNullPointerException();
  }

  toArray = [collection toArray];
  p_elements = &self->elements_;
  v7 = atomic_load(&self->elements_);
  if (!v7 || (v8 = toArray) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = [IOSObjectArray arrayWithLength:toArray[2] + *(v7 + 8) type:NSObject_class_()];
  v10 = atomic_load(p_elements);
  v11 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, 0, v9, 0, *(v11 + 8));
  v12 = (v8 + 6);
  v13 = v8[2];
  v14 = &v8[2 * v13 + 6];
  if ((v8 + 6) >= v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v17 = *v12++;
      v16 = v17;
      v18 = atomic_load(p_elements);
      if (JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(v17, v9, 0, *(v18 + 8) + v15) == -1)
      {
        v19 = atomic_load(p_elements);
        IOSObjectArray_Set(v9, *(v19 + 8) + v15++, v16);
      }
    }

    while (v12 < v14);
    LODWORD(v13) = v8[2];
  }

  if (v15 < v13)
  {
    v20 = atomic_load(p_elements);
    v9 = JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_(v9, 0, *(v20 + 8) + v15);
  }

  JreVolatileStrongAssign(&self->elements_, v9);
  objc_sync_exit(self);
  return v15;
}

- (BOOL)addIfAbsentWithId:(id)id
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self containsWithId:id];
  if ((v5 & 1) == 0)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self addWithId:id];
  }

  objc_sync_exit(self);
  return v5 ^ 1;
}

- (void)clear
{
  objc_sync_enter(self);
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  JreVolatileStrongAssign(&self->elements_, LibcoreUtilEmptyArray_OBJECT_);

  objc_sync_exit(self);
}

- (BOOL)removeWithId:(id)id
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self indexOfWithId:id];
  if (v5 != -1)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self removeWithInt:v5];
  }

  objc_sync_exit(self);
  return v5 != -1;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, collection, 0, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, collection, 1, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  v3 = atomic_load(&self->elements_);
  if (!stream || ([stream defaultWriteObject], !v3))
  {
    JreThrowNullPointerException();
  }

  [stream writeIntWithInt:*(v3 + 8)];
  v5 = (v3 + 24);
  v6 = v3 + 24 + 8 * *(v3 + 8);
  while (v5 < v6)
  {
    v7 = *v5++;
    [stream writeObjectWithId:v7];
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  objc_sync_enter(self);
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  v5 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [stream readInt], NSObject_class_());
  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    do
    {
      IOSObjectArray_Set(v5, v6++, [stream readObject]);
    }

    while (v6 < v5->super.size_);
  }

  JreVolatileStrongAssign(&self->elements_, v5);

  objc_sync_exit(self);
}

- (void)dealloc
{
  JreReleaseVolatile(&self->elements_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  [(JavaUtilConcurrentCopyOnWriteArrayList *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  [(JavaUtilConcurrentCopyOnWriteArrayList *)&v3 __javaClone];
  JreRetainVolatile(&self->elements_);
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilConcurrentCopyOnWriteArrayList *)self clone];

  return clone;
}

@end