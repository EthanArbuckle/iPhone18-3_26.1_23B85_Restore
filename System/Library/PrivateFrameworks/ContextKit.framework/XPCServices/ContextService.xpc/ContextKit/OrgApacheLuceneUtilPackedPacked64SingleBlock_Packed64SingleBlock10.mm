@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -5 || int / 6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 6));
  }

  return (blocks->buffer_[int / 6] >> (2 * ((5 * (int % 6)) & 0x1Fu))) & 0x3FF;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 6;
  blocks = self->super.blocks_;
  v6 = int / 6;
  size = blocks->super.size_;
  if (int < -5 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v9 = 2 * ((5 * (int % 6)) & 0x1F);
  blocks->buffer_[v6] = blocks->buffer_[v6] & ~(1023 << v9) | (long << v9);
}

@end