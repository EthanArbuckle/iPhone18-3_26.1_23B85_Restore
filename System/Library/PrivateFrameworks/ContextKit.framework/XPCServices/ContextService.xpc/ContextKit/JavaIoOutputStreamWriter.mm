@interface JavaIoOutputStreamWriter
- (BOOL)checkError;
- (JavaIoOutputStreamWriter)initWithJavaIoOutputStream:(id)stream;
- (id)drainEncoder;
- (id)getEncoding;
- (void)close;
- (void)dealloc;
- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoOutputStreamWriter

- (JavaIoOutputStreamWriter)initWithJavaIoOutputStream:(id)stream
{
  v5 = JavaNioCharsetCharset_defaultCharset();
  JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(&self->super.super.isa, stream, v5);
  return self;
}

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (self->encoder_)
  {
    [JavaIoOutputStreamWriter drainEncoder]_0(self, v4, v5, v6, v7, v8, v9, v10);
    sub_100283B8C(self, 0);
    out = self->out_;
    if (!out)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoOutputStream *)out close];
    JreStrongAssign(&self->encoder_, 0);
    JreStrongAssign(&self->bytes_, 0);
  }

  objc_sync_exit(lock);
}

- (id)drainEncoder
{
  v9 = JavaNioCharBuffer_allocateWithInt_(0, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(self + 24);
  if (!v10)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v11 = [v10 encodeWithJavaNioCharBuffer:v9 withJavaNioByteBuffer:*(self + 32) withBoolean:1];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    if ([v11 isError])
    {
      break;
    }

    if (![v12 isOverflow])
    {
      goto LABEL_8;
    }

    sub_100283B8C(self, 0);
    v10 = *(self + 24);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  [v12 throwException];
LABEL_8:
  v13 = *(self + 24);
  if (!v13 || (v14 = [v13 flushWithJavaNioByteBuffer:*(self + 32)]) == 0)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v15 = v14;
  while (1)
  {
    result = [v15 isUnderflow];
    if (result)
    {
      return result;
    }

    if ([v15 isOverflow])
    {
      sub_100283B8C(self, 0);
      v15 = [*(self + 24) flushWithJavaNioByteBuffer:*(self + 32)];
    }

    else
    {
      [v15 throwException];
    }

    if (!v15)
    {
      goto LABEL_16;
    }
  }
}

- (id)getEncoding
{
  result = self->encoder_;
  if (result)
  {
    charset = [result charset];
    if (!charset)
    {
      JreThrowNullPointerException();
    }

    return [charset name];
  }

  return result;
}

- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  sub_100283D84(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  v10 = JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(array, int, withInt);
  sub_100283CC0(self, v10);

  objc_sync_exit(lock);
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  lock = self->super.lock_;
  objc_sync_enter(lock);
  sub_100283D84(self);
  v7 = intCopy;
  v6 = JavaNioCharBuffer_wrapWithCharArray_([IOSCharArray arrayWithChars:&v7 count:1]);
  sub_100283CC0(self, v6);
  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (withInt < 0)
  {
    goto LABEL_8;
  }

  if (!string)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"str == null");
LABEL_10:
    objc_exception_throw(v11);
  }

  if ((withInt | int) < 0 || ([string length] - withInt) < int)
  {
LABEL_8:
    v11 = new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(string);
    goto LABEL_10;
  }

  sub_100283D84(self);
  v10 = JavaNioCharBuffer_wrapWithJavaLangCharSequence_withInt_withInt_(string, int, withInt + int);
  sub_100283CC0(self, v10);

  objc_sync_exit(lock);
}

- (BOOL)checkError
{
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoOutputStream *)out checkError];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoOutputStreamWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end