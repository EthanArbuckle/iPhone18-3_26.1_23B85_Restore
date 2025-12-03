@interface JavaIoWriter
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (void)dealloc;
- (void)writeWithCharArray:(id)array;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string;
@end

@implementation JavaIoWriter

- (void)writeWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaIoWriter *)self writeWithCharArray:array withInt:0 withInt:v4];
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  lock = self->lock_;
  objc_sync_enter(lock);
  v6 = [IOSCharArray arrayWithLength:1];
  size = v6->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&v6->super.size_ + 2) = intCopy;
  [(JavaIoWriter *)self writeWithCharArray:v6];

  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v5 = [string length];

  [(JavaIoWriter *)self writeWithNSString:string withInt:0 withInt:v5];
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

  [(JavaIoWriter *)self writeWithNSString:[(__CFString *)sequenceCopy description]];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end