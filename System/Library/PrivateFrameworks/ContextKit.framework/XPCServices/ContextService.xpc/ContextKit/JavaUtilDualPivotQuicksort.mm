@interface JavaUtilDualPivotQuicksort
+ (void)sortWithByteArray:(id)a3;
+ (void)sortWithCharArray:(id)a3;
+ (void)sortWithDoubleArray:(id)a3;
+ (void)sortWithFloatArray:(id)a3;
+ (void)sortWithIntArray:(id)a3;
+ (void)sortWithLongArray:(id)a3;
+ (void)sortWithShortArray:(id)a3;
@end

@implementation JavaUtilDualPivotQuicksort

+ (void)sortWithIntArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_10018AB98(a3, 0, v5);
}

+ (void)sortWithLongArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_10018C388(a3, 0, v5);
}

+ (void)sortWithShortArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_10018DB68(a3, 0, v5);
}

+ (void)sortWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_10018F4F8(a3, 0, v5);
}

+ (void)sortWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_100190E58(a3, 0, v5);
}

+ (void)sortWithFloatArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_1001927E8(a3, 0, v5);
}

+ (void)sortWithDoubleArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (*(a3 + 2) - 1);

  sub_100194100(a3, 0, v5);
}

@end