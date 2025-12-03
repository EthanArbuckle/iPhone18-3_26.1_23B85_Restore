@interface IOSBooleanArray
+ (IOSBooleanArray)arrayWithBooleans:(const BOOL *)booleans count:(unint64_t)count;
+ (IOSBooleanArray)arrayWithLength:(unint64_t)length;
+ (id)iosClass;
+ (id)newArrayWithBooleans:(const BOOL *)booleans count:(unint64_t)count;
- (BOOL)BOOLeanAtIndex:(unint64_t)index;
- (BOOL)BOOLeanRefAtIndex:(unint64_t)index;
- (BOOL)replaceBooleanAtIndex:(unint64_t)index withBoolean:(BOOL)boolean;
- (id)descriptionOfElementAtIndex:(int)index;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getBooleans:(BOOL *)booleans length:(unint64_t)length;
@end

@implementation IOSBooleanArray

+ (IOSBooleanArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023C998(length);

  return v3;
}

+ (id)newArrayWithBooleans:(const BOOL *)booleans count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023C998(count);
  memcpy(v6 + 3, booleans, countCopy);
  return v6;
}

+ (IOSBooleanArray)arrayWithBooleans:(const BOOL *)booleans count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023C998(count);
  memcpy(v6 + 3, booleans, countCopy);

  return v6;
}

- (BOOL)BOOLeanAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 4);
}

- (BOOL)BOOLeanRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->super.size_ + index + 4;
}

- (BOOL)replaceBooleanAtIndex:(unint64_t)index withBoolean:(BOOL)boolean
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 4) = boolean;
  return boolean;
}

- (void)getBooleans:(BOOL *)booleans length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(booleans, &self->super.size_ + 1, length);
}

+ (id)iosClass
{
  v2 = +[IOSClass BOOLeanClass];

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

- (id)descriptionOfElementAtIndex:(int)index
{
  if (*(&self->super.size_ + index + 4))
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