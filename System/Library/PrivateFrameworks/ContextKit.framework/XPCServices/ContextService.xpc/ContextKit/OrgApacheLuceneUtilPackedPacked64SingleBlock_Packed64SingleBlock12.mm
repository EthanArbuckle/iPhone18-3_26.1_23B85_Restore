@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -4 || int / 5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 5));
  }

  return (blocks->buffer_[int / 5] >> (4 * ((3 * (int % 5)) & 0xFu))) & 0xFFF;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 5;
  blocks = self->super.blocks_;
  v6 = int / 5;
  size = blocks->super.size_;
  if (int < -4 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v9 = 4 * ((3 * (int % 5)) & 0xF);
  blocks->buffer_[v6] = blocks->buffer_[v6] & ~(4095 << v9) | (long << v9);
}

@end