@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -2 || int / 3 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 3));
  }

  return (blocks->buffer_[int / 3] >> (21 * (int % 3))) & 0x1FFFFF;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 3;
  blocks = self->super.blocks_;
  v6 = int / 3;
  size = blocks->super.size_;
  if (int < -2 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[int / 3] = blocks->buffer_[int / 3] & ~(0x1FFFFFLL << (21 * (int % 3))) | (long << (21 * (int % 3)));
}

@end