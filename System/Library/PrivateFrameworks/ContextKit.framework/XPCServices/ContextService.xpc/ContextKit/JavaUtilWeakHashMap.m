@interface JavaUtilWeakHashMap
- (BOOL)containsValueWithId:(id)a3;
- (id)entrySet;
- (id)getEntryWithId:(id)a3;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)rehash;
- (id)removeWithId:(id)a3;
- (id)values;
- (void)clear;
- (void)computeMaxSize;
- (void)dealloc;
- (void)poll;
- (void)putAllImplWithJavaUtilMap:(id)a3;
- (void)removeEntryWithJavaUtilWeakHashMap_Entry:(id)a3;
@end

@implementation JavaUtilWeakHashMap

- (void)clear
{
  if (self->elementCount_ >= 1)
  {
    self->elementCount_ = 0;
    JavaUtilArrays_fillWithNSObjectArray_withId_(self->elementData_, 0);
    atomic_fetch_add(&self->modCount_, 1u);
    do
    {
      referenceQueue = self->referenceQueue_;
      if (!referenceQueue)
      {
        JreThrowNullPointerException();
      }
    }

    while ([(JavaLangRefReferenceQueue *)referenceQueue poll]);
  }
}

- (void)computeMaxSize
{
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v3 = (self->loadFactor_ * elementData->super.size_ * 0x346DC5D63886594BLL) >> 64;
  self->threshold_ = (v3 >> 11) + (v3 >> 63);
}

- (id)entrySet
{
  [(JavaUtilWeakHashMap *)self poll];
  v3 = [JavaUtilWeakHashMap__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  JavaUtilAbstractSet_init(v3, v4);

  return v3;
}

- (id)keySet
{
  [(JavaUtilWeakHashMap *)self poll];
  result = self->super.keySet_;
  if (!result)
  {
    v4 = [JavaUtilWeakHashMap_KeySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);
    JreStrongAssignAndConsume(&self->super.keySet_, v4);
    return self->super.keySet_;
  }

  return result;
}

- (id)values
{
  [(JavaUtilWeakHashMap *)self poll];
  result = self->super.valuesCollection_;
  if (!result)
  {
    v4 = [JavaUtilWeakHashMap_ValuesCollection alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractCollection_init(v4, v5);
    JreStrongAssignAndConsume(&self->super.valuesCollection_, v4);
    return self->super.valuesCollection_;
  }

  return result;
}

- (id)getWithId:(id)a3
{
  [(JavaUtilWeakHashMap *)self poll];
  if (!a3)
  {
    elementData = self->elementData_;
    if (elementData)
    {
      size = elementData->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      elementType = elementData->elementType_;
      if (elementType)
      {
        while ((BYTE4(elementType[5].super.isa) & 1) == 0)
        {
          elementType = elementType[7].super.isa;
          if (!elementType)
          {
            return 0;
          }
        }

        return elementType[6].super.isa;
      }

      return 0;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v5 = JavaUtilCollections_secondaryHashWithId_(a3);
  v6 = self->elementData_;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v5 & 0x7FFFFFFF;
  v8 = v6->super.size_;
  if ((v8 & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v7 % v8));
  }

  elementType = (&v6->elementType_)[v7 % v8];
  if (!elementType)
  {
    return 0;
  }

  while (([a3 isEqual:{-[IOSClass get](elementType, "get")}] & 1) == 0)
  {
    elementType = elementType[7].super.isa;
    if (!elementType)
    {
      return 0;
    }
  }

  return elementType[6].super.isa;
}

- (id)getEntryWithId:(id)a3
{
  [(JavaUtilWeakHashMap *)self poll];
  if (a3)
  {
    v5 = JavaUtilCollections_secondaryHashWithId_(a3);
    elementData = self->elementData_;
    if (elementData)
    {
      v7 = v5 & 0x7FFFFFFF;
      size = elementData->super.size_;
      if ((size & 0x80000000) != 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (v7 % size));
      }

      for (i = (&elementData->elementType_)[v7 % size]; i; i = i[7].super.isa)
      {
        if ([a3 isEqual:{-[IOSClass get](i, "get")}])
        {
          break;
        }
      }

      return i;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v10 = self->elementData_;
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10->super.size_;
  if (v11 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  for (i = v10->elementType_; i; i = i[7].super.isa)
  {
    if (BYTE4(i[5].super.isa))
    {
      break;
    }
  }

  return i;
}

- (BOOL)containsValueWithId:(id)a3
{
  [(JavaUtilWeakHashMap *)self poll];
  elementData = self->elementData_;
  if (a3)
  {
    if (elementData)
    {
      size = elementData->super.size_;
      v7 = (size - 1);
      if (size - 1 >= 0)
      {
        while (1)
        {
          v8 = self->elementData_;
          v9 = v8->super.size_;
          if (v7 >= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(v9, v7);
          }

          isa = (&v8->elementType_)[v7];
          if (isa)
          {
            break;
          }

LABEL_10:
          v11 = v7-- < 1;
          if (v11)
          {
            return 0;
          }
        }

        while (!-[IOSClass get](isa, "get") && BYTE4(isa[5].super.isa) != 1 || ([a3 isEqual:isa[6].super.isa] & 1) == 0)
        {
          isa = isa[7].super.isa;
          if (!isa)
          {
            goto LABEL_10;
          }
        }

        return 1;
      }

      return 0;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  if (!elementData)
  {
    goto LABEL_28;
  }

  v12 = elementData->super.size_;
  v13 = (v12 - 1);
  if (v12 - 1 >= 0)
  {
    while (1)
    {
      v14 = self->elementData_;
      v15 = v14->super.size_;
      if (v13 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v13);
      }

      v16 = (&v14->elementType_)[v13];
      if (v16)
      {
        break;
      }

LABEL_22:
      result = 0;
      v11 = v13-- < 1;
      if (v11)
      {
        return result;
      }
    }

    while (![(IOSClass *)v16 get]&& BYTE4(v16[5].super.isa) != 1 || v16[6].super.isa)
    {
      v16 = v16[7].super.isa;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    return 1;
  }

  return 0;
}

- (void)poll
{
  referenceQueue = self->referenceQueue_;
  if (!referenceQueue)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v4 = [(JavaLangRefReferenceQueue *)referenceQueue poll];
    objc_opt_class();
    if (!v4)
    {
      break;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(JavaUtilWeakHashMap *)self removeEntryWithJavaUtilWeakHashMap_Entry:v4];
    referenceQueue = self->referenceQueue_;
    if (!referenceQueue)
    {
      goto LABEL_5;
    }
  }
}

- (void)removeEntryWithJavaUtilWeakHashMap_Entry:(id)a3
{
  if (!a3 || (elementData = self->elementData_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 10) & 0x7FFFFFFF;
  size = elementData->super.size_;
  v7 = (v5 % size);
  if ((size & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v5 % size));
  }

  p_isa = &(&elementData->elementType_)[v7]->super.isa;
  if (p_isa)
  {
    if (p_isa == a3)
    {
      v10 = 0;
LABEL_11:
      atomic_fetch_add(&self->modCount_, 1u);
      if (v10)
      {
        JreStrongAssign(&v10[7].super.isa, p_isa[7]);
      }

      else
      {
        IOSObjectArray_Set(self->elementData_, v7, p_isa[7]);
      }

      --self->elementCount_;
    }

    else
    {
      isa = (&elementData->elementType_)[v7];
      while (1)
      {
        p_isa = isa[7].super.isa;
        if (!p_isa)
        {
          break;
        }

        v10 = isa;
        isa = isa[7].super.isa;
        if (p_isa == a3)
        {
          goto LABEL_11;
        }
      }
    }
  }
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  [(JavaUtilWeakHashMap *)self poll];
  if (a3)
  {
    v7 = JavaUtilCollections_secondaryHashWithId_(a3);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_24;
    }

    v9 = v7 & 0x7FFFFFFF;
    size = elementData->super.size_;
    v11 = (v9 % size);
    if ((size & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v9 % size));
    }

    isa = (&elementData->elementType_)[v11];
    if (isa)
    {
      while (([a3 isEqual:{-[IOSClass get](isa, "get")}] & 1) == 0)
      {
        isa = isa[7].super.isa;
        if (!isa)
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v18 = isa[6].super.isa;
      JreStrongAssign(&isa[6].super.isa, a4);
      return v18;
    }
  }

  else
  {
    v13 = self->elementData_;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = v13->super.size_;
    if (v14 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, 0);
    }

    isa = v13->elementType_;
    if (isa)
    {
      while ((BYTE4(isa[5].super.isa) & 1) == 0)
      {
        isa = isa[7].super.isa;
        if (!isa)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_18;
    }

LABEL_13:
    v11 = 0;
  }

LABEL_14:
  atomic_fetch_add(&self->modCount_, 1u);
  v15 = self->elementCount_ + 1;
  self->elementCount_ = v15;
  if (v15 > self->threshold_)
  {
    [JavaUtilWeakHashMap rehash]_0(self);
    if (a3)
    {
      v16 = JavaUtilCollections_secondaryHashWithId_(a3);
      v17 = self->elementData_;
      if (!v17)
      {
        goto LABEL_24;
      }

      v11 = ((v16 & 0x7FFFFFFF) % v17->super.size_);
    }

    else
    {
      v11 = 0;
    }
  }

  referenceQueue = self->referenceQueue_;
  v20 = [JavaUtilWeakHashMap_Entry alloc];
  JavaUtilWeakHashMap_Entry_initWithId_withId_withJavaLangRefReferenceQueue_(v20, a3, a4, referenceQueue);
  v21 = v20;
  v22 = self->elementData_;
  if (!v22)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  p_isa = &v21->super.super.super.isa;
  v24 = v22->super.size_;
  if (v11 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v11);
  }

  JreStrongAssign(p_isa + 7, (&v22->elementType_)[v11]);
  IOSObjectArray_Set(self->elementData_, v11, p_isa);
  return 0;
}

- (id)rehash
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = a1;
  v3 = 2 * *(v1 + 8);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_10015A254(v4);
  v6 = *(v2 + 32);
  if (*(v6 + 8) >= 1)
  {
    v7 = 0;
    v15 = v2;
    do
    {
      v16 = v7;
      v8 = *(v6 + 24 + 8 * v7);
      if (v8)
      {
        do
        {
          if (*(v8 + 44))
          {
            v9 = 0;
            if (!v5)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v9 = ((*(v8 + 40) & 0x7FFFFFFF) % v4);
            if (!v5)
            {
              goto LABEL_19;
            }
          }

          v10 = *(v8 + 56);
          size = v5->super.size_;
          if (size <= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v9);
          }

          JreStrongAssign((v8 + 56), (&v5->elementType_)[v9]);
          IOSObjectArray_Set(v5, v9, v8);
          v8 = v10;
        }

        while (v10);
        v2 = v15;
      }

      v7 = v16 + 1;
      v6 = *(v2 + 32);
    }

    while (v16 + 1 < *(v6 + 8));
  }

  result = JreStrongAssign((v2 + 32), v5);
  v13 = *(v2 + 32);
  if (!v13)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v14 = (*(v2 + 56) * *(v13 + 8) * 0x346DC5D63886594BLL) >> 64;
  *(v2 + 60) = (v14 >> 11) + (v14 >> 63);
  return result;
}

- (id)removeWithId:(id)a3
{
  [(JavaUtilWeakHashMap *)self poll];
  if (a3)
  {
    v5 = JavaUtilCollections_secondaryHashWithId_(a3);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_24;
    }

    v7 = v5 & 0x7FFFFFFF;
    size = elementData->super.size_;
    v9 = (v7 % size);
    if ((size & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v7 % size));
    }

    isa = (&elementData->elementType_)[v9];
    if (isa)
    {
      if ([a3 isEqual:{-[IOSClass get](isa, "get")}])
      {
        v11 = 0;
        goto LABEL_18;
      }

      while (1)
      {
        v11 = isa;
        isa = isa[7].super.isa;
        if (!isa)
        {
          break;
        }

        if ([a3 isEqual:{-[IOSClass get](isa, "get")}])
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  v12 = self->elementData_;
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = v12->super.size_;
  if (v13 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 0);
  }

  isa = v12->elementType_;
  if (!isa)
  {
    return 0;
  }

  if (BYTE4(isa[5].super.isa))
  {
    v9 = 0;
    v11 = 0;
  }

  else
  {
    do
    {
      v11 = isa;
      isa = isa[7].super.isa;
      if (!isa)
      {
        return 0;
      }
    }

    while ((BYTE4(isa[5].super.isa) & 1) == 0);
    v9 = 0;
  }

LABEL_18:
  atomic_fetch_add(&self->modCount_, 1u);
  if (!v11)
  {
    v15 = self->elementData_;
    if (v15)
    {
      IOSObjectArray_Set(v15, v9, isa[7].super.isa);
      goto LABEL_23;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v11[7].super.isa, isa[7].super.isa);
LABEL_23:
  --self->elementCount_;
  return isa[6].super.isa;
}

- (void)putAllImplWithJavaUtilMap:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 entrySet])
  {
    v5.receiver = self;
    v5.super_class = JavaUtilWeakHashMap;
    [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:a3];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end