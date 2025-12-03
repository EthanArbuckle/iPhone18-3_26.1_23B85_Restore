@interface JavaIoByteArrayInputStream
- (int)available;
- (int)read;
- (int64_t)skipWithLong:(int64_t)long;
- (void)dealloc;
- (void)markWithInt:(int)int;
- (void)reset;
@end

@implementation JavaIoByteArrayInputStream

- (int)available
{
  objc_sync_enter(self);
  v3 = self->count_ - self->pos_;
  objc_sync_exit(self);
  return v3;
}

- (void)markWithInt:(int)int
{
  objc_sync_enter(self);
  self->mark_ = self->pos_;

  objc_sync_exit(self);
}

- (int)read
{
  objc_sync_enter(self);
  pos = self->pos_;
  if (pos >= self->count_)
  {
    v6 = -1;
  }

  else
  {
    buf = self->buf_;
    if (!buf)
    {
      JreThrowNullPointerException();
    }

    self->pos_ = pos + 1;
    size = buf->super.size_;
    if ((pos & 0x80000000) != 0 || pos >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, pos);
    }

    v6 = *(&buf->super.size_ + pos + 4);
  }

  objc_sync_exit(self);
  return v6;
}

- (void)reset
{
  objc_sync_enter(self);
  self->pos_ = self->mark_;

  objc_sync_exit(self);
}

- (int64_t)skipWithLong:(int64_t)long
{
  objc_sync_enter(self);
  if (long < 1)
  {
    v7 = 0;
  }

  else
  {
    pos = self->pos_;
    count = self->count_;
    if (count - pos >= long)
    {
      count = pos + long;
    }

    self->pos_ = count;
    v7 = count - pos;
  }

  objc_sync_exit(self);
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoByteArrayInputStream;
  [(JavaIoByteArrayInputStream *)&v3 dealloc];
}

@end