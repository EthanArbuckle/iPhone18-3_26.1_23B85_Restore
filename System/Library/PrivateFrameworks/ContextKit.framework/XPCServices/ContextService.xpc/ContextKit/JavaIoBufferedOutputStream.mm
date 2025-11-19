@interface JavaIoBufferedOutputStream
- (JavaIoBufferedOutputStream)initWithJavaIoOutputStream:(id)a3;
- (uint64_t)checkNotClosed;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)flushInternal;
- (void)writeWithInt:(int)a3;
@end

@implementation JavaIoBufferedOutputStream

- (JavaIoBufferedOutputStream)initWithJavaIoOutputStream:(id)a3
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, a3);
  JreStrongAssignAndConsume(&self->buf_, [IOSByteArray newArrayWithLength:0x2000]);
  return self;
}

- (void)flush
{
  objc_sync_enter(self);
  [JavaIoBufferedOutputStream checkNotClosed]_0(self);
  [JavaIoBufferedOutputStream flushInternal]_0(self);
  out = self->super.out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out flush];

  objc_sync_exit(self);
}

- (uint64_t)checkNotClosed
{
  if (!*(result + 16))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"BufferedOutputStream is closed");
    objc_exception_throw(v1);
  }

  return result;
}

- (void)flushInternal
{
  if (*(result + 6) >= 1)
  {
    v1 = result;
    v2 = result[1];
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    result = [v2 writeWithByteArray:v1[2] withInt:0 withInt:?];
    *(v1 + 6) = 0;
  }

  return result;
}

- (void)close
{
  objc_sync_enter(self);
  if (self->buf_)
  {
    v3.receiver = self;
    v3.super_class = JavaIoBufferedOutputStream;
    [(JavaIoFilterOutputStream *)&v3 close];
    JreStrongAssign(&self->buf_, 0);
  }

  objc_sync_exit(self);
}

- (void)writeWithInt:(int)a3
{
  v3 = a3;
  objc_sync_enter(self);
  [JavaIoBufferedOutputStream checkNotClosed]_0(self);
  buf = self->buf_;
  if (!buf)
  {
    goto LABEL_10;
  }

  count = self->count_;
  if (count == buf->super.size_)
  {
    out = self->super.out_;
    if (out)
    {
      [(JavaIoOutputStream *)out writeWithByteArray:self->buf_ withInt:0 withInt:self->count_];
      count = 0;
      self->count_ = 0;
      buf = self->buf_;
      goto LABEL_5;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_5:
  self->count_ = count + 1;
  size = buf->super.size_;
  if ((count & 0x80000000) != 0 || count >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, count);
  }

  *(&buf->super.size_ + count + 4) = v3;

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end