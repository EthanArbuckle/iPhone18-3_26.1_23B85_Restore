@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -6 || a3 / 7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 7));
  }

  return (blocks->buffer_[a3 / 7] >> (9 * (a3 % 7))) & 0x1FF;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 7;
  blocks = self->super.blocks_;
  v6 = a3 / 7;
  size = blocks->super.size_;
  if (a3 < -6 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[a3 / 7] = blocks->buffer_[a3 / 7] & ~(511 << (9 * (a3 % 7))) | (a4 << (9 * (a3 % 7)));
}

@end