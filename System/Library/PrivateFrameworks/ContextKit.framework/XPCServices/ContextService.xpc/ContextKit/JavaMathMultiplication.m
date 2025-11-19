@interface JavaMathMultiplication
+ (int64_t)unsignedMultAddAddWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
+ (void)initialize;
@end

@implementation JavaMathMultiplication

+ (int64_t)unsignedMultAddAddWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  return a5 + a4 * a3 + a6;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v19[0] = xmmword_100315070;
    v19[1] = unk_100315080;
    v20 = 4294967296100000000;
    JreStrongAssignAndConsume(&JavaMathMultiplication_tenPows_, [IOSIntArray newArrayWithInts:v19 count:10]);
    v17[0] = xmmword_100315098;
    v17[1] = unk_1003150A8;
    v17[2] = xmmword_1003150B8;
    v18 = 0x48C273950E8D4A51;
    JreStrongAssignAndConsume(&JavaMathMultiplication_fivePows_, [IOSIntArray newArrayWithInts:v17 count:14]);
    v2 = [IOSObjectArray newArrayWithLength:32 type:JavaMathBigInteger_class_()];
    JreStrongAssignAndConsume(&JavaMathMultiplication_bigTenPows_, v2);
    v3 = [IOSObjectArray newArrayWithLength:32 type:JavaMathBigInteger_class_()];
    JreStrongAssignAndConsume(&JavaMathMultiplication_bigFivePows_, v3);
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = JavaMathMultiplication_bigFivePows_;
      v7 = JavaMathBigInteger_valueOfWithLong_(v5);
      IOSObjectArray_Set(v6, v4, v7);
      v8 = JavaMathMultiplication_bigTenPows_;
      v9 = JavaMathBigInteger_valueOfWithLong_(v5 << v4);
      IOSObjectArray_Set(v8, v4, v9);
      v5 *= 5;
      ++v4;
    }

    while (v4 != 19);
    if (*(JavaMathMultiplication_bigTenPows_ + 8) >= 20)
    {
      v10 = 18;
      do
      {
        v11 = *(JavaMathMultiplication_bigFivePows_ + 8);
        if (v10 + 1 > v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v10);
        }

        if (!*(JavaMathMultiplication_bigFivePows_ + 24 + 8 * v10))
        {
          goto LABEL_20;
        }

        v12 = *(JavaMathMultiplication_bigFivePows_ + 8);
        if (v12 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, 1);
        }

        IOSObjectArray_Set(JavaMathMultiplication_bigFivePows_, v10 + 1, [*(JavaMathMultiplication_bigFivePows_ + 24 + 8 * v10) multiplyWithJavaMathBigInteger:*(JavaMathMultiplication_bigFivePows_ + 32)]);
        v13 = JavaMathMultiplication_bigTenPows_;
        v14 = *(JavaMathMultiplication_bigTenPows_ + 8);
        if (v10 + 1 > v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v10);
        }

        v15 = *(JavaMathMultiplication_bigTenPows_ + 24 + 8 * v10);
        if (!v15)
        {
LABEL_20:
          JreThrowNullPointerException();
        }

        if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100164DE8();
        }

        IOSObjectArray_Set(v13, v10 + 1, [v15 multiplyWithJavaMathBigInteger:JavaMathBigInteger_TEN_]);
        v16 = v10 + 2;
        ++v10;
      }

      while (v16 < *(JavaMathMultiplication_bigTenPows_ + 8));
    }

    atomic_store(1u, JavaMathMultiplication__initialized);
  }
}

@end