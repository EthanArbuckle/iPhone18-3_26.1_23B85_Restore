@interface IOSShortArray
+ (IOSShortArray)arrayWithLength:(unint64_t)length;
+ (IOSShortArray)arrayWithShorts:(const signed __int16 *)shorts count:(unint64_t)count;
+ (id)iosClass;
+ (id)newArrayWithShorts:(const signed __int16 *)shorts count:(unint64_t)count;
- (signed)replaceShortAtIndex:(unint64_t)index withShort:(signed __int16)short;
- (signed)shortAtIndex:(unint64_t)index;
- (signed)shortRefAtIndex:(unint64_t)index;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getShorts:(signed __int16 *)shorts length:(unint64_t)length;
@end

@implementation IOSShortArray

+ (IOSShortArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023D8F4(length);

  return v3;
}

+ (id)newArrayWithShorts:(const signed __int16 *)shorts count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023D8F4(count);
  memcpy(v6 + 3, shorts, 2 * countCopy);
  return v6;
}

+ (IOSShortArray)arrayWithShorts:(const signed __int16 *)shorts count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023D8F4(count);
  memcpy(v6 + 3, shorts, 2 * countCopy);

  return v6;
}

- (signed)shortAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 2);
}

- (signed)shortRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->super.size_ + index + 2;
}

- (signed)replaceShortAtIndex:(unint64_t)index withShort:(signed __int16)short
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 2) = short;
  return short;
}

- (void)getShorts:(signed __int16 *)shorts length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(shorts, &self->super.size_ + 1, 2 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass shortClass];

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

  memmove(destination + 2 * offset + 12, &self->super.size_ + 2 * arraycopy + 4, 2 * length);
}

@end