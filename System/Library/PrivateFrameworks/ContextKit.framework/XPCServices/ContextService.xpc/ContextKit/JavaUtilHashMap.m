@interface JavaUtilHashMap
+ (int)capacityForInitSizeWithInt:(int)a3;
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)newEntryIterator;
- (id)newKeyIterator;
- (id)newValueIterator;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)values;
- (uint64_t)doubleCapacity;
- (unint64_t)enumerateEntriesWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addNewEntryForNullKeyWithId:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)a3;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilHashMap

+ (int)capacityForInitSizeWithInt:(int)a3
{
  if ((atomic_load_explicit(&JavaUtilHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D8864();
  }

  if ((a3 + (a3 >> 1)) >= 0x40000000)
  {
    return 0x40000000;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilHashMap;
  v3 = [(JavaUtilAbstractMap *)&v6 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  table = self->table_;
  if (!table)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  sub_1001D5EDC(v3, table->super.size_);
  JreStrongAssign(v3 + 4, 0);
  *(v3 + 10) = 0;
  JreStrongAssign(v3 + 7, 0);
  JreStrongAssign(v3 + 8, 0);
  JreStrongAssign(v3 + 9, 0);
  [v3 init];
  sub_1001D5BBC(v3, self);
  return v3;
}

- (id)getWithId:(id)a3
{
  if (a3)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(a3);
    table = self->table_;
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
      while (entryForNullKey->key_ != a3 && (entryForNullKey->hash__ != v8 || ([a3 isEqual:?] & 1) == 0))
      {
        entryForNullKey = entryForNullKey->next_;
        if (!entryForNullKey)
        {
          return 0;
        }
      }

      return entryForNullKey->value_;
    }
  }

  else
  {
    entryForNullKey = self->entryForNullKey_;
    if (entryForNullKey)
    {
      return entryForNullKey->value_;
    }
  }

  return 0;
}

- (BOOL)containsKeyWithId:(id)a3
{
  if (!a3)
  {
    return self->entryForNullKey_ != 0;
  }

  v6 = JavaUtilCollections_secondaryHashWithId_(a3);
  table = self->table_;
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

  isa = (&table->elementType_)[v10];
  if (!isa)
  {
    return 0;
  }

  while (isa[1].super.isa != a3 && (LODWORD(isa[3].super.isa) != v8 || ([a3 isEqual:?] & 1) == 0))
  {
    isa = isa[4].super.isa;
    if (!isa)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)containsValueWithId:(id)a3
{
  table = self->table_;
  if (!table)
  {
    JreThrowNullPointerException();
  }

  size = table->super.size_;
  if (!a3)
  {
    if (size >= 1)
    {
      v10 = 0;
      while (1)
      {
        v11 = table->super.size_;
        if (v10 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v10);
        }

        isa = (&table->elementType_)[v10];
        if (isa)
        {
          break;
        }

LABEL_18:
        if (++v10 == size)
        {
          goto LABEL_26;
        }
      }

      while (isa[2].super.isa)
      {
        isa = isa[4].super.isa;
        if (!isa)
        {
          goto LABEL_18;
        }
      }

      return 1;
    }

LABEL_26:
    entryForNullKey = self->entryForNullKey_;
    if (entryForNullKey)
    {
      return entryForNullKey->value_ == 0;
    }

    return 0;
  }

  if (size >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = table->super.size_;
      if (v7 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v7);
      }

      v9 = (&table->elementType_)[v7];
      if (v9)
      {
        break;
      }

LABEL_9:
      if (++v7 == size)
      {
        goto LABEL_22;
      }
    }

    while (([a3 isEqual:v9[2].super.isa] & 1) == 0)
    {
      v9 = v9[4].super.isa;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

LABEL_22:
  v14 = self->entryForNullKey_;
  if (!v14)
  {
    return 0;
  }

  value = v14->value_;

  return [a3 isEqual:value];
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  if (a3)
  {
    v8 = JavaUtilCollections_secondaryHashWithId_(a3);
    table = self->table_;
    if (table)
    {
      v10 = v8;
      size = table->super.size_;
      v12 = (size - 1) & v10;
      if (((size - 1) & v10) < 0 != v7 || v12 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (size - 1) & v10);
      }

      isa = (&table->elementType_)[v12];
      if (isa)
      {
        while (LODWORD(isa[3].super.isa) != v10 || ([a3 isEqual:isa[1].super.isa] & 1) == 0)
        {
          isa = isa[4].super.isa;
          if (!isa)
          {
            goto LABEL_12;
          }
        }

        [(JavaUtilHashMap *)self preModifyWithJavaUtilHashMap_HashMapEntry:isa];
        v17 = isa[2].super.isa;
        JreStrongAssign(&isa[2].super.isa, a4);
        return v17;
      }

LABEL_12:
      ++self->modCount_;
      v15 = self->size_;
      self->size_ = v15 + 1;
      if (v15 <= self->threshold_)
      {
LABEL_15:
        [(JavaUtilHashMap *)self addNewEntryWithId:a3 withId:a4 withInt:v10 withInt:v12];
        return 0;
      }

      v16 = [JavaUtilHashMap doubleCapacity]_0(self);
      if (v16)
      {
        v12 = (*(v16 + 8) - 1) & v10;
        goto LABEL_15;
      }
    }

    JreThrowNullPointerException();
  }

  return sub_1001D6494(self, a4);
}

- (uint64_t)doubleCapacity
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 8);
  if (v2 == 0x40000000)
  {
    return *(a1 + 24);
  }

  v5 = sub_1001D5EDC(a1, 2 * v2);
  v3 = v5;
  if (*(a1 + 40))
  {
    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        v7 = *(v1 + 24 + 8 * i);
        if (v7)
        {
          v8 = *(v7 + 24) & v2;
          *(v5 + 24 + 8 * (v8 | i)) = v7;
          v9 = *(v7 + 32);
          if (v9)
          {
            v10 = 0;
            do
            {
              v11 = v9;
              v12 = *(v9 + 24) & v2;
              if (v12 != v8)
              {
                if (v10)
                {
                  v13 = (v10 + 32);
                }

                else
                {
                  v13 = (v5 + 24 + 8 * (v12 | i));
                }

                *v13 = v11;
                v8 = v12;
                v10 = v7;
              }

              v9 = *(v11 + 32);
              v7 = v11;
            }

            while (v9);
            if (v10)
            {
              *(v10 + 32) = 0;
            }
          }
        }
      }
    }

    bzero((v1 + 24), 8 * *(v1 + 8));
  }

  return v3;
}

- (void)addNewEntryForNullKeyWithId:(id)a3
{
  v4 = new_JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(0, a3, 0, 0);

  JreStrongAssignAndConsume(&self->entryForNullKey_, v4);
}

- (void)putAllWithJavaUtilMap:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  sub_1001D69FC(self, [a3 size]);
  v5.receiver = self;
  v5.super_class = JavaUtilHashMap;
  [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:a3];
}

- (id)removeWithId:(id)a3
{
  if (a3)
  {
    v5 = JavaUtilCollections_secondaryHashWithId_(a3);
    table = self->table_;
    v7 = (table->super.size_ - 1) & v5;
    next = (&table->elementType_)[v7];
    if (next)
    {
      v9 = v5;
      v10 = 0;
      v11 = v7;
      while (1)
      {
        entryForNullKey = next;
        if (next->hash__ == v9)
        {
          if ([a3 isEqual:next->key_])
          {
            break;
          }
        }

        next = entryForNullKey->next_;
        v10 = entryForNullKey;
        if (!next)
        {
          return 0;
        }
      }

      if (v10)
      {
        p_next = &v10->next_;
      }

      else
      {
        p_next = &(&table->elementType_)[v11];
      }

      *p_next = entryForNullKey->next_;
      entryForNullKey->next_ = 0;
      v15 = entryForNullKey;
      goto LABEL_15;
    }

    return 0;
  }

  entryForNullKey = self->entryForNullKey_;
  if (!entryForNullKey)
  {
    return 0;
  }

  JreStrongAssign(&self->entryForNullKey_, 0);
LABEL_15:
  ++self->modCount_;
  --self->size_;
  [(JavaUtilHashMap *)self postRemoveWithJavaUtilHashMap_HashMapEntry:entryForNullKey];
  return entryForNullKey->value_;
}

- (void)clear
{
  if (self->size_)
  {
    JavaUtilArrays_fillWithNSObjectArray_withId_(self->table_, 0);
    JreStrongAssign(&self->entryForNullKey_, 0);
    ++self->modCount_;
    self->size_ = 0;
  }
}

- (id)keySet
{
  result = self->keySet_HashMap_;
  if (!result)
  {
    v4 = [JavaUtilHashMap_KeySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);

    return JreStrongAssignAndConsume(&self->keySet_HashMap_, v4);
  }

  return result;
}

- (id)values
{
  result = self->values_;
  if (!result)
  {
    v4 = [JavaUtilHashMap_Values alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractCollection_init(v4, v5);

    return JreStrongAssignAndConsume(&self->values_, v4);
  }

  return result;
}

- (id)entrySet
{
  result = self->entrySet_;
  if (!result)
  {
    v4 = [JavaUtilHashMap_EntrySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);

    return JreStrongAssignAndConsume(&self->entrySet_, v4);
  }

  return result;
}

- (id)newKeyIterator
{
  v3 = [JavaUtilHashMap_KeyIterator alloc];
  sub_1001D7BDC(v3, self);

  return v3;
}

- (id)newValueIterator
{
  v3 = [JavaUtilHashMap_ValueIterator alloc];
  sub_1001D7BDC(v3, self);

  return v3;
}

- (id)newEntryIterator
{
  v3 = [JavaUtilHashMap_EntryIterator alloc];
  sub_1001D7BDC(v3, self);

  return v3;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_14;
  }

  v5 = [a3 putFields];
  if (!v5)
  {
    goto LABEL_14;
  }

  LODWORD(v6) = 0.75;
  [v5 putWithNSString:@"loadFactor" withFloat:v6];
  [a3 writeFields];
  table = self->table_;
  if (!table || ([a3 writeIntWithInt:table->super.size_], objc_msgSend(a3, "writeIntWithInt:", self->size_), v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, (v8 = -[JavaUtilHashMap entrySet](self, "entrySet", 0)) == 0))
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (!v14)
        {
          goto LABEL_14;
        }

        [a3 writeObjectWithId:{objc_msgSend(*(*(&v15 + 1) + 8 * v13), "getKey")}];
        [a3 writeObjectWithId:{objc_msgSend(v14, "getValue")}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
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
  if ((v5 & 0x80000000) != 0)
  {
    v15 = @"Capacity: ";
    goto LABEL_14;
  }

  if (v5 >= 4)
  {
    v13 = 0x40000000;
    if (v5 <= 0x40000000)
    {
      v13 = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(v5);
    }
  }

  else
  {
    v13 = 4;
  }

  sub_1001D5EDC(self, v13);
  v14 = [a3 readInt];
  if ((v14 & 0x80000000) != 0)
  {
    v15 = @"Size: ";
LABEL_14:
    v16 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, v15);
    v17 = new_JavaIoInvalidObjectException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  [(JavaUtilHashMap *)self init];
  for (; v14; --v14)
  {
    sub_1001D667C(self, [a3 readObject], objc_msgSend(a3, "readObject"));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (unint64_t)enumerateEntriesWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    v6 = a3->var3[0];
    v5 = a3->var3[1];
    v7 = a3->var0 != 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    a3->var0 = 1;
    a3->var3[0] = 0;
    a3->var3[1] = 0;
    a3->var2 = &self->modCount_;
  }

  entryForNullKey = 0;
  a3->var1 = a4;
  if (a5)
  {
    if (!v7)
    {
      a3->var0 = 2;
      entryForNullKey = self->entryForNullKey_;
      if (entryForNullKey)
      {
        *a4++ = entryForNullKey;
        entryForNullKey = 1;
      }
    }
  }

  if (entryForNullKey >= a5)
  {
LABEL_19:
    size = v6;
  }

  else
  {
    while (v5)
    {
      v5 = v5[4];
      if (!v5)
      {
        break;
      }

LABEL_17:
      *a4++ = v5;
      if (++entryForNullKey == a5)
      {
        entryForNullKey = a5;
        goto LABEL_19;
      }
    }

    table = self->table_;
    size = table->super.size_;
    if (v6 > size)
    {
      size = v6;
    }

    v11 = -v6;
    v12 = &table->super.super.isa + v6;
    while (-size != v11)
    {
      v5 = v12[3];
      --v11;
      ++v12;
      if (v5)
      {
        v6 = -v11;
        goto LABEL_17;
      }
    }

    v5 = 0;
  }

  a3->var3[0] = size;
  a3->var3[1] = v5;
  return entryForNullKey;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilHashMap *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (qword_100554EB8 != -1)
    {
      sub_1001D8870();
    }

    JreStrongAssignAndConsume(&qword_100554EA0, [IOSObjectArray newArrayWithLength:2 type:qword_100554EB0]);
    v3 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"loadFactor", +[IOSClass floatClass]);
    v2 = [IOSObjectArray newArrayWithObjects:&v3 count:1 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554EA8, v2);
    atomic_store(1u, &JavaUtilHashMap__initialized);
  }
}

@end