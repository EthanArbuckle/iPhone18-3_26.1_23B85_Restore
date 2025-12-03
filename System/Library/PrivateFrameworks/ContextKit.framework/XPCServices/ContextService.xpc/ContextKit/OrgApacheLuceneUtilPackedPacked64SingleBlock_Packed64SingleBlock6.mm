@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6
- (int64_t)getWithInt:(int)int;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6

- (int64_t)getWithInt:(int)int
{
  blocks = self->super.blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  if (int < -9 || int / 10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (int / 10));
  }

  return (blocks->buffer_[int / 10] >> (2 * ((3 * (int % 10)) & 0x1Fu))) & 0x3F;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v4 = int / 10;
  blocks = self->super.blocks_;
  v6 = int / 10;
  size = blocks->super.size_;
  if (int < -9 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v8 = blocks->super.size_;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v9 = 2 * ((3 * (int % 10)) & 0x1F);
  blocks->buffer_[v6] = blocks->buffer_[v6] & ~(63 << v9) | (long << v9);
}

@end