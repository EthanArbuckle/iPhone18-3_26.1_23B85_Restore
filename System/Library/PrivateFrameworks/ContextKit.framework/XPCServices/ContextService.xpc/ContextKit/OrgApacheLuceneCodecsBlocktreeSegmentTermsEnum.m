@interface OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum
+ (void)initialize;
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)computeBlockStats;
- (id)next;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)term;
- (id)termState;
- (int)docFreq;
- (int64_t)totalTermFreq;
- (void)dealloc;
- (void)initIndexInput;
- (void)printSeekStateWithJavaIoPrintStream:(id)a3;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4;
@end

@implementation OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum

- (void)initIndexInput
{
  if (!self->in_)
  {
    fr = self->fr_;
    if (!fr || (Weak = objc_loadWeak(&fr->parent_)) == 0 || (v5 = Weak[1]) == 0)
    {
      JreThrowNullPointerException();
    }

    v6 = [v5 clone];

    JreStrongAssign(&self->in_, v6);
  }
}

- (id)computeBlockStats
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_37;
  }

  Weak = objc_loadWeak(&fr->parent_);
  if (!Weak)
  {
    goto LABEL_37;
  }

  fieldInfo = self->fr_->fieldInfo_;
  if (!fieldInfo)
  {
    goto LABEL_37;
  }

  v6 = new_OrgApacheLuceneCodecsBlocktreeStats_initWithNSString_withNSString_(Weak[3], fieldInfo->name_);
  index = self->fr_->index_;
  if (index)
  {
    v6->indexNumBytes_ = [(OrgApacheLuceneUtilFstFST *)index ramBytesUsed];
  }

  JreStrongAssign(&self->currentFrame_, self->staticFrame_);
  v8 = self->fr_;
  v9 = v8->index_;
  if (v9)
  {
    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_37;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    v12 = [(OrgApacheLuceneUtilFstFST *)v9 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    v8 = self->fr_;
  }

  else
  {
    v12 = 0;
  }

  JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v12 withOrgApacheLuceneUtilBytesRef:v8->rootCode_ withInt:0]);
  self->currentFrame_->fpOrig_ = self->currentFrame_->fp_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
  self->validIndexPrefix_ = 0;
  isLastInFloor = self->currentFrame_->isLastInFloor_;
  [OrgApacheLuceneCodecsBlocktreeStats startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:v6 withBoolean:"startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:withBoolean:"];
  v14 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  while (1)
  {
    currentFrame = self->currentFrame_;
    if (currentFrame->nextEnt_ == currentFrame->entCount_)
    {
      break;
    }

LABEL_22:
    while (1)
    {
      v25 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame next];
      v26 = *(&self->super.super.isa + v14[1018]);
      if (!v25)
      {
        break;
      }

      if (!v26)
      {
        goto LABEL_37;
      }

      JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withLong:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withLong:withInt:", 0, self->currentFrame_->lastSubFP_, [v26 length]));
      self->currentFrame_->fpOrig_ = self->currentFrame_->fp_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      v22 = self->currentFrame_;
      v24 = !v22->isLastInFloor_;
      v23 = v6;
LABEL_25:
      [(OrgApacheLuceneCodecsBlocktreeStats *)v23 startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:v22 withBoolean:v24];
      currentFrame = self->currentFrame_;
      if (!currentFrame)
      {
        goto LABEL_37;
      }
    }

    if (!v26)
    {
      goto LABEL_37;
    }

    -[OrgApacheLuceneCodecsBlocktreeStats termWithOrgApacheLuceneUtilBytesRef:](v6, "termWithOrgApacheLuceneUtilBytesRef:", [v26 get]);
  }

  while (1)
  {
    [(OrgApacheLuceneCodecsBlocktreeStats *)v6 endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:?];
    v16 = self->currentFrame_;
    if (!v16->isLastInFloor_)
    {
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v16 loadNextFloorBlock];
      v22 = self->currentFrame_;
      v23 = v6;
      v24 = 1;
      goto LABEL_25;
    }

    v17 = v14;
    ord = v16->ord_;
    if (!ord)
    {
      break;
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_37;
    }

    v20 = stack->super.size_;
    v21 = ord - 1;
    if (v21 < 0 || v21 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v21);
    }

    JreStrongAssign(&self->currentFrame_, (&stack->elementType_)[v21]);
    currentFrame = self->currentFrame_;
    v14 = v17;
    if (currentFrame->nextEnt_ != currentFrame->entCount_)
    {
      goto LABEL_22;
    }
  }

  [(OrgApacheLuceneCodecsBlocktreeStats *)v6 finish];
  JreStrongAssign(&self->currentFrame_, self->staticFrame_);
  v27 = self->fr_;
  v28 = v27->index_;
  if (!v28)
  {
    v31 = 0;
    goto LABEL_34;
  }

  v29 = self->arcs_;
  if (!v29)
  {
    goto LABEL_37;
  }

  v30 = v29->super.size_;
  if (v30 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, 0);
  }

  v31 = [(OrgApacheLuceneUtilFstFST *)v28 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v29->elementType_];
  v27 = self->fr_;
LABEL_34:
  JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v31 withOrgApacheLuceneUtilBytesRef:v27->rootCode_ withInt:0]);
  v32 = self->currentFrame_;
  if (!v32 || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v32 rewind], [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock], self->validIndexPrefix_ = 0, (v33 = *(&self->super.super.isa + v14[1018])) == 0))
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  [v33 clear];
  return v6;
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_95;
  }

  if (!fr->index_)
  {
    v67 = new_JavaLangIllegalStateException_initWithNSString_(@"terms index was not loaded");
    objc_exception_throw(v67);
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_95;
  }

  if (!a3)
  {
    goto LABEL_95;
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)term growWithInt:(*(a3 + 5) + 1)];
  currentFrame = self->currentFrame_;
  if (!currentFrame)
  {
    goto LABEL_95;
  }

  self->targetBeforeCurrentLength_ = currentFrame->ord_;
  if (self->currentFrame_ == self->staticFrame_)
  {
    self->targetBeforeCurrentLength_ = -1;
    index = self->fr_->index_;
    if (!index)
    {
      goto LABEL_95;
    }

    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_95;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    elementType = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    isa = elementType[2].super.isa;
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000DF878();
    }

    if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
    {
      goto LABEL_95;
    }

    JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], 0));
    v15 = 0;
  }

  else
  {
    v8 = self->arcs_;
    if (!v8)
    {
      goto LABEL_95;
    }

    v9 = v8->super.size_;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_95;
    }

    elementType = v8->elementType_;
    isa = elementType[2].super.isa;
    v13 = stack->super.size_;
    if (v13 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, 0);
    }

    v68 = stack->elementType_;
    v14 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), self->validIndexPrefix_);
    if (v14 < 1)
    {
      v15 = 0;
LABEL_43:
      v43 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]);
      if (v15 < v43)
      {
        v44 = v43;
        v45 = v15;
        do
        {
          v46 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v45];
          v47 = *(a3 + 1);
          if (!v47)
          {
            goto LABEL_95;
          }

          v48 = v46;
          v49 = *(v47 + 8);
          v50 = v45 + *(a3 + 4);
          if (v50 < 0 || v50 >= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v49, v50);
          }

          v51 = *(v47 + 12 + v50);
          v30 = v48 - v51;
          if (v48 != v51)
          {
            goto LABEL_53;
          }

          v45 = (v45 + 1);
        }

        while (v44 != v45);
      }

      v30 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]- *(a3 + 5);
LABEL_53:
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v15 = v14;
      v16 = 0;
      v17 = v14;
      while (1)
      {
        v18 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v16];
        v25 = *(a3 + 1);
        if (!v25)
        {
          goto LABEL_95;
        }

        v26 = v18;
        v27 = v16 + *(a3 + 4);
        v28 = *(v25 + 8);
        if (v27 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v16 + *(a3 + 4));
        }

        v29 = *(v25 + 12 + v27);
        v30 = v26 - v29;
        if (v26 != v29)
        {
          break;
        }

        v31 = self->arcs_;
        v32 = v16 + 1;
        v33 = v31->super.size_;
        if (v16 + 1 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v16 + 1));
        }

        elementType = (&v31->elementType_)[v16 + 1];
        v34 = elementType[2].super.isa;
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (v34 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
        {
          if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000DF878();
          }

          if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
          {
            goto LABEL_95;
          }

          isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
        }

        if ([(IOSClass *)elementType isFinal])
        {
          if (!v68)
          {
            goto LABEL_95;
          }

          v35 = self->stack_;
          v36 = v35->super.size_;
          v37 = v68[2] + 1;
          v38 = v37;
          if (v37 < 0 || v37 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, v37);
          }

          v39 = (&v35->elementType_)[v37];
          v68 = (&v35->elementType_)[v38];
        }

        v16 = v32;
        if (v17 == v32)
        {
          goto LABEL_43;
        }
      }

      v15 = v16;
      if ((v30 & 0x80000000) != 0)
      {
LABEL_58:
        JreStrongAssign(&self->currentFrame_, v68);
        goto LABEL_61;
      }
    }

    if (v30)
    {
      if (!v68)
      {
        goto LABEL_95;
      }

      self->targetBeforeCurrentLength_ = v68[2];
      JreStrongAssign(&self->currentFrame_, v68);
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ rewind];
    }

    else if (self->termExists_)
    {
      return 1;
    }
  }

LABEL_61:
  if (v15 < *(a3 + 5))
  {
    while (1)
    {
      v53 = *(a3 + 1);
      if (!v53)
      {
        goto LABEL_95;
      }

      v54 = *(v53 + 8);
      v55 = v15 + *(a3 + 4);
      if (v55 < 0 || v55 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v55);
      }

      v56 = self->fr_->index_;
      if (!v56)
      {
        goto LABEL_95;
      }

      v57 = *(v53 + 12 + v55);
      v58 = (v15 + 1);
      v59 = [(OrgApacheLuceneUtilFstFST *)v56 findTargetArcWithInt:v57 withOrgApacheLuceneUtilFstFST_Arc:elementType withOrgApacheLuceneUtilFstFST_Arc:sub_1000DD1A4(self withOrgApacheLuceneUtilFstFST_BytesReader:v58, v19, v20, v21, v22, v23, v24), self->fstReader_];
      if (!v59)
      {
        break;
      }

      elementType = v59;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v57];
      v60 = elementType[2].super.isa;
      if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000DF878();
      }

      if (v60 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_95;
        }

        isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
      }

      if ([(IOSClass *)elementType isFinal])
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_95;
        }

        JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], v58));
      }

      v15 = v58;
      if (v58 >= *(a3 + 5))
      {
        goto LABEL_83;
      }
    }

    v65 = self->currentFrame_;
    if (v65)
    {
      self->validIndexPrefix_ = v65->prefix_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:a3];
      v66 = self->currentFrame_;
      if (v66->hasTerms_)
      {
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v66 loadBlock];
        v63 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:a3 withBoolean:1];
        if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
        {
LABEL_91:
          sub_1000169C0();
        }

        return v63 == qword_100557A48;
      }

      self->termExists_ = 0;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v57];
      v64 = self->term_;
      goto LABEL_94;
    }

LABEL_95:
    JreThrowNullPointerException();
  }

  v58 = v15;
LABEL_83:
  v61 = self->currentFrame_;
  if (!v61)
  {
    goto LABEL_95;
  }

  self->validIndexPrefix_ = v61->prefix_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:a3];
  v62 = self->currentFrame_;
  if (v62->hasTerms_)
  {
    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v62 loadBlock];
    v63 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:a3 withBoolean:1];
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_91;
    }

    return v63 == qword_100557A48;
  }

  self->termExists_ = 0;
  v64 = self->term_;
LABEL_94:
  [(OrgApacheLuceneUtilBytesRefBuilder *)v64 setLengthWithInt:v58];
  return 0;
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_96;
  }

  if (!fr->index_)
  {
    v68 = new_JavaLangIllegalStateException_initWithNSString_(@"terms index was not loaded");
    objc_exception_throw(v68);
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_96;
  }

  if (!a3)
  {
    goto LABEL_96;
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)term growWithInt:(*(a3 + 5) + 1)];
  currentFrame = self->currentFrame_;
  if (!currentFrame)
  {
    goto LABEL_96;
  }

  self->targetBeforeCurrentLength_ = currentFrame->ord_;
  if (self->currentFrame_ == self->staticFrame_)
  {
    self->targetBeforeCurrentLength_ = -1;
    index = self->fr_->index_;
    if (!index)
    {
      goto LABEL_96;
    }

    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_96;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    elementType = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    isa = elementType[2].super.isa;
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000DF878();
    }

    if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
    {
      goto LABEL_96;
    }

    JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], 0));
    v15 = 0;
  }

  else
  {
    v8 = self->arcs_;
    if (!v8)
    {
      goto LABEL_96;
    }

    v9 = v8->super.size_;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_96;
    }

    elementType = v8->elementType_;
    isa = elementType[2].super.isa;
    v13 = stack->super.size_;
    if (v13 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, 0);
    }

    v69 = stack->elementType_;
    v14 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), self->validIndexPrefix_);
    if (v14 < 1)
    {
      v15 = 0;
LABEL_43:
      v43 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]);
      if (v15 < v43)
      {
        v44 = v43;
        v45 = v15;
        do
        {
          v46 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v45];
          v47 = *(a3 + 1);
          if (!v47)
          {
            goto LABEL_96;
          }

          v48 = v46;
          v49 = *(v47 + 8);
          v50 = v45 + *(a3 + 4);
          if (v50 < 0 || v50 >= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v49, v50);
          }

          v51 = *(v47 + 12 + v50);
          v30 = v48 - v51;
          if (v48 != v51)
          {
            goto LABEL_53;
          }

          v45 = (v45 + 1);
        }

        while (v44 != v45);
      }

      v30 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]- *(a3 + 5);
LABEL_53:
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v15 = v14;
      v16 = 0;
      v17 = v14;
      while (1)
      {
        v18 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v16];
        v25 = *(a3 + 1);
        if (!v25)
        {
          goto LABEL_96;
        }

        v26 = v18;
        v27 = v16 + *(a3 + 4);
        v28 = *(v25 + 8);
        if (v27 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v16 + *(a3 + 4));
        }

        v29 = *(v25 + 12 + v27);
        v30 = v26 - v29;
        if (v26 != v29)
        {
          break;
        }

        v31 = self->arcs_;
        v32 = v16 + 1;
        v33 = v31->super.size_;
        if (v16 + 1 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v16 + 1));
        }

        elementType = (&v31->elementType_)[v16 + 1];
        v34 = elementType[2].super.isa;
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (v34 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
        {
          if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000DF878();
          }

          if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
          {
            goto LABEL_96;
          }

          isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
        }

        if ([(IOSClass *)elementType isFinal])
        {
          if (!v69)
          {
            goto LABEL_96;
          }

          v35 = self->stack_;
          v36 = v35->super.size_;
          v37 = LODWORD(v69[1].super.isa) + 1;
          v38 = v37;
          if (v37 < 0 || v37 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, v37);
          }

          v39 = (&v35->elementType_)[v37];
          v69 = (&v35->elementType_)[v38];
        }

        v16 = v32;
        if (v17 == v32)
        {
          goto LABEL_43;
        }
      }

      v15 = v16;
      if ((v30 & 0x80000000) != 0)
      {
LABEL_58:
        JreStrongAssign(&self->currentFrame_, v69);
        goto LABEL_62;
      }
    }

    if (v30)
    {
      self->targetBeforeCurrentLength_ = 0;
      JreStrongAssign(&self->currentFrame_, v69);
      v52 = self->currentFrame_;
      if (!v52)
      {
        goto LABEL_96;
      }

      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v52 rewind];
    }

    else if (self->termExists_)
    {
      v53 = &qword_100557A48;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v53;
      }

LABEL_61:
      objc_opt_class();
      return *v53;
    }
  }

LABEL_62:
  if (v15 < *(a3 + 5))
  {
    while (1)
    {
      v54 = *(a3 + 1);
      if (!v54)
      {
        goto LABEL_96;
      }

      v55 = *(v54 + 8);
      v56 = v15 + *(a3 + 4);
      if (v56 < 0 || v56 >= v55)
      {
        IOSArray_throwOutOfBoundsWithMsg(v55, v56);
      }

      v57 = self->fr_->index_;
      if (!v57)
      {
        goto LABEL_96;
      }

      v58 = *(v54 + 12 + v56);
      v59 = (v15 + 1);
      v60 = [(OrgApacheLuceneUtilFstFST *)v57 findTargetArcWithInt:v58 withOrgApacheLuceneUtilFstFST_Arc:elementType withOrgApacheLuceneUtilFstFST_Arc:sub_1000DD1A4(self withOrgApacheLuceneUtilFstFST_BytesReader:v59, v19, v20, v21, v22, v23, v24), self->fstReader_];
      if (!v60)
      {
        break;
      }

      elementType = v60;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v58];
      v61 = elementType[2].super.isa;
      if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000DF878();
      }

      if (v61 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_96;
        }

        isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
      }

      if ([(IOSClass *)elementType isFinal])
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_96;
        }

        JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], v59));
      }

      v15 = v59;
      if (v59 >= *(a3 + 5))
      {
        goto LABEL_83;
      }
    }

    v64 = self->currentFrame_;
    if (v64)
    {
      self->validIndexPrefix_ = v64->prefix_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:a3];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      v63 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:a3 withBoolean:0];
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

LABEL_96:
    JreThrowNullPointerException();
  }

LABEL_83:
  v62 = self->currentFrame_;
  if (!v62)
  {
    goto LABEL_96;
  }

  self->validIndexPrefix_ = v62->prefix_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:a3];
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
  v63 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:a3 withBoolean:0];
  if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
  {
    goto LABEL_89;
  }

LABEL_88:
  sub_1000169C0();
LABEL_89:
  if (v63 == OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_)
  {
    [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ copyBytesWithOrgApacheLuceneUtilBytesRef:a3];
    self->termExists_ = 0;
    v65 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self next];
    explicit = atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire);
    if (v65)
    {
      v53 = &qword_100557A50;
    }

    else
    {
      v53 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
    }

    if (explicit)
    {
      return *v53;
    }

    goto LABEL_61;
  }

  return v63;
}

- (void)printSeekStateWithJavaIoPrintStream:(id)a3
{
  if (self->currentFrame_ != self->staticFrame_)
  {
    if (a3)
    {
      v4 = self;
      [a3 printlnWithNSString:@"  prior seek state:"];
      v11 = sub_1000DD034(v4, 0, v5, v6, v7, v8, v9, v10);
      v12 = *(v4 + 48);
      if (v12)
      {
        v13 = 1;
        v84 = v4;
        v85 = a3;
        LODWORD(v4) = 0;
        while (1)
        {
          v14 = [v12 get];
          if (!v14 || !v11)
          {
            goto LABEL_37;
          }

          v92 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(v14[1], 0, *(v11 + 104));
          v91 = *(v11 + 32);
          if (*(v11 + 112) != -1)
          {
            break;
          }

          if (*(v11 + 14))
          {
            v81 = *(v11 + 40);
            JreStrcat("$JC", v15, v16, v17, v18, v19, v20, v21, @" (fpOrig=");
            v88 = *(v11 + 104);
            if (*(v11 + 112) != -1)
            {
              v82 = *(v11 + 108);
              JreStrcat("$IC", v22, v23, v24, v25, v26, v27, v28, @" (of ");
            }
          }

          else
          {
            v89 = *(v11 + 104);
          }

          v42 = 2;
          if (!*(v11 + 12))
          {
            v42 = 0;
          }

          v43 = v42 | (4 * *(v11 + 32)) | *(v11 + 14);
          v44 = *(v11 + 116);
          v45 = *(v11 + 136);
          [v11 getTermBlockOrd];
          v33 = v92;
          v41 = JreStrcat("$$$I$J$$I$@$$Z$Z$J$Z$I$I", v46, v47, v48, v49, v50, v51, v52, @"    frame ");
LABEL_23:
          [v85 printlnWithNSString:v41];
          v59 = *(v84 + 40);
          if (!v59)
          {
            goto LABEL_37;
          }

          v60 = *(v59 + 104);
          if (v60)
          {
            v61 = *(v11 + 104);
            if (((v61 > 0) & v13) == 1)
            {
              v62 = *(v11 + 16);
              if (!v62)
              {
                goto LABEL_37;
              }

              v63 = v4;
              v64 = *(v62 + 8);
              if (v64 != [*(v84 + 48) byteAtWithInt:(v61 - 1)])
              {
                v70 = *(*(v11 + 16) + 8);
                [*(v84 + 48) byteAtWithInt:(*(v11 + 104) - 1)];
                v78 = JreStrcat("$C$C", v71, v72, v73, v74, v75, v76, v77, @"      broken seek state: arc.label=");
                goto LABEL_46;
              }

              v60 = *(*(v84 + 40) + 104);
              LODWORD(v4) = v63;
            }

            v65 = OrgApacheLuceneUtilFstUtil_getWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRef_(v60, v33);
            if (!v65)
            {
              v69 = @"      broken seek state: prefix is not final in index";
              goto LABEL_47;
            }

            if ((v13 & 1) != 0 && (*(v11 + 14) & 1) == 0)
            {
              v66 = [new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(v65[1] readVLong:*(v65 + 5))];
              v68 = 2;
              if (!*(v11 + 12))
              {
                v68 = 0;
              }

              if (v66 != (v68 | (4 * *(v11 + 32)) | *(v11 + 14)))
              {
                v78 = JreStrcat("$J$J", v67, v53, v54, v55, v56, v57, v58, @"      broken seek state: output code=");
LABEL_46:
                v69 = v78;
LABEL_47:
                [v85 printlnWithNSString:v69];
                v79 = new_JavaLangRuntimeException_initWithNSString_(@"seek state is broken");
                objc_exception_throw(v79);
              }
            }
          }

          if (v11 == *(v84 + 24))
          {
            return;
          }

          v13 &= *(v11 + 104) != *(v84 + 88);
          v4 = (v4 + 1);
          v11 = sub_1000DD034(v84, v4, v53, v54, v55, v56, v57, v58);
          v12 = *(v84 + 48);
          if (!v12)
          {
            goto LABEL_37;
          }
        }

        v90 = v4;
        if (*(v11 + 14))
        {
          v80 = *(v11 + 40);
          JreStrcat("$JC", v15, v16, v17, v18, v19, v20, v21, @" (fpOrig=");
          v86 = *(v11 + 104);
          if (*(v11 + 112) == -1)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v87 = *(v11 + 104);
        }

        v83 = *(v11 + 108);
        JreStrcat("$IC", v15, v16, v17, v18, v19, v20, v21, @" (of ");
LABEL_16:
        v29 = 2;
        if (!*(v11 + 12))
        {
          v29 = 0;
        }

        v30 = v29 | (4 * *(v11 + 32)) | *(v11 + 14);
        v31 = *(v11 + 120);
        v4 = *(v11 + 116);
        v32 = *(v11 + 136);
        [v11 getTermBlockOrd];
        v33 = v92;
        LODWORD(v4) = v90;
        v41 = JreStrcat("$$$I$J$$I$@$I$$Z$Z$J$J$Z$I$I", v34, v35, v36, v37, v38, v39, v40, @"    frame ");
        goto LABEL_23;
      }
    }

LABEL_37:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_37;
  }

  [a3 printlnWithNSString:@"  no prior seek"];
}

- (id)next
{
  if (!self->in_)
  {
    fr = self->fr_;
    if (!fr)
    {
      goto LABEL_41;
    }

    index = fr->index_;
    if (index)
    {
      arcs = self->arcs_;
      if (!arcs)
      {
        goto LABEL_41;
      }

      size = arcs->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      v7 = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
      fr = self->fr_;
    }

    else
    {
      v7 = 0;
    }

    JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v7 withOrgApacheLuceneUtilBytesRef:fr->rootCode_ withInt:0]);
    currentFrame = self->currentFrame_;
    if (!currentFrame)
    {
LABEL_41:
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame loadBlock];
  }

  v9 = self->currentFrame_;
  if (!v9)
  {
    goto LABEL_41;
  }

  self->targetBeforeCurrentLength_ = v9->ord_;
  v10 = self->currentFrame_;
  if (v10 == self->staticFrame_)
  {
    term = self->term_;
    if (!term)
    {
      goto LABEL_41;
    }

    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self seekExactWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneUtilBytesRefBuilder *)term get]];
    v10 = self->currentFrame_;
  }

  if (v10->nextEnt_ != v10->entCount_)
  {
    goto LABEL_33;
  }

  do
  {
    if (!v10->isLastInFloor_)
    {
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v10 loadNextFloorBlock];
      goto LABEL_32;
    }

    ord = v10->ord_;
    if (!ord)
    {
      v19 = self->term_;
      if (v19)
      {
        [(OrgApacheLuceneUtilBytesRefBuilder *)v19 clear];
        self->validIndexPrefix_ = 0;
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ rewind];
        self->termExists_ = 0;
        return 0;
      }

      goto LABEL_41;
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_41;
    }

    fpOrig = v10->fpOrig_;
    v15 = stack->super.size_;
    v16 = ord - 1;
    if (v16 < 0 || v16 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v16);
    }

    JreStrongAssign(&self->currentFrame_, (&stack->elementType_)[v16]);
    v17 = self->currentFrame_;
    if (!v17)
    {
      goto LABEL_41;
    }

    if (v17->nextEnt_ == -1 || v17->lastSubFP_ != fpOrig)
    {
      v18 = self->term_;
      if (!v18)
      {
        goto LABEL_41;
      }

      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v17 scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneUtilBytesRefBuilder *)v18 get]];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToSubBlockWithLong:fpOrig];
      v17 = self->currentFrame_;
    }

    self->validIndexPrefix_ = JavaLangMath_minWithInt_withInt_(self->validIndexPrefix_, v17->prefix_);
    v10 = self->currentFrame_;
  }

  while (v10->nextEnt_ == v10->entCount_);
LABEL_33:
  while (1)
  {
    v21 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v10 next];
    v22 = self->term_;
    if (!v21)
    {
      break;
    }

    if (v22)
    {
      JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:0 withLong:self->currentFrame_->lastSubFP_ withInt:[(OrgApacheLuceneUtilBytesRefBuilder *)v22 length]]);
      v23 = self->currentFrame_;
      if (v23)
      {
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v23 loadBlock];
LABEL_32:
        v10 = self->currentFrame_;
        if (v10)
        {
          continue;
        }
      }
    }

    goto LABEL_41;
  }

  if (!v22)
  {
    goto LABEL_41;
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)v22 get];
}

- (id)term
{
  term = self->term_;
  if (!term)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)term get];
}

- (int)docFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return state->docFreq_;
}

- (int64_t)totalTermFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return state->totalTermFreq_;
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4
{
  if (!a3)
  {
    goto LABEL_9;
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_9;
  }

  if ([a3 compareToWithId:{-[OrgApacheLuceneUtilBytesRefBuilder get](term, "get")}] || !self->termExists_)
  {
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    currentFrame = self->currentFrame_;
    if (currentFrame)
    {
      state = currentFrame->state_;
      if (state)
      {
        [(OrgApacheLuceneCodecsBlockTermState *)state copyFromWithOrgApacheLuceneIndexTermState:a4];
        [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ copyBytesWithOrgApacheLuceneUtilBytesRef:a3];
        self->currentFrame_->metaDataUpto_ = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ getTermBlockOrd];
        self->validIndexPrefix_ = 0;
        return;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }
}

- (id)termState
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermState *)state clone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_class_()];
    JreStrongAssignAndConsume(&qword_100554540, v2);
    atomic_store(1u, &OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum__initialized);
  }
}

@end