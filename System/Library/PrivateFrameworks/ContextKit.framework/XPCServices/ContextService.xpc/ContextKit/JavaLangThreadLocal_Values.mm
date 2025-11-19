@interface JavaLangThreadLocal_Values
+ (void)initialize;
- (id)getAfterMissWithJavaLangThreadLocal:(id)a3;
- (void)addWithJavaLangThreadLocal:(id)a3 withId:(id)a4;
- (void)dealloc;
- (void)putWithJavaLangThreadLocal:(id)a3 withId:(id)a4;
- (void)removeWithJavaLangThreadLocal:(id)a3;
@end

@implementation JavaLangThreadLocal_Values

- (void)addWithJavaLangThreadLocal:(id)a3 withId:(id)a4
{
  if (!a3 || (table = self->table_) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = self->mask_ & *(a3 + 4);
  while (1)
  {
    v8 = v7;
    size = table->super.size_;
    if (v7 < 0 || v7 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v7);
    }

    if (!(&table->elementType_)[v7])
    {
      break;
    }

    v7 = self->mask_ & (v7 + 2);
    table = self->table_;
    if (!table)
    {
      goto LABEL_13;
    }
  }

  IOSObjectArray_Set(self->table_, v7, *(a3 + 1));
  v10 = self->table_;

  IOSObjectArray_Set(v10, v8 + 1, a4);
}

- (void)putWithJavaLangThreadLocal:(id)a3 withId:(id)a4
{
  sub_100186EC4(self);
  if (!a3 || (table = self->table_) == 0)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v8 = self->mask_ & *(a3 + 4);
  v9 = -1;
  while (1)
  {
    v10 = v8;
    size = table->super.size_;
    if (v8 < 0 || v8 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v8);
    }

    v12 = (&table->elementType_)[v8];
    v13 = *(a3 + 1);
    if (v12 == v13)
    {
      break;
    }

    if (!v12)
    {
      v16 = self->table_;
      if (v9 == -1)
      {
        IOSObjectArray_Set(v16, v10, v13);
        IOSObjectArray_Set(self->table_, v10 + 1, a4);
        ++self->size_;
      }

      else
      {
        IOSObjectArray_Set(v16, v9, v13);
        IOSObjectArray_Set(self->table_, v9 + 1, a4);
        *&self->size_ = vadd_s32(*&self->size_, 0xFFFFFFFF00000001);
      }

      return;
    }

    if (v12 == qword_100554BA0)
    {
      v14 = v10;
    }

    else
    {
      v14 = -1;
    }

    if (v9 == -1)
    {
      v9 = v14;
    }

    v8 = self->mask_ & (v10 + 2);
    table = self->table_;
    if (!table)
    {
      goto LABEL_22;
    }
  }

  v15 = self->table_;

  IOSObjectArray_Set(v15, v10 + 1, a4);
}

- (id)getAfterMissWithJavaLangThreadLocal:(id)a3
{
  if (!a3 || (table = self->table_) == 0)
  {
    JreThrowNullPointerException();
  }

  mask = self->mask_;
  v7 = mask & *(a3 + 4);
  size = table->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, mask & *(a3 + 4));
  }

  if ((&table->elementType_)[v7])
  {
    v9 = self->mask_ & (v7 + 2);
    v10 = 0xFFFFFFFFLL;
    while (1)
    {
      v7 = v9;
      v11 = table->super.size_;
      if (v9 < 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      v12 = (&table->elementType_)[v9];
      if (v12 == *(a3 + 1))
      {
        v19 = table->super.size_;
        v20 = v7 + 1;
        if (v7 + 1 < 0 || v20 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v20);
        }

        return (&table->elementType_)[v20];
      }

      if (!v12)
      {
        break;
      }

      if (v12 == qword_100554BA0)
      {
        v13 = v7;
      }

      else
      {
        v13 = -1;
      }

      if (v10 == -1)
      {
        v10 = v13;
      }

      else
      {
        v10 = v10;
      }

      v9 = self->mask_ & (v7 + 2);
    }

    v14 = [a3 initialValue];
    if (self->table_ != table)
    {
      goto LABEL_34;
    }

    if ((v10 & 0x80000000) == 0)
    {
      v21 = table->super.size_;
      if (v10 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v10);
      }

      if ((&table->elementType_)[v10] == qword_100554BA0)
      {
        IOSObjectArray_Set(table, v10, *(a3 + 1));
        IOSObjectArray_Set(table, v10 + 1, v14);
        *&self->size_ = vadd_s32(*&self->size_, 0xFFFFFFFF00000001);
        return v14;
      }
    }

    v22 = table->super.size_;
    if ((v7 & 0x80000000) != 0 || v7 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v7);
    }

    if (!(&table->elementType_)[v7])
    {
      v16 = *(a3 + 1);
      v17 = table;
      v18 = v7;
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v14 = [a3 initialValue];
  if (self->table_ != table)
  {
    goto LABEL_34;
  }

  v15 = table->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v7);
  }

  if ((&table->elementType_)[v7])
  {
LABEL_34:
    [(JavaLangThreadLocal_Values *)self putWithJavaLangThreadLocal:a3 withId:v14];
    return v14;
  }

  v16 = *(a3 + 1);
  v17 = table;
  v18 = v7;
LABEL_37:
  IOSObjectArray_Set(v17, v18, v16);
  IOSObjectArray_Set(table, v7 + 1, v14);
  ++self->size_;
  sub_100186EC4(self);
  return v14;
}

- (void)removeWithJavaLangThreadLocal:(id)a3
{
  sub_100186EC4(self);
  if (!a3 || (table = self->table_) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v6 = self->mask_ & *(a3 + 4);
  while (1)
  {
    v7 = v6;
    size = table->super.size_;
    if (v6 < 0 || v6 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    v9 = (&table->elementType_)[v6];
    if (v9 == *(a3 + 1))
    {
      break;
    }

    if (!v9)
    {
      return;
    }

    v6 = self->mask_ & (v7 + 2);
    table = self->table_;
    if (!table)
    {
      goto LABEL_13;
    }
  }

  IOSObjectArray_Set(self->table_, v7, qword_100554BA0);
  IOSObjectArray_Set(self->table_, v7 + 1, 0);
  *&self->size_ = vadd_s32(*&self->size_, 0x1FFFFFFFFLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangThreadLocal_Values;
  [(JavaLangThreadLocal_Values *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554BA0, [NSObject alloc]);
    atomic_store(1u, &JavaLangThreadLocal_Values__initialized);
  }
}

@end