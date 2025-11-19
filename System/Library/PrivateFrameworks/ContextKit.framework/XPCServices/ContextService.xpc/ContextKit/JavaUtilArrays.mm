@interface JavaUtilArrays
+ (BOOL)deepToStringImplContainsWithNSObjectArray:(id)a3 withId:(id)a4;
+ (int)binarySearchWithByteArray:(id)a3 withByte:(char)a4;
+ (int)binarySearchWithCharArray:(id)a3 withChar:(unsigned __int16)a4;
+ (int)binarySearchWithDoubleArray:(id)a3 withDouble:(double)a4;
+ (int)binarySearchWithFloatArray:(id)a3 withFloat:(float)a4;
+ (int)binarySearchWithIntArray:(id)a3 withInt:(int)a4;
+ (int)binarySearchWithLongArray:(id)a3 withLong:(int64_t)a4;
+ (int)binarySearchWithNSObjectArray:(id)a3 withId:(id)a4;
+ (int)binarySearchWithNSObjectArray:(id)a3 withId:(id)a4 withJavaUtilComparator:(id)a5;
+ (int)binarySearchWithShortArray:(id)a3 withShort:(signed __int16)a4;
+ (int)hashCodeWithBooleanArray:(id)a3;
+ (int)hashCodeWithByteArray:(id)a3;
+ (int)hashCodeWithCharArray:(id)a3;
+ (int)hashCodeWithIntArray:(id)a3;
+ (int)hashCodeWithLongArray:(id)a3;
+ (int)hashCodeWithShortArray:(id)a3;
+ (void)fillWithBooleanArray:(id)a3 withBoolean:(BOOL)a4;
+ (void)fillWithByteArray:(id)a3 withByte:(char)a4;
+ (void)fillWithCharArray:(id)a3 withChar:(unsigned __int16)a4;
+ (void)fillWithDoubleArray:(id)a3 withDouble:(double)a4;
+ (void)fillWithFloatArray:(id)a3 withFloat:(float)a4;
+ (void)fillWithIntArray:(id)a3 withInt:(int)a4;
+ (void)fillWithLongArray:(id)a3 withLong:(int64_t)a4;
+ (void)fillWithNSObjectArray:(id)a3 withId:(id)a4;
+ (void)fillWithShortArray:(id)a3 withShort:(signed __int16)a4;
@end

@implementation JavaUtilArrays

+ (int)binarySearchWithByteArray:(id)a3 withByte:(char)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithByteArray_withInt_withInt_withByte_(a3, 0, v6, a4);
}

+ (int)binarySearchWithCharArray:(id)a3 withChar:(unsigned __int16)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithCharArray_withInt_withInt_withChar_(a3, 0, v6, a4);
}

+ (int)binarySearchWithDoubleArray:(id)a3 withDouble:(double)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithDoubleArray_withInt_withInt_withDouble_(a3, 0, v6, a4);
}

+ (int)binarySearchWithFloatArray:(id)a3 withFloat:(float)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithFloatArray_withInt_withInt_withFloat_(a3, 0, v6, a4);
}

+ (int)binarySearchWithIntArray:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithIntArray_withInt_withInt_withInt_(a3, 0, v6, a4);
}

+ (int)binarySearchWithLongArray:(id)a3 withLong:(int64_t)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithLongArray_withInt_withInt_withLong_(a3, 0, v6, a4);
}

+ (int)binarySearchWithNSObjectArray:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_(a3, 0, v6, a4);
}

+ (int)binarySearchWithNSObjectArray:(id)a3 withId:(id)a4 withJavaUtilComparator:(id)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_withJavaUtilComparator_(a3, 0, v7, a4, a5);
}

+ (int)binarySearchWithShortArray:(id)a3 withShort:(signed __int16)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 2);

  return JavaUtilArrays_binarySearchWithShortArray_withInt_withInt_withShort_(a3, 0, v6, a4);
}

+ (void)fillWithByteArray:(id)a3 withByte:(char)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[12] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithShortArray:(id)a3 withShort:(signed __int16)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[6] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithCharArray:(id)a3 withChar:(unsigned __int16)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[6] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithIntArray:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[3] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithLongArray:(id)a3 withLong:(int64_t)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[2] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithFloatArray:(id)a3 withFloat:(float)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[3] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithDoubleArray:(id)a3 withDouble:(double)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[2] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithBooleanArray:(id)a3 withBoolean:(BOOL)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v5[12] = a4;
      ++v4;
      ++v5;
    }

    while (v4 < *(a3 + 2));
  }
}

+ (void)fillWithNSObjectArray:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      IOSObjectArray_Set(a3, v6++, a4);
    }

    while (v6 < *(a3 + 2));
  }
}

+ (int)hashCodeWithBooleanArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3 + 12;
  v4 = *(a3 + 2);
  result = 1;
  if (a3 + 12 < a3 + v4 + 12)
  {
    do
    {
      if (*v3++)
      {
        v7 = 1231;
      }

      else
      {
        v7 = 1237;
      }

      result = v7 - result + 32 * result;
      --v4;
    }

    while (v4);
  }

  return result;
}

+ (int)hashCodeWithIntArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 + 12);
  result = 1;
  while (v3 < (a3 + 4 * *(a3 + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithShortArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 + 12);
  result = 1;
  while (v3 < (a3 + 2 * *(a3 + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithCharArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 + 12);
  result = 1;
  while (v3 < (a3 + 2 * *(a3 + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithByteArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3 + 12;
  v4 = *(a3 + 2);
  result = 1;
  if (a3 + 12 < a3 + v4 + 12)
  {
    do
    {
      v6 = *v3++;
      result = v6 - result + 32 * result;
      --v4;
    }

    while (v4);
  }

  return result;
}

+ (int)hashCodeWithLongArray:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 + 16);
  result = 1;
  while (v3 < (a3 + 8 * *(a3 + 2) + 16))
  {
    v5 = *v3++;
    result = (HIDWORD(v5) ^ v5) - result + 32 * result;
  }

  return result;
}

+ (BOOL)deepToStringImplContainsWithNSObjectArray:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a3 + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = (a3 + 24);
  v6 = (a3 + 8 * v4 + 24);
  do
  {
    result = v5 < v6;
    if (v5 >= v6)
    {
      break;
    }

    v8 = *v5++;
  }

  while (v8 != a4);
  return result;
}

@end