@interface JavaIoFilterOutputStream
- (JavaIoFilterOutputStream)initWithJavaIoOutputStream:(id)stream;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoFilterOutputStream

- (JavaIoFilterOutputStream)initWithJavaIoOutputStream:(id)stream
{
  JavaIoOutputStream_init(self, a2);
  JreStrongAssign(&self->out_, stream);
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

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  intCopy = int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if (withInt >= 1)
  {
    withIntCopy = withInt;
    do
    {
      v10 = *(array + 2);
      if (intCopy < 0 || intCopy >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, intCopy);
      }

      [(JavaIoFilterOutputStream *)self writeWithInt:*(array + intCopy++ + 12)];
      --withIntCopy;
    }

    while (withIntCopy);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoFilterOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end