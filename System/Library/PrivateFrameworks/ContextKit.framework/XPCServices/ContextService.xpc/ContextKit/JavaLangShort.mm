@interface JavaLangShort
+ (int)compareWithShort:(signed __int16)short withShort:(signed __int16)withShort;
+ (signed)reverseBytesWithShort:(signed __int16)short;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation JavaLangShort

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
  v6 = *(id + 4);
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
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

+ (int)compareWithShort:(signed __int16)short withShort:(signed __int16)withShort
{
  withShortCopy = withShort;
  shortCopy = short;
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  if (shortCopy >= withShortCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (shortCopy > withShortCopy)
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

  return *(equal + 4) == self->value_;
}

+ (signed)reverseBytesWithShort:(signed __int16)short
{
  shortCopy = short;
  if ((atomic_load_explicit(JavaLangShort__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100235C38();
  }

  return bswap32(shortCopy) >> 16;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSClass_arrayType(+[IOSClass shortClass](IOSClass "shortClass")];
    objc_opt_class();
    if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(&JavaLangShort_TYPE_, v2);
    v3 = [IOSObjectArray newArrayWithLength:256 type:JavaLangShort_class_()];
    JreStrongAssignAndConsume(&qword_1005552E8, v3);
    for (i = -128; i != 128; ++i)
    {
      v5 = qword_1005552E8;
      v6 = [JavaLangShort alloc];
      v6->value_ = i;
      IOSObjectArray_SetAndConsume(v5, i + 128, v6);
    }

    atomic_store(1u, JavaLangShort__initialized);
  }
}

@end