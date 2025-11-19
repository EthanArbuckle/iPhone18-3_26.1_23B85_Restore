@interface IOSBooleanArray
+ (IOSBooleanArray)arrayWithBooleans:(const BOOL *)a3 count:(unint64_t)a4;
+ (IOSBooleanArray)arrayWithLength:(unint64_t)a3;
+ (id)iosClass;
+ (id)newArrayWithBooleans:(const BOOL *)a3 count:(unint64_t)a4;
- (BOOL)BOOLeanAtIndex:(unint64_t)a3;
- (BOOL)BOOLeanRefAtIndex:(unint64_t)a3;
- (BOOL)replaceBooleanAtIndex:(unint64_t)a3 withBoolean:(BOOL)a4;
- (id)descriptionOfElementAtIndex:(int)a3;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)getBooleans:(BOOL *)a3 length:(unint64_t)a4;
@end

@implementation IOSBooleanArray

+ (IOSBooleanArray)arrayWithLength:(unint64_t)a3
{
  v3 = sub_10023C998(a3);

  return v3;
}

+ (id)newArrayWithBooleans:(const BOOL *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023C998(a4);
  memcpy(v6 + 3, a3, v4);
  return v6;
}

+ (IOSBooleanArray)arrayWithBooleans:(const BOOL *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = sub_10023C998(a4);
  memcpy(v6 + 3, a3, v4);

  return v6;
}

- (BOOL)BOOLeanAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return *(&self->super.size_ + a3 + 4);
}

- (BOOL)BOOLeanRefAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return &self->super.size_ + a3 + 4;
}

- (BOOL)replaceBooleanAtIndex:(unint64_t)a3 withBoolean:(BOOL)a4
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  *(&self->super.size_ + a3 + 4) = a4;
  return a4;
}

- (void)getBooleans:(BOOL *)a3 length:(unint64_t)a4
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
  v2 = +[IOSClass BOOLeanClass];

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

- (id)descriptionOfElementAtIndex:(int)a3
{
  if (*(&self->super.size_ + a3 + 4))
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  return [NSString stringWithFormat:@"%@", v3];
}

@end