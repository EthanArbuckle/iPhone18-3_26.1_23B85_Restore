@interface JavaIoOutputStreamWriter
- (BOOL)checkError;
- (JavaIoOutputStreamWriter)initWithJavaIoOutputStream:(id)a3;
- (id)drainEncoder;
- (id)getEncoding;
- (void)close;
- (void)dealloc;
- (void)writeWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)writeWithInt:(int)a3;
- (void)writeWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation JavaIoOutputStreamWriter

- (JavaIoOutputStreamWriter)initWithJavaIoOutputStream:(id)a3
{
  v5 = JavaNioCharsetCharset_defaultCharset();
  JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(&self->super.super.isa, a3, v5);
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
  v10 = *(a1 + 24);
  if (!v10)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v11 = [v10 encodeWithJavaNioCharBuffer:v9 withJavaNioByteBuffer:*(a1 + 32) withBoolean:1];
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

    sub_100283B8C(a1, 0);
    v10 = *(a1 + 24);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  [v12 throwException];
LABEL_8:
  v13 = *(a1 + 24);
  if (!v13 || (v14 = [v13 flushWithJavaNioByteBuffer:*(a1 + 32)]) == 0)
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
      sub_100283B8C(a1, 0);
      v15 = [*(a1 + 24) flushWithJavaNioByteBuffer:*(a1 + 32)];
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
    v3 = [result charset];
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    return [v3 name];
  }

  return result;
}

- (void)writeWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  sub_100283D84(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  v10 = JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(a3, a4, a5);
  sub_100283CC0(self, v10);

  objc_sync_exit(lock);
}

- (void)writeWithInt:(int)a3
{
  v3 = a3;
  lock = self->super.lock_;
  objc_sync_enter(lock);
  sub_100283D84(self);
  v7 = v3;
  v6 = JavaNioCharBuffer_wrapWithCharArray_([IOSCharArray arrayWithChars:&v7 count:1]);
  sub_100283CC0(self, v6);
  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (a5 < 0)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"str == null");
LABEL_10:
    objc_exception_throw(v11);
  }

  if ((a5 | a4) < 0 || ([a3 length] - a5) < a4)
  {
LABEL_8:
    v11 = new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(a3);
    goto LABEL_10;
  }

  sub_100283D84(self);
  v10 = JavaNioCharBuffer_wrapWithJavaLangCharSequence_withInt_withInt_(a3, a4, a5 + a4);
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