@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum
- (BOOL)canReuseWithOrgApacheLuceneStoreIndexInput:(id)a3 withOrgApacheLuceneIndexFieldInfo:(id)a4;
- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)a3;
- (int)advanceWithInt:(int)a3;
- (int)nextDoc;
- (int)nextPosition;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum

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

- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
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
LABEL_15:
      JreThrowNullPointerException();
    }
  }

  [(OrgApacheLuceneStoreIndexInput *)docIn seekWithLong:self->docTermStartFP_];
LABEL_7:
  posTermStartFP = self->posTermStartFP_;
  self->posPendingFP_ = posTermStartFP;
  self->posPendingCount_ = 0;
  v8 = *(a3 + 3);
  if (v8 >= 128)
  {
    if (v8 == 128)
    {
      posTermStartFP = -1;
    }

    else
    {
      posTermStartFP += *(a3 + 11);
    }
  }

  self->lastPosBlockFP_ = posTermStartFP;
  self->doc_ = -1;
  self->accum_ = 0;
  self->docUpto_ = 0;
  if (self->docFreq_ <= 128)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = 127;
  }

  self->nextSkipDoc_ = v9;
  self->docBufferUpto_ = 128;
  self->skipped_ = 0;
  return self;
}

- (int)nextDoc
{
  self->remainingPostingsInDoc_ = 0;
  if (self->docUpto_ == self->docFreq_)
  {
    result = 0x7FFFFFFF;
    self->doc_ = 0x7FFFFFFF;
  }

  else
  {
    if (self->docBufferUpto_ == 128)
    {
      sub_10006C678(self);
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
    self->previousPosition_ = 2147483519;
    self->position_ = 0;
    return self->doc_;
  }

  return result;
}

- (int)advanceWithInt:(int)a3
{
  if (self->nextSkipDoc_ < a3)
  {
    skipper = self->skipper_;
    if (!skipper)
    {
      docIn = self->docIn_;
      if (!docIn)
      {
        goto LABEL_35;
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
        goto LABEL_35;
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
        self->posPendingCount_ = [(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self->skipper_ getPosBufferUpto];
        goto LABEL_12;
      }
    }

LABEL_35:
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
      sub_10006C678(self);
      a3 = v13;
    }

    self->previousPosition_ = 2147483519;
    while (1)
    {
      docDeltaBuffer = self->docDeltaBuffer_;
      if (!docDeltaBuffer)
      {
        goto LABEL_35;
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
        goto LABEL_35;
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
        goto LABEL_35;
      }

      v22 = self->docBufferUpto_;
      v23 = freqPostingDeltaBuffer->super.size_;
      if (v22 < 0 || v22 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v22);
      }

      self->freq_ = *(&freqPostingDeltaBuffer->super.size_ + v22 + 1) + v20;
      freqWithPostings = self->freqWithPostings_;
      self->remainingPostingsInDoc_ = freqWithPostings;
      self->posPendingCount_ += freqWithPostings;
      ++self->docBufferUpto_;
      v25 = self->docUpto_ + 1;
      self->docUpto_ = v25;
      if (self->accum_ >= a3)
      {
        break;
      }

      if (v25 == self->docFreq_)
      {
        goto LABEL_14;
      }
    }

    self->position_ = 0;
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
  if (remainingPostingsInDoc < 0 != v3)
  {
    return 2147483519;
  }

  if (self->posPendingFP_ != -1)
  {
    posIn = self->posIn_;
    if (!posIn)
    {
      goto LABEL_14;
    }

    [(OrgApacheLuceneStoreIndexInput *)posIn seekWithLong:?];
    self->posPendingFP_ = -1;
    self->posBufferUpto_ = 128;
  }

  if (self->posPendingCount_ > self->freqWithPostings_)
  {
    sub_10006D15C(self);
    self->posPendingCount_ = self->freqWithPostings_;
  }

  if (self->posBufferUpto_ == 128)
  {
    sub_10006C8B4(self);
    self->posBufferUpto_ = 0;
  }

  self->previousPosition_ = self->position_;
  posDeltaBuffer = self->posDeltaBuffer_;
  if (!posDeltaBuffer)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  posBufferUpto = self->posBufferUpto_;
  self->posBufferUpto_ = posBufferUpto + 1;
  size = posDeltaBuffer->super.size_;
  if (posBufferUpto < 0 || posBufferUpto >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, posBufferUpto);
  }

  self->position_ += *(&posDeltaBuffer->super.size_ + posBufferUpto + 1);
  --self->posPendingCount_;
  return self->position_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end