@interface OrgApacheLuceneUtilStringHelper
+ (BOOL)equalsWithNSString:(id)string withNSString:(id)sString;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilStringHelper

+ (BOOL)equalsWithNSString:(id)string withNSString:(id)sString
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
    if (string)
    {
      goto LABEL_3;
    }

    return sString == 0;
  }

  if (!string)
  {
    return sString == 0;
  }

LABEL_3:

  return [string isEqual:sString];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"tests.seed");
    if (PropertyWithNSString)
    {
      v3 = [PropertyWithNSString hash];
    }

    else
    {
      v3 = JavaLangSystem_currentTimeMillis();
    }

    OrgApacheLuceneUtilStringHelper_GOOD_FAST_HASH_SEED_ = v3;
    JreStrongAssignAndConsume(&qword_100553D88, [NSObject alloc]);
    v4 = [IOSByteArray arrayWithLength:16];
    JavaUtilArrays_fillWithByteArray_withByte_(v4, -1);
    v5 = new_JavaMathBigInteger_initWithInt_withByteArray_(1, v4);
    JreStrongAssignAndConsume(&qword_100553D90, v5);
    v6 = JavaLangSystem_getPropertyWithNSString_(@"tests.seed");
    if (v6)
    {
      v7 = v6;
      if ([v6 length] >= 9)
      {
        v7 = [v7 substring:{objc_msgSend(v7, "length") - 8}];
      }

      v14 = JavaLangLong_parseLongWithNSString_withInt_(v7, 16, v8, v9, v10, v11, v12, v13);
      v15 = v14;
    }

    else
    {
      v16 = arc4random();
      v14 = v16 | (arc4random() << 32);
      v17 = arc4random();
      v15 = v17 | (arc4random() << 32);
    }

    v18 = 10;
    do
    {
      v19 = v15;
      v15 ^= (v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17) ^ v14 ^ (v14 << 23);
      v14 = v19;
      --v18;
    }

    while (v18);
    v20 = [IOSByteArray arrayWithLength:8];
    JavaUtilArrays_fillWithByteArray_withByte_(v20, -1);
    v21 = new_JavaMathBigInteger_initWithInt_withByteArray_(1, v20);
    v22 = JavaMathBigInteger_valueOfWithLong_(v19);
    if (!v22 || (v23 = -[JavaMathBigInteger and__WithJavaMathBigInteger:](v22, "and__WithJavaMathBigInteger:", v21), (v24 = JavaMathBigInteger_valueOfWithLong_(v15)) == 0) || (v25 = -[JavaMathBigInteger and__WithJavaMathBigInteger:](v24, "and__WithJavaMathBigInteger:", v21), !v23) || (v26 = v25, (v27 = [v23 shiftLeftWithInt:64]) == 0))
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&qword_100553D98, [v27 or__WithJavaMathBigInteger:v26]);
    atomic_store(1u, OrgApacheLuceneUtilStringHelper__initialized);
  }
}

@end