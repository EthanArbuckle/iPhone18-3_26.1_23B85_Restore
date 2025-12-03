@interface JavaUtilDualPivotQuicksort
+ (void)sortWithByteArray:(id)array;
+ (void)sortWithCharArray:(id)array;
+ (void)sortWithDoubleArray:(id)array;
+ (void)sortWithFloatArray:(id)array;
+ (void)sortWithIntArray:(id)array;
+ (void)sortWithLongArray:(id)array;
+ (void)sortWithShortArray:(id)array;
@end

@implementation JavaUtilDualPivotQuicksort

+ (void)sortWithIntArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_10018AB98(array, 0, v5);
}

+ (void)sortWithLongArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_10018C388(array, 0, v5);
}

+ (void)sortWithShortArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_10018DB68(array, 0, v5);
}

+ (void)sortWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_10018F4F8(array, 0, v5);
}

+ (void)sortWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_100190E58(array, 0, v5);
}

+ (void)sortWithFloatArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_1001927E8(array, 0, v5);
}

+ (void)sortWithDoubleArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(array + 2) - 1);

  sub_100194100(array, 0, v5);
}

@end