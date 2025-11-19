@interface IOSByteArray
+ (IOSByteArray)arrayWithBytes:(const char *)a3 count:(unint64_t)a4;
+ (IOSByteArray)arrayWithLength:(unint64_t)a3;
+ (IOSByteArray)arrayWithNSData:(id)a3;
+ (id)iosClass;
+ (id)newArrayWithBytes:(const char *)a3 count:(unint64_t)a4;
- (char)byteAtIndex:(unint64_t)a3;
- (char)byteRefAtIndex:(unint64_t)a3;
- (char)replaceByteAtIndex:(unint64_t)a3 withByte:(char)a4;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getBytes:(char *)a3 length:(unint64_t)a4;
- (void)getBytes:(char *)a3 offset:(int)a4 length:(int)a5;
- (void)replaceBytes:(const char *)a3 length:(int)a4 offset:(int)a5;
@end

@implementation IOSByteArray

+ (IOSByteArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023D2E8(a3);

  return v3;
}

+ (id)newArrayWithBytes:(const char *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023D2E8(a4);
  memcpy(v6 + 3, a3, v4);
  return v6;
}

+ (IOSByteArray)arrayWithBytes:(const char *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023D2E8(a4);
  memcpy(v6 + 3, a3, v4);

  return v6;
}

- (char)byteAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return *(&self->super.size_ + a3 + 4);
}

- (char)byteRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return &self->super.size_ + a3 + 4;
}

- (char)replaceByteAtIndex:(unint64_t)a3 withByte:(char)a4
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  *(&self->super.size_ + a3 + 4) = a4;
  return a4;
}

- (void)getBytes:(char *)a3 length:(unint64_t)a4
{
  size = self->super.size_;
  v6 = (a4 - 1);
  if (a4 - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(a3, &self->super.size_ + 1, a4);
}

+ (id)iosClass
{
  v2 = +[IOSClass byteClass];

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

  memmove(a4 + a5 + 12, &self->super.size_ + a3 + 4, a6);
}

+ (IOSByteArray)arrayWithNSData:(id)a3
{
  v4 = [a3 length];
  v5 = sub_10023D2E8(v4);
  v6 = v5;
  if (v4)
  {
    [a3 getBytes:v5 + 3 length:v4];
  }

  return v6;
}

- (void)getBytes:(char *)a3 offset:(int)a4 length:(int)a5
{
  if ((a5 | a4) < 0 || a5 + a4 > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  memcpy(a3, &self->super.size_ + a4 + 4, a5);
}

- (void)replaceBytes:(const char *)a3 length:(int)a4 offset:(int)a5
{
  if ((a5 | a4) < 0 || a5 + a4 > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  v5 = &self->super.size_ + a5 + 4;

  memcpy(v5, a3, a4);
}

@end