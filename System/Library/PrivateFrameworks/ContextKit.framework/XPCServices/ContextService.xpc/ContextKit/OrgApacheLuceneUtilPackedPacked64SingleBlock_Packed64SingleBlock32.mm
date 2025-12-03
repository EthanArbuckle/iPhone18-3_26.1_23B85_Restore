@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 1) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 1);
  }

  return (blocks->buffer_[int >> 1] >> (32 * (int & 1u)));
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 1;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 1);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 1);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(0xFFFFFFFFLL << (32 * (int & 1u))) | (long << (32 * (int & 1u)));
}

@end