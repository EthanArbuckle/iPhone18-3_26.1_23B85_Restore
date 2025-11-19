@interface OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame
- (BOOL)next;
- (BOOL)nextNonLeaf;
- (int)getTermBlockOrd;
- (void)__javaClone;
- (void)dealloc;
- (void)decodeMetaData;
- (void)loadNextFloorBlock;
- (void)load__WithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)nextLeaf;
@end

@implementation OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame

- (void)loadNextFloorBlock
{
  while (1)
  {
    floorDataReader = self->floorDataReader_;
    if (!floorDataReader)
    {
LABEL_11:
      JreThrowNullPointerException();
    }

    fpOrig = self->fpOrig_;
    self->fp_ = fpOrig + ([(OrgApacheLuceneStoreByteArrayDataInput *)floorDataReader readVLong]>> 1);
    v5 = self->numFollowFloorBlocks_ - 1;
    self->numFollowFloorBlocks_ = v5;
    if (!v5)
    {
      break;
    }

    v6 = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
    self->nextFloorLabel_ = v6;
    if (!self->numFollowFloorBlocks_)
    {
      goto LABEL_8;
    }

    transition = self->transition_;
    if (!transition)
    {
      goto LABEL_11;
    }

    if (transition->min_ < v6)
    {
      goto LABEL_8;
    }
  }

  self->nextFloorLabel_ = 256;
LABEL_8:

  [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)self load__WithOrgApacheLuceneUtilBytesRef:0];
}

- (void)load__WithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (a3)
  {
    floorDataReader = self->floorDataReader_;
    if (!floorDataReader)
    {
      goto LABEL_33;
    }

    [(OrgApacheLuceneStoreByteArrayDataInput *)floorDataReader resetWithByteArray:*(a3 + 1) withInt:*(a3 + 4) withInt:*(a3 + 5)];
    if (([(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readVLong]& 1) != 0)
    {
      self->numFollowFloorBlocks_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readVInt];
      self->nextFloorLabel_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
      Weak = objc_loadWeak(&self->ite_);
      if (!Weak)
      {
        goto LABEL_33;
      }

      v6 = Weak[4];
      if (!v6)
      {
        goto LABEL_33;
      }

      if (([v6 isAcceptWithInt:self->state_] & 1) == 0 && self->transitionCount_ && self->numFollowFloorBlocks_)
      {
        while (1)
        {
          transition = self->transition_;
          if (!transition)
          {
            goto LABEL_33;
          }

          if (self->nextFloorLabel_ > transition->min_)
          {
            goto LABEL_15;
          }

          fpOrig = self->fpOrig_;
          self->fp_ = fpOrig + ([(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readVLong]>> 1);
          v9 = self->numFollowFloorBlocks_ - 1;
          self->numFollowFloorBlocks_ = v9;
          if (!v9)
          {
            break;
          }

          v10 = [(OrgApacheLuceneStoreByteArrayDataInput *)self->floorDataReader_ readByte];
          numFollowFloorBlocks = self->numFollowFloorBlocks_;
          self->nextFloorLabel_ = v10;
          if (!numFollowFloorBlocks)
          {
            goto LABEL_15;
          }
        }

        self->nextFloorLabel_ = 256;
      }
    }
  }

LABEL_15:
  v12 = objc_loadWeak(&self->ite_);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12[2];
  if (!v13)
  {
    goto LABEL_33;
  }

  [v13 seekWithLong:self->fp_];
  v14 = [*(objc_loadWeak(&self->ite_) + 2) readVInt];
  self->entCount_ = v14 >> 1;
  self->isLastInFloor_ = v14 & 1;
  v15 = [*(objc_loadWeak(&self->ite_) + 2) readVInt];
  suffixBytes = self->suffixBytes_;
  self->isLeafBlock_ = v15 & 1;
  if (!suffixBytes)
  {
    goto LABEL_33;
  }

  v23 = v15 >> 1;
  if (suffixBytes->super.size_ < v23)
  {
    v24 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v15 >> 1, 1, v16, v17, v18, v19, v20, v21)];
    JreStrongAssignAndConsume(&self->suffixBytes_, v24);
  }

  [*(objc_loadWeak(&self->ite_) + 2) readBytesWithByteArray:self->suffixBytes_ withInt:0 withInt:v23];
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader)
  {
    goto LABEL_33;
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader resetWithByteArray:self->suffixBytes_ withInt:0 withInt:v23];
  v26 = [*(objc_loadWeak(&self->ite_) + 2) readVInt];
  statBytes = self->statBytes_;
  if (!statBytes)
  {
    goto LABEL_33;
  }

  v34 = v26;
  if (statBytes->super.size_ < v26)
  {
    v35 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v26, 1, v27, v28, v29, v30, v31, v32)];
    JreStrongAssignAndConsume(&self->statBytes_, v35);
  }

  [*(objc_loadWeak(&self->ite_) + 2) readBytesWithByteArray:self->statBytes_ withInt:0 withInt:v34];
  statsReader = self->statsReader_;
  if (!statsReader)
  {
    goto LABEL_33;
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)statsReader resetWithByteArray:self->statBytes_ withInt:0 withInt:v34];
  self->metaDataUpto_ = 0;
  termState = self->termState_;
  if (!termState)
  {
    goto LABEL_33;
  }

  termState->termBlockOrd_ = 0;
  self->nextEnt_ = 0;
  v38 = [*(objc_loadWeak(&self->ite_) + 2) readVInt];
  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_33;
  }

  v46 = v38;
  if (bytes->super.size_ < v38)
  {
    v47 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v38, 1, v39, v40, v41, v42, v43, v44)];
    JreStrongAssignAndConsume(&self->bytes_, v47);
  }

  [*(objc_loadWeak(&self->ite_) + 2) readBytesWithByteArray:self->bytes_ withInt:0 withInt:v46];
  bytesReader = self->bytesReader_;
  if (!bytesReader)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreByteArrayDataInput *)bytesReader resetWithByteArray:self->bytes_ withInt:0 withInt:v46];
  if (!self->isLastInFloor_)
  {
    self->fpEnd_ = [*(objc_loadWeak(&self->ite_) + 2) getFilePointer];
  }

  self->isAutoPrefixTerm_ = 0;
}

- (BOOL)next
{
  if (self->isLeafBlock_)
  {
    [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)self nextLeaf:v2];
    return 0;
  }

  else
  {

    return [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)self nextNonLeaf];
  }
}

- (void)nextLeaf
{
  ++self->nextEnt_;
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader)
  {
    JreThrowNullPointerException();
  }

  self->suffix_ = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
  self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
  v4 = self->suffixesReader_;
  suffix = self->suffix_;

  [(OrgApacheLuceneStoreByteArrayDataInput *)v4 skipBytesWithLong:suffix];
}

- (BOOL)nextNonLeaf
{
  ++self->nextEnt_;
  suffixesReader = self->suffixesReader_;
  if (!suffixesReader)
  {
    goto LABEL_31;
  }

  v4 = [(OrgApacheLuceneStoreByteArrayDataInput *)suffixesReader readVInt];
  v5 = v4;
  if (!self->versionAutoPrefix_)
  {
    self->suffix_ = v4 >> 1;
    self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
    [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:self->suffix_];
    if ((v5 & 1) == 0)
    {
LABEL_7:
      termState = self->termState_;
      if (termState)
      {
        result = 0;
        ++termState->termBlockOrd_;
        return result;
      }

LABEL_31:
      JreThrowNullPointerException();
    }

    goto LABEL_16;
  }

  self->suffix_ = v4 >> 2;
  self->startBytePos_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ getPosition];
  [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ skipBytesWithLong:self->suffix_];
  if ((v5 & 3u) <= 1)
  {
    if ((v5 & 3) == 0)
    {
      self->isAutoPrefixTerm_ = 0;
      goto LABEL_7;
    }

    self->isAutoPrefixTerm_ = 0;
LABEL_16:
    fp = self->fp_;
    self->lastSubFP_ = fp - [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readVLong];
    return 1;
  }

  if ((v5 & 3) == 2)
  {
    self->floorSuffixLeadStart_ = -1;
    v8 = self->termState_;
    if (!v8)
    {
      goto LABEL_31;
    }

    ++v8->termBlockOrd_;
    v9 = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readByte];
    result = 0;
    if (v9 == -1)
    {
      v9 = -1;
    }

    else
    {
      v9 = v9;
    }

    self->floorSuffixLeadEnd_ = v9;
    self->isAutoPrefixTerm_ = 1;
    return result;
  }

  suffix = self->suffix_;
  if (suffix)
  {
    suffixBytes = self->suffixBytes_;
    if (!suffixBytes)
    {
      goto LABEL_31;
    }

    v13 = suffix + self->startBytePos_;
    size = suffixBytes->super.size_;
    v15 = (v13 - 1);
    if (v13 - 1 < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    Weak = objc_loadWeak(&self->ite_);
    if (!Weak)
    {
      goto LABEL_31;
    }

    v17 = Weak[3];
    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = *(v17 + 8);
    v19 = self->ord_ - 1;
    if (v19 < 0 || v19 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v19);
    }

    v20 = *(v17 + 24 + 8 * v19);
    if (!v20)
    {
      goto LABEL_31;
    }

    suffixBytes = *(v20 + 64);
    if (!suffixBytes)
    {
      goto LABEL_31;
    }

    v21 = *(v20 + 208) + *(v20 + 212);
    size = suffixBytes->super.size_;
    v15 = (v21 - 1);
    if (v21 - 1 < 0)
    {
LABEL_32:
      IOSArray_throwOutOfBoundsWithMsg(size, v15);
    }
  }

  if (v15 >= size)
  {
    goto LABEL_32;
  }

  self->floorSuffixLeadStart_ = *(&suffixBytes->super.size_ + v15 + 4);
  v22 = self->termState_;
  if (!v22)
  {
    goto LABEL_31;
  }

  ++v22->termBlockOrd_;
  self->isAutoPrefixTerm_ = 1;
  v23 = [(OrgApacheLuceneStoreByteArrayDataInput *)self->suffixesReader_ readByte];
  result = 0;
  self->floorSuffixLeadEnd_ = v23;
  return result;
}

- (int)getTermBlockOrd
{
  if (self->isLeafBlock_)
  {
    p_nextEnt = &self->nextEnt_;
  }

  else
  {
    termState = self->termState_;
    if (!termState)
    {
      JreThrowNullPointerException();
    }

    p_nextEnt = &termState->termBlockOrd_;
  }

  return *p_nextEnt;
}

- (void)decodeMetaData
{
  v3 = [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)self getTermBlockOrd];
  metaDataUpto = self->metaDataUpto_;
  if (metaDataUpto < v3)
  {
    v5 = v3;
    v6 = metaDataUpto == 0;
    while (1)
    {
      statsReader = self->statsReader_;
      if (!statsReader)
      {
        goto LABEL_25;
      }

      v8 = [(OrgApacheLuceneStoreByteArrayDataInput *)statsReader readVInt];
      termState = self->termState_;
      if (!termState)
      {
        goto LABEL_25;
      }

      termState->docFreq_ = v8;
      Weak = objc_loadWeak(&self->ite_);
      if (!Weak)
      {
        goto LABEL_25;
      }

      v11 = Weak[7];
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = [v12 getIndexOptions];
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      if (v13 != qword_100557378)
      {
        docFreq = self->termState_->docFreq_;
        self->termState_->totalTermFreq_ = [(OrgApacheLuceneStoreByteArrayDataInput *)self->statsReader_ readVLong]+ docFreq;
      }

      if (*(*(objc_loadWeak(&self->ite_) + 7) + 88) >= 1)
      {
        break;
      }

LABEL_20:
      v21 = objc_loadWeak(&self->ite_);
      v22 = objc_loadWeak((v21[7] + 96));
      if (!v22)
      {
        goto LABEL_25;
      }

      v23 = v22[2];
      if (!v23)
      {
        goto LABEL_25;
      }

      [v23 decodeTermWithLongArray:self->longs_ withOrgApacheLuceneStoreDataInput:self->bytesReader_ withOrgApacheLuceneIndexFieldInfo:*(*(objc_loadWeak(&self->ite_) + 7) + 16) withOrgApacheLuceneCodecsBlockTermState:self->termState_ withBoolean:v6];
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

      v17 = [(OrgApacheLuceneStoreByteArrayDataInput *)bytesReader readVLong];
      longs = self->longs_;
      if (!longs)
      {
        break;
      }

      v19 = v17;
      size = longs->super.size_;
      if (v15 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v15);
      }

      longs->buffer_[v15++] = v19;
      if (v15 >= *(*(objc_loadWeak(&self->ite_) + 7) + 88))
      {
        goto LABEL_20;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

LABEL_23:
  v24 = self->termState_;
  if (!v24)
  {
    goto LABEL_25;
  }

  v24->termBlockOrd_ = metaDataUpto;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame;
  [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame;
  [(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)&v3 __javaClone];
}

@end