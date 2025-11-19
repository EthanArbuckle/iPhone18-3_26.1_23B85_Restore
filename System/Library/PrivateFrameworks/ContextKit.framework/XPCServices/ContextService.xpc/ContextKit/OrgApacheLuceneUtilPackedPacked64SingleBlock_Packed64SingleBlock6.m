@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -9 || a3 / 10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 10));
  }

  return (blocks->buffer_[a3 / 10] >> (2 * ((3 * (a3 % 10)) & 0x1Fu))) & 0x3F;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 10;
  blocks = self->super.blocks_;
  v6 = a3 / 10;
  size = blocks->super.size_;
  if (a3 < -9 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v9 = 2 * ((3 * (a3 % 10)) & 0x1F);
  blocks->buffer_[v6] = blocks->buffer_[v6] & ~(63 << v9) | (a4 << v9);
}

@end