@interface JavaIoOutputStream
- (void)writeWithByteArray:(id)array;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoOutputStream

- (void)writeWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaIoOutputStream *)self writeWithByteArray:array withInt:0 withInt:v4];
}

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  withIntCopy = withInt;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if (withIntCopy + int > int)
  {
    intCopy = int;
    v10 = array + int;
    do
    {
      v11 = *(array + 2);
      if (intCopy < 0 || intCopy >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
      }

      [(JavaIoOutputStream *)self writeWithInt:v10[12]];
      ++intCopy;
      ++v10;
      --withIntCopy;
    }

    while (withIntCopy);
  }
}

@end