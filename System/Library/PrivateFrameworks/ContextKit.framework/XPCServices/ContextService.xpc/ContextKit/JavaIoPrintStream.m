@interface JavaIoPrintStream
- (BOOL)checkError;
- (JavaIoPrintStream)initWithJavaIoFile:(id)a3;
- (JavaIoPrintStream)initWithNSString:(id)a3 withNSString:(id)a4;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5;
- (id)formatWithNSString:(id)a3 withNSObjectArray:(id)a4;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)newline;
- (void)printWithBoolean:(BOOL)a3;
- (void)printWithChar:(unsigned __int16)a3;
- (void)printWithCharArray:(id)a3;
- (void)printWithDouble:(double)a3;
- (void)printWithFloat:(float)a3;
- (void)printWithId:(id)a3;
- (void)printWithInt:(int)a3;
- (void)printWithLong:(int64_t)a3;
- (void)printWithNSString:(id)a3;
- (void)println;
- (void)printlnWithBoolean:(BOOL)a3;
- (void)printlnWithChar:(unsigned __int16)a3;
- (void)printlnWithCharArray:(id)a3;
- (void)printlnWithDouble:(double)a3;
- (void)printlnWithFloat:(float)a3;
- (void)printlnWithId:(id)a3;
- (void)printlnWithInt:(int)a3;
- (void)printlnWithLong:(int64_t)a3;
- (void)printlnWithNSString:(id)a3;
@end

@implementation JavaIoPrintStream

- (JavaIoPrintStream)initWithJavaIoFile:(id)a3
{
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a3);
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, v4);
  return self;
}

- (JavaIoPrintStream)initWithNSString:(id)a3 withNSString:(id)a4
{
  v6 = new_JavaIoFile_initWithNSString_(a3);
  JavaIoPrintStream_initWithJavaIoFile_withNSString_(self, v6, a4);
  return self;
}

- (BOOL)checkError
{
  out = self->super.out_;
  if (!out)
  {
    return self->ioError_;
  }

  [(JavaIoPrintStream *)self flush];
  if (self->ioError_)
  {
    return 1;
  }

  return [(JavaIoOutputStream *)out checkError];
}

- (void)close
{
  objc_sync_enter(self);
  [(JavaIoPrintStream *)self flush];
  out = self->super.out_;
  if (out)
  {
    [(JavaIoOutputStream *)out close];
    JreStrongAssign(&self->super.out_, 0);
  }

  objc_sync_exit(self);
}

- (void)flush
{
  objc_sync_enter(self);
  out = self->super.out_;
  if (out)
  {
    [(JavaIoOutputStream *)out flush];
  }

  else
  {
    [(JavaIoPrintStream *)self setError];
  }

  objc_sync_exit(self);
}

- (id)formatWithNSString:(id)a3 withNSObjectArray:(id)a4
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaIoPrintStream *)self formatWithJavaUtilLocale:Default withNSString:a3 withNSObjectArray:a4];
}

- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5
{
  if (!a4)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"format == null");
    objc_exception_throw(v7);
  }

  [new_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self formatWithNSString:"formatWithNSString:withNSObjectArray:" withNSObjectArray:a4, a5];
  return self;
}

- (void)newline
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoPrintStream *)self printWithNSString:v3];
}

- (void)printWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:a3 offset:0 length:*(a3 + 2)];

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithChar:(unsigned __int16)a3
{
  v4 = NSString_valueOfChar_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithDouble:(double)a3
{
  v4 = NSString_valueOfDouble_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithFloat:(float)a3
{
  v4 = NSString_valueOfFloat_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithInt:(int)a3
{
  v4 = NSString_valueOfInt_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithLong:(int64_t)a3
{
  v4 = NSString_valueOfLong_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithId:(id)a3
{
  v4 = NSString_valueOf_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithNSString:(id)a3
{
  objc_sync_enter(self);
  if (self->super.out_)
  {
    if (a3)
    {
      if (self->encoding_)
      {
        v5 = [a3 getBytesWithCharsetName:?];
      }

      else
      {
        v5 = [a3 getBytes];
      }

      [(JavaIoOutputStream *)self writeWithByteArray:v5];
    }

    else
    {
      [(JavaIoPrintStream *)self printWithNSString:@"null"];
    }
  }

  else
  {
    [(JavaIoPrintStream *)self setError];
  }

  objc_sync_exit(self);
}

- (void)printWithBoolean:(BOOL)a3
{
  v4 = NSString_valueOfBool_(a3);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)println
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoPrintStream *)self printWithNSString:v3];
}

- (void)printlnWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:a3 offset:0 length:*(a3 + 2)];

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithChar:(unsigned __int16)a3
{
  v4 = NSString_valueOfChar_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithDouble:(double)a3
{
  v4 = NSString_valueOfDouble_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithFloat:(float)a3
{
  v4 = NSString_valueOfFloat_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithInt:(int)a3
{
  v4 = NSString_valueOfInt_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithLong:(int64_t)a3
{
  v4 = NSString_valueOfLong_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithId:(id)a3
{
  v4 = NSString_valueOf_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithNSString:(id)a3
{
  objc_sync_enter(self);
  [(JavaIoPrintStream *)self printWithNSString:a3];
  [(JavaIoPrintStream *)self printWithNSString:JavaLangSystem_lineSeparator()];

  objc_sync_exit(self);
}

- (void)printlnWithBoolean:(BOOL)a3
{
  v4 = NSString_valueOfBool_(a3);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  if (a3)
  {
    v4 = [a3 description];
  }

  else
  {
    v4 = @"null";
  }

  [(JavaIoPrintStream *)self printWithNSString:v4];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoPrintStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end