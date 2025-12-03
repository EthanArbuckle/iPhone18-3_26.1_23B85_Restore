@interface IOSCharArray
+ (IOSCharArray)arrayWithChars:(const unsigned __int16 *)chars count:(unint64_t)count;
+ (IOSCharArray)arrayWithLength:(unint64_t)length;
+ (IOSCharArray)arrayWithNSString:(id)string;
+ (id)iosClass;
+ (id)newArrayWithChars:(const unsigned __int16 *)chars count:(unint64_t)count;
- (unsigned)charAtIndex:(unint64_t)index;
- (unsigned)charRefAtIndex:(unint64_t)index;
- (unsigned)replaceCharAtIndex:(unint64_t)index withChar:(unsigned __int16)char;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)getChars:(unsigned __int16 *)chars length:(unint64_t)length;
@end

@implementation IOSCharArray

+ (IOSCharArray)arrayWithLength:(unint64_t)length
{
  v3 = sub_10023CE14(length);

  return v3;
}

+ (id)newArrayWithChars:(const unsigned __int16 *)chars count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023CE14(count);
  memcpy(v6 + 3, chars, 2 * countCopy);
  return v6;
}

+ (IOSCharArray)arrayWithChars:(const unsigned __int16 *)chars count:(unint64_t)count
{
  countCopy = count;
  v6 = sub_10023CE14(count);
  memcpy(v6 + 3, chars, 2 * countCopy);

  return v6;
}

- (unsigned)charAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return *(&self->super.size_ + index + 2);
}

- (unsigned)charRefAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return &self->super.size_ + index + 2;
}

- (unsigned)replaceCharAtIndex:(unint64_t)index withChar:(unsigned __int16)char
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  *(&self->super.size_ + index + 2) = char;
  return char;
}

- (void)getChars:(unsigned __int16 *)chars length:(unint64_t)length
{
  size = self->super.size_;
  v6 = (length - 1);
  if (length - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  memcpy(chars, &self->super.size_ + 1, 2 * length);
}

+ (id)iosClass
{
  v2 = +[IOSClass charClass];

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

+ (IOSCharArray)arrayWithNSString:(id)string
{
  v4 = [string length];
  v5 = sub_10023CE14(v4);
  v6 = v5;
  if (v4)
  {
    [string getCharacters:v5 + 3 range:{0, v4}];
  }

  return v6;
}

@end