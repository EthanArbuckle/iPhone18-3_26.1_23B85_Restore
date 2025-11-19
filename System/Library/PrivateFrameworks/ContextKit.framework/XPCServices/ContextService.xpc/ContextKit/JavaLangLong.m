@interface JavaLangLong
+ (int)compareWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (int)signumWithLong:(int64_t)a3;
+ (int64_t)lowestOneBitWithLong:(int64_t)a3;
+ (int64_t)reverseBytesWithLong:(int64_t)a3;
+ (int64_t)reverseWithLong:(int64_t)a3;
+ (int64_t)rotateLeftWithLong:(int64_t)a3 withInt:(int)a4;
+ (int64_t)rotateRightWithLong:(int64_t)a3 withInt:(int)a4;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (int)compareToWithId:(id)a3;
@end

@implementation JavaLangLong

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(a3 + 1);
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

+ (int)compareWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (a3 < a4)
  {
    return -1;
  }

  else
  {
    return a3 != a4;
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 1) == self->value_;
}

+ (int64_t)lowestOneBitWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return -a3 & a3;
}

+ (int64_t)rotateLeftWithLong:(int64_t)a3 withInt:(int)a4
{
  v4 = a4;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __ROR8__(a3, -v4);
}

+ (int64_t)rotateRightWithLong:(int64_t)a3 withInt:(int)a4
{
  v4 = a4;
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __ROR8__(a3, v4);
}

+ (int64_t)reverseBytesWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return bswap64(a3);
}

+ (int64_t)reverseWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  return __rbit64(a3);
}

+ (int)signumWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(JavaLangLong__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FB1C0();
  }

  if (a3 < 0)
  {
    return -1;
  }

  else
  {
    return a3 != 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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