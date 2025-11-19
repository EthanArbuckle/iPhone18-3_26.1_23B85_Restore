@interface JavaIoInputStream
- (int)readWithByteArray:(id)a3;
- (int)readWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)reset;
@end

@implementation JavaIoInputStream

- (int)readWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaIoInputStream *)self readWithByteArray:a3 withInt:0 withInt:v4];
}

- (int)readWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v9 = a5;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if (a5 > 0)
  {
    v10 = 0;
    v11 = a4;
    while (1)
    {
      v12 = [(JavaIoInputStream *)self read];
      v13 = v12;
      if (v12 == -1)
      {
        break;
      }

      v14 = v11 + v10;
      v15 = *(a3 + 2);
      if (v11 + v10 < 0 || v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v11 + v10);
      }

      *(a3 + v14 + 12) = v13;
      if (v9 == ++v10)
      {
        return v9;
      }
    }

    if (v10)
    {
      LODWORD(v9) = v10;
    }

    else
    {
      LODWORD(v9) = -1;
    }
  }

  return v9;
}

- (void)reset
{
  objc_sync_enter(self);
  v2 = new_JavaIoIOException_init();
  objc_exception_throw(v2);
}

@end