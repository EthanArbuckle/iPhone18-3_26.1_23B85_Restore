@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum
- (BOOL)canReuseWithOrgApacheLuceneStoreIndexInput:(id)input withOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)state withInt:(int)int;
- (int)nextDoc;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum

- (BOOL)canReuseWithOrgApacheLuceneStoreIndexInput:(id)input withOrgApacheLuceneIndexFieldInfo:(id)info
{
  if (self->startDocIn_ == input)
  {
    if (!info)
    {
      goto LABEL_13;
    }

    indexHasFreq = self->indexHasFreq_;
    getIndexOptions = [info getIndexOptions];
    if (!getIndexOptions)
    {
      goto LABEL_13;
    }

    v8 = getIndexOptions;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexHasFreq != [v8 compareToWithId:qword_100557380] >= 0)
    {
      return 0;
    }

    indexHasPos = self->indexHasPos_;
    getIndexOptions2 = [info getIndexOptions];
    if (!getIndexOptions2)
    {
LABEL_13:
      JreThrowNullPointerException();
    }

    v11 = getIndexOptions2;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexHasPos == [v11 compareToWithId:qword_100557388] >= 0)
    {
      indexHasPayloads = self->indexHasPayloads_;
      return indexHasPayloads == [info hasPayloads];
    }
  }

  return 0;
}

- (id)resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:(id)state withInt:(int)int
{
  if (!state)
  {
    goto LABEL_13;
  }

  v6 = *(state + 4);
  self->docFreq_ = v6;
  if (self->indexHasFreq_)
  {
    v6 = *(state + 3);
  }

  self->totalTermFreq_ = v6;
  self->docTermStartFP_ = *(state + 7);
  self->skipOffset_ = *(state + 10);
  self->singletonDocID_ = *(state + 24);
  if (self->docFreq_ >= 2)
  {
    docIn = self->docIn_;
    if (docIn || (startDocIn = self->startDocIn_) != 0 && (JreStrongAssign(&self->docIn_, [(OrgApacheLuceneStoreIndexInput *)startDocIn clone]), (docIn = self->docIn_) != 0))
    {
      [(OrgApacheLuceneStoreIndexInput *)docIn seekWithLong:self->docTermStartFP_];
      goto LABEL_9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_9:
  self->doc_ = -1;
  v9 = OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 8);
  self->needsFreq_ = v9;
  if (!self->indexHasFreq_ || !v9)
  {
    JavaUtilArrays_fillWithIntArray_withInt_(self->freqBuffer_, 1);
    JavaUtilArrays_fillWithIntArray_withInt_(self->freqPostingDeltaBuffer_, 0);
    self->remainingPostingsInDoc_ = 0;
  }

  self->accum_ = 0;
  self->docUpto_ = 0;
  self->nextSkipDoc_ = 127;
  self->docBufferUpto_ = 128;
  self->skipped_ = 0;
  return self;
}

- (int)nextDoc
{
  if (self->docUpto_ == self->docFreq_)
  {
    result = 0x7FFFFFFF;
    self->doc_ = 0x7FFFFFFF;
  }

  else
  {
    if (self->docBufferUpto_ == 128)
    {
      sub_10006B8A0(self);
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
    ++self->docUpto_;
    self->doc_ = self->accum_;
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
    self->remainingPostingsInDoc_ = self->freqWithPostings_;
    ++self->docBufferUpto_;
    return self->doc_;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end