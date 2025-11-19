@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5
- (int64_t)getWithInt:(int)a3;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5

- (int64_t)getWithInt:(int)a3
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (a3 < -11 || a3 / 12 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (a3 / 12));
  }

  return (blocks->buffer_[a3 / 12] >> (5 * (a3 % 12))) & 0x1F;
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  v4 = a3 / 12;
  blocks = self->super.blocks_;
  v6 = a3 / 12;
  size = blocks->super.size_;
  if (a3 < -11 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  blocks->buffer_[a3 / 12] = blocks->buffer_[a3 / 12] & ~(31 << (5 * (a3 % 12))) | (a4 << (5 * (a3 % 12)));
}

@end