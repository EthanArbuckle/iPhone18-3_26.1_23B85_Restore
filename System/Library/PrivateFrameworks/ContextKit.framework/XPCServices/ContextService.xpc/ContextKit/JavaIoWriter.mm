@interface JavaIoWriter
- (id)appendWithJavaLangCharSequence:(id)a3;
- (void)dealloc;
- (void)writeWithCharArray:(id)a3;
- (void)writeWithInt:(int)a3;
- (void)writeWithNSString:(id)a3;
@end

@implementation JavaIoWriter

- (void)writeWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(JavaIoWriter *)self writeWithCharArray:a3 withInt:0 withInt:v4];
}

- (void)writeWithInt:(int)a3
{
  v3 = a3;
  lock = self->lock_;
  objc_sync_enter(lock);
  v6 = [IOSCharArray arrayWithLength:1];
  size = v6->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&v6->super.size_ + 2) = v3;
  [(JavaIoWriter *)self writeWithCharArray:v6];

  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 length];

  [(JavaIoWriter *)self writeWithNSString:a3 withInt:0 withInt:v5];
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

  [(JavaIoWriter *)self writeWithNSString:[(__CFString *)v4 description]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end