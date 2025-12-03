@interface JavaUtilIdentityHashMap
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)massageValueWithId:(id)id;
- (id)newElementArrayWithInt:(int)int;
- (id)putWithId:(id)id withId:(id)withId;
- (id)rehash;
- (id)removeWithId:(id)id;
- (id)values;
- (int)computeElementArraySize;
- (int)getThresholdWithInt:(int)int;
- (void)clear;
- (void)computeMaxSize;
- (void)dealloc;
- (void)putAllImplWithJavaUtilMap:(id)map;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilIdentityHashMap

- (int)getThresholdWithInt:(int)int
{
  if (int <= 3)
  {
    return 3;
  }

  else
  {
    return int;
  }
}

- (int)computeElementArraySize
{
  if (((10000 * self->threshold_ / 7500) & 0x40000000) != 0)
  {
    return -2 * (10000 * self->threshold_ / 7500);
  }

  else
  {
    return 2 * (10000 * self->threshold_ / 7500);
  }
}

- (id)newElementArrayWithInt:(int)int
{
  intCopy = int;
  v4 = NSObject_class_();

  return [IOSObjectArray arrayWithLength:intCopy type:v4];
}

- (id)massageValueWithId:(id)id
{
  if (qword_1005568B0 == id)
  {
    return 0;
  }

  else
  {
    return id;
  }
}

- (void)clear
{
  self->size_ = 0;
  elementData = self->elementData_;
  if (!elementData)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v4 = 0;
  while (v4 < elementData->super.size_)
  {
    IOSObjectArray_Set(elementData, v4++, 0);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_5;
    }
  }

  ++self->modCount_;
}

- (BOOL)containsKeyWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = elementData->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  return (&elementData->elementType_)[v7] == idCopy;
}

- (BOOL)containsValueWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  elementData = self->elementData_;
  if (!elementData)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v5 = 1;
  while (1)
  {
    size = elementData->super.size_;
    if (v5 >= size)
    {
      break;
    }

    if ((v5 & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(elementData->super.size_, v5);
    }

    if ((&elementData->elementType_)[v5] == idCopy)
    {
      break;
    }

    v5 = (v5 + 2);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_13;
    }
  }

  return v5 < size;
}

- (id)getWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = elementData->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  if ((&elementData->elementType_)[v7] != idCopy)
  {
    return 0;
  }

  v10 = self->elementData_;
  v11 = v10->super.size_;
  v12 = v7 + 1;
  if (v7 + 1 < 0 || v12 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v12);
  }

  if (qword_1005568B0 == (&v10->elementType_)[v12])
  {
    return 0;
  }

  else
  {
    return (&v10->elementType_)[v12];
  }
}

- (id)putWithId:(id)id withId:(id)withId
{
  v6 = qword_1005568B0;
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v8 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v10 = v8;
  v11 = v8;
  size = elementData->super.size_;
  if ((v10 & 0x80000000) != 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v10);
  }

  if ((&elementData->elementType_)[v11] == idCopy)
  {
    v15 = (v10 + 1);
  }

  else
  {
    ++self->modCount_;
    v13 = self->size_ + 1;
    self->size_ = v13;
    if (v13 > self->threshold_)
    {
      [JavaUtilIdentityHashMap rehash]_0(self);
      v14 = sub_1002619CC(idCopy, self->elementData_);
      v11 = v14;
      LODWORD(v10) = v14;
    }

    IOSObjectArray_Set(self->elementData_, v11, idCopy);
    v15 = (v10 + 1);
    IOSObjectArray_Set(self->elementData_, v15, 0);
  }

  v16 = self->elementData_;
  if ((v15 & 0x80000000) != 0 || v15 >= v16->super.size_)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16->super.size_, v15);
  }

  if (withId)
  {
    withIdCopy = withId;
  }

  else
  {
    withIdCopy = v6;
  }

  v18 = (&v16->elementType_)[v15];
  IOSObjectArray_Set(self->elementData_, v15, withIdCopy);
  if (qword_1005568B0 == v18)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

- (id)rehash
{
  v1 = *(self + 24);
  if (!v1)
  {
    goto LABEL_18;
  }

  v3 = 2 * *(v1 + 8);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = [IOSObjectArray arrayWithLength:v3 type:NSObject_class_()];
  v5 = *(self + 24);
  v6 = *(v5 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      if (v7 < 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      v9 = *(v5 + 24 + 8 * v7);
      if (v9)
      {
        v10 = sub_1002619CC(*(v5 + 24 + 8 * v7), v4);
        if (!v4)
        {
          goto LABEL_18;
        }

        v11 = v10;
        IOSObjectArray_Set(v4, v10, v9);
        v12 = *(self + 24);
        v13 = v8 + 1;
        v14 = *(v12 + 8);
        if (v8 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v13);
        }

        IOSObjectArray_Set(v4, v11 + 1, *(v12 + 24 + 8 * (v8 + 1)));
      }

      v7 = v8 + 2;
      v5 = *(self + 24);
      v6 = *(v5 + 8);
    }

    while (v8 + 2 < v6);
  }

  result = JreStrongAssign((self + 24), v4);
  v16 = *(self + 24);
  if (!v16)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  *(self + 36) = 7500 * (*(v16 + 8) / 2) / 10000;
  return result;
}

- (void)computeMaxSize
{
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  self->threshold_ = 7500 * (elementData->super.size_ / 2) / 10000;
}

- (id)removeWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = elementData->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  if ((&elementData->elementType_)[v7] != idCopy)
  {
    return 0;
  }

  v10 = self->elementData_;
  v11 = v10->super.size_;
  v12 = v7 + 1;
  if (v7 + 1 < 0 || v12 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10->super.size_, v12);
  }

  v13 = self->elementData_;
  v25 = v10->buffer_[v7];
  v14 = v10->super.size_;
  v15 = v7;
  while (1)
  {
    v16 = v7 + 2;
    LODWORD(v7) = (v7 + 2) % v11;
    if ((v7 & 0x80000000) != 0 || v7 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, (v16 % v11));
    }

    v17 = (&v13->elementType_)[v7];
    if (!v17)
    {
      break;
    }

    v18 = JavaUtilCollections_secondaryIdentityHashWithId_((&v13->elementType_)[v7]);
    v19 = 2 * (v18 - (v18 & 0x7FFFFFFF) / (v11 / 2) * (v11 / 2));
    if (v7 >= v15)
    {
      if (v19 > v15 && v19 <= v7)
      {
        goto LABEL_29;
      }
    }

    else if (v19 > v15 || v19 <= v7)
    {
      goto LABEL_29;
    }

    IOSObjectArray_Set(self->elementData_, v15, v17);
    v22 = self->elementData_;
    v23 = v22->super.size_;
    v24 = v7 + 1;
    if (v7 + 1 < 0 || v24 >= v23)
    {
      IOSArray_throwOutOfBoundsWithMsg(v23, v24);
    }

    IOSObjectArray_Set(self->elementData_, v15 + 1, v22->buffer_[v7]);
    v15 = v7;
LABEL_29:
    v13 = self->elementData_;
    v14 = v13->super.size_;
  }

  --self->size_;
  ++self->modCount_;
  IOSObjectArray_Set(self->elementData_, v15, 0);
  IOSObjectArray_Set(self->elementData_, v15 + 1, 0);
  if (qword_1005568B0 == v25)
  {
    return 0;
  }

  else
  {
    return v25;
  }
}

- (id)entrySet
{
  v2 = new_JavaUtilIdentityHashMap_IdentityHashMapEntrySet_initWithJavaUtilIdentityHashMap_(self);

  return v2;
}

- (id)keySet
{
  result = self->super.keySet_;
  if (!result)
  {
    v4 = new_JavaUtilIdentityHashMap_KeySet_initWithJavaUtilIdentityHashMap_(self);
    JreStrongAssignAndConsume(&self->super.keySet_, v4);
    return self->super.keySet_;
  }

  return result;
}

- (id)values
{
  result = self->super.valuesCollection_;
  if (!result)
  {
    v4 = new_JavaUtilIdentityHashMap_ValuesCollection_initWithJavaUtilIdentityHashMap_(self);
    JreStrongAssignAndConsume(&self->super.valuesCollection_, v4);
    return self->super.valuesCollection_;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilMap_class_() isInstance:equal];
    if (v5)
    {
      v6 = JavaUtilMap_class_();
      if (!equal)
      {
        [(JavaUtilIdentityHashMap *)self size];
        JreThrowNullPointerException();
      }

      if (([v6 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v7 = [(JavaUtilIdentityHashMap *)self size];
      if (v7 == [equal size])
      {
        entrySet = [(JavaUtilIdentityHashMap *)self entrySet];
        if (!entrySet)
        {
          JreThrowNullPointerException();
        }

        v9 = entrySet;
        entrySet2 = [equal entrySet];

        LOBYTE(v5) = [v9 isEqual:entrySet2];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)clone
{
  v8.receiver = self;
  v8.super_class = JavaUtilIdentityHashMap;
  clone = [(JavaUtilAbstractMap *)&v8 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  elementData = self->elementData_;
  if (!elementData || (v5 = [IOSObjectArray arrayWithLength:elementData->super.size_ type:NSObject_class_()], JreStrongAssign(clone + 3, v5), (v6 = self->elementData_) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v6, 0, clone[3], 0, v6->super.size_);
  return clone;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_9;
  }

  [stream defaultWriteObject];
  [stream writeIntWithInt:self->size_];
  entrySet = [(JavaUtilIdentityHashMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_9;
  }

  iterator = [entrySet iterator];
  if (!iterator)
  {
    goto LABEL_9;
  }

  v7 = iterator;
  if ([iterator hasNext])
  {
    while (1)
    {
      next = [v7 next];
      objc_opt_class();
      if (!next)
      {
        break;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [stream writeObjectWithId:next[1]];
      [stream writeObjectWithId:next[2]];
      if (([v7 hasNext] & 1) == 0)
      {
        return;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  self->threshold_ = 21;
  v6 = [IOSObjectArray arrayWithLength:56 type:NSObject_class_()];
  JreStrongAssign(&self->elementData_, v6);
  if (readInt - 1 >= 0)
  {
    v7 = readInt;
    do
    {
      -[JavaUtilIdentityHashMap putWithId:withId:](self, "putWithId:withId:", [stream readObject], objc_msgSend(stream, "readObject"));
      --v7;
    }

    while (v7);
  }

  self->size_ = readInt;
}

- (void)putAllImplWithJavaUtilMap:(id)map
{
  if (!map)
  {
    JreThrowNullPointerException();
  }

  if ([map entrySet])
  {
    v5.receiver = self;
    v5.super_class = JavaUtilIdentityHashMap;
    [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:map];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilIdentityHashMap *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_1005568B0, [NSObject alloc]);
    atomic_store(1u, &JavaUtilIdentityHashMap__initialized);
  }
}

@end