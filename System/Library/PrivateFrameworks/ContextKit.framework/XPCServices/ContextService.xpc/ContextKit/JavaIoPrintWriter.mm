@interface JavaIoPrintWriter
- (BOOL)checkError;
- (JavaIoPrintWriter)initWithJavaIoWriter:(id)writer;
- (JavaIoPrintWriter)initWithJavaIoWriter:(id)writer withBoolean:(BOOL)boolean;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array;
- (id)formatWithNSString:(id)string withNSObjectArray:(id)array;
- (void)clearError;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)printWithBoolean:(BOOL)boolean;
- (void)printWithChar:(unsigned __int16)char;
- (void)printWithCharArray:(id)array;
- (void)printWithDouble:(double)double;
- (void)printWithFloat:(float)float;
- (void)printWithId:(id)id;
- (void)printWithInt:(int)int;
- (void)printWithLong:(int64_t)long;
- (void)printWithNSString:(id)string;
- (void)println;
- (void)printlnWithBoolean:(BOOL)boolean;
- (void)printlnWithChar:(unsigned __int16)char;
- (void)printlnWithCharArray:(id)array;
- (void)printlnWithDouble:(double)double;
- (void)printlnWithFloat:(float)float;
- (void)printlnWithId:(id)id;
- (void)printlnWithInt:(int)int;
- (void)printlnWithLong:(int64_t)long;
- (void)printlnWithNSString:(id)string;
- (void)setError;
- (void)writeWithCharArray:(id)array;
- (void)writeWithNSString:(id)string;
@end

@implementation JavaIoPrintWriter

- (JavaIoPrintWriter)initWithJavaIoWriter:(id)writer
{
  JavaIoWriter_initWithId_(self, writer);
  self->autoFlush_ = 0;
  JreStrongAssign(&self->out_, writer);
  return self;
}

- (JavaIoPrintWriter)initWithJavaIoWriter:(id)writer withBoolean:(BOOL)boolean
{
  JavaIoWriter_initWithId_(self, writer);
  self->autoFlush_ = boolean;
  JreStrongAssign(&self->out_, writer);
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

- (id)formatWithNSString:(id)string withNSObjectArray:(id)array
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaIoPrintWriter *)self formatWithJavaUtilLocale:Default withNSString:string withNSObjectArray:array];
}

- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array
{
  if (!string)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"format == null");
    objc_exception_throw(v7);
  }

  [new_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self formatWithNSString:"formatWithNSString:withNSObjectArray:" withNSObjectArray:string, array];
  if (self->autoFlush_)
  {
    [(JavaIoPrintWriter *)self flush];
  }

  return self;
}

- (void)printWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:array offset:0 length:*(array + 2)];

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithChar:(unsigned __int16)char
{
  v4 = NSString_valueOfChar_(char);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithDouble:(double)double
{
  v4 = NSString_valueOfDouble_(double);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithFloat:(float)float
{
  v4 = NSString_valueOfFloat_(float);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithInt:(int)int
{
  v4 = NSString_valueOfInt_(int);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithLong:(int64_t)long
{
  v4 = NSString_valueOfLong_(long);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithId:(id)id
{
  v4 = NSString_valueOf_(id);

  [(JavaIoPrintWriter *)self printWithNSString:v4];
}

- (void)printWithNSString:(id)string
{
  if (!string)
  {
    string = NSString_valueOf_(0);
  }

  [(JavaIoPrintWriter *)self writeWithNSString:string];
}

- (void)printWithBoolean:(BOOL)boolean
{
  v4 = NSString_valueOfBool_(boolean);

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

- (void)printlnWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:array offset:0 length:*(array + 2)];

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithChar:(unsigned __int16)char
{
  v4 = NSString_valueOfChar_(char);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithDouble:(double)double
{
  v4 = NSString_valueOfDouble_(double);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithFloat:(float)float
{
  v4 = NSString_valueOfFloat_(float);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithInt:(int)int
{
  v4 = NSString_valueOfInt_(int);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithLong:(int64_t)long
{
  v4 = NSString_valueOfLong_(long);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithId:(id)id
{
  v4 = NSString_valueOf_(id);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)printlnWithNSString:(id)string
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [(JavaIoPrintWriter *)self printWithNSString:string];
  [(JavaIoPrintWriter *)self println];

  objc_sync_exit(lock);
}

- (void)printlnWithBoolean:(BOOL)boolean
{
  v4 = NSString_valueOfBool_(boolean);

  [(JavaIoPrintWriter *)self printlnWithNSString:v4];
}

- (void)setError
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  self->ioError_ = 1;

  objc_sync_exit(lock);
}

- (void)writeWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaIoPrintWriter *)self writeWithCharArray:array withInt:0 withInt:v4];
}

- (void)writeWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  toCharArray = [string toCharArray];

  [(JavaIoPrintWriter *)self writeWithCharArray:toCharArray];
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    sequenceCopy = sequence;
  }

  else
  {
    sequenceCopy = @"null";
  }

  [(JavaIoPrintWriter *)self appendWithJavaLangCharSequence:sequenceCopy withInt:0 withInt:[(__CFString *)sequenceCopy length]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoPrintWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end