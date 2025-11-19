@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -4 || a3 / 5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 5));
  }

  return (blocks->buffer_[a3 / 5] >> (4 * ((3 * (a3 % 5)) & 0xFu))) & 0xFFF;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 5;
  blocks = self->super.blocks_;
  v6 = a3 / 5;
  size = blocks->super.size_;
  if (a3 < -4 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v9 = 4 * ((3 * (a3 % 5)) & 0xF);
  blocks->buffer_[v6] = blocks->buffer_[v6] & ~(4095 << v9) | (a4 << v9);
}

@end