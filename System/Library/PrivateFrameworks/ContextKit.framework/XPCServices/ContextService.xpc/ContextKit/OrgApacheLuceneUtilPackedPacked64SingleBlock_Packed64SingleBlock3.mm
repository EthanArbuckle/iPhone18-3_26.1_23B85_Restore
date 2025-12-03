@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -20 || int / 21 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 21));
  }

  return (blocks->buffer_[int / 21] >> (3 * (int % 21))) & 7;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 21;
  blocks = self->super.blocks_;
  v6 = int / 21;
  size = blocks->super.size_;
  if (int < -20 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[int / 21] = blocks->buffer_[int / 21] & ~(7 << (3 * (int % 21))) | (long << (3 * (int % 21)));
}

@end