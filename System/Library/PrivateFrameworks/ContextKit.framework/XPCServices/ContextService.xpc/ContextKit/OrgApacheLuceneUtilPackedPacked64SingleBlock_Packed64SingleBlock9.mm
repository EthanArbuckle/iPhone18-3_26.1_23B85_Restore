@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -6 || int / 7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 7));
  }

  return (blocks->buffer_[int / 7] >> (9 * (int % 7))) & 0x1FF;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 7;
  blocks = self->super.blocks_;
  v6 = int / 7;
  size = blocks->super.size_;
  if (int < -6 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[int / 7] = blocks->buffer_[int / 7] & ~(511 << (9 * (int % 7))) | (long << (9 * (int % 7)));
}

@end