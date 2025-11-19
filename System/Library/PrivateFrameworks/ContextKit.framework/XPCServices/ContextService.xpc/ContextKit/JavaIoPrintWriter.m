@interface JavaIoPrintWriter
- (BOOL)checkError;
- (JavaIoPrintWriter)initWithJavaIoWriter:(id)a3;
- (JavaIoPrintWriter)initWithJavaIoWriter:(id)a3 withBoolean:(BOOL)a4;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5;
- (id)formatWithNSString:(id)a3 withNSObjectArray:(id)a4;
- (void)clearError;
- (void)close;
- (void)dealloc;
- (void)flush;
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
- (void)setError;
- (void)writeWithCharArray:(id)a3;
- (void)writeWithNSString:(id)a3;
@end

@implementation JavaIoPrintWriter

- (JavaIoPrintWriter)initWithJavaIoWriter:(id)a3
{
  JavaIoWriter_initWithId_(self, a3);
  self->autoFlush_ = 0;
  JreStrongAssign(&self->out_, a3);
  return self;
}

- (JavaIoPrintWriter)initWithJavaIoWriter:(id)a3 withBoolean:(BOOL)a4
{
  JavaIoWriter_initWithId_(self, a3);
  self->autoFlush_ = a4;
  JreStrongAssign(&self->out_, a3);
  return self;
}

- (BOOL)checkError
{
  out = self->out_;
  if (!out)
  {
    return self->ioError_;
  }

  [(JavaIoPrintWriter *)self flush];
  if (self->ioError_)
  {
    return 1;
  }

  return [(JavaIoWriter *)out checkError];
}

- (void)clearError
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  self->ioError_ = 0;

  objc_sync_exit(lock);
}

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  out = self->out_;
  if (out)
  {
    [(JavaIoWriter *)out close];
    JreStrongAssign(&self->out_, 0);
  }

  objc_sync_exit(lock);
}

- (void)flush
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  out = self->out_;
  if (out)
  {
    [(JavaIoWriter *)out flush];
  }

  else
  {
    [(JavaIoPrintWriter *)self setError];
  }

  objc_sync_exit(lock);
}

- (id)formatWithNSString:(id)a3 withNSObjectArray:(id)a4
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaIoPrintWriter *)self formatWithJavaUtilLocale:Default withNSString:a3 withNSObjectArray:a4];
}

- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5
{
  if (!a4)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"format == null");
    objc_exception_throw(v7);
  }

  [new_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self formatWithNSString:"formatWithNSString:withNSObjectArray:" withNSObjectArray:a4, a5];
  if (self->autoFlush_)
  {
    [(JavaIoPrintWriter *)self flush];
  }

  return self;
}

- (void)printWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:a3 offset:0 length:*(a3 + 2)];

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithChar:(unsigned __int16)a3
{
  v4 = NSString_valueOfChar_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithDouble:(double)a3
{
  v4 = NSString_valueOfDouble_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithFloat:(float)a3
{
  v4 = NSString_valueOfFloat_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithInt:(int)a3
{
  v4 = NSString_valueOfInt_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithLong:(int64_t)a3
{
  v4 = NSString_valueOfLong_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithId:(id)a3
{
  v4 = NSString_valueOf_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithNSString:(id)a3
{
  if (!a3)
  {
    a3 = NSString_valueOf_(0);
  }

  [(JavaIoPrintWriter *)self writeWithNSString:a3];
}

- (void)printWithBoolean:(BOOL)a3
{
  v4 = NSString_valueOfBool_(a3);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)println
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [(JavaIoPrintWriter *)self printWithNSString:JavaLangSystem_lineSeparator()];
  if (self->autoFlush_)
  {
    [(JavaIoPrintWriter *)self flush];
  }

  objc_sync_exit(lock);
}

- (void)printlnWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:a3 offset:0 length:*(a3 + 2)];

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithChar:(unsigned __int16)a3
{
  v4 = NSString_valueOfChar_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithDouble:(double)a3
{
  v4 = NSString_valueOfDouble_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithFloat:(float)a3
{
  v4 = NSString_valueOfFloat_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithInt:(int)a3
{
  v4 = NSString_valueOfInt_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithLong:(int64_t)a3
{
  v4 = NSString_valueOfLong_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithId:(id)a3
{
  v4 = NSString_valueOf_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithNSString:(id)a3
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [(JavaIoPrintWriter *)self printWithNSString:a3];
  [(JavaIoPrintWriter *)self println];

  objc_sync_exit(lock);
}

- (void)printlnWithBoolean:(BOOL)a3
{
  v4 = NSString_valueOfBool_(a3);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)setError
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  self->ioError_ = 1;

  objc_sync_exit(lock);
}

- (void)writeWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(JavaIoPrintWriter *)self writeWithCharArray:a3 withInt:0 withInt:v4];
}

- (void)writeWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 toCharArray];

  [(JavaIoPrintWriter *)self writeWithCharArray:v4];
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = @"null";
  }

  [(JavaIoPrintWriter *)self appendWithJavaLangCharSequence:v4 withInt:0 withInt:[(__CFString *)v4 length]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoPrintWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end