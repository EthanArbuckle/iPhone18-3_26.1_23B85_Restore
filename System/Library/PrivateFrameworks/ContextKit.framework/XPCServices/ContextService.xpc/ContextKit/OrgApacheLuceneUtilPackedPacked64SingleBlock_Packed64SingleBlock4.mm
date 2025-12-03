@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 4) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 4);
  }

  return (blocks->buffer_[int >> 4] >> (4 * (int & 0xFu))) & 0xF;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 4;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 4);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 4);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(15 << (4 * (int & 0xFu))) | (long << (4 * (int & 0xFu)));
}

@end