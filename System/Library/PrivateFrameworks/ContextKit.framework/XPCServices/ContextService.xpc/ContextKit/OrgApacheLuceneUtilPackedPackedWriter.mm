@interface OrgApacheLuceneUtilPackedPackedWriter
- (uint64_t)flush;
- (void)addWithLong:(int64_t)a3;
- (void)dealloc;
- (void)finish;
@end

@implementation OrgApacheLuceneUtilPackedPackedWriter

- (void)addWithLong:(int64_t)a3
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

  nextValues->buffer_[off] = a3;
  if (off + 1 == self->nextValues_->super.size_)
  {
    [OrgApacheLuceneUtilPackedPackedWriter flush]_0(self);
  }

  ++self->written_;
}

- (uint64_t)flush
{
  v2 = *(a1 + 40);
  if (!v2 || ([v2 encodeWithLongArray:*(a1 + 56) withInt:0 withByteArray:*(a1 + 48) withInt:0 withInt:*(a1 + 64)], (v3 = *(a1 + 32)) == 0) || (v4 = objc_msgSend(v3, "byteCountWithInt:withInt:withInt:", 2, *(a1 + 68), *(a1 + 20)), (v5 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  [v5 writeBytesWithByteArray:*(a1 + 48) withInt:v4];
  result = JavaUtilArrays_fillWithLongArray_withLong_(*(a1 + 56), 0);
  *(a1 + 68) = 0;
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