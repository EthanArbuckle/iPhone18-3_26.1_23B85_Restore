@interface IOSByteArray
+ (IOSByteArray)arrayWithBytes:(const char *)bytes count:(unint64_t)count;
+ (IOSByteArray)arrayWithLength:(unint64_t)length;
+ (IOSByteArray)arrayWithNSData:(id)data;
+ (id)iosClass;
+ (id)newArrayWithBytes:(const char *)bytes count:(unint64_t)count;
- (char)byteAtIndex:(unint64_t)index;
- (char)byteRefAtIndex:(unint64_t)index;
- (char)replaceByteAtIndex:(unint64_t)index withByte:(char)byte;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getBytes:(char *)bytes length:(unint64_t)length;
- (void)getBytes:(char *)bytes offset:(int)offset length:(int)length;
- (void)replaceBytes:(const char *)bytes length:(int)length offset:(int)offset;
@end

@implementation IOSByteArray

+ (IOSByteArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023D2E8(length);

  return v3;
}

+ (id)newArrayWithBytes:(const char *)bytes count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023D2E8(count);
  memcpy(v6 + 3, bytes, countCopy);
  return v6;
}

+ (IOSByteArray)arrayWithBytes:(const char *)bytes count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023D2E8(count);
  memcpy(v6 + 3, bytes, countCopy);

  return v6;
}

- (char)byteAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 4);
}

- (char)byteRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->super.size_ + index + 4;
}

- (char)replaceByteAtIndex:(unint64_t)index withByte:(char)byte
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 4) = byte;
  return byte;
}

- (void)getBytes:(char *)bytes length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(bytes, &self->super.size_ + 1, length);
}

+ (id)iosClass
{
  v2 = +[IOSClass byteClass];

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

  memmove(destination + offset + 12, &self->super.size_ + arraycopy + 4, length);
}

+ (IOSByteArray)arrayWithNSData:(id)data
{
  v4 = [data length];
  v5 = sub_10023D2E8(v4);
  v6 = v5;
  if (v4)
  {
    [data getBytes:v5 + 3 length:v4];
  }

  return v6;
}

- (void)getBytes:(char *)bytes offset:(int)offset length:(int)length
{
  if ((length | offset) < 0 || length + offset > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  memcpy(bytes, &self->super.size_ + offset + 4, length);
}

- (void)replaceBytes:(const char *)bytes length:(int)length offset:(int)offset
{
  if ((offset | length) < 0 || offset + length > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = &self->super.size_ + offset + 4;

  memcpy(v5, bytes, length);
}

@end