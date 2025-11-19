@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum
- (BOOL)canReuseWithOrgApacheLuceneStoreIndexInput:(id)a3 withOrgApacheLuceneIndexFieldInfo:(id)a4;
- (id)getPayload;
- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)a3 withInt:(int)a4;
- (int)advanceWithInt:(int)a3;
- (int)nextDoc;
- (int)nextPosition;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum

- (BOOL)canReuseWithOrgApacheLuceneStoreIndexInput:(id)a3 withOrgApacheLuceneIndexFieldInfo:(id)a4
{
  if (self->startDocIn_ != a3)
  {
    return 0;
  }

  if (!a4 || (indexHasOffsets = self->indexHasOffsets_, (v7 = [a4 getIndexOptions]) == 0))
  {
    JreThrowNullPointerException();
  }

  v8 = v7;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexHasOffsets != [v8 compareToWithId:qword_100557390] >= 0)
  {
    return 0;
  }

  indexHasPayloads = self->indexHasPayloads_;
  return indexHasPayloads == [a4 hasPayloads];
}

- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    goto LABEL_16;
  }

  self->docFreq_ = *(a3 + 4);
  self->docTermStartFP_ = *(a3 + 7);
  self->posTermStartFP_ = *(a3 + 8);
  self->payTermStartFP_ = *(a3 + 9);
  self->skipOffset_ = *(a3 + 10);
  self->totalTermFreq_ = *(a3 + 3);
  self->singletonDocID_ = *(a3 + 24);
  if (self->docFreq_ < 2)
  {
    goto LABEL_7;
  }

  docIn = self->docIn_;
  if (!docIn)
  {
    startDocIn = self->startDocIn_;
    if (!startDocIn || (JreStrongAssign(&self->docIn_, [(OrgApacheLuceneStoreIndexInput *)startDocIn clone]), (docIn = self->docIn_) == 0))
    {
LABEL_16:
      JreThrowNullPointerException();
    }
  }

  [(OrgApacheLuceneStoreIndexInput *)docIn seekWithLong:self->docTermStartFP_];
LABEL_7:
  self->posPendingFP_ = self->posTermStartFP_;
  self->payPendingFP_ = self->payTermStartFP_;
  self->posPendingCount_ = 0;
  v9 = *(a3 + 3);
  if (v9 > 127)
  {
    if (v9 == 128)
    {
      posTermStartFP = -1;
    }

    else
    {
      posTermStartFP = *(a3 + 11) + self->posTermStartFP_;
    }
  }

  else
  {
    posTermStartFP = self->posTermStartFP_;
  }

  self->lastPosBlockFP_ = posTermStartFP;
  self->needsOffsets_ = OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a4, 56);
  self->needsPayloads_ = OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a4, 88);
  self->doc_ = -1;
  self->accum_ = 0;
  self->docUpto_ = 0;
  if (self->docFreq_ <= 128)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = 127;
  }

  self->nextSkipDoc_ = v11;
  self->docBufferUpto_ = 128;
  self->skipped_ = 0;
  return self;
}

- (int)nextDoc
{
  self->previousPosition_ = 2147483519;
  if (self->docUpto_ == self->docFreq_)
  {
    result = 0x7FFFFFFF;
    self->doc_ = 0x7FFFFFFF;
  }

  else
  {
    if (self->docBufferUpto_ == 128)
    {
      sub_10006DC58(self);
    }

    docDeltaBuffer = self->docDeltaBuffer_;
    if (!docDeltaBuffer)
    {
      goto LABEL_15;
    }

    docBufferUpto = self->docBufferUpto_;
    size = docDeltaBuffer->super.size_;
    if (docBufferUpto < 0 || docBufferUpto >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, docBufferUpto);
    }

    self->accum_ += *(&docDeltaBuffer->super.size_ + docBufferUpto + 1);
    freqBuffer = self->freqBuffer_;
    if (!freqBuffer)
    {
      goto LABEL_15;
    }

    v8 = self->docBufferUpto_;
    v9 = freqBuffer->super.size_;
    if (v8 < 0 || v8 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v8);
    }

    v10 = *(&freqBuffer->super.size_ + v8 + 1);
    self->freqWithPostings_ = v10;
    freqPostingDeltaBuffer = self->freqPostingDeltaBuffer_;
    if (!freqPostingDeltaBuffer)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    v12 = self->docBufferUpto_;
    v13 = freqPostingDeltaBuffer->super.size_;
    if (v12 < 0 || v12 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v12);
    }

    self->freq_ = *(&freqPostingDeltaBuffer->super.size_ + v12 + 1) + v10;
    freqWithPostings = self->freqWithPostings_;
    self->remainingPostingsInDoc_ = freqWithPostings;
    self->posPendingCount_ += freqWithPostings;
    ++self->docBufferUpto_;
    ++self->docUpto_;
    self->doc_ = self->accum_;
    self->position_ = 0;
    self->lastStartOffset_ = 0;
    return self->doc_;
  }

  return result;
}

- (int)advanceWithInt:(int)a3
{
  self->remainingPostingsInDoc_ = 0;
  self->previousPosition_ = 2147483519;
  if (self->nextSkipDoc_ < a3)
  {
    skipper = self->skipper_;
    if (!skipper)
    {
      docIn = self->docIn_;
      if (!docIn)
      {
        goto LABEL_34;
      }

      v6 = a3;
      v7 = new_OrgApacheLuceneCodecsLucene50Lucene50SkipReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withBoolean_withBoolean_withBoolean_([(OrgApacheLuceneStoreIndexInput *)docIn clone], 10, 1, self->indexHasOffsets_, self->indexHasPayloads_);
      JreStrongAssignAndConsume(&self->skipper_, v7);
      skipper = self->skipper_;
      a3 = v6;
    }

    if (!self->skipped_)
    {
      if (!skipper)
      {
        goto LABEL_34;
      }

      v8 = a3;
      [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)skipper init__WithLong:self->skipOffset_ + self->docTermStartFP_ withLong:self->docTermStartFP_ withLong:self->posTermStartFP_ withLong:self->payTermStartFP_ withInt:self->docFreq_];
      a3 = v8;
      self->skipped_ = 1;
      skipper = self->skipper_;
    }

    if (skipper)
    {
      v9 = a3;
      v10 = [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)skipper skipToWithInt:?]+ 1;
      if (v10 <= self->docUpto_)
      {
LABEL_12:
        self->nextSkipDoc_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getNextSkipDoc];
        a3 = v9;
        goto LABEL_13;
      }

      self->docUpto_ = v10;
      self->docBufferUpto_ = 128;
      self->accum_ = [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)self->skipper_ getDoc];
      v11 = self->docIn_;
      if (v11)
      {
        [(OrgApacheLuceneStoreIndexInput *)v11 seekWithLong:[(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getDocPointer]];
        self->posPendingFP_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getPosPointer];
        self->payPendingFP_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getPayPointer];
        self->posPendingCount_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getPosBufferUpto];
        self->lastStartOffset_ = 0;
        self->payloadByteUpto_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getPayloadByteUpto];
        goto LABEL_12;
      }
    }

LABEL_34:
    JreThrowNullPointerException();
  }

LABEL_13:
  if (self->docUpto_ == self->docFreq_)
  {
LABEL_14:
    result = 0x7FFFFFFF;
  }

  else
  {
    if (self->docBufferUpto_ == 128)
    {
      v13 = a3;
      sub_10006DC58(self);
      a3 = v13;
    }

    while (1)
    {
      docDeltaBuffer = self->docDeltaBuffer_;
      if (!docDeltaBuffer)
      {
        goto LABEL_34;
      }

      docBufferUpto = self->docBufferUpto_;
      size = docDeltaBuffer->super.size_;
      if (docBufferUpto < 0 || docBufferUpto >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, docBufferUpto);
      }

      self->accum_ += *(&docDeltaBuffer->super.size_ + docBufferUpto + 1);
      freqBuffer = self->freqBuffer_;
      if (!freqBuffer)
      {
        goto LABEL_34;
      }

      v18 = self->docBufferUpto_;
      v19 = freqBuffer->super.size_;
      if (v18 < 0 || v18 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v18);
      }

      v20 = *(&freqBuffer->super.size_ + v18 + 1);
      self->freqWithPostings_ = v20;
      freqPostingDeltaBuffer = self->freqPostingDeltaBuffer_;
      if (!freqPostingDeltaBuffer)
      {
        goto LABEL_34;
      }

      v22 = self->docBufferUpto_;
      v23 = freqPostingDeltaBuffer->super.size_;
      if (v22 < 0 || v22 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v22);
      }

      self->freq_ = *(&freqPostingDeltaBuffer->super.size_ + v22 + 1) + v20;
      self->posPendingCount_ += self->freqWithPostings_;
      ++self->docBufferUpto_;
      v24 = self->docUpto_ + 1;
      self->docUpto_ = v24;
      if (self->accum_ >= a3)
      {
        break;
      }

      if (v24 == self->docFreq_)
      {
        goto LABEL_14;
      }
    }

    self->remainingPostingsInDoc_ = self->freqWithPostings_;
    self->position_ = 0;
    self->lastStartOffset_ = 0;
    result = self->accum_;
  }

  self->doc_ = result;
  return result;
}

- (int)nextPosition
{
  remainingPostingsInDoc = self->remainingPostingsInDoc_;
  v3 = __OFSUB__(remainingPostingsInDoc--, 1);
  self->remainingPostingsInDoc_ = remainingPostingsInDoc;
  if (remainingPostingsInDoc < 0 == v3)
  {
    if (self->posPendingFP_ != -1)
    {
      posIn = self->posIn_;
      if (!posIn)
      {
        goto LABEL_31;
      }

      [(OrgApacheLuceneStoreIndexInput *)posIn seekWithLong:?];
      self->posPendingFP_ = -1;
      if (self->payPendingFP_ != -1)
      {
        payIn = self->payIn_;
        if (!payIn)
        {
          goto LABEL_31;
        }

        [(OrgApacheLuceneStoreIndexInput *)payIn seekWithLong:?];
        self->payPendingFP_ = -1;
      }

      self->posBufferUpto_ = 128;
    }

    if (self->posPendingCount_ > self->freqWithPostings_)
    {
      sub_10006EAA8(self);
      self->posPendingCount_ = self->freqWithPostings_;
    }

    posBufferUpto = self->posBufferUpto_;
    if (posBufferUpto == 128)
    {
      sub_10006DE94(self);
      posBufferUpto = 0;
      self->posBufferUpto_ = 0;
    }

    posDeltaBuffer = self->posDeltaBuffer_;
    if (posDeltaBuffer)
    {
      size = posDeltaBuffer->super.size_;
      if ((posBufferUpto & 0x80000000) != 0 || posBufferUpto >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, posBufferUpto);
      }

      self->position_ += *(&posDeltaBuffer->super.size_ + posBufferUpto + 1);
      if (self->indexHasPayloads_)
      {
        payloadLengthBuffer = self->payloadLengthBuffer_;
        if (!payloadLengthBuffer)
        {
          goto LABEL_31;
        }

        v11 = self->posBufferUpto_;
        v12 = payloadLengthBuffer->super.size_;
        if (v11 < 0 || v11 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v11);
        }

        self->payloadLength_ = *(&payloadLengthBuffer->super.size_ + v11 + 1);
        payload = self->payload_;
        if (!payload)
        {
          goto LABEL_31;
        }

        JreStrongAssign(&payload->bytes_, self->payloadBytes_);
        self->payload_->offset_ = self->payloadByteUpto_;
        payloadLength = self->payloadLength_;
        self->payload_->length_ = payloadLength;
        self->payloadByteUpto_ += payloadLength;
      }

      if (!self->indexHasOffsets_)
      {
LABEL_29:
        ++self->posBufferUpto_;
        --self->posPendingCount_;
        result = self->position_;
        self->previousPosition_ = result;
        return result;
      }

      offsetStartDeltaBuffer = self->offsetStartDeltaBuffer_;
      if (offsetStartDeltaBuffer)
      {
        v16 = self->posBufferUpto_;
        v17 = offsetStartDeltaBuffer->super.size_;
        if (v16 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = *(&offsetStartDeltaBuffer->super.size_ + v16 + 1) + self->lastStartOffset_;
        self->startOffset_ = v18;
        offsetLengthBuffer = self->offsetLengthBuffer_;
        if (offsetLengthBuffer)
        {
          v20 = self->posBufferUpto_;
          v21 = offsetLengthBuffer->super.size_;
          if (v20 < 0 || v20 >= v21)
          {
            IOSArray_throwOutOfBoundsWithMsg(v21, v20);
          }

          self->endOffset_ = *(&offsetLengthBuffer->super.size_ + v20 + 1) + v18;
          self->lastStartOffset_ = self->startOffset_;
          goto LABEL_29;
        }
      }
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  return 2147483519;
}

- (id)getPayload
{
  if (self->payloadLength_)
  {
    return self->payload_;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end