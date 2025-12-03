@interface IOSFloatArray
+ (IOSFloatArray)arrayWithFloats:(const float *)floats count:(unint64_t)count;
+ (IOSFloatArray)arrayWithLength:(unint64_t)length;
+ (id)iosClass;
+ (id)newArrayWithFloats:(const float *)floats count:(unint64_t)count;
- (float)floatAtIndex:(unint64_t)index;
- (float)floatRefAtIndex:(unint64_t)index;
- (float)replaceFloatAtIndex:(unint64_t)index withFloat:(float)result;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getFloats:(float *)floats length:(unint64_t)length;
@end

@implementation IOSFloatArray

+ (IOSFloatArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023E620(length);

  return v3;
}

+ (id)newArrayWithFloats:(const float *)floats count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023E620(count);
  memcpy(v6 + 3, floats, 4 * countCopy);
  return v6;
}

+ (IOSFloatArray)arrayWithFloats:(const float *)floats count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023E620(count);
  memcpy(v6 + 3, floats, 4 * countCopy);

  return v6;
}

- (float)floatAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 1);
}

- (float)floatRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return (&self->super.size_ + index + 1);
}

- (float)replaceFloatAtIndex:(unint64_t)index withFloat:(float)result
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 1) = result;
  return result;
}

- (void)getFloats:(float *)floats length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(floats, &self->super.size_ + 1, 4 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass floatClass];

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