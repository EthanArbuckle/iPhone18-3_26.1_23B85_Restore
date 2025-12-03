@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((int >> 6) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 6);
  }

  return (blocks->buffer_[int >> 6] >> int) & 1;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->super.blocks_;
  v5 = int >> 6;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 6);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, int >> 6);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(1 << int) | (long << int);
}

@end