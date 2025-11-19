@interface IOSLongArray
+ (IOSLongArray)arrayWithLength:(unint64_t)a3;
+ (IOSLongArray)arrayWithLongs:(const int64_t *)a3 count:(unint64_t)a4;
+ (id)iosClass;
+ (id)newArrayWithLongs:(const int64_t *)a3 count:(unint64_t)a4;
- (int64_t)longAtIndex:(unint64_t)a3;
- (int64_t)longRefAtIndex:(unint64_t)a3;
- (int64_t)replaceLongAtIndex:(unint64_t)a3 withLong:(int64_t)a4;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getLongs:(int64_t *)a3 length:(unint64_t)a4;
@end

@implementation IOSLongArray

+ (IOSLongArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023E1BC(a3);

  return v3;
}

+ (id)newArrayWithLongs:(const int64_t *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023E1BC(a4);
  memcpy(v6 + 4, a3, 8 * v4);
  return v6;
}

+ (IOSLongArray)arrayWithLongs:(const int64_t *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023E1BC(a4);
  memcpy(v6 + 4, a3, 8 * v4);

  return v6;
}

- (int64_t)longAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return self->buffer_[a3];
}

- (int64_t)longRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return &self->buffer_[a3];
}

- (int64_t)replaceLongAtIndex:(unint64_t)a3 withLong:(int64_t)a4
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  self->buffer_[a3] = a4;
  return a4;
}

- (void)getLongs:(int64_t *)a3 length:(unint64_t)a4
{
  size = self->super.size_;
  v6 = (a4 - 1);
  if (a4 - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(a3, self->buffer_, 8 * a4);
}

+ (id)iosClass
{
  v2 = +[IOSClass longClass];

  return IOSClass_arrayOf(v2);
}

- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6
{
  if ((a6 | a3) < 0 || a6 + a3 > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  if ((a6 | a5) < 0 || a6 + a5 > *(a4 + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  memmove(a4 + 8 * a5 + 16, &self->buffer_[a3], 8 * a6);
}

@end