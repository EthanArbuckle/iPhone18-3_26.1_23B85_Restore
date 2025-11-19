@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((a3 >> 4) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 4);
  }

  return (blocks->buffer_[a3 >> 4] >> (4 * (a3 & 0xFu))) & 0xF;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  blocks = self->super.blocks_;
  v5 = a3 >> 4;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 4);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a3 >> 4);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(15 << (4 * (a3 & 0xFu))) | (a4 << (4 * (a3 & 0xFu)));
}

@end