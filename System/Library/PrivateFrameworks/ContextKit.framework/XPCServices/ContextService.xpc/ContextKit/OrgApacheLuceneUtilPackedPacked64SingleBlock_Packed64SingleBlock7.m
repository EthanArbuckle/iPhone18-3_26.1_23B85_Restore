@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -8 || a3 / 9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 9));
  }

  return (blocks->buffer_[a3 / 9] >> (7 * (a3 % 9))) & 0x7F;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 9;
  blocks = self->super.blocks_;
  v6 = a3 / 9;
  size = blocks->super.size_;
  if (a3 < -8 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[a3 / 9] = blocks->buffer_[a3 / 9] & ~(127 << (7 * (a3 % 9))) | (a4 << (7 * (a3 % 9)));
}

@end