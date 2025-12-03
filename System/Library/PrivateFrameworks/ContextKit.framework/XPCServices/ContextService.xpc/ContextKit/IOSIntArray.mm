@interface IOSIntArray
+ (IOSIntArray)arrayWithInts:(const int *)ints count:(unint64_t)count;
+ (IOSIntArray)arrayWithLength:(unint64_t)length;
+ (id)iosClass;
+ (id)newArrayWithInts:(const int *)ints count:(unint64_t)count;
- (int)intAtIndex:(unint64_t)index;
- (int)intRefAtIndex:(unint64_t)index;
- (int)replaceIntAtIndex:(unint64_t)index withInt:(int)int;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getInts:(int *)ints length:(unint64_t)length;
@end

@implementation IOSIntArray

+ (IOSIntArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023DD58(length);

  return v3;
}

+ (id)newArrayWithInts:(const int *)ints count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023DD58(count);
  memcpy(v6 + 3, ints, 4 * countCopy);
  return v6;
}

+ (IOSIntArray)arrayWithInts:(const int *)ints count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023DD58(count);
  memcpy(v6 + 3, ints, 4 * countCopy);

  return v6;
}

- (int)intAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 1);
}

- (int)intRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->super.size_ + index + 1;
}

- (int)replaceIntAtIndex:(unint64_t)index withInt:(int)int
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 1) = int;
  return int;
}

- (void)getInts:(int *)ints length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(ints, &self->super.size_ + 1, 4 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass intClass];

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

  memmove(destination + 4 * offset + 12, &self->super.size_ + arraycopy + 1, 4 * length);
}

@end