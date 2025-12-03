@interface JavaIoBufferedWriter
- (uint64_t)checkNotClosed;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)flushInternal;
- (void)newLine;
- (void)writeWithInt:(int)int;
@end

@implementation JavaIoBufferedWriter

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (self->out_)
  {
    [JavaIoBufferedWriter flushInternal]_0(self);
    JreStrongAssign(&self->buf_, 0);
    out = self->out_;
    if (!out)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoWriter *)out close];
    JreStrongAssign(&self->out_, 0);
  }

  objc_sync_exit(lock);
}

- (void)flushInternal
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = result[2];
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    result = [v2 writeWithCharArray:v1[3] withInt:0 withInt:?];
  }

  *(v1 + 8) = 0;
  return result;
}

- (void)flush
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  [JavaIoBufferedWriter flushInternal]_0(self);
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoWriter *)out flush];

  objc_sync_exit(lock);
}

- (uint64_t)checkNotClosed
{
  if (!*(result + 16))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"BufferedWriter is closed");
    objc_exception_throw(v1);
  }

  return result;
}

- (void)newLine
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoWriter *)self writeWithNSString:v3];
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  buf = self->buf_;
  if (!buf)
  {
    goto LABEL_10;
  }

  pos = self->pos_;
  if (pos >= buf->super.size_)
  {
    out = self->out_;
    if (out)
    {
      [(JavaIoWriter *)out writeWithCharArray:self->buf_ withInt:0 withInt:?];
      pos = 0;
      self->pos_ = 0;
      buf = self->buf_;
      goto LABEL_5;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_5:
  self->pos_ = pos + 1;
  size = buf->super.size_;
  if ((pos & 0x80000000) != 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  *(&buf->super.size_ + pos + 2) = intCopy;

  objc_sync_exit(lock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end