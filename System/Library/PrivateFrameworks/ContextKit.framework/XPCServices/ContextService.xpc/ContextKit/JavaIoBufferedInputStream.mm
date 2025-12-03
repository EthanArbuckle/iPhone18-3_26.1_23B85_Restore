@interface JavaIoBufferedInputStream
- (int)available;
- (int)read;
- (int64_t)skipWithLong:(int64_t)long;
- (void)__javaClone;
- (void)close;
- (void)dealloc;
- (void)markWithInt:(int)int;
- (void)reset;
@end

@implementation JavaIoBufferedInputStream

- (int)available
{
  objc_sync_enter(self);
  v3 = atomic_load(&self->super.in_);
  if (atomic_load(&self->buf_))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    sub_1001AE8AC();
  }

  count = self->count_;
  pos = self->pos_;
  available = [v3 available];
  objc_sync_exit(self);
  return count - pos + available;
}

- (void)close
{
  JreVolatileStrongAssign(&self->buf_, 0);
  p_in = &self->super.in_;
  v4 = atomic_load(&self->super.in_);
  JreVolatileStrongAssign(p_in, 0);
  if (v4)
  {

    [v4 close];
  }
}

- (void)markWithInt:(int)int
{
  objc_sync_enter(self);
  self->marklimit_ = int;
  self->markpos_ = self->pos_;

  objc_sync_exit(self);
}

- (int)read
{
  objc_sync_enter(self);
  v3 = atomic_load(&self->buf_);
  v4 = atomic_load(&self->super.in_);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_16;
  }

  if (self->pos_ >= self->count_ && sub_1001AE96C(self, v4, v3) == -1)
  {
    goto LABEL_13;
  }

  v6 = atomic_load(&self->buf_);
  if (v3 != v6)
  {
    v3 = atomic_load(&self->buf_);
    if (!v3)
    {
LABEL_16:
      sub_1001AE8AC();
    }
  }

  pos = self->pos_;
  if (self->count_ - pos < 1)
  {
LABEL_13:
    v9 = -1;
    goto LABEL_14;
  }

  self->pos_ = pos + 1;
  v8 = v3[2];
  if ((pos & 0x80000000) != 0 || pos >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, pos);
  }

  v9 = *(v3 + pos + 12);
LABEL_14:
  objc_sync_exit(self);
  return v9;
}

- (void)reset
{
  objc_sync_enter(self);
  if (!atomic_load(&self->buf_))
  {
    v5 = @"Stream is closed";
    goto LABEL_8;
  }

  markpos = self->markpos_;
  if (markpos == -1)
  {
    v5 = @"Mark has been invalidated.";
LABEL_8:
    v6 = new_JavaIoIOException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  self->pos_ = markpos;

  objc_sync_exit(self);
}

- (int64_t)skipWithLong:(int64_t)long
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->buf_);
  v6 = atomic_load(&self->super.in_);
  if (!v5)
  {
    goto LABEL_17;
  }

  if (long < 1)
  {
    long = 0;
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_17:
    sub_1001AE8AC();
  }

  count = self->count_;
  pos = self->pos_;
  v9 = count - pos;
  if (long <= count - pos)
  {
    v11 = pos + long;
LABEL_10:
    self->pos_ = v11;
    goto LABEL_11;
  }

  self->pos_ = count;
  v10 = v9;
  if (self->markpos_ != -1 && self->marklimit_ >= long)
  {
    if (sub_1001AE96C(self, v6, v5) == -1)
    {
      long = v10;
      goto LABEL_11;
    }

    v11 = self->count_;
    v13 = self->pos_;
    if (long - v10 <= v11 - v13)
    {
      v11 = v13 + long - v10;
    }

    else
    {
      long = v11 - v13 + v10;
    }

    goto LABEL_10;
  }

  long = [v6 skipWithLong:long - v9] + v9;
LABEL_11:
  objc_sync_exit(self);
  return long;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->buf_);
  v3.receiver = self;
  v3.super_class = JavaIoBufferedInputStream;
  [(JavaIoFilterInputStream *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedInputStream;
  [(JavaIoFilterInputStream *)&v3 __javaClone];
  JreRetainVolatile(&self->buf_);
}

@end