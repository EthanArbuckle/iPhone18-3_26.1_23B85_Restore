@interface IOSShortArray
+ (IOSShortArray)arrayWithLength:(unint64_t)a3;
+ (IOSShortArray)arrayWithShorts:(const signed __int16 *)a3 count:(unint64_t)a4;
+ (id)iosClass;
+ (id)newArrayWithShorts:(const signed __int16 *)a3 count:(unint64_t)a4;
- (signed)replaceShortAtIndex:(unint64_t)a3 withShort:(signed __int16)a4;
- (signed)shortAtIndex:(unint64_t)a3;
- (signed)shortRefAtIndex:(unint64_t)a3;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getShorts:(signed __int16 *)a3 length:(unint64_t)a4;
@end

@implementation IOSShortArray

+ (IOSShortArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023D8F4(a3);

  return v3;
}

+ (id)newArrayWithShorts:(const signed __int16 *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023D8F4(a4);
  memcpy(v6 + 3, a3, 2 * v4);
  return v6;
}

+ (IOSShortArray)arrayWithShorts:(const signed __int16 *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023D8F4(a4);
  memcpy(v6 + 3, a3, 2 * v4);

  return v6;
}

- (signed)shortAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return *(&self->super.size_ + a3 + 2);
}

- (signed)shortRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return &self->super.size_ + a3 + 2;
}

- (signed)replaceShortAtIndex:(unint64_t)a3 withShort:(signed __int16)a4
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  *(&self->super.size_ + a3 + 2) = a4;
  return a4;
}

- (void)getShorts:(signed __int16 *)a3 length:(unint64_t)a4
{
  size = self->super.size_;
  v6 = (a4 - 1);
  if (a4 - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(a3, &self->super.size_ + 1, 2 * a4);
}

+ (id)iosClass
{
  v2 = +[IOSClass shortClass];

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

  memmove(a4 + 2 * a5 + 12, &self->super.size_ + 2 * a3 + 4, 2 * a6);
}

@end