@interface LibcoreIcuNativeDecimalFormat_FieldPositionIterator
+ (id)forFieldPositionWithJavaTextFieldPosition:(id)a3;
+ (void)initialize;
+ (void)setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(id)a3 withJavaTextFieldPosition:(id)a4;
- (BOOL)next;
- (id)field;
- (int)fieldId;
- (int)limit;
- (int)start;
- (void)dealloc;
@end

@implementation LibcoreIcuNativeDecimalFormat_FieldPositionIterator

+ (id)forFieldPositionWithJavaTextFieldPosition:(id)a3
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  return 0;
}

+ (void)setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(id)a3 withJavaTextFieldPosition:(id)a4
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!a3)
    {
      return;
    }
  }

  if (a4)
  {
    v6 = sub_1001F01D8(a4);
    if (v6 != -1)
    {
      v7 = v6;
      while ([a3 next])
      {
        if ([a3 fieldId] == v7)
        {
          [a4 setBeginIndexWithInt:{objc_msgSend(a3, "start")}];
          v8 = [a3 limit];

          [a4 setEndIndexWithInt:v8];
          return;
        }
      }
    }
  }
}

- (BOOL)next
{
  data = self->data_;
  if (!data || (pos = self->pos_, pos == data->super.size_))
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  v4 = pos + 3;
  self->pos_ = v4;
  return v4 < data->super.size_;
}

- (int)fieldId
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  size = data->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  return *(&data->super.size_ + pos + 1);
}

- (id)field
{
  sub_1001F03C8(self);
  if (!qword_100554F60 || (data = self->data_) == 0)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  size = data->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  v6 = *(&data->super.size_ + pos + 1);
  v7 = *(qword_100554F60 + 8);
  if (v6 < 0 || v6 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v6);
  }

  return *(qword_100554F60 + 24 + 8 * v6);
}

- (int)start
{
  sub_1001F03C8(self);
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  size = data->super.size_;
  v6 = pos + 1;
  if (pos + 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (pos + 1));
  }

  return *(&data->super.size_ + v6 + 1);
}

- (int)limit
{
  sub_1001F03C8(self);
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  size = data->super.size_;
  v6 = pos + 2;
  if (pos + 2 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (pos + 2));
  }

  return *(&data->super.size_ + v6 + 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIcuNativeDecimalFormat_FieldPositionIterator;
  [(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[0] = JavaTextNumberFormat_Field_INTEGER_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[1] = JavaTextNumberFormat_Field_FRACTION_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[2] = JavaTextNumberFormat_Field_DECIMAL_SEPARATOR_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[3] = JavaTextNumberFormat_Field_EXPONENT_SYMBOL_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[4] = JavaTextNumberFormat_Field_EXPONENT_SIGN_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[5] = JavaTextNumberFormat_Field_EXPONENT_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[6] = JavaTextNumberFormat_Field_GROUPING_SEPARATOR_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[7] = JavaTextNumberFormat_Field_CURRENCY_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[8] = JavaTextNumberFormat_Field_PERCENT_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[9] = JavaTextNumberFormat_Field_PERMILLE_;
    if ((atomic_load_explicit(JavaTextNumberFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001F08C8();
    }

    v3[10] = JavaTextNumberFormat_Field_SIGN_;
    v2 = [IOSObjectArray newArrayWithObjects:v3 count:11 type:JavaTextFormat_Field_class_()];
    JreStrongAssignAndConsume(&qword_100554F60, v2);
    atomic_store(1u, LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized);
  }
}

@end