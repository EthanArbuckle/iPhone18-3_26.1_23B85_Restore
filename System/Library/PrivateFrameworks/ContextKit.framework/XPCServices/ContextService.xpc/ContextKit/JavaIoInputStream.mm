@interface JavaIoInputStream
- (int)readWithByteArray:(id)array;
- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)reset;
@end

@implementation JavaIoInputStream

- (int)readWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaIoInputStream *)self readWithByteArray:array withInt:0 withInt:v4];
}

- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  withIntCopy = withInt;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if (withInt > 0)
  {
    v10 = 0;
    intCopy = int;
    while (1)
    {
      read = [(JavaIoInputStream *)self read];
      v13 = read;
      if (read == -1)
      {
        break;
      }

      v14 = intCopy + v10;
      v15 = *(array + 2);
      if (intCopy + v10 < 0 || v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, intCopy + v10);
      }

      *(array + v14 + 12) = v13;
      if (withIntCopy == ++v10)
      {
        return withIntCopy;
      }
    }

    if (v10)
    {
      LODWORD(withIntCopy) = v10;
    }

    else
    {
      LODWORD(withIntCopy) = -1;
    }
  }

  return withIntCopy;
}

- (void)reset
{
  objc_sync_enter(self);
  v2 = new_JavaIoIOException_init();
  objc_exception_throw(v2);
}

@end