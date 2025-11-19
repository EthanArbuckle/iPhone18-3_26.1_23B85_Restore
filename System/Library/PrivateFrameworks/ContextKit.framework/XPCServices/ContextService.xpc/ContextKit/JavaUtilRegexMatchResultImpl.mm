@interface JavaUtilRegexMatchResultImpl
- (id)group;
- (id)groupWithInt:(int)a3;
- (int)endWithInt:(int)a3;
- (int)groupCount;
- (int)startWithInt:(int)a3;
- (void)dealloc;
@end

@implementation JavaUtilRegexMatchResultImpl

- (int)endWithInt:(int)a3
{
  offsets = self->offsets_;
  if (!offsets)
  {
    JreThrowNullPointerException();
  }

  v4 = (2 * a3) | 1;
  size = offsets->super.size_;
  if (2 * a3 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (2 * a3) | 1);
  }

  return *(&offsets->super.size_ + v4 + 1);
}

- (id)group
{
  text = self->text_;
  if (!text)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilRegexMatchResultImpl *)self start];
  v5 = [(JavaUtilRegexMatchResultImpl *)self end];

  return [(NSString *)text substring:v4 endIndex:v5];
}

- (id)groupWithInt:(int)a3
{
  offsets = self->offsets_;
  if (!offsets)
  {
    goto LABEL_16;
  }

  v5 = 2 * a3;
  v6 = 2 * a3;
  size = offsets->super.size_;
  if (2 * a3 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  v8 = offsets;
  v9 = *(&offsets->super.size_ + v6 + 1);
  v10 = v6 | 1;
  if ((v6 & 0x80000000) != 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6 | 1);
  }

  if (v9 == -1 || *(&v8->super.size_ + v10 + 1) == -1)
  {
    return 0;
  }

  text = self->text_;
  if (!text)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  return [(NSString *)text substring:v9 endIndex:?];
}

- (int)groupCount
{
  offsets = self->offsets_;
  if (!offsets)
  {
    JreThrowNullPointerException();
  }

  return offsets->super.size_ / 2 - 1;
}

- (int)startWithInt:(int)a3
{
  offsets = self->offsets_;
  if (!offsets)
  {
    JreThrowNullPointerException();
  }

  v4 = 2 * a3;
  size = offsets->super.size_;
  if (2 * a3 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (2 * a3));
  }

  return *(&offsets->super.size_ + v4 + 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilRegexMatchResultImpl;
  [(JavaUtilRegexMatchResultImpl *)&v3 dealloc];
}

@end