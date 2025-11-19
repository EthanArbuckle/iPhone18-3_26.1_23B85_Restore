@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum
- (id)next;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (int64_t)binarySearchBlockWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int64_t)binarySearchIndexWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
- (void)seekExactWithLong:(int64_t)a3;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum

- (id)next
{
  v2 = self->currentOrd_ + 1;
  self->currentOrd_ = v2;
  if (v2 >= self->this$0_->numValues_)
  {
    return 0;
  }

  if ((v2 & 0xF) != 0)
  {
    sub_1000EAC6C(self, v2 & 0xF);
  }

  else
  {
    sub_1000EA7B4(self);
    sub_1000EABC4(self);
  }

  return self->term_;
}

- (int64_t)binarySearchIndexWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  numReverseIndexValues = self->this$0_->numReverseIndexValues_;
  v4 = numReverseIndexValues - 1;
  if (numReverseIndexValues - 1 < 0)
  {
    return numReverseIndexValues - 1;
  }

  v7 = 0;
  do
  {
    v8 = self->this$0_;
    reverseTerms = v8->reverseTerms_;
    if (!reverseTerms || (reverseAddresses = v8->reverseAddresses_) == 0 || (v11 = (v7 + v4) >> 1, [(OrgApacheLuceneUtilPagedBytes_Reader *)reverseTerms fillWithOrgApacheLuceneUtilBytesRef:self->scratch_ withLong:[(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)reverseAddresses getWithLong:v11]], (scratch = self->scratch_) == 0))
    {
      JreThrowNullPointerException();
    }

    v13 = [(OrgApacheLuceneUtilBytesRef *)scratch compareToWithId:a3];
    if ((v13 & 0x80000000) != 0)
    {
      v7 = v11 + 1;
    }

    else
    {
      if (!v13)
      {
        return v11;
      }

      v4 = v11 - 1;
    }

    v11 = v4;
  }

  while (v7 <= v4);
  return v11;
}

- (int64_t)binarySearchBlockWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v5 = a5;
  if (a4 > a5)
  {
    return a5;
  }

  v7 = a4;
  do
  {
    input = self->input_;
    if (!input || (addresses = self->this$0_->addresses_) == 0 || (v6 = (v7 + v5) >> 1, [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:[(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)addresses getWithLong:v6]], v12 = [(OrgApacheLuceneStoreDataInput *)self->input_ readVInt], (term = self->term_) == 0))
    {
      JreThrowNullPointerException();
    }

    term->length_ = v12;
    [(OrgApacheLuceneStoreIndexInput *)self->input_ readBytesWithByteArray:self->term_->bytes_ withInt:0 withInt:self->term_->length_];
    v14 = [(OrgApacheLuceneUtilBytesRef *)self->term_ compareToWithId:a3];
    if ((v14 & 0x80000000) != 0)
    {
      v7 = v6 + 1;
    }

    else
    {
      if (!v14)
      {
        return v6;
      }

      v5 = v6 - 1;
    }

    v6 = v5;
  }

  while (v7 <= v5);
  return v6;
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v5 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self binarySearchIndexWithOrgApacheLuceneUtilBytesRef:?];
  if (v5 < 0)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5 << 6;
    v7 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self binarySearchBlockWithOrgApacheLuceneUtilBytesRef:a3 withLong:v5 << 6 withLong:JavaLangMath_minWithLong_withLong_(self->this$0_->numIndexValues_ - 1, (v5 << 6) | 0x3F)];
    v8 = JavaLangMath_maxWithLong_withLong_(v6, v7);
  }

  input = self->input_;
  if (!input || (addresses = self->this$0_->addresses_) == 0)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:[(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)addresses getWithLong:v8]];
  self->currentOrd_ = 16 * v8 - 1;
  while (1)
  {
    if (![(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)self next])
    {
      v13 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v13;
      }

      goto LABEL_16;
    }

    term = self->term_;
    if (!term)
    {
      goto LABEL_17;
    }

    v12 = [(OrgApacheLuceneUtilBytesRef *)term compareToWithId:a3];
    if (!v12)
    {
      break;
    }

    if (v12 >= 1)
    {
      v13 = &qword_100557A50;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v13;
      }

      goto LABEL_16;
    }
  }

  v13 = &qword_100557A48;
  if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
  {
    return *v13;
  }

LABEL_16:
  objc_opt_class();
  return *v13;
}

- (void)seekExactWithLong:(int64_t)a3
{
  if (a3 >> 4 != self->currentOrd_ >> 4)
  {
    input = self->input_;
    if (!input)
    {
      goto LABEL_15;
    }

    addresses = self->this$0_->addresses_;
    if (!addresses)
    {
      goto LABEL_15;
    }

    [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:[(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)addresses getWithLong:?]];
    sub_1000EA7B4(self);
  }

  self->currentOrd_ = a3;
  v7 = a3 & 0xF;
  if (v7)
  {
    v8 = self->input_;
    if (v8)
    {
      offsets = self->offsets_;
      if (offsets)
      {
        size = offsets->super.size_;
        if (v7 > size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, (v7 - 1));
        }

        [(OrgApacheLuceneStoreIndexInput *)v8 seekWithLong:self->currentBlockStart_ + *(&offsets->super.size_ + (v7 - 1) + 1)];

        sub_1000EAC6C(self, v7);
        return;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  sub_1000EABC4(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

@end