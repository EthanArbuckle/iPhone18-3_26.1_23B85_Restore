@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 2) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 2);
  }

  return (blocks->buffer_[int >> 2] >> (16 * (int & 3u)));
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 2;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 2);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 2);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(0xFFFFLL << (16 * (int & 3u))) | (long << (16 * (int & 3u)));
}

@end