@interface JavaIoStringWriter
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)description;
- (void)dealloc;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string;
@end

@implementation JavaIoStringWriter

- (id)description
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaLangStringBuffer *)buf description];
}

- (void)writeWithInt:(int)int
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithChar:int];
}

- (void)writeWithNSString:(id)string
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithNSString:string];
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

  [(JavaIoStringWriter *)self writeWithNSString:[(__CFString *)sequenceCopy description]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoStringWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end