@interface JavaIoByteArrayOutputStream
- (JavaIoByteArrayOutputStream)init;
- (id)toByteArray;
- (id)toStringWithInt:(int)a3;
- (void)close;
- (void)dealloc;
- (void)reset;
- (void)writeToWithJavaIoOutputStream:(id)a3;
- (void)writeWithInt:(int)a3;
@end

@implementation JavaIoByteArrayOutputStream

- (JavaIoByteArrayOutputStream)init
{
  JavaIoOutputStream_init(self, a2);
  JreStrongAssignAndConsume(&self->buf_, [IOSByteArray newArrayWithLength:32]);
  return self;
}

- (void)close
{
  v2.receiver = self;
  v2.super_class = JavaIoByteArrayOutputStream;
  [(JavaIoOutputStream *)&v2 close];
}

- (void)reset
{
  objc_sync_enter(self);
  self->count_ = 0;

  objc_sync_exit(self);
}

- (id)toByteArray
{
  objc_sync_enter(self);
  v3 = [IOSByteArray arrayWithLength:self->count_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->buf_, 0, v3, 0, self->count_);
  objc_sync_exit(self);
  return v3;
}

- (id)toStringWithInt:(int)a3
{
  v3 = a3;
  v5 = [IOSCharArray arrayWithLength:[(JavaIoByteArrayOutputStream *)self size]];
  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    v7 = v3 << 8;
    do
    {
      buf = self->buf_;
      if (!buf)
      {
        JreThrowNullPointerException();
      }

      size = buf->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      v10 = *(&buf->super.size_ + v6 + 4);
      v11 = v5->super.size_;
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      *(&v5->super.size_ + v6++ + 2) = v7 | v10;
    }

    while (v6 < v5->super.size_);
  }

  return [NSString stringWithCharacters:v5];
}

- (void)writeWithInt:(int)a3
{
  v3 = a3;
  objc_sync_enter(self);
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  count = self->count_;
  if (count == buf->super.size_)
  {
    sub_100155114(&self->super.super.isa, 1);
    buf = self->buf_;
    count = self->count_;
  }

  self->count_ = count + 1;
  size = buf->super.size_;
  if ((count & 0x80000000) != 0 || count >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, count);
  }

  *(&buf->super.size_ + count + 4) = v3;

  objc_sync_exit(self);
}

- (void)writeToWithJavaIoOutputStream:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 writeWithByteArray:self->buf_ withInt:0 withInt:self->count_];

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoByteArrayOutputStream;
  [(JavaIoByteArrayOutputStream *)&v3 dealloc];
}

@end