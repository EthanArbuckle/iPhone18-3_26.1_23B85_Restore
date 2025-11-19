@interface JavaIoOutputStream
- (void)writeWithByteArray:(id)a3;
- (void)writeWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation JavaIoOutputStream

- (void)writeWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(JavaIoOutputStream *)self writeWithByteArray:a3 withInt:0 withInt:v4];
}

- (void)writeWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = a5;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if (v5 + a4 > a4)
  {
    v9 = a4;
    v10 = a3 + a4;
    do
    {
      v11 = *(a3 + 2);
      if (v9 < 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      [(JavaIoOutputStream *)self writeWithInt:v10[12]];
      ++v9;
      ++v10;
      --v5;
    }

    while (v5);
  }
}

@end