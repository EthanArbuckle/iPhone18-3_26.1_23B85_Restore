@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum
- (id)next;
- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)totalTermFreq;
- (void)dealloc;
- (void)reset;
- (void)resetWithInt:(int)int withInt:(int)withInt withIntArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray withIntArray:(id)a8 withIntArray:(id)a9 withIntArray:(id)self0 withIntArray:(id)self1 withIntArray:(id)self2 withOrgApacheLuceneUtilBytesRef:(id)self3 withOrgApacheLuceneStoreByteArrayDataInput:(id)self4;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum

- (void)resetWithInt:(int)int withInt:(int)withInt withIntArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray withIntArray:(id)a8 withIntArray:(id)a9 withIntArray:(id)self0 withIntArray:(id)self1 withIntArray:(id)self2 withOrgApacheLuceneUtilBytesRef:(id)self3 withOrgApacheLuceneStoreByteArrayDataInput:(id)self4
{
  self->numTerms_ = int;
  JreStrongAssign(&self->prefixLengths_, array);
  JreStrongAssign(&self->suffixLengths_, intArray);
  JreStrongAssign(&self->termFreqs_, withIntArray);
  JreStrongAssign(&self->positionIndex_, a8);
  JreStrongAssign(&self->positions_, a9);
  JreStrongAssign(&self->startOffsets_, a10);
  JreStrongAssign(&self->lengths_, a11);
  JreStrongAssign(&self->payloadIndex_, a12);
  JreStrongAssign(&self->payloads_, ref);
  JreStrongAssign(&self->in_, input);
  if (!input)
  {
    JreThrowNullPointerException();
  }

  self->startPos_ = [input getPosition];

  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum *)self reset];
}

- (void)reset
{
  term = self->term_;
  if (!term || (term->length_ = 0, (in = self->in_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)in setPositionWithInt:self->startPos_];
  self->ord_ = -1;
}

- (id)next
{
  ord = self->ord_;
  if (ord == self->numTerms_ - 1)
  {
    return 0;
  }

  self->ord_ = ord + 1;
  term = self->term_;
  if (!term)
  {
    goto LABEL_19;
  }

  term->offset_ = 0;
  prefixLengths = self->prefixLengths_;
  if (!prefixLengths)
  {
    goto LABEL_19;
  }

  v13 = self->ord_;
  size = prefixLengths->super.size_;
  if (v13 < 0 || v13 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v13);
  }

  suffixLengths = self->suffixLengths_;
  if (!suffixLengths)
  {
    goto LABEL_19;
  }

  v16 = *(&prefixLengths->super.size_ + v13 + 1);
  v17 = self->ord_;
  v18 = suffixLengths->super.size_;
  if (v17 < 0 || v17 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v17);
  }

  self->term_->length_ = *(&suffixLengths->super.size_ + v17 + 1) + v16;
  v19 = self->term_;
  bytes = v19->bytes_;
  if (!bytes)
  {
    goto LABEL_19;
  }

  length = v19->length_;
  if (length > bytes[2])
  {
    v22 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(bytes, length, v2, v3, v4, v5, v6, v7);
    JreStrongAssign(&v19->bytes_, v22);
  }

  if (!self->in_)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v23 = self->prefixLengths_;
  v24 = self->ord_;
  v25 = v23->super.size_;
  if ((v24 & 0x80000000) != 0 || v24 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v24);
  }

  v26 = self->suffixLengths_;
  v27 = v26->super.size_;
  if ((v24 & 0x80000000) != 0 || v24 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v24);
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)self->in_ readBytesWithByteArray:self->term_->bytes_ withInt:*(&v23->super.size_ + v24 + 1) withInt:*(&v26->super.size_ + v24 + 1)];
  return self->term_;
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  ord = self->ord_;
  if (ord < 0 || ord >= self->numTerms_)
  {
    goto LABEL_7;
  }

  term = [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum *)self term];
  if (!term)
  {
    JreThrowNullPointerException();
  }

  v7 = [term compareToWithId:ref];
  if (v7)
  {
    if (v7 >= 1)
    {
      [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum *)self reset];
    }

    while (1)
    {
LABEL_7:
      next = [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum *)self next];
      if (!next)
      {
        v10 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
        if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
        {
          return *v10;
        }

        goto LABEL_13;
      }

      v9 = [next compareToWithId:ref];
      if (v9 >= 1)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v10 = &qword_100557A50;
    if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
    {
      return *v10;
    }

    goto LABEL_13;
  }

LABEL_10:
  v10 = &qword_100557A48;
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
LABEL_13:
    objc_opt_class();
  }

  return *v10;
}

- (int64_t)totalTermFreq
{
  termFreqs = self->termFreqs_;
  if (!termFreqs)
  {
    JreThrowNullPointerException();
  }

  ord = self->ord_;
  size = termFreqs->super.size_;
  if (ord < 0 || ord >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, ord);
  }

  return *(&termFreqs->super.size_ + ord + 1);
}

- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int
{
  if (OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 0x4000) && !self->positions_ && !self->startOffsets_)
  {
    return 0;
  }

  if (enum && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v6 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVPostingsEnum alloc];
    OrgApacheLuceneIndexPostingsEnum_init(v6, v7);
    v6->doc_ = -1;
    v8 = new_OrgApacheLuceneUtilBytesRef_init();
    JreStrongAssignAndConsume(&v6->payload_, v8);
    enum = v6;
    if (!enum)
    {
      goto LABEL_18;
    }
  }

  termFreqs = self->termFreqs_;
  if (!termFreqs)
  {
    goto LABEL_18;
  }

  ord = self->ord_;
  size = termFreqs->super.size_;
  if (ord < 0 || ord >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, ord);
  }

  positionIndex = self->positionIndex_;
  if (!positionIndex)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v13 = self->ord_;
  v14 = positionIndex->super.size_;
  if (v13 < 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  [enum resetWithInt:*(&termFreqs->super.size_ + ord + 1) withInt:*(&positionIndex->super.size_ + v13 + 1) withIntArray:self->positions_ withIntArray:self->startOffsets_ withIntArray:self->lengths_ withOrgApacheLuceneUtilBytesRef:self->payloads_ withIntArray:self->payloadIndex_];
  return enum;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

@end