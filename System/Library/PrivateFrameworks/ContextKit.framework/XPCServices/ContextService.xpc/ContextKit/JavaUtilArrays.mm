@interface JavaUtilArrays
+ (BOOL)deepToStringImplContainsWithNSObjectArray:(id)array withId:(id)id;
+ (int)binarySearchWithByteArray:(id)array withByte:(char)byte;
+ (int)binarySearchWithCharArray:(id)array withChar:(unsigned __int16)char;
+ (int)binarySearchWithDoubleArray:(id)array withDouble:(double)double;
+ (int)binarySearchWithFloatArray:(id)array withFloat:(float)float;
+ (int)binarySearchWithIntArray:(id)array withInt:(int)int;
+ (int)binarySearchWithLongArray:(id)array withLong:(int64_t)long;
+ (int)binarySearchWithNSObjectArray:(id)array withId:(id)id;
+ (int)binarySearchWithNSObjectArray:(id)array withId:(id)id withJavaUtilComparator:(id)comparator;
+ (int)binarySearchWithShortArray:(id)array withShort:(signed __int16)short;
+ (int)hashCodeWithBooleanArray:(id)array;
+ (int)hashCodeWithByteArray:(id)array;
+ (int)hashCodeWithCharArray:(id)array;
+ (int)hashCodeWithIntArray:(id)array;
+ (int)hashCodeWithLongArray:(id)array;
+ (int)hashCodeWithShortArray:(id)array;
+ (void)fillWithBooleanArray:(id)array withBoolean:(BOOL)boolean;
+ (void)fillWithByteArray:(id)array withByte:(char)byte;
+ (void)fillWithCharArray:(id)array withChar:(unsigned __int16)char;
+ (void)fillWithDoubleArray:(id)array withDouble:(double)double;
+ (void)fillWithFloatArray:(id)array withFloat:(float)float;
+ (void)fillWithIntArray:(id)array withInt:(int)int;
+ (void)fillWithLongArray:(id)array withLong:(int64_t)long;
+ (void)fillWithNSObjectArray:(id)array withId:(id)id;
+ (void)fillWithShortArray:(id)array withShort:(signed __int16)short;
@end

@implementation JavaUtilArrays

+ (int)binarySearchWithByteArray:(id)array withByte:(char)byte
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithByteArray_withInt_withInt_withByte_(array, 0, v6, byte);
}

+ (int)binarySearchWithCharArray:(id)array withChar:(unsigned __int16)char
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithCharArray_withInt_withInt_withChar_(array, 0, v6, char);
}

+ (int)binarySearchWithDoubleArray:(id)array withDouble:(double)double
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithDoubleArray_withInt_withInt_withDouble_(array, 0, v6, double);
}

+ (int)binarySearchWithFloatArray:(id)array withFloat:(float)float
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithFloatArray_withInt_withInt_withFloat_(array, 0, v6, float);
}

+ (int)binarySearchWithIntArray:(id)array withInt:(int)int
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithIntArray_withInt_withInt_withInt_(array, 0, v6, int);
}

+ (int)binarySearchWithLongArray:(id)array withLong:(int64_t)long
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithLongArray_withInt_withInt_withLong_(array, 0, v6, long);
}

+ (int)binarySearchWithNSObjectArray:(id)array withId:(id)id
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_(array, 0, v6, id);
}

+ (int)binarySearchWithNSObjectArray:(id)array withId:(id)id withJavaUtilComparator:(id)comparator
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v7 = *(array + 2);

  return JavaUtilArrays_binarySearchWithNSObjectArray_withInt_withInt_withId_withJavaUtilComparator_(array, 0, v7, id, comparator);
}

+ (int)binarySearchWithShortArray:(id)array withShort:(signed __int16)short
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *(array + 2);

  return JavaUtilArrays_binarySearchWithShortArray_withInt_withInt_withShort_(array, 0, v6, short);
}

+ (void)fillWithByteArray:(id)array withByte:(char)byte
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[12] = byte;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithShortArray:(id)array withShort:(signed __int16)short
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[6] = short;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithCharArray:(id)array withChar:(unsigned __int16)char
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[6] = char;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithIntArray:(id)array withInt:(int)int
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[3] = int;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithLongArray:(id)array withLong:(int64_t)long
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[2] = long;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithFloatArray:(id)array withFloat:(float)float
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[3] = float;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithDoubleArray:(id)array withDouble:(double)double
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[2] = double;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithBooleanArray:(id)array withBoolean:(BOOL)boolean
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v4 = 0;
    arrayCopy = array;
    do
    {
      arrayCopy[12] = boolean;
      ++v4;
      ++arrayCopy;
    }

    while (v4 < *(array + 2));
  }
}

+ (void)fillWithNSObjectArray:(id)array withId:(id)id
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  if (*(array + 2) >= 1)
  {
    v6 = 0;
    do
    {
      IOSObjectArray_Set(array, v6++, id);
    }

    while (v6 < *(array + 2));
  }
}

+ (int)hashCodeWithBooleanArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = array + 12;
  v4 = *(array + 2);
  result = 1;
  if (array + 12 < array + v4 + 12)
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

+ (int)hashCodeWithIntArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = (array + 12);
  result = 1;
  while (v3 < (array + 4 * *(array + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithShortArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = (array + 12);
  result = 1;
  while (v3 < (array + 2 * *(array + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithCharArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = (array + 12);
  result = 1;
  while (v3 < (array + 2 * *(array + 2) + 12))
  {
    v5 = *v3++;
    result = v5 - result + 32 * result;
  }

  return result;
}

+ (int)hashCodeWithByteArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = array + 12;
  v4 = *(array + 2);
  result = 1;
  if (array + 12 < array + v4 + 12)
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

+ (int)hashCodeWithLongArray:(id)array
{
  if (!array)
  {
    return 0;
  }

  v3 = (array + 16);
  result = 1;
  while (v3 < (array + 8 * *(array + 2) + 16))
  {
    v5 = *v3++;
    result = (HIDWORD(v5) ^ v5) - result + 32 * result;
  }

  return result;
}

+ (BOOL)deepToStringImplContainsWithNSObjectArray:(id)array withId:(id)id
{
  if (!array)
  {
    return 0;
  }

  v4 = *(array + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = (array + 24);
  v6 = (array + 8 * v4 + 24);
  do
  {
    result = v5 < v6;
    if (v5 >= v6)
    {
      break;
    }

    v8 = *v5++;
  }

  while (v8 != id);
  return result;
}

@end