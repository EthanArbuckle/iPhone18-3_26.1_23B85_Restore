@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -20 || a3 / 21 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 21));
  }

  return (blocks->buffer_[a3 / 21] >> (3 * (a3 % 21))) & 7;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 21;
  blocks = self->super.blocks_;
  v6 = a3 / 21;
  size = blocks->super.size_;
  if (a3 < -20 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[a3 / 21] = blocks->buffer_[a3 / 21] & ~(7 << (3 * (a3 % 21))) | (a4 << (3 * (a3 % 21)));
}

@end