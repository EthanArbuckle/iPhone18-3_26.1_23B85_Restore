@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 3) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 3);
  }

  return (blocks->buffer_[int >> 3] >> (8 * (int & 7u)));
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 3;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 3);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 3);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(255 << (8 * (int & 7u))) | (long << (8 * (int & 7u)));
}

@end