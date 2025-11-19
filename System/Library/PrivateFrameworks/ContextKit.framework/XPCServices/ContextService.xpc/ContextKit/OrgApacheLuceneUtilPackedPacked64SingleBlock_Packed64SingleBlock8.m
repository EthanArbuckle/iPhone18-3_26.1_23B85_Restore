@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((a3 >> 3) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 3);
  }

  return (blocks->buffer_[a3 >> 3] >> (8 * (a3 & 7u)));
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  blocks = self->super.blocks_;
  v5 = a3 >> 3;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 3);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a3 >> 3);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(255 << (8 * (a3 & 7u))) | (a4 << (8 * (a3 & 7u)));
}

@end