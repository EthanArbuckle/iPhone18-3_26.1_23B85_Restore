@interface IOSLongArray
+ (IOSLongArray)arrayWithLength:(unint64_t)length;
+ (IOSLongArray)arrayWithLongs:(const int64_t *)longs count:(unint64_t)count;
+ (id)iosClass;
+ (id)newArrayWithLongs:(const int64_t *)longs count:(unint64_t)count;
- (int64_t)longAtIndex:(unint64_t)index;
- (int64_t)longRefAtIndex:(unint64_t)index;
- (int64_t)replaceLongAtIndex:(unint64_t)index withLong:(int64_t)long;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getLongs:(int64_t *)longs length:(unint64_t)length;
@end

@implementation IOSLongArray

+ (IOSLongArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023E1BC(length);

  return v3;
}

+ (id)newArrayWithLongs:(const int64_t *)longs count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023E1BC(count);
  memcpy(v6 + 4, longs, 8 * countCopy);
  return v6;
}

+ (IOSLongArray)arrayWithLongs:(const int64_t *)longs count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023E1BC(count);
  memcpy(v6 + 4, longs, 8 * countCopy);

  return v6;
}

- (int64_t)longAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return self->buffer_[index];
}

- (int64_t)longRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->buffer_[index];
}

- (int64_t)replaceLongAtIndex:(unint64_t)index withLong:(int64_t)long
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  self->buffer_[index] = long;
  return long;
}

- (void)getLongs:(int64_t *)longs length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(longs, self->buffer_, 8 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass longClass];

  return IOSClass_arrayOf(v2);
}

- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length
{
  if ((length | arraycopy) < 0 || length + arraycopy > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  if ((length | offset) < 0 || length + offset > *(destination + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  memmove(destination + 8 * offset + 16, &self->buffer_[arraycopy], 8 * length);
}

@end