@interface OrgApacheLuceneUtilPackedDirectWriter
+ (void)initialize;
- (uint64_t)flush;
- (void)addWithLong:(int64_t)a3;
- (void)dealloc;
- (void)finish;
@end

@implementation OrgApacheLuceneUtilPackedDirectWriter

- (void)addWithLong:(int64_t)a3
{
  if (self->count_ >= self->numValues_)
  {
    v7 = new_JavaIoEOFException_initWithNSString_(@"Writing past end of stream");
    objc_exception_throw(v7);
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
    [OrgApacheLuceneUtilPackedDirectWriter flush]_0(self);
  }

  ++self->count_;
}

- (uint64_t)flush
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_7;
  }

  [v2 encodeWithLongArray:*(a1 + 56) withInt:0 withByteArray:*(a1 + 48) withInt:0 withInt:*(a1 + 72)];
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ || (v3 = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:2 withInt:*(a1 + 44) withInt:*(a1 + 8)], (v4 = *(a1 + 24)) == 0))
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [v4 writeBytesWithByteArray:*(a1 + 48) withInt:v3];
  result = JavaUtilArrays_fillWithLongArray_withLong_(*(a1 + 56), 0);
  *(a1 + 44) = 0;
  return result;
}

- (void)finish
{
  if (self->count_ != self->numValues_)
  {
    count = self->count_;
    numValues = self->numValues_;
    v11 = JreStrcat("$J$J", a2, v2, v3, v4, v5, v6, v7, @"Wrong number of values added, expected: ");
    v12 = new_JavaLangIllegalStateException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  [OrgApacheLuceneUtilPackedDirectWriter flush]_0(self);
  v9 = 3;
  do
  {
    output = self->output_;
    if (!output)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneStoreIndexOutput *)output writeByteWithByte:0];
    --v9;
  }

  while (v9);
  self->finished_ = 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectWriter;
  [(OrgApacheLuceneUtilPackedDirectWriter *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = 0x4000000038;
    v2[0] = xmmword_100314040;
    v2[1] = unk_100314050;
    v2[2] = xmmword_100314060;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_, [IOSIntArray newArrayWithInts:v2 count:14]);
    atomic_store(1u, OrgApacheLuceneUtilPackedDirectWriter__initialized);
  }
}

@end