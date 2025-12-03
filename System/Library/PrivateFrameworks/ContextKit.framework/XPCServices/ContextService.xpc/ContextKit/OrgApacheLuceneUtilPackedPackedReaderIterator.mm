@interface OrgApacheLuceneUtilPackedPackedReaderIterator
- (id)nextWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedReaderIterator

- (id)nextWithInt:(int)int
{
  self->nextValues_->offset_ += self->nextValues_->length_;
  valueCount = self->super.valueCount_;
  v4 = (valueCount + ~self->position_);
  if (v4 <= 0)
  {
    v24 = new_JavaIoEOFException_init();
    objc_exception_throw(v24);
  }

  v6 = JavaLangMath_minWithInt_withInt_((valueCount + ~self->position_), int);
  nextValues = self->nextValues_;
  offset = nextValues->offset_;
  size = nextValues->longs_->super.size_;
  if (offset == size)
  {
    format = self->format_;
    if (!format)
    {
      goto LABEL_11;
    }

    v11 = [(OrgApacheLuceneUtilPackedPackedInts_FormatEnum *)format byteCountWithInt:self->packedIntsVersion_ withInt:v4 withInt:self->super.bitsPerValue_];
    nextBlocks = self->nextBlocks_;
    if (!nextBlocks)
    {
      goto LABEL_11;
    }

    v13 = JavaLangMath_minWithLong_withLong_(v11, nextBlocks->super.size_);
    in = self->super.in_;
    if (!in)
    {
      goto LABEL_11;
    }

    [(OrgApacheLuceneStoreDataInput *)in readBytesWithByteArray:self->nextBlocks_ withInt:0 withInt:v13];
    v19 = self->nextBlocks_;
    v20 = v19->super.size_;
    if (v20 > v13)
    {
      JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(v19, v13, v20, 0, v15, v16, v17, v18);
    }

    bulkOperation = self->bulkOperation_;
    if (!bulkOperation)
    {
LABEL_11:
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneUtilPackedBulkOperation *)bulkOperation decodeWithByteArray:self->nextBlocks_ withInt:0 withLongArray:self->nextValues_->longs_ withInt:0 withInt:self->iterations_];
    self->nextValues_->offset_ = 0;
    v22 = self->nextValues_;
    size = v22->longs_->super.size_;
    offset = v22->offset_;
  }

  self->nextValues_->length_ = JavaLangMath_minWithInt_withInt_((size - offset), v6);
  self->position_ += self->nextValues_->length_;
  return self->nextValues_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedReaderIterator;
  [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)&v3 dealloc];
}

@end