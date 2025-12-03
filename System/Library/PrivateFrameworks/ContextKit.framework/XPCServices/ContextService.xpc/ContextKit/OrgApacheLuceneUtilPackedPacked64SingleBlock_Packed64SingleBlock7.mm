@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -8 || int / 9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 9));
  }

  return (blocks->buffer_[int / 9] >> (7 * (int % 9))) & 0x7F;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 9;
  blocks = self->super.blocks_;
  v6 = int / 9;
  size = blocks->super.size_;
  if (int < -8 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[int / 9] = blocks->buffer_[int / 9] & ~(127 << (7 * (int % 9))) | (long << (7 * (int % 9)));
}

@end