@interface JavaUtilLinkedList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)removeLastOccurrenceWithId:(id)id;
- (JavaUtilLinkedList)initWithJavaUtilCollection:(id)collection;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descendingIterator;
- (id)getLast;
- (id)getWithInt:(int)int;
- (id)listIteratorWithInt:(int)int;
- (id)peek;
- (id)peekFirst;
- (id)peekFirstImpl;
- (id)peekLast;
- (id)poll;
- (id)pollFirst;
- (id)pollLast;
- (id)removeLastImpl;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (uint64_t)getFirstImpl;
- (uint64_t)removeFirstImpl;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addWithInt:(int)int withId:(id)id;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilLinkedList

- (JavaUtilLinkedList)initWithJavaUtilCollection:(id)collection
{
  JavaUtilLinkedList_init(self);
  [(JavaUtilLinkedList *)self addAllWithJavaUtilCollection:collection];
  return self;
}

- (void)addWithInt:(int)int withId:(id)id
{
  if (int < 0 || (v6 = *(&self->super.super.modCount_ + 1), v6 < int))
  {
    v13 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v13);
  }

  Weak = *&self->size_;
  if (int < v6 >> 1)
  {
    v9 = int + 1;
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

  if (v6 > int)
  {
    while (Weak)
    {
      Weak = objc_loadWeak(Weak + 2);
      if (--v6 <= int)
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
  v11 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(id, v10, Weak);
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

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  if (int < 0 || (v4 = int, *(&self->super.super.modCount_ + 1) < int))
  {
    v18 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v18);
  }

  collectionCopy = collection;
  if (!collection)
  {
    goto LABEL_27;
  }

  v7 = [collection size];
  if (v7)
  {
    if (collectionCopy == self)
    {
      collectionCopy = new_JavaUtilArrayList_initWithJavaUtilCollection_(collectionCopy);
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
    v12 = [(JavaUtilArrayList *)collectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(collectionCopy);
          }

          Weak = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(*(*(&v19 + 1) + 8 * v15), v16, 0);
          JreStrongAssign(v16 + 3, Weak);
          v15 = v15 + 1;
          v16 = &Weak->super.isa;
        }

        while (v13 != v15);
        v13 = [(JavaUtilArrayList *)collectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  if (!collection)
  {
    goto LABEL_17;
  }

  collectionCopy = collection;
  v5 = [collection size];
  if (v5)
  {
    if (collectionCopy == self)
    {
      collectionCopy = new_JavaUtilArrayList_initWithJavaUtilCollection_(collectionCopy);
    }

    v6 = *&self->size_;
    if (v6)
    {
      Weak = objc_loadWeak((v6 + 16));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [(JavaUtilArrayList *)collectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(collectionCopy);
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
          v9 = [(JavaUtilArrayList *)collectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  clone = [(JavaUtilLinkedList *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  *(clone + 3) = 0;
  v4 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(0, 0, 0);
  JreStrongAssignAndConsume(clone + 2, v4);
  objc_storeWeak((*(clone + 2) + 16), *(clone + 2));
  JreStrongAssign((*(clone + 2) + 24), *(clone + 2));
  [clone addAllWithJavaUtilCollection:self];
  return clone;
}

- (BOOL)containsWithId:(id)id
{
  v3 = *&self->size_;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *(v3 + 24);
  if (id)
  {
    if (v5 != v3)
    {
      while (v5)
      {
        result = [id isEqual:*(v5 + 8)];
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

- (id)getWithInt:(int)int
{
  if (int < 0 || (v4 = *(&self->super.super.modCount_ + 1), v4 <= int))
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v8);
  }

  Weak = *&self->size_;
  if (int < v4 >> 1)
  {
    v6 = int + 1;
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

  while (v4 > int);
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
  v1 = *(self + 16);
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

- (int)indexOfWithId:(id)id
{
  v3 = *&self->size_;
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 24);
  if (id)
  {
    if (v5 != v3)
    {
      v7 = 0;
      while (v5)
      {
        if ([id isEqual:*(v5 + 8)])
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

- (int)lastIndexOfWithId:(id)id
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
  if (id)
  {
    if (Weak != v9)
    {
      v10 = v6 - 1;
      while (v8)
      {
        if ([id isEqual:*(v8 + 1)])
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

- (id)listIteratorWithInt:(int)int
{
  v5 = [JavaUtilLinkedList_LinkIterator alloc];
  sub_1001A67CC(v5, self, int);

  return v5;
}

- (id)removeWithInt:(int)int
{
  if (int < 0 || (v5 = *(&self->super.super.modCount_ + 1), v5 <= int))
  {
    v12 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v12);
  }

  Weak = *&self->size_;
  if (int < v5 >> 1)
  {
    v7 = int + 1;
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

  while (v5 > int);
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
  v1 = *(self + 16);
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

  objc_storeWeak(v4 + 2, *(self + 16));
  --*(self + 12);
  ++*(self + 8);
  return *(v3 + 8);
}

- (id)removeLastImpl
{
  v1 = *(self + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  Weak = objc_loadWeak((v1 + 16));
  if (Weak == *(self + 16))
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v7);
  }

  v4 = Weak;
  if (!Weak || (v5 = objc_loadWeak(Weak + 2), objc_storeWeak((*(self + 16) + 16), v5), !v5))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v5 + 3, *(self + 16));
  --*(self + 12);
  ++*(self + 8);
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

- (BOOL)removeLastOccurrenceWithId:(id)id
{
  v5 = [JavaUtilLinkedList_ReverseLinkIterator alloc];
  sub_1001A6E54(v5, self);
  v6 = v5;

  return sub_1001A5FDC(id, v6);
}

- (id)setWithInt:(int)int withId:(id)id
{
  if (int < 0 || (v5 = *(&self->super.super.modCount_ + 1), v5 <= int))
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v11);
  }

  Weak = *&self->size_;
  if (int < v5 >> 1)
  {
    v8 = int + 1;
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

  while (v5 > int);
LABEL_10:
  if (!Weak)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v9 = *(Weak + 1);
  JreStrongAssign(Weak + 1, id);
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

- (id)toArrayWithNSObjectArray:(id)array
{
  if (!array)
  {
    goto LABEL_15;
  }

  arrayCopy = array;
  if (*(&self->super.super.modCount_ + 1) > *(array + 2))
  {
    arrayCopy = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(array "getClass")], *(&self->super.super.modCount_ + 1));
    objc_opt_class();
    if (arrayCopy)
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
    if (arrayCopy)
    {
      v7 = 0;
      while (v6)
      {
        v8 = v7++;
        IOSObjectArray_Set(arrayCopy, v8, *(v6 + 8));
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
  if (!arrayCopy)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v7 < arrayCopy[2])
  {
    IOSObjectArray_Set(arrayCopy, v7, 0);
  }

  return arrayCopy;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream || ([stream defaultWriteObject], objc_msgSend(stream, "writeIntWithInt:", *(&self->super.super.modCount_ + 1)), (v5 = -[JavaUtilAbstractSequentialList iterator](self, "iterator")) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    do
    {
      [stream writeObjectWithId:{objc_msgSend(v6, "next")}];
    }

    while (([v6 hasNext] & 1) != 0);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  *(&self->super.super.modCount_ + 1) = [stream readInt];
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
      v6 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_([stream readObject], v6, 0);
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v5 = state->var3[0];
  if (!v5)
  {
    state->var2 = &self->super.super.modCount_;
    v5 = *(*&self->size_ + 24);
  }

  state->var1 = objects;
  for (i = 0; v5 != *&self->size_ && i < count; v5 = *(v5 + 24))
  {
    objects[i++] = *(v5 + 8);
  }

  state->var3[0] = v5;
  return i;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilLinkedList *)self clone];

  return clone;
}

@end