@interface OrgApacheLuceneUtilPackedBlockPackedReaderIterator
- (int64_t)next;
- (uint64_t)refill;
- (void)dealloc;
- (void)resetWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long;
- (void)skipWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedBlockPackedReaderIterator

- (void)resetWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long
{
  JreStrongAssign(&self->in_, input);
  self->valueCount_ = long;
  self->off_ = self->blockSize_;
  self->ord_ = 0;
}

- (void)skipWithLong:(int64_t)long
{
  v3 = self->ord_ + long;
  if (v3 > self->valueCount_ || v3 < 0)
  {
    v12 = new_JavaIoEOFException_init();
    goto LABEL_19;
  }

  v6 = JavaLangMath_minWithLong_withLong_(long, self->blockSize_ - self->off_);
  self->off_ += v6;
  self->ord_ += v6;
  v7 = long - v6;
  if (long == v6)
  {
    return;
  }

  if (v7 >= self->blockSize_)
  {
    while (1)
    {
      in = self->in_;
      if (!in)
      {
LABEL_17:
        JreThrowNullPointerException();
      }

      readByte = [(OrgApacheLuceneStoreDataInput *)in readByte];
      if (readByte >= 0xFFFFFF82)
      {
        break;
      }

      v10 = readByte;
      if ((readByte & 1) == 0)
      {
        OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(self->in_);
      }

      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0])
      {
        goto LABEL_17;
      }

      sub_1000F4138(self, [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] byteCountWithInt:self->packedIntsVersion_ withInt:self->blockSize_ withInt:v10 >> 1]);
      blockSize = self->blockSize_;
      self->ord_ += blockSize;
      v7 -= blockSize;
      if (v7 < blockSize)
      {
        goto LABEL_5;
      }
    }

    v12 = new_JavaIoIOException_initWithNSString_(@"Corrupted");
LABEL_19:
    objc_exception_throw(v12);
  }

LABEL_5:
  if (v7)
  {
    [OrgApacheLuceneUtilPackedBlockPackedReaderIterator refill]_0(self);
    self->ord_ += v7;
    self->off_ += v7;
  }
}

- (uint64_t)refill
{
  v2 = *(self + 8);
  if (!v2)
  {
    goto LABEL_26;
  }

  readByte = [v2 readByte];
  if (readByte >= 0xFFFFFF82)
  {
    v25 = new_JavaIoIOException_initWithNSString_(@"Corrupted");
    objc_exception_throw(v25);
  }

  v9 = readByte;
  v10 = readByte;
  if (readByte)
  {
    v12 = 0;
  }

  else
  {
    VLongWithOrgApacheLuceneStoreDataInput = OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(*(self + 8));
    v12 = OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(VLongWithOrgApacheLuceneStoreDataInput + 1);
  }

  if (v10 <= 1)
  {
    result = JavaUtilArrays_fillWithLongArray_withLong_(*(self + 40), v12);
    goto LABEL_8;
  }

  v14 = v9 >> 1;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], *(self + 16), v14, v4, v5, v6, v7, v8);
  if (!DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt)
  {
    goto LABEL_26;
  }

  v16 = DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt;
  v17 = *(self + 32);
  v18 = (v17 / [DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt byteValueCount]);
  v19 = [v16 byteBlockCount] * v18;
  v20 = *(self + 56);
  if (!v20 || *(v20 + 8) < v19)
  {
    JreStrongAssignAndConsume((self + 56), [IOSByteArray newArrayWithLength:v19]);
  }

  v21 = JavaLangMath_minWithLong_withLong_(*(self + 24) - *(self + 72), *(self + 32));
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0])
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  [*(self + 8) readBytesWithByteArray:*(self + 56) withInt:0 withInt:{objc_msgSend(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], "byteCountWithInt:withInt:withInt:", *(self + 16), v21, v14)}];
  result = [v16 decodeWithByteArray:*(self + 56) withInt:0 withLongArray:*(self + 40) withInt:0 withInt:v18];
  if (v12 && v21 >= 1)
  {
    v22 = 0;
    v23 = v21 & 0x7FFFFFFF;
    do
    {
      v24 = *(self + 40);
      if (!v24)
      {
        goto LABEL_26;
      }

      result = *(v24 + 8);
      if (v22 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v22);
      }

      *(v24 + 16 + 8 * v22++) += v12;
    }

    while (v23 != v22);
  }

LABEL_8:
  *(self + 64) = 0;
  return result;
}

- (int64_t)next
{
  if (self->ord_ == self->valueCount_)
  {
    v7 = new_JavaIoEOFException_init();
    objc_exception_throw(v7);
  }

  if (self->off_ == self->blockSize_)
  {
    [OrgApacheLuceneUtilPackedBlockPackedReaderIterator refill]_0(self);
  }

  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  off = self->off_;
  self->off_ = off + 1;
  size = values->super.size_;
  if (off < 0 || off >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, off);
  }

  result = values->buffer_[off];
  ++self->ord_;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedBlockPackedReaderIterator;
  [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)&v3 dealloc];
}

@end