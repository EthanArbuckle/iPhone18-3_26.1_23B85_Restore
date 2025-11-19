@interface JavaLangInteger
+ (int)compareWithInt:(int)a3 withInt:(int)a4;
+ (int)lowestOneBitWithInt:(int)a3;
+ (int)reverseBytesWithInt:(int)a3;
+ (int)reverseWithInt:(int)a3;
+ (int)rotateLeftWithInt:(int)a3 withInt:(int)a4;
+ (int)rotateRightWithInt:(int)a3 withInt:(int)a4;
+ (int)signumWithInt:(int)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (int)compareToWithId:(id)a3;
@end

@implementation JavaLangInteger

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
  v6 = *(a3 + 2);
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
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

+ (int)compareWithInt:(int)a3 withInt:(int)a4
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
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

  return *(a3 + 2) == self->value_;
}

+ (int)lowestOneBitWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return -a3 & a3;
}

+ (int)rotateLeftWithInt:(int)a3 withInt:(int)a4
{
  v4 = a4;
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __ROR4__(a3, -v4);
}

+ (int)rotateRightWithInt:(int)a3 withInt:(int)a4
{
  v4 = a4;
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __ROR4__(a3, v4);
}

+ (int)reverseBytesWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return bswap32(a3);
}

+ (int)reverseWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __rbit32(a3);
}

+ (int)signumWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return (a3 >> 31) | (a3 > 0);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v7[0] = xmmword_100315623;
    v7[1] = unk_100315633;
    v7[2] = xmmword_100315643;
    v7[3] = unk_100315653;
    JreStrongAssignAndConsume(&qword_1005568E8, [IOSByteArray newArrayWithBytes:v7 count:64]);
    v2 = [IOSClass_arrayType(+[IOSClass intClass](IOSClass "intClass")];
    objc_opt_class();
    if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(&JavaLangInteger_TYPE_, v2);
    v3 = [IOSObjectArray newArrayWithLength:256 type:JavaLangInteger_class_()];
    JreStrongAssignAndConsume(&qword_1005568F0, v3);
    for (i = -128; i != 128; ++i)
    {
      v5 = qword_1005568F0;
      v6 = [JavaLangInteger alloc];
      v6->value_ = i;
      IOSObjectArray_SetAndConsume(v5, i + 128, v6);
    }

    atomic_store(1u, JavaLangInteger__initialized);
  }
}

@end