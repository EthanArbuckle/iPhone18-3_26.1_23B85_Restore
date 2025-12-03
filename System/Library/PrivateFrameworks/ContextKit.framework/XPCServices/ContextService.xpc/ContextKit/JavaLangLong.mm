@interface JavaLangLong
+ (int)compareWithLong:(int64_t)long withLong:(int64_t)withLong;
+ (int)signumWithLong:(int64_t)long;
+ (int64_t)lowestOneBitWithLong:(int64_t)long;
+ (int64_t)reverseBytesWithLong:(int64_t)long;
+ (int64_t)reverseWithLong:(int64_t)long;
+ (int64_t)rotateLeftWithLong:(int64_t)long withInt:(int)int;
+ (int64_t)rotateRightWithLong:(int64_t)long withInt:(int)int;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation JavaLangLong

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
  v6 = *(id + 1);
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (value < v6)
  {
    return -1;
  }

  else
  {
    return value != v6;
  }
}

+ (int)compareWithLong:(int64_t)long withLong:(int64_t)withLong
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (long < withLong)
  {
    return -1;
  }

  else
  {
    return long != withLong;
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

  return *(equal + 1) == self->value_;
}

+ (int64_t)lowestOneBitWithLong:(int64_t)long
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return -long & long;
}

+ (int64_t)rotateLeftWithLong:(int64_t)long withInt:(int)int
{
  intCopy = int;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __ROR8__(long, -intCopy);
}

+ (int64_t)rotateRightWithLong:(int64_t)long withInt:(int)int
{
  intCopy = int;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __ROR8__(long, intCopy);
}

+ (int64_t)reverseBytesWithLong:(int64_t)long
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return bswap64(long);
}

+ (int64_t)reverseWithLong:(int64_t)long
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __rbit64(long);
}

+ (int)signumWithLong:(int64_t)long
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (long < 0)
  {
    return -1;
  }

  else
  {
    return long != 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSClass_arrayType(+[IOSClass longClass](IOSClass "longClass")];
    objc_opt_class();
    if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(&JavaLangLong_TYPE_, v2);
    v3 = [IOSObjectArray newArrayWithLength:256 type:JavaLangLong_class_()];
    JreStrongAssignAndConsume(&qword_100554FE0, v3);
    for (i = -128; i != 128; ++i)
    {
      v5 = qword_100554FE0;
      v6 = [JavaLangLong alloc];
      v6->value_ = i;
      IOSObjectArray_SetAndConsume(v5, i + 128, v6);
    }

    atomic_store(1u, JavaLangLong__initialized);
  }
}

@end