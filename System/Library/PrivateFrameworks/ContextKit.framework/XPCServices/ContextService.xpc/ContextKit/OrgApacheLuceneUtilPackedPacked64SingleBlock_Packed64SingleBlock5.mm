@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -11 || int / 12 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 12));
  }

  return (blocks->buffer_[int / 12] >> (5 * (int % 12))) & 0x1F;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 12;
  blocks = self->super.blocks_;
  v6 = int / 12;
  size = blocks->super.size_;
  if (int < -11 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[int / 12] = blocks->buffer_[int / 12] & ~(31 << (5 * (int % 12))) | (long << (5 * (int % 12)));
}

@end