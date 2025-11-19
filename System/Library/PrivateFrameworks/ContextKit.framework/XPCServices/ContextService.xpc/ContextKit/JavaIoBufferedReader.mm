@interface JavaIoBufferedReader
- (BOOL)ready;
- (id)readChar;
- (id)readLine;
- (int)read;
- (int64_t)skipWithLong:(int64_t)a3;
- (uint64_t)checkNotClosed;
- (void)close;
- (void)dealloc;
- (void)maybeSwallowLF;
- (void)reset;
@end

@implementation JavaIoBufferedReader

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (self->buf_)
  {
    in = self->in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoReader *)in close];
    JreStrongAssign(&self->buf_, 0);
  }

  objc_sync_exit(lock);
}

- (uint64_t)checkNotClosed
{
  if (!*(result + 24))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"BufferedReader is closed");
    objc_exception_throw(v1);
  }

  return result;
}

- (int)read
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedReader checkNotClosed]_0(self);
  v4 = [JavaIoBufferedReader readChar]_0(self);
  v5 = v4;
  if (self->lastWasCR_ && v4 == 10)
  {
    v5 = [JavaIoBufferedReader readChar]_0(self);
  }

  self->lastWasCR_ = 0;
  objc_sync_exit(lock);
  return v5;
}

- (id)readChar
{
  if (*(a1 + 32) < *(a1 + 36) || (result = sub_1001BE54C(a1), result != -1))
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    v4 = *(a1 + 32);
    *(a1 + 32) = v4 + 1;
    v5 = *(v3 + 8);
    if (v4 < 0 || v4 >= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v4);
    }

    return *(v3 + 12 + 2 * v4);
  }

  return result;
}

- (void)maybeSwallowLF
{
  if (self->lastWasCR_)
  {
    sub_1001BEC24(self);
    self->lastWasCR_ = 0;
  }
}

- (id)readLine
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedReader checkNotClosed]_0(self);
  if (self->lastWasCR_)
  {
    sub_1001BEC24(self);
    self->lastWasCR_ = 0;
  }

  obj = lock;
  pos = self->pos_;
  LODWORD(v5) = self->end_;
  if (pos >= v5)
  {
LABEL_21:
    v12 = new_JavaLangStringBuilder_initWithInt_(v5 - pos + 80);
    [(JavaLangStringBuilder *)v12 appendWithCharArray:self->buf_ withInt:self->pos_ withInt:(self->end_ - self->pos_)];
    while (1)
    {
      self->pos_ = self->end_;
      if (sub_1001BE54C(self) == -1)
      {
        if ([(JavaLangStringBuilder *)v12 length]< 1)
        {
          lock = 0;
        }

        else
        {
          lock = [(JavaLangStringBuilder *)v12 description];
        }

        goto LABEL_45;
      }

      v13 = self->pos_;
      LODWORD(end) = self->end_;
      if (v13 < end)
      {
        break;
      }

LABEL_41:
      [(JavaLangStringBuilder *)v12 appendWithCharArray:self->buf_ withInt:v13 withInt:(end - v13)];
    }

    v15 = v13;
    while (1)
    {
      buf = self->buf_;
      if (!buf)
      {
        JreThrowNullPointerException();
      }

      size = buf->super.size_;
      if (v15 < 0 || v15 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v15);
      }

      v18 = *(&buf->super.size_ + v15 + 2);
      if (v18 == 13 || v18 == 10)
      {
        [(JavaLangStringBuilder *)v12 appendWithCharArray:self->buf_ withInt:self->pos_ withInt:(v15 - self->pos_)];
        self->pos_ = v15 + 1;
        self->lastWasCR_ = v18 == 13;
        lock = [(JavaLangStringBuilder *)v12 description];
      }

      if (v18 == 10 || v18 == 13)
      {
        break;
      }

      ++v15;
      end = self->end_;
      if (v15 >= end)
      {
        v13 = self->pos_;
        goto LABEL_41;
      }
    }
  }

  else
  {
    v6 = pos;
    while (1)
    {
      v7 = self->buf_;
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      v8 = v7->super.size_;
      if (v6 < 0 || v6 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v6);
      }

      v9 = *(&v7->super.size_ + v6 + 2);
      if (v9 == 13 || v9 == 10)
      {
        lock = [NSString stringWithCharacters:self->buf_ offset:self->pos_ length:(v6 - self->pos_)];
        self->pos_ = v6 + 1;
        self->lastWasCR_ = v9 == 13;
      }

      if (v9 == 10 || v9 == 13)
      {
        break;
      }

      ++v6;
      v5 = self->end_;
      if (v6 >= v5)
      {
        pos = self->pos_;
        goto LABEL_21;
      }
    }
  }

LABEL_45:
  objc_sync_exit(obj);
  return lock;
}

- (BOOL)ready
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedReader checkNotClosed]_0(self);
  if (self->end_ - self->pos_ <= 0)
  {
    in = self->in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    v4 = [(JavaIoReader *)in ready];
  }

  else
  {
    v4 = 1;
  }

  objc_sync_exit(lock);
  return v4;
}

- (void)reset
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedReader checkNotClosed]_0(self);
  mark = self->mark_;
  if (mark == -1)
  {
    v5 = new_JavaIoIOException_initWithNSString_(@"Invalid mark");
    objc_exception_throw(v5);
  }

  self->pos_ = mark;
  self->lastWasCR_ = self->markedLastWasCR_;

  objc_sync_exit(lock);
}

- (int64_t)skipWithLong:(int64_t)a3
{
  v8 = a3;
  if (a3 < 0)
  {
    v17 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"charCount < 0: ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedReader checkNotClosed]_0(self);
  end = self->end_;
  pos = self->pos_;
  v13 = end - pos;
  v14 = v8;
  if (v13 >= v8)
  {
LABEL_8:
    self->pos_ = pos + v14;
  }

  else
  {
    self->pos_ = end;
    while (sub_1001BE54C(self) != -1)
    {
      v15 = self->end_;
      pos = self->pos_;
      v14 = v8 - v13;
      if (v8 - v13 <= v15 - pos)
      {
        goto LABEL_8;
      }

      v13 += v15 - pos;
      self->pos_ = v15;
      if (v13 >= v8)
      {
        goto LABEL_10;
      }
    }

    v8 = v13;
  }

LABEL_10:
  objc_sync_exit(lock);
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedReader;
  [(JavaIoReader *)&v3 dealloc];
}

@end