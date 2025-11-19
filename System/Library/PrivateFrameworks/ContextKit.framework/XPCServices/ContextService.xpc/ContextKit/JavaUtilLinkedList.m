@interface JavaUtilLinkedList
- (BOOL)addAllWithInt:(int)a3 withJavaUtilCollection:(id)a4;
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeLastOccurrenceWithId:(id)a3;
- (JavaUtilLinkedList)initWithJavaUtilCollection:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descendingIterator;
- (id)getLast;
- (id)getWithInt:(int)a3;
- (id)listIteratorWithInt:(int)a3;
- (id)peek;
- (id)peekFirst;
- (id)peekFirstImpl;
- (id)peekLast;
- (id)poll;
- (id)pollFirst;
- (id)pollLast;
- (id)removeLastImpl;
- (id)removeWithInt:(int)a3;
- (id)setWithInt:(int)a3 withId:(id)a4;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (uint64_t)getFirstImpl;
- (uint64_t)removeFirstImpl;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addWithInt:(int)a3 withId:(id)a4;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilLinkedList

- (JavaUtilLinkedList)initWithJavaUtilCollection:(id)a3
{
  JavaUtilLinkedList_init(self);
  [(JavaUtilLinkedList *)self addAllWithJavaUtilCollection:a3];
  return self;
}

- (void)addWithInt:(int)a3 withId:(id)a4
{
  if (a3 < 0 || (v6 = *(&self->super.super.modCount_ + 1), v6 < a3))
  {
    v13 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v13);
  }

  Weak = *&self->size_;
  if (a3 < v6 >> 1)
  {
    v9 = a3 + 1;
    while (Weak)
    {
      Weak = *(Weak + 3);
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

  if (v6 > a3)
  {
    while (Weak)
    {
      Weak = objc_loadWeak(Weak + 2);
      if (--v6 <= a3)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  if (!Weak)
  {
    goto LABEL_14;
  }

  v10 = objc_loadWeak(Weak + 2);
  v11 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(a4, v10, Weak);
  if (!v10)
  {
    goto LABEL_14;
  }

  v12 = v11;
  JreStrongAssign(v10 + 3, v11);
  objc_storeWeak(Weak + 2, v12);
  ++*(&self->super.super.modCount_ + 1);
  ++self->super.super.modCount_;
}

- (BOOL)addAllWithInt:(int)a3 withJavaUtilCollection:(id)a4
{
  if (a3 < 0 || (v4 = a3, *(&self->super.super.modCount_ + 1) < a3))
  {
    v18 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v18);
  }

  v6 = a4;
  if (!a4)
  {
    goto LABEL_27;
  }

  v7 = [a4 size];
  if (v7)
  {
    if (v6 == self)
    {
      v6 = new_JavaUtilArrayList_initWithJavaUtilCollection_(v6);
    }

    Weak = *&self->size_;
    v9 = *(&self->super.super.modCount_ + 1);
    if (v4 >= v9 / 2)
    {
      if (v9 >= v4)
      {
        v10 = v9 + 1;
        while (Weak)
        {
          Weak = objc_loadWeak(&Weak->previous_);
          if (--v10 <= v4)
          {
            goto LABEL_16;
          }
        }

LABEL_27:
        JreThrowNullPointerException();
      }
    }

    else if (v4)
    {
      while (Weak)
      {
        Weak = Weak->next_;
        if (!--v4)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_27;
    }

LABEL_16:
    if (!Weak)
    {
      goto LABEL_27;
    }

    p_isa = &Weak->next_->super.isa;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        v16 = &Weak->super.isa;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          Weak = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(*(*(&v19 + 1) + 8 * v15), v16, 0);
          JreStrongAssign(v16 + 3, Weak);
          v15 = v15 + 1;
          v16 = &Weak->super.isa;
        }

        while (v13 != v15);
        v13 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    JreStrongAssign(&Weak->next_, p_isa);
    if (!p_isa)
    {
      goto LABEL_27;
    }

    objc_storeWeak(p_isa + 2, Weak);
    *(&self->super.super.modCount_ + 1) += v7;
    ++self->super.super.modCount_;
  }

  return v7 != 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  if (!a3)
  {
    goto LABEL_17;
  }

  v3 = a3;
  v5 = [a3 size];
  if (v5)
  {
    if (v3 == self)
    {
      v3 = new_JavaUtilArrayList_initWithJavaUtilCollection_(v3);
    }

    v6 = *&self->size_;
    if (v6)
    {
      Weak = objc_loadWeak((v6 + 16));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [(JavaUtilArrayList *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          v12 = Weak;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v3);
            }

            v13 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(*(*(&v15 + 1) + 8 * v11), v12, 0);
            if (!v12)
            {
              goto LABEL_17;
            }

            Weak = &v13->super.isa;
            JreStrongAssign(v12 + 3, v13);
            v11 = v11 + 1;
            v12 = Weak;
          }

          while (v9 != v11);
          v9 = [(JavaUtilArrayList *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      if (Weak)
      {
        JreStrongAssign(Weak + 3, *&self->size_);
        objc_storeWeak((*&self->size_ + 16), Weak);
        *(&self->super.super.modCount_ + 1) += v5;
        ++self->super.super.modCount_;
        return v5 != 0;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  return v5 != 0;
}

- (void)clear
{
  if (*(&self->super.super.modCount_ + 1) >= 1)
  {
    *(&self->super.super.modCount_ + 1) = 0;
    v3 = *&self->size_;
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(v3 + 3, v3);
    objc_storeWeak((*&self->size_ + 16), *&self->size_);
    ++self->super.super.modCount_;
  }
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilLinkedList;
  v3 = [(JavaUtilLinkedList *)&v6 clone];
  objc_opt_class();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  *(v3 + 3) = 0;
  v4 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(0, 0, 0);
  JreStrongAssignAndConsume(v3 + 2, v4);
  objc_storeWeak((*(v3 + 2) + 16), *(v3 + 2));
  JreStrongAssign((*(v3 + 2) + 24), *(v3 + 2));
  [v3 addAllWithJavaUtilCollection:self];
  return v3;
}

- (BOOL)containsWithId:(id)a3
{
  v3 = *&self->size_;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *(v3 + 24);
  if (a3)
  {
    if (v5 != v3)
    {
      while (v5)
      {
        result = [a3 isEqual:*(v5 + 8)];
        if (!result)
        {
          v5 = *(v5 + 24);
          if (v5 != *&self->size_)
          {
            continue;
          }
        }

        return result;
      }

      goto LABEL_15;
    }
  }

  else if (v5 != v3)
  {
    while (v5)
    {
      v8 = *(v5 + 8);
      result = v8 == 0;
      if (v8)
      {
        v5 = *(v5 + 24);
        if (v5 != v3)
        {
          continue;
        }
      }

      return result;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)getWithInt:(int)a3
{
  if (a3 < 0 || (v4 = *(&self->super.super.modCount_ + 1), v4 <= a3))
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v8);
  }

  Weak = *&self->size_;
  if (a3 < v4 >> 1)
  {
    v6 = a3 + 1;
    while (Weak)
    {
      Weak = *(Weak + 3);
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  do
  {
    if (!Weak)
    {
      goto LABEL_12;
    }

    Weak = objc_loadWeak(Weak + 2);
    --v4;
  }

  while (v4 > a3);
LABEL_10:
  if (!Weak)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  return *(Weak + 1);
}

- (uint64_t)getFirstImpl
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = *(v1 + 24);
  if (v2 == v1)
  {
    v4 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v4);
  }

  if (!v2)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  return *(v2 + 8);
}

- (id)getLast
{
  v2 = *&self->size_;
  if (!v2)
  {
    goto LABEL_5;
  }

  Weak = objc_loadWeak((v2 + 16));
  if (Weak == *&self->size_)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  if (!Weak)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  return *(Weak + 1);
}

- (int)indexOfWithId:(id)a3
{
  v3 = *&self->size_;
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 24);
  if (a3)
  {
    if (v5 != v3)
    {
      v7 = 0;
      while (v5)
      {
        if ([a3 isEqual:*(v5 + 8)])
        {
          return v7;
        }

        v5 = *(v5 + 24);
        ++v7;
        if (v5 == *&self->size_)
        {
          return -1;
        }
      }

      goto LABEL_16;
    }
  }

  else if (v5 != v3)
  {
    v7 = 0;
    while (v5)
    {
      if (!*(v5 + 8))
      {
        return v7;
      }

      v5 = *(v5 + 24);
      ++v7;
      if (v5 == v3)
      {
        return -1;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  return -1;
}

- (int)lastIndexOfWithId:(id)a3
{
  v3 = *&self->size_;
  if (!v3)
  {
    goto LABEL_16;
  }

  v6 = *(&self->super.super.modCount_ + 1);
  Weak = objc_loadWeak((v3 + 16));
  v8 = Weak;
  v9 = *&self->size_;
  if (a3)
  {
    if (Weak != v9)
    {
      v10 = v6 - 1;
      while (v8)
      {
        if ([a3 isEqual:*(v8 + 1)])
        {
          return v10;
        }

        v8 = objc_loadWeak(v8 + 2);
        --v10;
        if (v8 == *&self->size_)
        {
          return -1;
        }
      }

      goto LABEL_16;
    }
  }

  else if (Weak != v9)
  {
    v10 = v6 - 1;
    while (v8)
    {
      if (!*(v8 + 1))
      {
        return v10;
      }

      v8 = objc_loadWeak(v8 + 2);
      --v10;
      if (v8 == *&self->size_)
      {
        return -1;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  return -1;
}

- (id)listIteratorWithInt:(int)a3
{
  v5 = [JavaUtilLinkedList_LinkIterator alloc];
  sub_1001A67CC(v5, self, a3);

  return v5;
}

- (id)removeWithInt:(int)a3
{
  if (a3 < 0 || (v5 = *(&self->super.super.modCount_ + 1), v5 <= a3))
  {
    v12 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v12);
  }

  Weak = *&self->size_;
  if (a3 < v5 >> 1)
  {
    v7 = a3 + 1;
    while (Weak)
    {
      Weak = *(Weak + 3);
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_14;
  }

  do
  {
    if (!Weak)
    {
      goto LABEL_14;
    }

    Weak = objc_loadWeak(Weak + 2);
    --v5;
  }

  while (v5 > a3);
LABEL_10:
  if (!Weak || (v8 = objc_loadWeak(Weak + 2)) == 0 || (v9 = v8, v10 = *(Weak + 3), JreStrongAssign(v8 + 3, v10), !v10))
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  objc_storeWeak(v10 + 2, v9);
  --*(&self->super.super.modCount_ + 1);
  ++self->super.super.modCount_;
  return *(Weak + 1);
}

- (uint64_t)removeFirstImpl
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 24);
  if (v3 == v1)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  if (!v3 || (v4 = *(v3 + 24), JreStrongAssign((v1 + 24), v4), !v4))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  objc_storeWeak(v4 + 2, *(a1 + 16));
  --*(a1 + 12);
  ++*(a1 + 8);
  return *(v3 + 8);
}

- (id)removeLastImpl
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  Weak = objc_loadWeak((v1 + 16));
  if (Weak == *(a1 + 16))
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v7);
  }

  v4 = Weak;
  if (!Weak || (v5 = objc_loadWeak(Weak + 2), objc_storeWeak((*(a1 + 16) + 16), v5), !v5))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v5 + 3, *(a1 + 16));
  --*(a1 + 12);
  ++*(a1 + 8);
  return v4[1];
}

- (id)descendingIterator
{
  v3 = [JavaUtilLinkedList_ReverseLinkIterator alloc];
  sub_1001A6E54(v3, self);

  return v3;
}

- (id)peekFirst
{
  v2 = *&self->size_;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 24);
  if (v3 != v2)
  {
    if (v3)
    {
      return *(v3 + 8);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)peekLast
{
  v2 = *&self->size_;
  if (!v2)
  {
    goto LABEL_6;
  }

  Weak = objc_loadWeak((v2 + 16));
  if (Weak != *&self->size_)
  {
    if (Weak)
    {
      return *(Weak + 1);
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)pollFirst
{
  if (*(&self->super.super.modCount_ + 1))
  {
    return [JavaUtilLinkedList removeFirstImpl]_0(self);
  }

  else
  {
    return 0;
  }
}

- (id)pollLast
{
  if (*(&self->super.super.modCount_ + 1))
  {
    return [JavaUtilLinkedList removeLastImpl]_0(self);
  }

  else
  {
    return 0;
  }
}

- (BOOL)removeLastOccurrenceWithId:(id)a3
{
  v5 = [JavaUtilLinkedList_ReverseLinkIterator alloc];
  sub_1001A6E54(v5, self);
  v6 = v5;

  return sub_1001A5FDC(a3, v6);
}

- (id)setWithInt:(int)a3 withId:(id)a4
{
  if (a3 < 0 || (v5 = *(&self->super.super.modCount_ + 1), v5 <= a3))
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v11);
  }

  Weak = *&self->size_;
  if (a3 < v5 >> 1)
  {
    v8 = a3 + 1;
    while (Weak)
    {
      Weak = *(Weak + 3);
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  do
  {
    if (!Weak)
    {
      goto LABEL_12;
    }

    Weak = objc_loadWeak(Weak + 2);
    --v5;
  }

  while (v5 > a3);
LABEL_10:
  if (!Weak)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v9 = *(Weak + 1);
  JreStrongAssign(Weak + 1, a4);
  return v9;
}

- (id)poll
{
  if (*(&self->super.super.modCount_ + 1))
  {
    return [(JavaUtilLinkedList *)self removeFirst];
  }

  else
  {
    return 0;
  }
}

- (id)peek
{
  v2 = *&self->size_;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 24);
  if (v3 != v2)
  {
    if (v3)
    {
      return *(v3 + 8);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)peekFirstImpl
{
  v2 = *&self->size_;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 24);
  if (v3 != v2)
  {
    if (v3)
    {
      return *(v3 + 8);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)toArray
{
  v3 = [IOSObjectArray arrayWithLength:*(&self->super.super.modCount_ + 1) type:NSObject_class_()];
  v4 = *&self->size_;
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v3;
  v6 = *(v4 + 24);
  if (v6 != v4)
  {
    v7 = 0;
    while (v6)
    {
      v8 = v7++;
      IOSObjectArray_Set(v5, v8, *(v6 + 8));
      v6 = *(v6 + 24);
      if (v6 == *&self->size_)
      {
        return v5;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return v5;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v3 = a3;
  if (*(&self->super.super.modCount_ + 1) > *(a3 + 2))
  {
    v3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], *(&self->super.super.modCount_ + 1));
    objc_opt_class();
    if (v3)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }
  }

  v5 = *&self->size_;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 24);
  if (v6 != v5)
  {
    if (v3)
    {
      v7 = 0;
      while (v6)
      {
        v8 = v7++;
        IOSObjectArray_Set(v3, v8, *(v6 + 8));
        v6 = *(v6 + 24);
        if (v6 == *&self->size_)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v7 = 0;
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v7 < v3[2])
  {
    IOSObjectArray_Set(v3, v7, 0);
  }

  return v3;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || ([a3 defaultWriteObject], objc_msgSend(a3, "writeIntWithInt:", *(&self->super.super.modCount_ + 1)), (v5 = -[JavaUtilAbstractSequentialList iterator](self, "iterator")) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    do
    {
      [a3 writeObjectWithId:{objc_msgSend(v6, "next")}];
    }

    while (([v6 hasNext] & 1) != 0);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  *(&self->super.super.modCount_ + 1) = [a3 readInt];
  v5 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(0, 0, 0);
  JreStrongAssignAndConsume(&self->size_, v5);
  v6 = *&self->size_;
  v7 = *(&self->super.super.modCount_ + 1);
  if (v7 - 1 < 0)
  {
    v9 = *&self->size_;
  }

  else
  {
    do
    {
      v8 = v6;
      v6 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_([a3 readObject], v6, 0);
      JreStrongAssign(&v8->next_, v6);
      --v7;
    }

    while (v7);
    v9 = *&self->size_;
  }

  JreStrongAssign(&v6->next_, v9);
  v10 = (*&self->size_ + 16);

  objc_storeWeak(v10, v6);
}

- (void)dealloc
{
  [(JavaUtilLinkedList *)self clear];
  v3 = JreStrongAssign((*&self->size_ + 24), 0);
  v4 = *&self->size_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  objc_storeWeak((v4 + 16), v3);

  v5.receiver = self;
  v5.super_class = JavaUtilLinkedList;
  [(JavaUtilLinkedList *)&v5 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v5 = a3->var3[0];
  if (!v5)
  {
    a3->var2 = &self->super.super.modCount_;
    v5 = *(*&self->size_ + 24);
  }

  a3->var1 = a4;
  for (i = 0; v5 != *&self->size_ && i < a5; v5 = *(v5 + 24))
  {
    a4[i++] = *(v5 + 8);
  }

  a3->var3[0] = v5;
  return i;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilLinkedList *)self clone];

  return v3;
}

@end