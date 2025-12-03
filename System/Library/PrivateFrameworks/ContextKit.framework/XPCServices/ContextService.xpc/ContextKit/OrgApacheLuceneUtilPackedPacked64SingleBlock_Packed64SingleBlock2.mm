@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 5) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 5);
  }

  return (blocks->buffer_[int >> 5] >> (2 * (int & 0x1Fu))) & 3;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 5;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 5);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 5);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(3 << (2 * (int & 0x1Fu))) | (long << (2 * (int & 0x1Fu)));
}

@end