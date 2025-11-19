@interface JavaIoFilterOutputStream
- (JavaIoFilterOutputStream)initWithJavaIoOutputStream:(id)a3;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)writeWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation JavaIoFilterOutputStream

- (JavaIoFilterOutputStream)initWithJavaIoOutputStream:(id)a3
{
  JavaIoOutputStream_init(self, a2);
  JreStrongAssign(&self->out_, a3);
  return self;
}

- (void)close
{
  [(JavaIoFilterOutputStream *)self flush];
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out close];
}

- (void)flush
{
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out flush];
}

- (void)writeWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = a4;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if (a5 >= 1)
  {
    v9 = a5;
    do
    {
      v10 = *(a3 + 2);
      if (v6 < 0 || v6 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v6);
      }

      [(JavaIoFilterOutputStream *)self writeWithInt:*(a3 + v6++ + 12)];
      --v9;
    }

    while (v9);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoFilterOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end