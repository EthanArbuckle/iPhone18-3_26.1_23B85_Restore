@interface IOSIntArray
+ (IOSIntArray)arrayWithInts:(const int *)a3 count:(unint64_t)a4;
+ (IOSIntArray)arrayWithLength:(unint64_t)a3;
+ (id)iosClass;
+ (id)newArrayWithInts:(const int *)a3 count:(unint64_t)a4;
- (int)intAtIndex:(unint64_t)a3;
- (int)intRefAtIndex:(unint64_t)a3;
- (int)replaceIntAtIndex:(unint64_t)a3 withInt:(int)a4;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getInts:(int *)a3 length:(unint64_t)a4;
@end

@implementation IOSIntArray

+ (IOSIntArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023DD58(a3);

  return v3;
}

+ (id)newArrayWithInts:(const int *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023DD58(a4);
  memcpy(v6 + 3, a3, 4 * v4);
  return v6;
}

+ (IOSIntArray)arrayWithInts:(const int *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023DD58(a4);
  memcpy(v6 + 3, a3, 4 * v4);

  return v6;
}

- (int)intAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return *(&self->super.size_ + a3 + 1);
}

- (int)intRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return &self->super.size_ + a3 + 1;
}

- (int)replaceIntAtIndex:(unint64_t)a3 withInt:(int)a4
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  *(&self->super.size_ + a3 + 1) = a4;
  return a4;
}

- (void)getInts:(int *)a3 length:(unint64_t)a4
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
  v2 = +[IOSClass intClass];

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