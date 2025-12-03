@interface JavaUtilHashMap
+ (int)capacityForInitSizeWithInt:(int)int;
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)newEntryIterator;
- (id)newKeyIterator;
- (id)newValueIterator;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (uint64_t)doubleCapacity;
- (unint64_t)enumerateEntriesWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addNewEntryForNullKeyWithId:(id)id;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilHashMap

+ (int)capacityForInitSizeWithInt:(int)int
{
  if ((atomic_load_explicit(&JavaUtilHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D8864();
  }

  if ((int + (int >> 1)) >= 0x40000000)
  {
    return 0x40000000;
  }

  else
  {
    return int + (int >> 1);
  }
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilHashMap;
  clone = [(JavaUtilAbstractMap *)&v6 clone];
  objc_opt_class();
  if (!clone)
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

  sub_1001D5EDC(clone, table->super.size_);
  JreStrongAssign(clone + 4, 0);
  *(clone + 10) = 0;
  JreStrongAssign(clone + 7, 0);
  JreStrongAssign(clone + 8, 0);
  JreStrongAssign(clone + 9, 0);
  [clone init];
  sub_1001D5BBC(clone, self);
  return clone;
}

- (id)getWithId:(id)id
{
  if (id)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(id);
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
      while (entryForNullKey->key_ != id && (entryForNullKey->hash__ != v8 || ([id isEqual:?] & 1) == 0))
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

- (BOOL)containsKeyWithId:(id)id
{
  if (!id)
  {
    return self->entryForNullKey_ != 0;
  }

  v6 = JavaUtilCollections_secondaryHashWithId_(id);
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

  while (isa[1].super.isa != id && (LODWORD(isa[3].super.isa) != v8 || ([id isEqual:?] & 1) == 0))
  {
    isa = isa[4].super.isa;
    if (!isa)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)containsValueWithId:(id)id
{
  table = self->table_;
  if (!table)
  {
    JreThrowNullPointerException();
  }

  size = table->super.size_;
  if (!id)
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

    while (([id isEqual:v9[2].super.isa] & 1) == 0)
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

  return [id isEqual:value];
}

- (id)putWithId:(id)id withId:(id)withId
{
  if (id)
  {
    v8 = JavaUtilCollections_secondaryHashWithId_(id);
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
        while (LODWORD(isa[3].super.isa) != v10 || ([id isEqual:isa[1].super.isa] & 1) == 0)
        {
          isa = isa[4].super.isa;
          if (!isa)
          {
            goto LABEL_12;
          }
        }

        [(JavaUtilHashMap *)self preModifyWithJavaUtilHashMap_HashMapEntry:isa];
        v17 = isa[2].super.isa;
        JreStrongAssign(&isa[2].super.isa, withId);
        return v17;
      }

LABEL_12:
      ++self->modCount_;
      v15 = self->size_;
      self->size_ = v15 + 1;
      if (v15 <= self->threshold_)
      {
LABEL_15:
        [(JavaUtilHashMap *)self addNewEntryWithId:id withId:withId withInt:v10 withInt:v12];
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

  return sub_1001D6494(self, withId);
}

- (uint64_t)doubleCapacity
{
  v1 = *(self + 24);
  v2 = *(v1 + 8);
  if (v2 == 0x40000000)
  {
    return *(self + 24);
  }

  v5 = sub_1001D5EDC(self, 2 * v2);
  v3 = v5;
  if (*(self + 40))
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

- (void)addNewEntryForNullKeyWithId:(id)id
{
  v4 = new_JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(0, id, 0, 0);

  JreStrongAssignAndConsume(&self->entryForNullKey_, v4);
}

- (void)putAllWithJavaUtilMap:(id)map
{
  if (!map)
  {
    JreThrowNullPointerException();
  }

  sub_1001D69FC(self, [map size]);
  v5.receiver = self;
  v5.super_class = JavaUtilHashMap;
  [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:map];
}

- (id)removeWithId:(id)id
{
  if (id)
  {
    v5 = JavaUtilCollections_secondaryHashWithId_(id);
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
          if ([id isEqual:next->key_])
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

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_14;
  }

  putFields = [stream putFields];
  if (!putFields)
  {
    goto LABEL_14;
  }

  LODWORD(v6) = 0.75;
  [putFields putWithNSString:@"loadFactor" withFloat:v6];
  [stream writeFields];
  table = self->table_;
  if (!table || ([stream writeIntWithInt:table->super.size_], objc_msgSend(stream, "writeIntWithInt:", self->size_), v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, (v8 = -[JavaUtilHashMap entrySet](self, "entrySet", 0)) == 0))
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

        [stream writeObjectWithId:{objc_msgSend(*(*(&v15 + 1) + 8 * v13), "getKey")}];
        [stream writeObjectWithId:{objc_msgSend(v14, "getValue")}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
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
  if ((readInt & 0x80000000) != 0)
  {
    v15 = @"Capacity: ";
    goto LABEL_14;
  }

  if (readInt >= 4)
  {
    v13 = 0x40000000;
    if (readInt <= 0x40000000)
    {
      v13 = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(readInt);
    }
  }

  else
  {
    v13 = 4;
  }

  sub_1001D5EDC(self, v13);
  readInt2 = [stream readInt];
  if ((readInt2 & 0x80000000) != 0)
  {
    v15 = @"Size: ";
LABEL_14:
    v16 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, v15);
    v17 = new_JavaIoInvalidObjectException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  [(JavaUtilHashMap *)self init];
  for (; readInt2; --readInt2)
  {
    sub_1001D667C(self, [stream readObject], objc_msgSend(stream, "readObject"));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (unint64_t)enumerateEntriesWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    v6 = state->var3[0];
    v5 = state->var3[1];
    v7 = state->var0 != 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    state->var0 = 1;
    state->var3[0] = 0;
    state->var3[1] = 0;
    state->var2 = &self->modCount_;
  }

  entryForNullKey = 0;
  state->var1 = objects;
  if (count)
  {
    if (!v7)
    {
      state->var0 = 2;
      entryForNullKey = self->entryForNullKey_;
      if (entryForNullKey)
      {
        *objects++ = entryForNullKey;
        entryForNullKey = 1;
      }
    }
  }

  if (entryForNullKey >= count)
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
      *objects++ = v5;
      if (++entryForNullKey == count)
      {
        entryForNullKey = count;
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

  state->var3[0] = size;
  state->var3[1] = v5;
  return entryForNullKey;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilHashMap *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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