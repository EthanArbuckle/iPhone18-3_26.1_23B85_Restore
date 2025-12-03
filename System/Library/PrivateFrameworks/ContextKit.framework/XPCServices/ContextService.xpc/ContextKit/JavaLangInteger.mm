@interface JavaLangInteger
+ (int)compareWithInt:(int)int withInt:(int)withInt;
+ (int)lowestOneBitWithInt:(int)int;
+ (int)reverseBytesWithInt:(int)int;
+ (int)reverseWithInt:(int)int;
+ (int)rotateLeftWithInt:(int)int withInt:(int)withInt;
+ (int)rotateRightWithInt:(int)int withInt:(int)withInt;
+ (int)signumWithInt:(int)int;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation JavaLangInteger

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
  v6 = *(id + 2);
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

+ (int)compareWithInt:(int)int withInt:(int)withInt
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  if (int < withInt)
  {
    return -1;
  }

  else
  {
    return int != withInt;
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

  return *(equal + 2) == self->value_;
}

+ (int)lowestOneBitWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return -int & int;
}

+ (int)rotateLeftWithInt:(int)int withInt:(int)withInt
{
  withIntCopy = withInt;
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __ROR4__(int, -withIntCopy);
}

+ (int)rotateRightWithInt:(int)int withInt:(int)withInt
{
  withIntCopy = withInt;
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __ROR4__(int, withIntCopy);
}

+ (int)reverseBytesWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return bswap32(int);
}

+ (int)reverseWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return __rbit32(int);
}

+ (int)signumWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7348();
  }

  return (int >> 31) | (int > 0);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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