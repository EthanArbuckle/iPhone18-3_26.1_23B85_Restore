@interface JavaIoPrintStream
- (BOOL)checkError;
- (JavaIoPrintStream)initWithJavaIoFile:(id)file;
- (JavaIoPrintStream)initWithNSString:(id)string withNSString:(id)sString;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array;
- (id)formatWithNSString:(id)string withNSObjectArray:(id)array;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)newline;
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
@end

@implementation JavaIoPrintStream

- (JavaIoPrintStream)initWithJavaIoFile:(id)file
{
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(file);
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, v4);
  return self;
}

- (JavaIoPrintStream)initWithNSString:(id)string withNSString:(id)sString
{
  v6 = new_JavaIoFile_initWithNSString_(string);
  JavaIoPrintStream_initWithJavaIoFile_withNSString_(self, v6, sString);
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

- (id)formatWithNSString:(id)string withNSObjectArray:(id)array
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaIoPrintStream *)self formatWithJavaUtilLocale:Default withNSString:string withNSObjectArray:array];
}

- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array
{
  if (!string)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"format == null");
    objc_exception_throw(v7);
  }

  [new_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self formatWithNSString:"formatWithNSString:withNSObjectArray:" withNSObjectArray:string, array];
  return self;
}

- (void)newline
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoPrintStream *)self printWithNSString:v3];
}

- (void)printWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:array offset:0 length:*(array + 2)];

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithChar:(unsigned __int16)char
{
  v4 = NSString_valueOfChar_(char);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithDouble:(double)double
{
  v4 = NSString_valueOfDouble_(double);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithFloat:(float)float
{
  v4 = NSString_valueOfFloat_(float);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithInt:(int)int
{
  v4 = NSString_valueOfInt_(int);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithLong:(int64_t)long
{
  v4 = NSString_valueOfLong_(long);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithId:(id)id
{
  v4 = NSString_valueOf_(id);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)printWithNSString:(id)string
{
  objc_sync_enter(self);
  if (self->super.out_)
  {
    if (string)
    {
      if (self->encoding_)
      {
        getBytes = [string getBytesWithCharsetName:?];
      }

      else
      {
        getBytes = [string getBytes];
      }

      [(JavaIoOutputStream *)self writeWithByteArray:getBytes];
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

- (void)printWithBoolean:(BOOL)boolean
{
  v4 = NSString_valueOfBool_(boolean);

  [(JavaIoPrintStream *)self printWithNSString:v4];
}

- (void)println
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoPrintStream *)self printWithNSString:v3];
}

- (void)printlnWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = [NSString stringWithCharacters:array offset:0 length:*(array + 2)];

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithChar:(unsigned __int16)char
{
  v4 = NSString_valueOfChar_(char);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithDouble:(double)double
{
  v4 = NSString_valueOfDouble_(double);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithFloat:(float)float
{
  v4 = NSString_valueOfFloat_(float);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithInt:(int)int
{
  v4 = NSString_valueOfInt_(int);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithLong:(int64_t)long
{
  v4 = NSString_valueOfLong_(long);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithId:(id)id
{
  v4 = NSString_valueOf_(id);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (void)printlnWithNSString:(id)string
{
  objc_sync_enter(self);
  [(JavaIoPrintStream *)self printWithNSString:string];
  [(JavaIoPrintStream *)self printWithNSString:JavaLangSystem_lineSeparator()];

  objc_sync_exit(self);
}

- (void)printlnWithBoolean:(BOOL)boolean
{
  v4 = NSString_valueOfBool_(boolean);

  [(JavaIoPrintStream *)self printlnWithNSString:v4];
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    v4 = [sequence description];
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