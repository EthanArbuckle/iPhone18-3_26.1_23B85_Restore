@interface IOSFloatArray
+ (IOSFloatArray)arrayWithFloats:(const float *)a3 count:(unint64_t)a4;
+ (IOSFloatArray)arrayWithLength:(unint64_t)a3;
+ (id)iosClass;
+ (id)newArrayWithFloats:(const float *)a3 count:(unint64_t)a4;
- (float)floatAtIndex:(unint64_t)a3;
- (float)floatRefAtIndex:(unint64_t)a3;
- (float)replaceFloatAtIndex:(unint64_t)a3 withFloat:(float)result;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getFloats:(float *)a3 length:(unint64_t)a4;
@end

@implementation IOSFloatArray

+ (IOSFloatArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023E620(a3);

  return v3;
}

+ (id)newArrayWithFloats:(const float *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023E620(a4);
  memcpy(v6 + 3, a3, 4 * v4);
  return v6;
}

+ (IOSFloatArray)arrayWithFloats:(const float *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023E620(a4);
  memcpy(v6 + 3, a3, 4 * v4);

  return v6;
}

- (float)floatAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return *(&self->super.size_ + a3 + 1);
}

- (float)floatRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return (&self->super.size_ + a3 + 1);
}

- (float)replaceFloatAtIndex:(unint64_t)a3 withFloat:(float)result
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  *(&self->super.size_ + a3 + 1) = result;
  return result;
}

- (void)getFloats:(float *)a3 length:(unint64_t)a4
{
  size = self->super.size_;
  v6 = (a4 - 1);
  if (a4 - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(a3, &self->super.size_ + 1, 4 * a4);
}

+ (id)iosClass
{
  v2 = +[IOSClass floatClass];

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

  memmove(a4 + 4 * a5 + 12, &self->super.size_ + a3 + 1, 4 * a6);
}

@end