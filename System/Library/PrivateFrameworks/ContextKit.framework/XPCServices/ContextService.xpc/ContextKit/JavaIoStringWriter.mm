@interface JavaIoStringWriter
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)description;
- (void)dealloc;
- (void)writeWithInt:(int)a3;
- (void)writeWithNSString:(id)a3;
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

- (void)writeWithInt:(int)a3
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithChar:a3];
}

- (void)writeWithNSString:(id)a3
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithNSString:a3];
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

  [(JavaIoStringWriter *)self writeWithNSString:[(__CFString *)v4 description]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoStringWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end