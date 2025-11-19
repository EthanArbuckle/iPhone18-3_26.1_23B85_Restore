@interface JavaUtilHashtable
+ (int)capacityForInitSizeWithInt:(int)a3;
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (IOSObjectArray)doubleCapacity;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elements;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)keys;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)a3;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilHashtable

+ (int)capacityForInitSizeWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaUtilHashtable__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F9F60();
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
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable;
  v3 = [(JavaUtilHashtable *)&v6 clone];
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

  sub_1001F674C(v3, table->super.size_);
  *(v3 + 4) = 0;
  JreStrongAssign(v3 + 4, 0);
  JreStrongAssign(v3 + 5, 0);
  JreStrongAssign(v3 + 6, 0);
  sub_1001F6470(v3, self);
  objc_sync_exit(self);
  return v3;
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

- (id)getWithId:(id)a3
{
  objc_sync_enter(self);
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
  if (isa)
  {
    while (isa[1].super.isa != a3)
    {
      if (LODWORD(isa[3].super.isa) == v8)
      {
        if (!a3)
        {
          JreThrowNullPointerException();
        }

        if ([a3 isEqual:?])
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

- (BOOL)containsKeyWithId:(id)a3
{
  objc_sync_enter(self);
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
  if (isa)
  {
    while (isa[1].super.isa != a3)
    {
      if (LODWORD(isa[3].super.isa) == v8)
      {
        if (!a3)
        {
          JreThrowNullPointerException();
        }

        if ([a3 isEqual:?])
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

- (BOOL)containsValueWithId:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
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

    while (([a3 isEqual:isa[2].super.isa] & 1) == 0)
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

- (id)putWithId:(id)a3 withId:(id)a4
{
  objc_sync_enter(self);
  if (!a3)
  {
    v24 = @"key == null";
    goto LABEL_29;
  }

  if (!a4)
  {
    v24 = @"value == null";
LABEL_29:
    v25 = new_JavaLangNullPointerException_initWithNSString_(v24);
    objc_exception_throw(v25);
  }

  v8 = JavaUtilCollections_secondaryHashWithId_(a3);
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
    while (LODWORD(isa[3].super.isa) != v10 || ![a3 isEqual:isa[1].super.isa])
    {
      isa = isa[4].super.isa;
      if (!isa)
      {
        goto LABEL_14;
      }
    }

    v22 = isa[2].super.isa;
    JreStrongAssign(&isa[2].super.isa, a4);
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

    v21 = sub_1001F6F54(a3, a4, v10, v14);
    IOSObjectArray_SetAndConsume(table, v12, v21);
    v22 = 0;
  }

  objc_sync_exit(self);
  return v22;
}

- (IOSObjectArray)doubleCapacity
{
  v1 = *(a1 + 8);
  if (!v1)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v2 = *(v1 + 8);
  if (v2 != 0x40000000)
  {
    v4 = sub_1001F674C(a1, 2 * v2);
    if (*(a1 + 16))
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

- (void)putAllWithJavaUtilMap:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  sub_1001F72B0(self, [a3 size]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 entrySet];
  v6 = v5;
  if (!v5)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)removeWithId:(id)a3
{
  objc_sync_enter(self);
  v6 = JavaUtilCollections_secondaryHashWithId_(a3);
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
        if (!a3)
        {
          JreThrowNullPointerException();
        }

        if ([a3 isEqual:isa[1].super.isa])
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

- (BOOL)isEqual:(id)a3
{
  objc_sync_enter(self);
  if ([JavaUtilMap_class_() isInstance:a3])
  {
    v5 = [(JavaUtilHashtable *)self entrySet];
    if (!v5 || (v6 = JavaUtilMap_class_(), !a3))
    {
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = [v5 isEqual:{objc_msgSend(a3, "entrySet")}];
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
  v3 = [(JavaUtilHashtable *)self entrySet];
  v4 = v3;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        v10 = [*(*(&v17 + 1) + 8 * i) getKey];
        v11 = [v9 getValue];
        v12 = v11;
        if (v10 != self && v11 != self)
        {
          if (v10)
          {
            LODWORD(v10) = [(JavaUtilHashtable *)v10 hash];
          }

          if (v12)
          {
            v14 = [(JavaUtilHashtable *)v12 hash];
          }

          else
          {
            v14 = 0;
          }

          v6 += v14 ^ v10;
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
  v4 = [(JavaUtilHashtable *)self entrySet];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 iterator];
  v6 = v5;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  if ([v5 hasNext])
  {
    while (1)
    {
      v7 = [v6 next];
      v8 = v7;
      if (!v7)
      {
LABEL_16:
        JreThrowNullPointerException();
      }

      v9 = [v7 getKey];
      if (v9 == self)
      {
        v10 = @"(this Map)";
      }

      else
      {
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = [(JavaUtilHashtable *)v9 description];
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:v10];
      [(JavaLangStringBuilder *)v3 appendWithChar:61];
      v11 = [v8 getValue];
      if (v11 == self)
      {
        v12 = @"(this Map)";
      }

      else
      {
        if (!v11)
        {
          JreThrowNullPointerException();
        }

        v12 = [(JavaUtilHashtable *)v11 description];
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

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  objc_sync_enter(self);
  if (!a3 || (v5 = [a3 putFields], (v6 = v5) == 0) || (table = self->table_) == 0)
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
  [a3 writeFields];
  [a3 writeIntWithInt:self->table_->super.size_];
  [a3 writeIntWithInt:self->size_];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(JavaUtilHashtable *)self entrySet];
  v14 = v13;
  if (!v13)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

        [a3 writeObjectWithId:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "getKey")}];
        [a3 writeObjectWithId:{objc_msgSend(v18, "getValue")}];
      }

      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  objc_sync_exit(self);
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
    v16 = @"Capacity: ";
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

  sub_1001F674C(self, v13);
  v14 = [a3 readInt];
  v15 = v14;
  if ((v14 & 0x80000000) != 0)
  {
    v16 = @"Size: ";
LABEL_14:
    v17 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, v16);
    v18 = new_JavaIoInvalidObjectException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  if (v14)
  {
    do
    {
      sub_1001F6FD8(self, [a3 readObject], objc_msgSend(a3, "readObject"));
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilHashtable *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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