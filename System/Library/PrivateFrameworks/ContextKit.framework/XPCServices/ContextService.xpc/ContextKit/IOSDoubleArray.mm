@interface IOSDoubleArray
+ (IOSDoubleArray)arrayWithDoubles:(const double *)doubles count:(unint64_t)count;
+ (IOSDoubleArray)arrayWithLength:(unint64_t)length;
+ (id)iosClass;
+ (id)newArrayWithDoubles:(const double *)doubles count:(unint64_t)count;
- (double)doubleAtIndex:(unint64_t)index;
- (double)doubleRefAtIndex:(unint64_t)index;
- (double)replaceDoubleAtIndex:(unint64_t)index withDouble:(double)result;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getDoubles:(double *)doubles length:(unint64_t)length;
@end

@implementation IOSDoubleArray

+ (IOSDoubleArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023EA88(length);

  return v3;
}

+ (id)newArrayWithDoubles:(const double *)doubles count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023EA88(count);
  memcpy(v6 + 4, doubles, 8 * countCopy);
  return v6;
}

+ (IOSDoubleArray)arrayWithDoubles:(const double *)doubles count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023EA88(count);
  memcpy(v6 + 4, doubles, 8 * countCopy);

  return v6;
}

- (double)doubleAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return self->buffer_[index];
}

- (double)doubleRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->buffer_[index];
}

- (double)replaceDoubleAtIndex:(unint64_t)index withDouble:(double)result
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  self->buffer_[index] = result;
  return result;
}

- (void)getDoubles:(double *)doubles length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(doubles, self->buffer_, 8 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass doubleClass];

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