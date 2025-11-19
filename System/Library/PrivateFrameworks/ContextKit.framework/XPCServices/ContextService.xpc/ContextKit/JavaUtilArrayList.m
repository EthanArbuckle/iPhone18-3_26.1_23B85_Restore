@interface JavaUtilArrayList
+ (int)newCapacityWithInt:(int)a3;
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)ensureCapacityWithInt:(int)a3;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)trimToSize;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilArrayList

- (BOOL)addWithId:(id)a3
{
  v3 = *&self->size_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(&self->super.modCount_ + 1);
  if (v6 == v3->super.size_)
  {
    v7 = v6 >> 1;
    if (v6 < 6)
    {
      v7 = 12;
    }

    v8 = [IOSObjectArray arrayWithLength:(v7 + v6) type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, v8, 0, v6);
    JreStrongAssign(&self->size_, v8);
    v3 = v8;
  }

  IOSObjectArray_Set(v3, v6, a3);
  *(&self->super.modCount_ + 1) = v6 + 1;
  ++self->super.modCount_;
  return 1;
}

+ (int)newCapacityWithInt:(int)a3
{
  v3 = a3 >> 1;
  if (a3 < 6)
  {
    v3 = 12;
  }

  return v3 + a3;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  if (!a3)
  {
    goto LABEL_11;
  }

  v4 = [a3 toArray];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = v4[2];
  if (!v6)
  {
    return v6 != 0;
  }

  v7 = *&self->size_;
  if (!v7)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = *(&self->super.modCount_ + 1);
  v9 = v8 + v6;
  if (v8 + v6 > v7->super.size_)
  {
    v10 = (v9 - 1) >> 1;
    if (v9 < 7)
    {
      v10 = 12;
    }

    v11 = [IOSObjectArray arrayWithLength:(v10 + v9 - 1) type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v7, 0, v11, 0, v8);
    JreStrongAssign(&self->size_, v11);
    v7 = v11;
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, 0, v7, v8, v6);
  *(&self->super.modCount_ + 1) = v9;
  ++self->super.modCount_;
  return v6 != 0;
}

- (void)clear
{
  v6 = *(&self->super.modCount_ + 1);
  if (v6)
  {
    JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(*&self->size_, 0, v6, 0, v2, v3, v4, v5);
    *(&self->super.modCount_ + 1) = 0;
    ++self->super.modCount_;
  }
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilArrayList;
  v3 = [(JavaUtilArrayList *)&v6 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = *&self->size_;
  if (!v4)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v3 + 2, [v4 clone]);
  return v3;
}

- (void)ensureCapacityWithInt:(int)a3
{
  v3 = *&self->size_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if (v3[2] < a3)
  {
    v5 = [IOSObjectArray arrayWithLength:a3 type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, v5, 0, *(&self->super.modCount_ + 1));
    JreStrongAssign(&self->size_, v5);
    ++self->super.modCount_;
  }
}

- (BOOL)containsWithId:(id)a3
{
  v3 = *&self->size_;
  v4 = *(&self->super.modCount_ + 1);
  if (a3)
  {
    if (v4 >= 1)
    {
      if (v3)
      {
        v6 = 0;
        v7 = v4 - 1;
        v8 = *&self->size_;
        do
        {
          v9 = v7;
          v10 = *(v3 + 8);
          if (v6 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v6);
          }

          result = [a3 isEqual:*(v8 + 24)];
          if (result)
          {
            break;
          }

          ++v6;
          v7 = v9 - 1;
          v8 += 8;
        }

        while (v9);
        return result;
      }

LABEL_23:
      JreThrowNullPointerException();
    }

    return 0;
  }

  if (v4 < 1)
  {
    return 0;
  }

  if (!v3)
  {
    goto LABEL_23;
  }

  v12 = 0;
  v13 = v4 - 1;
  v14 = *&self->size_;
  do
  {
    v15 = *(v3 + 8);
    if (v12 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v12);
    }

    v16 = *(v14 + 24);
    result = v16 == 0;
    if (v16)
    {
      v17 = v13 == v12;
    }

    else
    {
      v17 = 1;
    }

    v12 = (v12 + 1);
    v14 += 8;
  }

  while (!v17);
  return result;
}

- (int)indexOfWithId:(id)a3
{
  v3 = *&self->size_;
  v4 = *(&self->super.modCount_ + 1);
  if (a3)
  {
    if (v4 >= 1)
    {
      if (v3)
      {
        v6 = 0;
        while (1)
        {
          v7 = *(v3 + 8);
          if (v6 >= v7)
          {
            IOSArray_throwOutOfBoundsWithMsg(v7, v6);
          }

          if ([a3 isEqual:*(v3 + 24 + 8 * v6)])
          {
            return v6;
          }

          if (v4 == ++v6)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }

LABEL_18:
    LODWORD(v6) = -1;
    return v6;
  }

  if (v4 < 1)
  {
    goto LABEL_18;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v6 = 0;
  v8 = *&self->size_;
  while (1)
  {
    v9 = *(v3 + 8);
    if (v6 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v6);
    }

    if (!*(v8 + 24))
    {
      return v6;
    }

    v6 = (v6 + 1);
    v8 += 8;
    if (v4 == v6)
    {
      goto LABEL_18;
    }
  }
}

- (int)lastIndexOfWithId:(id)a3
{
  v3 = *&self->size_;
  v4 = *(&self->super.modCount_ + 1);
  if (a3)
  {
    v6 = v4 - 1;
    while (1)
    {
      v4 = (v4 - 1);
      if (v4 < 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8);
      if (v7 <= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v4);
      }

      v8 = [a3 isEqual:*(v3 + 24 + 8 * (v6-- & 0x7FFFFFFF))];
      if (v8)
      {
        return v4;
      }
    }
  }

  else
  {
    v9 = v4 - 1;
    while (1)
    {
      v4 = (v4 - 1);
      if (v4 < 0)
      {
        break;
      }

      if (!v3)
      {
LABEL_18:
        JreThrowNullPointerException();
      }

      v10 = *(v3 + 8);
      if (v10 <= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v4);
      }

      if (!*(v3 + 24 + 8 * (v9-- & 0x7FFFFFFF)))
      {
        return v4;
      }
    }
  }

  LODWORD(v4) = -1;
  return v4;
}

- (BOOL)removeWithId:(id)a3
{
  v4 = *&self->size_;
  v5 = *(&self->super.modCount_ + 1);
  v6 = *(&self->super.modCount_ + 1);
  if (!a3)
  {
    if (v5 >= 1)
    {
      if (v4)
      {
        v8 = 0;
        for (i = *&self->size_; ; i += 8)
        {
          v11 = v4[2];
          if (v8 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v8);
          }

          if (!*(i + 24))
          {
            break;
          }

          v8 = (v8 + 1);
          if (v6 == v8)
          {
            return 0;
          }
        }

        goto LABEL_19;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    return 0;
  }

  if (v6 < 1)
  {
    return 0;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  v8 = 0;
  while (1)
  {
    v9 = v4[2];
    if (v8 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v8);
    }

    if ([a3 isEqual:*&v4[2 * v8 + 6]])
    {
      break;
    }

    if (v5 == ++v8)
    {
      return 0;
    }
  }

LABEL_19:
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v4, (v8 + 1), v4, v8, (v5 - 1 - v8));
  IOSObjectArray_Set(v4, v5 - 1, 0);
  *(&self->super.modCount_ + 1) = v5 - 1;
  ++self->super.modCount_;
  return 1;
}

- (id)toArray
{
  v3 = *(&self->super.modCount_ + 1);
  v4 = [IOSObjectArray arrayWithLength:v3 type:NSObject_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*&self->size_, 0, v4, 0, v3);
  return v4;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v3 = a3;
  v5 = *(&self->super.modCount_ + 1);
  if (*(a3 + 2) < v5)
  {
    v3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], v5);
    objc_opt_class();
    if (v3)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*&self->size_, 0, v3, 0, v5);
  if (!v3)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if (v3[2] > v5)
  {
    IOSObjectArray_Set(v3, v5, 0);
  }

  return v3;
}

- (void)trimToSize
{
  v2 = *&self->size_;
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(&self->super.modCount_ + 1);
  if (v4 != *(v2 + 8))
  {
    if (v4)
    {
      v5 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*&self->size_, 0, v5, 0, v4);
    }

    else
    {
      if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001BBB54();
      }

      v5 = LibcoreUtilEmptyArray_OBJECT_;
    }

    JreStrongAssign(&self->size_, v5);
    ++self->super.modCount_;
  }
}

- (id)iterator
{
  v3 = [JavaUtilArrayList_ArrayListIterator alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->remaining_ = *(&self->super.modCount_ + 1);
  v3->removalIndex_ = -1;
  v3->expectedModCount_ = self->super.modCount_;

  return v3;
}

- (unint64_t)hash
{
  v2 = *(&self->super.modCount_ + 1);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = *&self->size_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = 0;
  v5 = 1;
  v6 = *&self->size_;
  do
  {
    v7 = *(v3 + 8);
    if (v4 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, v4);
    }

    v8 = *(v6 + 24);
    if (v8)
    {
      LODWORD(v8) = [v8 hash];
    }

    v5 = v8 + 31 * v5;
    ++v4;
    v6 += 8;
  }

  while (v2 != v4);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_31;
  }

  v5 = [JavaUtilList_class_() isInstance:a3];
  if (!v5)
  {
    return v5;
  }

  v6 = JavaUtilList_class_();
  if (!a3)
  {
    goto LABEL_30;
  }

  if (([v6 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = *(&self->super.modCount_ + 1);
  if ([a3 size] != v7)
  {
LABEL_32:
    LOBYTE(v5) = 0;
    return v5;
  }

  v8 = *&self->size_;
  if (![JavaUtilRandomAccess_class_() isInstance:a3])
  {
    v13 = [a3 iterator];
    if (v7 < 1)
    {
      goto LABEL_31;
    }

    if (v8)
    {
      v14 = v13;
      v15 = 0;
      for (i = v8; ; i += 8)
      {
        v17 = *(v8 + 8);
        if (v15 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v15);
        }

        if (!v14)
        {
          break;
        }

        v18 = *(i + 24);
        v19 = [v14 next];
        if (v18)
        {
          v5 = [v18 isEqual:v19];
          if (!v5)
          {
            return v5;
          }
        }

        else if (v19)
        {
          goto LABEL_32;
        }

        ++v15;
        LOBYTE(v5) = 1;
        if (v7 == v15)
        {
          return v5;
        }
      }
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  if (v7 < 1)
  {
LABEL_31:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  for (j = 0; j != v7; ++j)
  {
    v10 = *(v8 + 8);
    if (j >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, j);
    }

    v11 = *(v8 + 24 + 8 * j);
    v12 = [a3 getWithInt:j];
    if (v11)
    {
      v5 = [v11 isEqual:v12];
      if (!v5)
      {
        return v5;
      }
    }

    else if (v12)
    {
      goto LABEL_32;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || ([a3 defaultWriteObject], (v5 = *&self->size_) == 0))
  {
    JreThrowNullPointerException();
  }

  [a3 writeIntWithInt:*(v5 + 8)];
  if (*(&self->super.modCount_ + 1) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *&self->size_;
      v8 = *(v7 + 8);
      if (v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      [a3 writeObjectWithId:*(v7 + 24 + 8 * v6++)];
    }

    while (v6 < *(&self->super.modCount_ + 1));
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = [a3 readInt];
  if (v5 < *(&self->super.modCount_ + 1))
  {
    v17 = *(&self->super.modCount_ + 1);
    v15 = JreStrcat("$I$I", v6, v7, v8, v9, v10, v11, v12, @"Capacity: ");
    v16 = new_JavaIoInvalidObjectException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  if (v5)
  {
    v13 = [IOSObjectArray arrayWithLength:v5 type:NSObject_class_()];
  }

  else
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    v13 = LibcoreUtilEmptyArray_OBJECT_;
  }

  JreStrongAssign(&self->size_, v13);
  if (*(&self->super.modCount_ + 1) >= 1)
  {
    v14 = 0;
    do
    {
      IOSObjectArray_Set(*&self->size_, v14++, [a3 readObject]);
    }

    while (v14 < *(&self->super.modCount_ + 1));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrayList;
  [(JavaUtilArrayList *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  a3->var2 = &self->super.modCount_;
  v6 = (*&self->size_ + 24);
  a3->var0 = 1;
  a3->var1 = v6;
  return *(&self->super.modCount_ + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilArrayList *)self clone];

  return v3;
}

@end