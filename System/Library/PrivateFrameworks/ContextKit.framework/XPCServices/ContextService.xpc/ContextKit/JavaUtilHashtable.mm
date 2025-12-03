@interface JavaUtilHashtable
+ (int)capacityForInitSizeWithInt:(int)int;
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (IOSObjectArray)doubleCapacity;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elements;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)keys;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilHashtable

+ (int)capacityForInitSizeWithInt:(int)int
{
  if ((atomic_load_explicit(JavaUtilHashtable__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F9F60();
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
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable;
  clone = [(JavaUtilHashtable *)&v6 clone];
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

  sub_1001F674C(clone, table->super.size_);
  *(clone + 4) = 0;
  JreStrongAssign(clone + 4, 0);
  JreStrongAssign(clone + 5, 0);
  JreStrongAssign(clone + 6, 0);
  sub_1001F6470(clone, self);
  objc_sync_exit(self);
  return clone;
}

- (BOOL)isEmpty
{
  objc_sync_enter(self);
  v3 = self->size_ == 0;
  objc_sync_exit(self);
  return v3;
}

- (int)size
{
  objc_sync_enter(self);
  size = self->size_;
  objc_sync_exit(self);
  return size;
}

- (id)getWithId:(id)id
{
  objc_sync_enter(self);
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
  if (isa)
  {
    while (isa[1].super.isa != id)
    {
      if (LODWORD(isa[3].super.isa) == v8)
      {
        if (!id)
        {
          JreThrowNullPointerException();
        }

        if ([id isEqual:?])
        {
          break;
        }
      }

      isa = isa[4].super.isa;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    v13 = isa[2].super.isa;
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  objc_sync_exit(self);
  return v13;
}

- (BOOL)containsKeyWithId:(id)id
{
  objc_sync_enter(self);
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
  if (isa)
  {
    while (isa[1].super.isa != id)
    {
      if (LODWORD(isa[3].super.isa) == v8)
      {
        if (!id)
        {
          JreThrowNullPointerException();
        }

        if ([id isEqual:?])
        {
          break;
        }
      }

      isa = isa[4].super.isa;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    v13 = 1;
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  objc_sync_exit(self);
  return v13;
}

- (BOOL)containsValueWithId:(id)id
{
  objc_sync_enter(self);
  if (!id)
  {
    v12 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v12);
  }

  table = self->table_;
  if (!table)
  {
    JreThrowNullPointerException();
  }

  size = table->super.size_;
  if (size < 1)
  {
LABEL_12:
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = table->super.size_;
      if (v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      isa = (&table->elementType_)[v7];
      if (isa)
      {
        break;
      }

LABEL_9:
      v8 = ++v7 < size;
      if (v7 == size)
      {
        goto LABEL_12;
      }
    }

    while (([id isEqual:isa[2].super.isa] & 1) == 0)
    {
      isa = isa[4].super.isa;
      if (!isa)
      {
        goto LABEL_9;
      }
    }
  }

  objc_sync_exit(self);
  return v8;
}

- (id)putWithId:(id)id withId:(id)withId
{
  objc_sync_enter(self);
  if (!id)
  {
    v24 = @"key == null";
    goto LABEL_29;
  }

  if (!withId)
  {
    v24 = @"value == null";
LABEL_29:
    v25 = new_JavaLangNullPointerException_initWithNSString_(v24);
    objc_exception_throw(v25);
  }

  v8 = JavaUtilCollections_secondaryHashWithId_(id);
  table = self->table_;
  if (!table)
  {
    JreThrowNullPointerException();
  }

  v10 = v8;
  size = table->super.size_;
  v12 = (size - 1) & v10;
  if (v12 < 0 != v7 || v12 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (size - 1) & v10);
  }

  v14 = (&table->elementType_)[v12];
  if (v14)
  {
    isa = (&table->elementType_)[v12];
    while (LODWORD(isa[3].super.isa) != v10 || ![id isEqual:isa[1].super.isa])
    {
      isa = isa[4].super.isa;
      if (!isa)
      {
        goto LABEL_14;
      }
    }

    v22 = isa[2].super.isa;
    JreStrongAssign(&isa[2].super.isa, withId);
  }

  else
  {
LABEL_14:
    ++self->modCount_;
    v16 = self->size_;
    self->size_ = v16 + 1;
    if (v16 > self->threshold_)
    {
      [(JavaUtilHashtable *)self rehash];
      v18 = [JavaUtilHashtable doubleCapacity]_0(self);
      table = v18;
      if (!v18)
      {
        JreThrowNullPointerException();
      }

      v19 = v18->super.size_;
      v12 = (v19 - 1) & v10;
      if (v12 < 0 != v17 || v12 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, (v19 - 1) & v10);
      }

      v14 = (&table->elementType_)[v12];
    }

    v21 = sub_1001F6F54(id, withId, v10, v14);
    IOSObjectArray_SetAndConsume(table, v12, v21);
    v22 = 0;
  }

  objc_sync_exit(self);
  return v22;
}

- (IOSObjectArray)doubleCapacity
{
  v1 = *(self + 8);
  if (!v1)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v2 = *(v1 + 8);
  if (v2 != 0x40000000)
  {
    v4 = sub_1001F674C(self, 2 * v2);
    if (*(self + 16))
    {
      v5 = v2 < 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = 0;
      do
      {
        v8 = *(v1 + 8);
        if (v7 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v7);
        }

        v9 = *(v1 + 24 + 8 * v7);
        if (v9)
        {
          if (!v4)
          {
            goto LABEL_27;
          }

          v10 = v9[6] & v2;
          IOSObjectArray_Set(v4, v10 | v7, v9);
          v11 = *(v9 + 4);
          if (v11)
          {
            v12 = 0;
            do
            {
              v13 = v9;
              v9 = v11;
              v14 = v11[6] & v2;
              if (v14 == v10)
              {
                v14 = v10;
              }

              else
              {
                if (v12)
                {
                  JreStrongAssign(v12 + 4, v11);
                }

                else
                {
                  IOSObjectArray_Set(v4, v14 | v7, v11);
                }

                v12 = v13;
              }

              v11 = *(v9 + 4);
              v10 = v14;
            }

            while (v11);
            if (v12)
            {
              JreStrongAssign(v12 + 4, 0);
            }
          }
        }

        ++v7;
      }

      while (v7 != v2);
    }

    return v4;
  }

  return v1;
}

- (void)putAllWithJavaUtilMap:(id)map
{
  objc_sync_enter(self);
  if (!map)
  {
    JreThrowNullPointerException();
  }

  sub_1001F72B0(self, [map size]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  entrySet = [map entrySet];
  v6 = entrySet;
  if (!entrySet)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v7 = [entrySet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_12;
        }

        -[JavaUtilHashtable putWithId:withId:](self, "putWithId:withId:", [*(*(&v11 + 1) + 8 * i) getKey], objc_msgSend(v10, "getValue"));
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (id)removeWithId:(id)id
{
  objc_sync_enter(self);
  v6 = JavaUtilCollections_secondaryHashWithId_(id);
  table = self->table_;
  if (!table)
  {
    JreThrowNullPointerException();
  }

  v8 = v6;
  size = table->super.size_;
  v10 = (size - 1) & v8;
  v11 = v10;
  if (v10 < 0 != v5 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v10);
  }

  isa = (&table->elementType_)[v10];
  if (isa)
  {
    v14 = 0;
    while (1)
    {
      v15 = isa;
      if (LODWORD(isa[3].super.isa) == v8)
      {
        if (!id)
        {
          JreThrowNullPointerException();
        }

        if ([id isEqual:isa[1].super.isa])
        {
          break;
        }
      }

      isa = v15[4].super.isa;
      v14 = v15;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    if (v14)
    {
      JreStrongAssign(&v14[4].super.isa, v15[4].super.isa);
    }

    else
    {
      IOSObjectArray_Set(table, v11, v15[4].super.isa);
    }

    ++self->modCount_;
    --self->size_;
    v16 = v15[2].super.isa;
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  objc_sync_exit(self);
  return v16;
}

- (void)clear
{
  objc_sync_enter(self);
  if (self->size_)
  {
    JavaUtilArrays_fillWithNSObjectArray_withId_(self->table_, 0);
    ++self->modCount_;
    self->size_ = 0;
  }

  objc_sync_exit(self);
}

- (id)keySet
{
  objc_sync_enter(self);
  keySet = self->keySet_;
  if (!keySet)
  {
    v4 = [JavaUtilHashtable_KeySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);
    keySet = JreStrongAssignAndConsume(&self->keySet_, v4);
  }

  objc_sync_exit(self);
  return keySet;
}

- (id)values
{
  objc_sync_enter(self);
  values = self->values_;
  if (!values)
  {
    v4 = [JavaUtilHashtable_Values alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractCollection_init(v4, v5);
    values = JreStrongAssignAndConsume(&self->values_, v4);
  }

  objc_sync_exit(self);
  return values;
}

- (id)entrySet
{
  objc_sync_enter(self);
  entrySet = self->entrySet_;
  if (!entrySet)
  {
    v4 = [JavaUtilHashtable_EntrySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);
    entrySet = JreStrongAssignAndConsume(&self->entrySet_, v4);
  }

  objc_sync_exit(self);
  return entrySet;
}

- (id)keys
{
  objc_sync_enter(self);
  v3 = [JavaUtilHashtable_KeyEnumeration alloc];
  sub_1001F87CC(v3, self);
  v4 = v3;
  objc_sync_exit(self);
  return v4;
}

- (id)elements
{
  objc_sync_enter(self);
  v3 = [JavaUtilHashtable_ValueEnumeration alloc];
  sub_1001F87CC(v3, self);
  v4 = v3;
  objc_sync_exit(self);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_sync_enter(self);
  if ([JavaUtilMap_class_() isInstance:equal])
  {
    entrySet = [(JavaUtilHashtable *)self entrySet];
    if (!entrySet || (v6 = JavaUtilMap_class_(), !equal))
    {
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = [entrySet isEqual:{objc_msgSend(equal, "entrySet")}];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(self);
  return v7;
}

- (unint64_t)hash
{
  objc_sync_enter(self);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  entrySet = [(JavaUtilHashtable *)self entrySet];
  v4 = entrySet;
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  v5 = [entrySet countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (!v9)
        {
          JreThrowNullPointerException();
        }

        getKey = [*(*(&v17 + 1) + 8 * i) getKey];
        getValue = [v9 getValue];
        v12 = getValue;
        if (getKey != self && getValue != self)
        {
          if (getKey)
          {
            LODWORD(getKey) = [(JavaUtilHashtable *)getKey hash];
          }

          if (v12)
          {
            v14 = [(JavaUtilHashtable *)v12 hash];
          }

          else
          {
            v14 = 0;
          }

          v6 += v14 ^ getKey;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(self);
  return v15;
}

- (NSString)description
{
  objc_sync_enter(self);
  v3 = new_JavaLangStringBuilder_initWithInt_(15 * self->size_);
  [(JavaLangStringBuilder *)v3 appendWithChar:123];
  entrySet = [(JavaUtilHashtable *)self entrySet];
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  iterator = [entrySet iterator];
  v6 = iterator;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  if ([iterator hasNext])
  {
    while (1)
    {
      next = [v6 next];
      v8 = next;
      if (!next)
      {
LABEL_16:
        JreThrowNullPointerException();
      }

      getKey = [next getKey];
      if (getKey == self)
      {
        v10 = @"(this Map)";
      }

      else
      {
        if (!getKey)
        {
          goto LABEL_16;
        }

        v10 = [(JavaUtilHashtable *)getKey description];
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:v10];
      [(JavaLangStringBuilder *)v3 appendWithChar:61];
      getValue = [v8 getValue];
      if (getValue == self)
      {
        v12 = @"(this Map)";
      }

      else
      {
        if (!getValue)
        {
          JreThrowNullPointerException();
        }

        v12 = [(JavaUtilHashtable *)getValue description];
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:v12];
      if (![v6 hasNext])
      {
        break;
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
    }
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:125];
  v13 = [(JavaLangStringBuilder *)v3 description];
  objc_sync_exit(self);
  return v13;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  objc_sync_enter(self);
  if (!stream || (v5 = [stream putFields], (v6 = v5) == 0) || (table = self->table_) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = table->super.size_ * 0.75;
  v9 = v8;
  if (v8 < 0.0)
  {
    v10 = 0x80000000;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  if (v9 == 0x80000000)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [v5 putWithNSString:@"threshold" withInt:v11];
  LODWORD(v12) = 0.75;
  [v6 putWithNSString:@"loadFactor" withFloat:v12];
  [stream writeFields];
  [stream writeIntWithInt:self->table_->super.size_];
  [stream writeIntWithInt:self->size_];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  entrySet = [(JavaUtilHashtable *)self entrySet];
  v14 = entrySet;
  if (!entrySet)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v15 = [entrySet countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (!v18)
        {
          goto LABEL_20;
        }

        [stream writeObjectWithId:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "getKey")}];
        [stream writeObjectWithId:{objc_msgSend(v18, "getValue")}];
      }

      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  objc_sync_exit(self);
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
    v16 = @"Capacity: ";
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

  sub_1001F674C(self, v13);
  readInt2 = [stream readInt];
  v15 = readInt2;
  if ((readInt2 & 0x80000000) != 0)
  {
    v16 = @"Size: ";
LABEL_14:
    v17 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, v16);
    v18 = new_JavaIoInvalidObjectException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  if (readInt2)
  {
    do
    {
      sub_1001F6FD8(self, [stream readObject], objc_msgSend(stream, "readObject"));
      --v15;
    }

    while (v15);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable;
  [(JavaUtilHashtable *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilHashtable *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (qword_100554FD8 != -1)
    {
      sub_1001F9F6C();
    }

    JreStrongAssignAndConsume(&qword_100554FC0, [IOSObjectArray newArrayWithLength:2 type:qword_100554FD0]);
    v3[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"threshold", +[IOSClass intClass]);
    v3[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"loadFactor", +[IOSClass floatClass]);
    v2 = [IOSObjectArray newArrayWithObjects:v3 count:2 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554FC8, v2);
    atomic_store(1u, JavaUtilHashtable__initialized);
  }
}

@end