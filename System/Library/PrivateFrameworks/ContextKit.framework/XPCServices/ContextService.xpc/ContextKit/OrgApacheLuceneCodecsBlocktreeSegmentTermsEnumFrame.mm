@interface OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame
+ (void)initialize;
- (BOOL)next;
- (BOOL)nextNonLeaf;
- (BOOL)prefixMatchesWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)fillTerm;
- (id)scanToTermLeafWithOrgApacheLuceneUtilBytesRef:(id)ref withBoolean:(BOOL)boolean;
- (id)scanToTermNonLeafWithOrgApacheLuceneUtilBytesRef:(id)ref withBoolean:(BOOL)boolean;
- (int)getTermBlockOrd;
- (void)__javaClone;
- (void)dealloc;
- (void)decodeMetaData;
- (void)loadBlock;
- (void)loadNextFloorBlock;
- (void)nextLeaf;
- (void)rewind;
- (void)scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)scanToSubBlockWithLong:(int64_t)long;
- (void)setFloorDataWithOrgApacheLuceneStoreByteArrayDataInput:(id)input withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame

- (void)setFloorDataWithOrgApacheLuceneStoreByteArrayDataInput:(id)input withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    goto LABEL_8;
  }

  if (!input)
  {
    goto LABEL_8;
  }

  v7 = *(ref + 5);
  getPosition = [input getPosition];
  floorData = self->floorData_;
  if (!floorData)
  {
    goto LABEL_8;
  }

  v16 = *(ref + 4);
  v17 = v16 - getPosition + v7;
  if (v17 > floorData->super.size_)
  {
    v18 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v17, 1, v9, v10, v11, v12, v13, v14);
    v19 = [IOSByteArray newArrayWithLength:JavaLangMath_maxWithInt_withInt_(32, v18)];
    JreStrongAssignAndConsume(&self->floorData_, v19);
    v16 = *(ref + 4);
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), [input getPosition] + v16, self->floorData_, 0, v17);
  floorDataReader = self->floorDataReader_;
  if (!floorDataReader)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)floorDataReader resetWithByteArray:self->floorData_ withInt:0 withInt:v17];
  self->numFollowFloorBlocks_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readVInt];
  self->nextFloorLabel_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
}

- (int)getTermBlockOrd
{
  if (self->isLeafBlock_)
  {
    p_nextEnt = &self->nextEnt_;
  }

  else
  {
    state = self->state_;
    if (!state)
    {
      JreThrowNullPointerException();
    }

    p_nextEnt = &state->termBlockOrd_;
  }

  return *p_nextEnt;
}

- (void)loadNextFloorBlock
{
  self->fp_ = self->fpEnd_;
  self->nextEnt_ = -1;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self loadBlock];
}

- (void)loadBlock
{
  Weak = objc_loadWeak(&self->ste_);
  if (!Weak)
  {
    goto LABEL_19;
  }

  [Weak initIndexInput];
  if (self->nextEnt_ != -1)
  {
    return;
  }

  v4 = *(objc_loadWeak(&self->ste_) + 2);
  if (!v4)
  {
    goto LABEL_19;
  }

  [v4 seekWithLong:self->fp_];
  readVInt = [*(objc_loadWeak(&self->ste_) + 2) readVInt];
  self->entCount_ = readVInt >> 1;
  self->isLastInFloor_ = readVInt & 1;
  readVInt2 = [*(objc_loadWeak(&self->ste_) + 2) readVInt];
  suffixBytes = self->suffixBytes_;
  self->isLeafBlock_ = readVInt2 & 1;
  if (!suffixBytes)
  {
    goto LABEL_19;
  }

  v14 = readVInt2 >> 1;
  if (suffixBytes->super.size_ < v14)
  {
    v15 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(readVInt2 >> 1, 1, v7, v8, v9, v10, v11, v12);
    v16 = [IOSByteArray newArrayWithLength:JavaLangMath_maxWithInt_withInt_(128, v15)];
    JreStrongAssignAndConsume(&self->suffixBytes_, v16);
  }

  [*(objc_loadWeak(&self->ste_) + 2) readBytesWithByteArray:self->suffixBytes_ withInt:0 withInt:v14];
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader)
  {
    goto LABEL_19;
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader resetWithByteArray:self->suffixBytes_ withInt:0 withInt:v14];
  readVInt3 = [*(objc_loadWeak(&self->ste_) + 2) readVInt];
  statBytes = self->statBytes_;
  if (!statBytes)
  {
    goto LABEL_19;
  }

  v26 = readVInt3;
  if (statBytes->super.size_ < readVInt3)
  {
    v27 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(readVInt3, 1, v19, v20, v21, v22, v23, v24);
    v28 = [IOSByteArray newArrayWithLength:JavaLangMath_maxWithInt_withInt_(64, v27)];
    JreStrongAssignAndConsume(&self->statBytes_, v28);
  }

  [*(objc_loadWeak(&self->ste_) + 2) readBytesWithByteArray:self->statBytes_ withInt:0 withInt:v26];
  statsReader = self->statsReader_;
  if (!statsReader)
  {
    goto LABEL_19;
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)statsReader resetWithByteArray:self->statBytes_ withInt:0 withInt:v26];
  self->metaDataUpto_ = 0;
  state = self->state_;
  if (!state)
  {
    goto LABEL_19;
  }

  state->termBlockOrd_ = 0;
  self->nextEnt_ = 0;
  self->lastSubFP_ = -1;
  readVInt4 = [*(objc_loadWeak(&self->ste_) + 2) readVInt];
  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_19;
  }

  v39 = readVInt4;
  if (bytes->super.size_ < readVInt4)
  {
    v40 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(readVInt4, 1, v32, v33, v34, v35, v36, v37);
    v41 = [IOSByteArray newArrayWithLength:JavaLangMath_maxWithInt_withInt_(32, v40)];
    JreStrongAssignAndConsume(&self->bytes_, v41);
  }

  [*(objc_loadWeak(&self->ste_) + 2) readBytesWithByteArray:self->bytes_ withInt:0 withInt:v39];
  bytesReader = self->bytesReader_;
  if (!bytesReader)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)bytesReader resetWithByteArray:self->bytes_ withInt:0 withInt:v39];
  self->fpEnd_ = [*(objc_loadWeak(&self->ste_) + 2) getFilePointer];
}

- (void)rewind
{
  self->fp_ = self->fpOrig_;
  self->nextEnt_ = -1;
  self->hasTerms_ = self->hasTermsOrig_;
  if (self->isFloor_)
  {
    floorDataReader = self->floorDataReader_;
    if (!floorDataReader)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneStoreByteArrayDataInput *)floorDataReader rewind];
    self->numFollowFloorBlocks_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readVInt];
    self->nextFloorLabel_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
  }
}

- (BOOL)next
{
  if (self->isLeafBlock_)
  {
    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self nextLeaf:v2];
    return 0;
  }

  else
  {

    return [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self nextNonLeaf];
  }
}

- (void)nextLeaf
{
  ++self->nextEnt_;
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader || (self->suffix_ = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt], self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition], (Weak = objc_loadWeak(&self->ste_)) == 0) || (v5 = Weak[6]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v5 setLengthWithInt:(self->suffix_ + self->prefix_)];
  v6 = *(objc_loadWeak(&self->ste_) + 6);
  [v6 growWithInt:{objc_msgSend(*(objc_loadWeak(&self->ste_) + 6), "length")}];
  -[OrgApacheLuceneStoreByteArrayDataInput readBytesWithByteArray:withInt:withInt:](self->suffixesReader_, "readBytesWithByteArray:withInt:withInt:", [*(objc_loadWeak(&self->ste_) + 6) bytes], self->prefix_, self->suffix_);
  *(objc_loadWeak(&self->ste_) + 32) = 1;
}

- (BOOL)nextNonLeaf
{
  while (1)
  {
    while (1)
    {
      nextEnt = self->nextEnt_;
      if (nextEnt != self->entCount_)
      {
        break;
      }

      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self loadNextFloorBlock];
      if (self->isLeafBlock_)
      {
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self nextLeaf];
        return 0;
      }
    }

    self->nextEnt_ = nextEnt + 1;
    suffixesReader = self->suffixesReader_;
    if (!suffixesReader)
    {
      goto LABEL_21;
    }

    readVInt = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
    v6 = readVInt;
    if (!self->versionAutoPrefix_)
    {
      self->suffix_ = readVInt >> 1;
      self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
      Weak = objc_loadWeak(&self->ste_);
      if (!Weak)
      {
        goto LABEL_21;
      }

      v13 = Weak[6];
      if (!v13)
      {
        goto LABEL_21;
      }

      [v13 setLengthWithInt:(self->suffix_ + self->prefix_)];
      v14 = *(objc_loadWeak(&self->ste_) + 6);
      [v14 growWithInt:{objc_msgSend(*(objc_loadWeak(&self->ste_) + 6), "length")}];
      -[OrgApacheLuceneStoreByteArrayDataInput readBytesWithByteArray:withInt:withInt:](self->suffixesReader_, "readBytesWithByteArray:withInt:withInt:", [*(objc_loadWeak(&self->ste_) + 6) bytes], self->prefix_, self->suffix_);
      v15 = objc_loadWeak(&self->ste_);
      if (v6)
      {
        goto LABEL_17;
      }

LABEL_19:
      v15[32] = 1;
      self->subCode_ = 0;
      state = self->state_;
      if (state)
      {
        result = 0;
        ++state->termBlockOrd_;
        return result;
      }

LABEL_21:
      JreThrowNullPointerException();
    }

    self->suffix_ = readVInt >> 2;
    self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
    v7 = objc_loadWeak(&self->ste_);
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = v7[6];
    if (!v8)
    {
      goto LABEL_21;
    }

    [v8 setLengthWithInt:(self->suffix_ + self->prefix_)];
    v9 = *(objc_loadWeak(&self->ste_) + 6);
    [v9 growWithInt:{objc_msgSend(*(objc_loadWeak(&self->ste_) + 6), "length")}];
    -[OrgApacheLuceneStoreByteArrayDataInput readBytesWithByteArray:withInt:withInt:](self->suffixesReader_, "readBytesWithByteArray:withInt:withInt:", [*(objc_loadWeak(&self->ste_) + 6) bytes], self->prefix_, self->suffix_);
    if ((v6 & 3u) - 2 >= 2)
    {
      break;
    }

    v10 = self->state_;
    if (!v10)
    {
      goto LABEL_21;
    }

    ++v10->termBlockOrd_;
    [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readByte];
  }

  p_ste = &self->ste_;
  if ((v6 & 3) != 1)
  {
    v15 = objc_loadWeak(p_ste);
    goto LABEL_19;
  }

  v15 = objc_loadWeak(p_ste);
LABEL_17:
  v15[32] = 0;
  readVLong = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readVLong];
  self->subCode_ = readVLong;
  self->lastSubFP_ = self->fp_ - readVLong;
  return 1;
}

- (void)scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (self->isFloor_)
  {
    if (!ref)
    {
      goto LABEL_16;
    }

    prefix = self->prefix_;
    if (*(ref + 5) <= prefix)
    {
      return;
    }

    v5 = *(ref + 1);
    if (!v5)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v6 = *(v5 + 8);
    v7 = *(ref + 4) + prefix;
    if (v7 < 0 || v7 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, v7);
    }

    v8 = *(v5 + 12 + v7);
    if (self->nextFloorLabel_ <= v8)
    {
      while (1)
      {
        floorDataReader = self->floorDataReader_;
        if (!floorDataReader)
        {
          goto LABEL_16;
        }

        readVLong = [(OrgApacheLuceneStoreByteArrayDataInput *)floorDataReader readVLong];
        fpOrig = self->fpOrig_;
        self->hasTerms_ = readVLong & 1;
        v12 = self->numFollowFloorBlocks_ - 1;
        self->isLastInFloor_ = self->numFollowFloorBlocks_ == 1;
        self->numFollowFloorBlocks_ = v12;
        if (!v12)
        {
          break;
        }

        readByte = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
        self->nextFloorLabel_ = readByte;
        if (v8 < readByte)
        {
          goto LABEL_13;
        }
      }

      self->nextFloorLabel_ = 256;
LABEL_13:
      v14 = fpOrig + (readVLong >> 1);
      if (v14 != self->fp_)
      {
        self->nextEnt_ = -1;
        self->fp_ = v14;
      }
    }
  }
}

- (void)decodeMetaData
{
  getTermBlockOrd = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self getTermBlockOrd];
  metaDataUpto = self->metaDataUpto_;
  if (metaDataUpto < getTermBlockOrd)
  {
    v5 = getTermBlockOrd;
    v6 = metaDataUpto == 0;
    while (1)
    {
      statsReader = self->statsReader_;
      if (!statsReader)
      {
        goto LABEL_25;
      }

      readVInt = [(OrgApacheLuceneStoreByteArrayDataInput *)statsReader readVInt];
      state = self->state_;
      if (!state)
      {
        goto LABEL_25;
      }

      state->docFreq_ = readVInt;
      Weak = objc_loadWeak(&self->ste_);
      if (!Weak)
      {
        goto LABEL_25;
      }

      v11 = Weak[5];
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_25;
      }

      getIndexOptions = [v12 getIndexOptions];
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      if (getIndexOptions != qword_100557378)
      {
        docFreq = self->state_->docFreq_;
        self->state_->totalTermFreq_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->statsReader_ readVLong]+ docFreq;
      }

      if (*(*(objc_loadWeak(&self->ste_) + 5) + 88) >= 1)
      {
        break;
      }

LABEL_20:
      v21 = objc_loadWeak(&self->ste_);
      v22 = objc_loadWeak((v21[5] + 96));
      if (!v22)
      {
        goto LABEL_25;
      }

      v23 = v22[2];
      if (!v23)
      {
        goto LABEL_25;
      }

      [v23 decodeTermWithLongArray:self->longs_ withOrgApacheLuceneStoreDataInput:self->bytesReader_ withOrgApacheLuceneIndexFieldInfo:*(*(objc_loadWeak(&self->ste_) + 5) + 16) withOrgApacheLuceneCodecsBlockTermState:self->state_ withBoolean:v6];
      v6 = 0;
      metaDataUpto = self->metaDataUpto_ + 1;
      self->metaDataUpto_ = metaDataUpto;
      if (metaDataUpto >= v5)
      {
        goto LABEL_23;
      }
    }

    v15 = 0;
    while (1)
    {
      bytesReader = self->bytesReader_;
      if (!bytesReader)
      {
        break;
      }

      readVLong = [(OrgApacheLuceneStoreByteArrayDataInput *)bytesReader readVLong];
      longs = self->longs_;
      if (!longs)
      {
        break;
      }

      v19 = readVLong;
      size = longs->super.size_;
      if (v15 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v15);
      }

      longs->buffer_[v15++] = v19;
      if (v15 >= *(*(objc_loadWeak(&self->ste_) + 5) + 88))
      {
        goto LABEL_20;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

LABEL_23:
  v24 = self->state_;
  if (!v24)
  {
    goto LABEL_25;
  }

  v24->termBlockOrd_ = metaDataUpto;
}

- (BOOL)prefixMatchesWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (self->prefix_ >= 1)
  {
    if (ref)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(ref + 1);
        if (!v6)
        {
          break;
        }

        v7 = *(v6 + 8);
        v8 = v5 + *(ref + 4);
        if (v8 < 0 || v8 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v8);
        }

        v9 = *(v6 + 12 + v8);
        Weak = objc_loadWeak(&self->ste_);
        if (!Weak)
        {
          break;
        }

        v11 = Weak[6];
        if (!v11)
        {
          break;
        }

        result = v9 == [v11 byteAtWithInt:v5];
        if (result)
        {
          v5 = (v5 + 1);
          if (v5 < self->prefix_)
          {
            continue;
          }
        }

        return result;
      }
    }

    JreThrowNullPointerException();
  }

  return 1;
}

- (void)scanToSubBlockWithLong:(int64_t)long
{
  if (self->lastSubFP_ != long)
  {
    fp = self->fp_;
    ++self->nextEnt_;
    suffixesReader = self->suffixesReader_;
    if (!suffixesReader)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    v7 = (fp - long);
    while (1)
    {
      readVInt = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
      v9 = readVInt;
      if (self->versionAutoPrefix_)
      {
        v10 = readVInt & 3;
        [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:readVInt >> 2];
        if (v10 != 1)
        {
          state = self->state_;
          if (!state)
          {
            goto LABEL_14;
          }

          ++state->termBlockOrd_;
          if ((v9 & 2) != 0)
          {
            [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readByte];
          }

          goto LABEL_13;
        }
      }

      else
      {
        [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:readVInt >> 1];
        if ((v9 & 1) == 0)
        {
          v12 = self->state_;
          if (!v12)
          {
            goto LABEL_14;
          }

          ++v12->termBlockOrd_;
          goto LABEL_13;
        }
      }

      if (v7 == [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readVLong])
      {
        self->lastSubFP_ = long;
        return;
      }

LABEL_13:
      ++self->nextEnt_;
      suffixesReader = self->suffixesReader_;
      if (!suffixesReader)
      {
        goto LABEL_14;
      }
    }
  }
}

- (id)scanToTermLeafWithOrgApacheLuceneUtilBytesRef:(id)ref withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  Weak = objc_loadWeak(&self->ste_);
  if (!Weak)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  Weak[32] = 1;
  self->subCode_ = 0;
  nextEnt = self->nextEnt_;
  if (nextEnt == self->entCount_)
  {
    if (!booleanCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v31 = booleanCopy;
  v11 = &OBJC_IVAR___IOSByteArray_buffer_;
LABEL_8:
  self->nextEnt_ = nextEnt + 1;
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader)
  {
    goto LABEL_35;
  }

  v13 = v11;
  readVInt = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
  self->suffix_ = readVInt;
  prefix = self->prefix_;
  self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
  [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:self->suffix_];
  if (!ref)
  {
    goto LABEL_35;
  }

  v16 = prefix + readVInt;
  v17 = *(ref + 4);
  v18 = *(ref + 5);
  if (v18 >= prefix + readVInt)
  {
    v18 = prefix + readVInt;
  }

  v19 = v18 + v17;
  v20 = (self->prefix_ + v17);
  startBytePos = self->startBytePos_;
  v11 = v13;
  do
  {
    if (v20 >= v19)
    {
      v29 = v16 - *(ref + 5);
      v28 = v20;
      if (v29 < 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      suffixBytes = self->suffixBytes_;
      if (!suffixBytes)
      {
        goto LABEL_35;
      }

      size = suffixBytes->super.size_;
      if ((startBytePos & 0x80000000) != 0 || startBytePos >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, startBytePos);
      }

      v24 = *(ref + 1);
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = *v13;
      v26 = *(&suffixBytes->super.super.isa + v25 + startBytePos);
      v27 = *(v24 + 8);
      if ((v20 & 0x80000000) != 0 || v20 >= v27)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, v20);
      }

      startBytePos = (startBytePos + 1);
      v28 = (v20 + 1);
      v29 = v26 - *(v24 + v25 + v20);
      if (v29 < 0)
      {
LABEL_28:
        nextEnt = self->nextEnt_;
        if (nextEnt == self->entCount_)
        {
          if (!v31)
          {
LABEL_5:
            v9 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
            if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
            {
              return *v9;
            }

LABEL_32:
            objc_opt_class();
            return *v9;
          }

LABEL_4:
          [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
          goto LABEL_5;
        }

        goto LABEL_8;
      }
    }

    if (v29)
    {
      [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
      v9 = &qword_100557A50;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v9;
      }

      goto LABEL_32;
    }

    v30 = v20 < v19;
    v20 = v28;
  }

  while (v30);
  [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
  v9 = &qword_100557A48;
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_32;
  }

  return *v9;
}

- (id)fillTerm
{
  v2 = *(self + 104);
  v3 = *(self + 188);
  Weak = objc_loadWeak((self + 176));
  if (!Weak || (v5 = Weak[6]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v5 setLengthWithInt:(v3 + v2)];
  [*(objc_loadWeak((self + 176)) + 6) growWithInt:(v3 + v2)];
  v6 = *(self + 56);
  v7 = *(self + 184);
  bytes = [*(objc_loadWeak((self + 176)) + 6) bytes];
  v9 = *(self + 104);
  v10 = *(self + 188);

  return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v6, v7, bytes, v9, v10);
}

- (id)scanToTermNonLeafWithOrgApacheLuceneUtilBytesRef:(id)ref withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  entCount = self->entCount_;
  nextEnt = self->nextEnt_;
  if (nextEnt == entCount)
  {
    if (!boolean)
    {
      goto LABEL_49;
    }

    [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
    subCode = self->subCode_;
    Weak = objc_loadWeak(&self->ste_);
    if (Weak)
    {
      Weak[32] = subCode == 0;
      goto LABEL_49;
    }

    goto LABEL_64;
  }

  if (nextEnt >= entCount)
  {
LABEL_47:
    if (booleanCopy)
    {
      [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
    }

LABEL_49:
    v40 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_61;
    }

    return *v40;
  }

  while (1)
  {
    self->nextEnt_ = nextEnt + 1;
    suffixesReader = self->suffixesReader_;
    if (!suffixesReader)
    {
      goto LABEL_64;
    }

    readVInt = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
    v13 = readVInt;
    if (self->versionAutoPrefix_)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = readVInt >> v14;
    self->suffix_ = readVInt >> v14;
    prefix = self->prefix_;
    self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
    [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:self->suffix_];
    if (!self->versionAutoPrefix_)
    {
      v19 = objc_loadWeak(&self->ste_);
      if (v19)
      {
        v19[32] = (v13 & 1) == 0;
        if (*(objc_loadWeak(&self->ste_) + 32) != 1)
        {
          goto LABEL_24;
        }

        state = self->state_;
        if (state)
        {
          ++state->termBlockOrd_;
          self->subCode_ = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_64;
    }

    if ((v13 & 3u) - 2 >= 2)
    {
      break;
    }

    [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readByte];
    v17 = objc_loadWeak(&self->ste_);
    if (!v17)
    {
      goto LABEL_64;
    }

    v17[32] = 0;
    v18 = self->state_;
    if (!v18)
    {
      goto LABEL_64;
    }

    ++v18->termBlockOrd_;
LABEL_15:
    nextEnt = self->nextEnt_;
    if (nextEnt >= self->entCount_)
    {
      goto LABEL_47;
    }
  }

  p_ste = &self->ste_;
  if ((v13 & 3) != 1)
  {
    v24 = objc_loadWeak(p_ste);
    if (v24)
    {
      v24[32] = 1;
      v25 = self->state_;
      if (v25)
      {
        ++v25->termBlockOrd_;
        self->subCode_ = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_64;
  }

  v22 = objc_loadWeak(p_ste);
  if (!v22)
  {
    goto LABEL_64;
  }

  v22[32] = 0;
LABEL_24:
  readVLong = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readVLong];
  self->subCode_ = readVLong;
  self->lastSubFP_ = self->fp_ - readVLong;
LABEL_28:
  if (!ref)
  {
    goto LABEL_64;
  }

  v26 = v15 + prefix;
  v27 = *(ref + 4);
  v28 = *(ref + 5);
  if (v28 >= v26)
  {
    v28 = v15 + prefix;
  }

  v29 = v28 + v27;
  v30 = (self->prefix_ + v27);
  startBytePos = self->startBytePos_;
  while (2)
  {
    if (v30 >= v29)
    {
      v38 = v26 - *(ref + 5);
      v37 = v30;
      if (v38 < 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      suffixBytes = self->suffixBytes_;
      if (!suffixBytes)
      {
        goto LABEL_64;
      }

      size = suffixBytes->super.size_;
      if ((startBytePos & 0x80000000) != 0 || startBytePos >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, startBytePos);
      }

      v34 = *(ref + 1);
      if (!v34)
      {
        goto LABEL_64;
      }

      v35 = *(&suffixBytes->super.size_ + startBytePos + 4);
      v36 = *(v34 + 8);
      if ((v30 & 0x80000000) != 0 || v30 >= v36)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, v30);
      }

      startBytePos = (startBytePos + 1);
      v37 = (v30 + 1);
      v38 = v35 - *(v34 + 12 + v30);
      if (v38 < 0)
      {
        goto LABEL_15;
      }
    }

    if (v38)
    {
      [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
      if (booleanCopy)
      {
        goto LABEL_60;
      }

      v42 = objc_loadWeak(&self->ste_);
      if (!v42)
      {
        goto LABEL_64;
      }

      if (v42[32])
      {
        goto LABEL_60;
      }

      v43 = objc_loadWeak(&self->ste_);
      v44 = objc_loadWeak(&self->ste_);
      v45 = *(objc_loadWeak(&self->ste_) + 3);
      if (!v45)
      {
        goto LABEL_64;
      }

      JreStrongAssign(v43 + 3, [v44 pushFrameWithOrgApacheLuceneUtilFstFST_Arc:0 withLong:*(v45 + 120) withInt:v26]);
      v46 = *(objc_loadWeak(&self->ste_) + 3);
      if (!v46)
      {
        goto LABEL_64;
      }

      [v46 loadBlock];
      if (![*(objc_loadWeak(&self->ste_) + 3) next])
      {
LABEL_60:
        v40 = &qword_100557A50;
        if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_61;
        }

        return *v40;
      }

      while (1)
      {
        v47 = objc_loadWeak(&self->ste_);
        v48 = objc_loadWeak(&self->ste_);
        v49 = *(*(objc_loadWeak(&self->ste_) + 3) + 120);
        v50 = *(objc_loadWeak(&self->ste_) + 6);
        if (!v50)
        {
          break;
        }

        JreStrongAssign(v47 + 3, [v48 pushFrameWithOrgApacheLuceneUtilFstFST_Arc:0 withLong:v49 withInt:{objc_msgSend(v50, "length")}]);
        v51 = *(objc_loadWeak(&self->ste_) + 3);
        if (!v51)
        {
          break;
        }

        [v51 loadBlock];
        if (([*(objc_loadWeak(&self->ste_) + 3) next] & 1) == 0)
        {
          goto LABEL_60;
        }
      }

LABEL_64:
      JreThrowNullPointerException();
    }

    v39 = v30 < v29;
    v30 = v37;
    if (v39)
    {
      continue;
    }

    break;
  }

  [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame fillTerm]_0(self);
  v40 = &qword_100557A48;
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
LABEL_61:
    objc_opt_class();
  }

  return *v40;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)&v3 __javaClone];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100553E70, [IOSByteArray newArrayWithLength:0]);
    atomic_store(1u, &OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame__initialized);
  }
}

@end