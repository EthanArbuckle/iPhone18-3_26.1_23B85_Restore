@interface JavaLangByte
+ (int)compareWithByte:(char)byte withByte:(char)withByte;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation JavaLangByte

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(id + 8);
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  if (value >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (value > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

+ (int)compareWithByte:(char)byte withByte:(char)withByte
{
  withByteCopy = withByte;
  byteCopy = byte;
  if ((atomic_load_explicit(JavaLangByte__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015CB98();
  }

  if (byteCopy >= withByteCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (byteCopy > withByteCopy)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(equal + 8) == self->value_;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSClass_arrayType(+[IOSClass byteClass](IOSClass "byteClass")];
    objc_opt_class();
    if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(&JavaLangByte_TYPE_, v2);
    v3 = [IOSObjectArray newArrayWithLength:256 type:JavaLangByte_class_()];
    JreStrongAssignAndConsume(&qword_100554A00, v3);
    for (i = -128; i != 128; ++i)
    {
      v5 = qword_100554A00;
      v6 = [JavaLangByte alloc];
      v6->value_ = i;
      IOSObjectArray_SetAndConsume(v5, i + 128, v6);
    }

    atomic_store(1u, JavaLangByte__initialized);
  }
}

@end