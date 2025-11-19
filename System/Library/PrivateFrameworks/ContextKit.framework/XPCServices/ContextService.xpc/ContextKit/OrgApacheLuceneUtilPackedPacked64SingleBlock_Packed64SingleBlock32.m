@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((a3 >> 1) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 1);
  }

  return (blocks->buffer_[a3 >> 1] >> (32 * (a3 & 1u)));
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  blocks = self->super.blocks_;
  v5 = a3 >> 1;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 1);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a3 >> 1);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(0xFFFFFFFFLL << (32 * (a3 & 1u))) | (a4 << (32 * (a3 & 1u)));
}

@end