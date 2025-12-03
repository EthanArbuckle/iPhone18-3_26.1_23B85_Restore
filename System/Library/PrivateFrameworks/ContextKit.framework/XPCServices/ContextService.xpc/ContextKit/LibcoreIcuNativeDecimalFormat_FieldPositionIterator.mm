@interface LibcoreIcuNativeDecimalFormat_FieldPositionIterator
+ (id)forFieldPositionWithJavaTextFieldPosition:(id)position;
+ (void)initialize;
+ (void)setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(id)iterator withJavaTextFieldPosition:(id)position;
- (BOOL)next;
- (id)field;
- (int)fieldId;
- (int)limit;
- (int)start;
- (void)dealloc;
@end

@implementation LibcoreIcuNativeDecimalFormat_FieldPositionIterator

+ (id)forFieldPositionWithJavaTextFieldPosition:(id)position
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  return 0;
}

+ (void)setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(id)iterator withJavaTextFieldPosition:(id)position
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!iterator)
    {
      return;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!iterator)
    {
      return;
    }
  }

  if (position)
  {
    v6 = sub_1001F01D8(position);
    if (v6 != -1)
    {
      v7 = v6;
      while ([iterator next])
      {
        if ([iterator fieldId] == v7)
        {
          [position setBeginIndexWithInt:{objc_msgSend(iterator, "start")}];
          limit = [iterator limit];

          [position setEndIndexWithInt:limit];
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
  if (objc_opt_class() == self)
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