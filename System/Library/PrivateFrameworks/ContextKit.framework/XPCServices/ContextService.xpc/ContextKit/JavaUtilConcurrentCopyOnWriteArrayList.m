@interface JavaUtilConcurrentCopyOnWriteArrayList
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addIfAbsentWithId:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iterator;
- (id)listIterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)addAllAbsentWithJavaUtilCollection:(id)a3;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (int)size;
- (void)__javaClone;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList

- (id)clone
{
  v5.receiver = self;
  v5.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  v2 = [(JavaUtilConcurrentCopyOnWriteArrayList *)&v5 clone];
  objc_opt_class();
  if (!v2)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v3 = atomic_load(v2 + 1);
  if (!v3)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign(v2 + 1, [v3 clone]);
  return v2;
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

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_containsAllWithJavaUtilCollection_withNSObjectArray_withInt_withInt_(a3, v4, 0, v5);
}

- (int)indexOfWithId:(id)a3
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(a3, v4, 0, v5);
}

- (int)lastIndexOfWithId:(id)a3
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_lastIndexOfWithId_withNSObjectArray_withInt_withInt_(a3, v4, 0, v5);
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

- (id)toArrayWithNSObjectArray:(id)a3
{
  v3 = atomic_load(&self->elements_);
  if (!v3 || (v4 = a3) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v3[2];
  if (v5 <= *(a3 + 2))
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, a3, 0, v3[2]);
    v6 = v3[2];
    if (v6 < v4[2])
    {
      IOSObjectArray_Set(v4, v6, 0);
    }
  }

  else
  {
    v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_withIOSClass_(v3, v5, [a3 getClass]);
    objc_opt_class();
    if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [JavaUtilList_class_() isInstance:a3];
    if (!v7)
    {
      return v7;
    }

    v8 = atomic_load(&self->elements_);
    v9 = JavaUtilList_class_();
    if (a3)
    {
      if (([v9 isInstance:a3] & 1) == 0)
      {
LABEL_23:
        JreThrowClassCastException();
      }

      v10 = [a3 iterator];
      if (v8)
      {
        v11 = v10;
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
          v7 = [v11 hasNext];
          if (!v7)
          {
            return v7;
          }

          if ((LibcoreUtilObjects_equalWithId_withId_(v14, [v11 next]) & 1) == 0)
          {
            LOBYTE(v7) = 0;
            return v7;
          }
        }

        if (v11)
        {
          LOBYTE(v7) = [v11 hasNext] ^ 1;
          return v7;
        }
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  if (self == a3)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v5 = atomic_load(&self->elements_);
  objc_opt_class();
  if (!a3)
  {
    goto LABEL_22;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = atomic_load(a3 + 1);

  LOBYTE(v7) = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v5, v6);
  return v7;
}

- (BOOL)addWithId:(id)a3
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
  IOSObjectArray_Set(v7, *(v10 + 8), a3);
  JreVolatileStrongAssign(&self->elements_, v7);
  objc_sync_exit(self);
  return 1;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self addAllWithInt:*(v5 + 8) withJavaUtilCollection:a3];
  objc_sync_exit(self);
  return v6;
}

- (int)addAllAbsentWithJavaUtilCollection:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 toArray];
  p_elements = &self->elements_;
  v7 = atomic_load(&self->elements_);
  if (!v7 || (v8 = v5) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = [IOSObjectArray arrayWithLength:v5[2] + *(v7 + 8) type:NSObject_class_()];
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

- (BOOL)addIfAbsentWithId:(id)a3
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self containsWithId:a3];
  if ((v5 & 1) == 0)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self addWithId:a3];
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

- (BOOL)removeWithId:(id)a3
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self indexOfWithId:a3];
  if (v5 != -1)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self removeWithInt:v5];
  }

  objc_sync_exit(self);
  return v5 != -1;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, a3, 0, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, a3, 1, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  v3 = atomic_load(&self->elements_);
  if (!a3 || ([a3 defaultWriteObject], !v3))
  {
    JreThrowNullPointerException();
  }

  [a3 writeIntWithInt:*(v3 + 8)];
  v5 = (v3 + 24);
  v6 = v3 + 24 + 8 * *(v3 + 8);
  while (v5 < v6)
  {
    v7 = *v5++;
    [a3 writeObjectWithId:v7];
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [a3 readInt], NSObject_class_());
  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    do
    {
      IOSObjectArray_Set(v5, v6++, [a3 readObject]);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self clone];

  return v3;
}

@end