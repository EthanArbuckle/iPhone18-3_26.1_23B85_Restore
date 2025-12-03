@interface OrgApacheLuceneUtilPackedPackedWriter
- (uint64_t)flush;
- (void)addWithLong:(int64_t)long;
- (void)dealloc;
- (void)finish;
@end

@implementation OrgApacheLuceneUtilPackedPackedWriter

- (void)addWithLong:(int64_t)long
{
  valueCount = self->super.valueCount_;
  if (valueCount != -1 && self->written_ >= valueCount)
  {
    v8 = new_JavaIoEOFException_initWithNSString_(@"Writing past end of stream");
    objc_exception_throw(v8);
  }

  nextValues = self->nextValues_;
  if (!nextValues)
  {
    JreThrowNullPointerException();
  }

  off = self->off_;
  self->off_ = off + 1;
  size = nextValues->super.size_;
  if (off < 0 || off >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, off);
  }

  nextValues->buffer_[off] = long;
  if (off + 1 == self->nextValues_->super.size_)
  {
    [OrgApacheLuceneUtilPackedPackedWriter flush]_0(self);
  }

  ++self->written_;
}

- (uint64_t)flush
{
  v2 = *(self + 40);
  if (!v2 || ([v2 encodeWithLongArray:*(self + 56) withInt:0 withByteArray:*(self + 48) withInt:0 withInt:*(self + 64)], (v3 = *(self + 32)) == 0) || (v4 = objc_msgSend(v3, "byteCountWithInt:withInt:withInt:", 2, *(self + 68), *(self + 20)), (v5 = *(self + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  [v5 writeBytesWithByteArray:*(self + 48) withInt:v4];
  result = JavaUtilArrays_fillWithLongArray_withLong_(*(self + 56), 0);
  *(self + 68) = 0;
  return result;
}

- (void)finish
{
  valueCount = self->super.valueCount_;
  if (valueCount != -1 && self->written_ < valueCount)
  {
    do
    {
      [(OrgApacheLuceneUtilPackedPackedWriter *)self addWithLong:0];
    }

    while (self->written_ < self->super.valueCount_);
  }

  [OrgApacheLuceneUtilPackedPackedWriter flush]_0(self);
  self->finished_ = 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedWriter;
  [(OrgApacheLuceneUtilPackedPackedInts_Writer *)&v3 dealloc];
}

@end