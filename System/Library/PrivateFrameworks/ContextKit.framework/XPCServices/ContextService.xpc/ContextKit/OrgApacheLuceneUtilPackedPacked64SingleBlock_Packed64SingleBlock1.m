@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if ((a3 >> 6) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
  }

  return (blocks->buffer_[a3 >> 6] >> a3) & 1;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  blocks = self->super.blocks_;
  v5 = a3 >> 6;
  size = blocks->super.size_;
  if (v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 6);
  }

  v7 = blocks->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a3 >> 6);
  }

  blocks->buffer_[v5] = blocks->buffer_[v5] & ~(1 << a3) | (a4 << a3);
}

@end