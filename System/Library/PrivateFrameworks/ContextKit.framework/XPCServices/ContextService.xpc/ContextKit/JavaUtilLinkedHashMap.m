@interface JavaUtilLinkedHashMap
- (BOOL)containsValueWithId:(id)a3;
- (JavaUtilLinkedHashMap)init;
- (id)eldest;
- (id)getWithId:(id)a3;
- (id)newEntryIterator;
- (id)newKeyIterator;
- (id)newValueIterator;
- (unint64_t)enumerateEntriesWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addNewEntryForNullKeyWithId:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)init__;
- (void)postRemoveWithJavaUtilHashMap_HashMapEntry:(id)a3;
- (void)preModifyWithJavaUtilHashMap_HashMapEntry:(id)a3;
@end

@implementation JavaUtilLinkedHashMap

- (JavaUtilLinkedHashMap)init
{
  JavaUtilHashMap_init(self, a2);
  [(JavaUtilLinkedHashMap *)self init];
  self->accessOrder_ = 0;
  return self;
}

- (void)init__
{
  v3 = [JavaUtilLinkedHashMap_LinkedEntry alloc];
  JavaUtilLinkedHashMap_LinkedEntry_init(&v3->super.super.isa);

  JreStrongAssignAndConsume(&self->header_, v3);
}

- (id)eldest
{
  header = self->header_;
  if (!header)
  {
    JreThrowNullPointerException();
  }

  result = objc_loadWeak(&header->nxt_);
  if (result == self->header_)
  {
    return 0;
  }

  return result;
}

- (void)addNewEntryForNullKeyWithId:(id)a3
{
  header = self->header_;
  Weak = objc_loadWeak(&header->nxt_);
  if (Weak != header)
  {
    v7 = Weak;
    if ([(JavaUtilLinkedHashMap *)self removeEldestEntryWithJavaUtilMap_Entry:Weak])
    {
      [(JavaUtilHashMap *)self removeWithId:v7->super.key_];
    }
  }

  v8 = objc_loadWeak(&header->prv_);
  v9 = objc_storeWeak(&header->prv_, [[JavaUtilLinkedHashMap_LinkedEntry alloc] initWithId:0 withId:a3 withInt:0 withJavaUtilHashMap_HashMapEntry:0 withJavaUtilLinkedHashMap_LinkedEntry:header withJavaUtilLinkedHashMap_LinkedEntry:v8]);
  v10 = objc_storeWeak(v8 + 5, v9);

  JreStrongAssignAndConsume(&self->super.entryForNullKey_, v10);
}

- (id)getWithId:(id)a3
{
  if (a3)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(a3);
    table = self->super.table_;
    if (!table)
    {
      JreThrowNullPointerException();
    }

    v8 = v6;
    size = table->super.size_;
    v10 = (size - 1) & v8;
    if (v10 < 0 != v5 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    entryForNullKey = (&table->elementType_)[v10];
    if (entryForNullKey)
    {
      while (entryForNullKey->key_ != a3 && (entryForNullKey->hash__ != v8 || ![a3 isEqual:?]))
      {
        entryForNullKey = entryForNullKey->next_;
        if (!entryForNullKey)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

    return 0;
  }

  entryForNullKey = self->super.entryForNullKey_;
  if (!entryForNullKey)
  {
    return 0;
  }

LABEL_15:
  if (self->accessOrder_)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    sub_1001739FC(self, &entryForNullKey->super.isa);
  }

  return entryForNullKey->value_;
}

- (void)preModifyWithJavaUtilHashMap_HashMapEntry:(id)a3
{
  if (self->accessOrder_)
  {
    objc_opt_class();
    if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    sub_1001739FC(self, a3);
  }
}

- (void)postRemoveWithJavaUtilHashMap_HashMapEntry:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    objc_loadWeak(0x28);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  Weak = objc_loadWeak(a3 + 5);
  v5 = objc_loadWeak(a3 + 6);
  if (!v5 || (objc_storeWeak(v5 + 5, Weak), v6 = objc_loadWeak(a3 + 6), (v7 = objc_loadWeak(a3 + 5)) == 0))
  {
    JreThrowNullPointerException();
  }

  objc_storeWeak(v7 + 6, v6);
  v8 = objc_storeWeak(a3 + 6, 0);

  objc_storeWeak(a3 + 5, v8);
}

- (BOOL)containsValueWithId:(id)a3
{
  header = self->header_;
  if (a3)
  {
    if (!header)
    {
      goto LABEL_17;
    }

    Weak = objc_loadWeak(&header->nxt_);
    if (Weak != header)
    {
      v6 = Weak;
      while (v6)
      {
        v7 = [a3 isEqual:v6->super.value_];
        if ((v7 & 1) == 0)
        {
          v6 = objc_loadWeak(&v6->nxt_);
          if (v6 != header)
          {
            continue;
          }
        }

        return v7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!header)
    {
      goto LABEL_17;
    }

    v8 = objc_loadWeak(&header->nxt_);
    if (v8 != header)
    {
      while (v8)
      {
        value = v8->super.value_;
        v7 = value == 0;
        if (value)
        {
          v8 = objc_loadWeak(&v8->nxt_);
          if (v8 != header)
          {
            continue;
          }
        }

        return v7;
      }

LABEL_17:
      JreThrowNullPointerException();
    }
  }

  return 0;
}

- (void)clear
{
  v9.receiver = self;
  v9.super_class = JavaUtilLinkedHashMap;
  [(JavaUtilHashMap *)&v9 clear];
  header = self->header_;
  if (!header)
  {
    goto LABEL_7;
  }

  Weak = objc_loadWeak(&header->nxt_);
  if (Weak != header)
  {
    v5 = Weak;
    while (v5)
    {
      v6 = objc_loadWeak(&v5->nxt_);
      v7 = objc_storeWeak(&v5->prv_, 0);
      objc_storeWeak(&v5->nxt_, v7);
      v5 = v6;
      if (v6 == header)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }

LABEL_6:
  v8 = objc_storeWeak(&header->prv_, header);
  objc_storeWeak(&header->nxt_, v8);
}

- (id)newKeyIterator
{
  v3 = [JavaUtilLinkedHashMap_KeyIterator alloc];
  sub_100174628(v3, self);

  return v3;
}

- (id)newValueIterator
{
  v3 = [JavaUtilLinkedHashMap_ValueIterator alloc];
  sub_100174628(v3, self);

  return v3;
}

- (id)newEntryIterator
{
  v3 = [JavaUtilLinkedHashMap_EntryIterator alloc];
  sub_100174628(v3, self);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedHashMap;
  [(JavaUtilHashMap *)&v3 dealloc];
}

- (unint64_t)enumerateEntriesWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    Weak = a3->var3[0];
  }

  else
  {
    a3->var0 = 1;
    a3->var2 = &self->super.modCount_;
    Weak = objc_loadWeak(&self->header_->nxt_);
  }

  a3->var1 = a4;
  for (i = 0; Weak != self->header_ && i < a5; Weak = objc_loadWeak(&Weak->nxt_))
  {
    a4[i++] = Weak;
  }

  a3->var3[0] = Weak;
  return i;
}

@end