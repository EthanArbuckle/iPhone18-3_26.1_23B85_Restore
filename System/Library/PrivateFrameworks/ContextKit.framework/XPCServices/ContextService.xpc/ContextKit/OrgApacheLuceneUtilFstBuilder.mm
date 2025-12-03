@interface OrgApacheLuceneUtilFstBuilder
- (BOOL)validOutputWithId:(id)id;
- (id)finish;
- (int64_t)fstRamBytesUsed;
- (int64_t)getMappedStateCount;
- (int64_t)getTermCount;
- (void)addWithOrgApacheLuceneUtilIntsRef:(id)ref withId:(id)id;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstBuilder

- (int64_t)getTermCount
{
  frontier = self->frontier_;
  if (!frontier)
  {
    goto LABEL_5;
  }

  size = frontier->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = frontier->elementType_;
  if (!elementType)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  return elementType[6].super.isa;
}

- (int64_t)getMappedStateCount
{
  if (self->dedupHash_)
  {
    return self->nodeCount_;
  }

  else
  {
    return 0;
  }
}

- (void)addWithOrgApacheLuceneUtilIntsRef:(id)ref withId:(id)id
{
  if (!id)
  {
    goto LABEL_106;
  }

  NO_OUTPUT = id;
  selfCopy = self;
  if ([id isEqual:self->NO_OUTPUT_])
  {
    NO_OUTPUT = selfCopy->NO_OUTPUT_;
  }

  if (!ref)
  {
    goto LABEL_106;
  }

  v92 = selfCopy;
  if (*(ref + 5))
  {
    v95 = NO_OUTPUT;
    v7 = *(ref + 4);
    v8 = JavaLangMath_minWithInt_withInt_([(OrgApacheLuceneUtilIntsRefBuilder *)selfCopy->lastInput_ length], *(ref + 5));
    p_frontier = &selfCopy->frontier_;
    frontier = selfCopy->frontier_;
    if (!frontier)
    {
      goto LABEL_106;
    }

    v17 = 0;
    v18 = v8 & ~(v8 >> 31);
    while (1)
    {
      v19 = frontier[2];
      if (v17 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v17);
      }

      v20 = *&frontier[2 * v17 + 6];
      if (!v20)
      {
        goto LABEL_106;
      }

      ++*(v20 + 48);
      if (v18 == v17)
      {
        v33 = v18;
        v17 = v18;
        goto LABEL_30;
      }

      v21 = [(OrgApacheLuceneUtilIntsRefBuilder *)selfCopy->lastInput_ intAtWithInt:v17];
      v22 = *(ref + 1);
      if (!v22)
      {
        goto LABEL_106;
      }

      v23 = v21;
      v24 = v7 + v17;
      v25 = *(v22 + 8);
      if (v7 + v17 < 0 || v24 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, v7 + v17);
      }

      if (v23 != *(v22 + 12 + 4 * v24))
      {
        break;
      }

      ++v17;
      frontier = *p_frontier;
      if (!*p_frontier)
      {
        goto LABEL_106;
      }
    }

    v33 = v17;
LABEL_30:
    if (!*p_frontier)
    {
LABEL_106:
      JreThrowNullPointerException();
    }

    v91 = v33;
    v34 = v33 + 1;
    v35 = *(ref + 5) + 1;
    if (*(*p_frontier + 2) < v35)
    {
      if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000120A8();
      }

      v36 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v35, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v9, v10, v11, v12, v13, v14);
      if (qword_100554858 != -1)
      {
        sub_100138550();
      }

      v37 = [IOSObjectArray arrayWithLength:v36 type:qword_100554850];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*p_frontier, 0, v37, 0, *(*p_frontier + 2));
      v38 = *(*p_frontier + 2);
      if (v38 < v37->super.size_)
      {
        do
        {
          v39 = [OrgApacheLuceneUtilFstBuilder_UnCompiledNode alloc];
          OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(v39, &selfCopy->super.isa, v38);
          IOSObjectArray_SetAndConsume(v37, v38++, v39);
        }

        while (v38 < v37->super.size_);
      }

      JreStrongAssign(&selfCopy->frontier_, v37);
    }

    sub_100136CF0(selfCopy, v34);
    v40 = *(ref + 5);
    if (v34 <= v40)
    {
      v94 = v34;
      v41 = v91;
      do
      {
        v42 = v41;
        v43 = *(*p_frontier + 2);
        if (v41 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v41);
        }

        v44 = *(*p_frontier + v41 + 3);
        if (!v44)
        {
          goto LABEL_106;
        }

        v45 = *(ref + 1);
        if (!v45)
        {
          goto LABEL_106;
        }

        v46 = *(v45 + 8);
        v47 = v41 + *(ref + 4);
        if (v47 < 0 || v47 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, v47);
        }

        v48 = v41 + 1;
        v49 = *(*p_frontier + 2);
        if (v41 + 1 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v41 + 1));
        }

        [v44 addArcWithInt:*(v45 + 12 + 4 * v47) withOrgApacheLuceneUtilFstBuilder_Node:*(*p_frontier + v48 + 3)];
        v50 = *(*p_frontier + 2);
        if (v48 < 0 || v48 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v41 + 1));
        }

        v51 = *(*p_frontier + v48 + 3);
        if (!v51)
        {
          goto LABEL_106;
        }

        ++*(v51 + 48);
        v40 = *(ref + 5);
        ++v41;
      }

      while (v42 + 2 <= v40);
      v34 = v94;
    }

    v52 = *(*p_frontier + 2);
    if (v40 < 0 || v40 >= v52)
    {
      IOSArray_throwOutOfBoundsWithMsg(v52, v40);
    }

    v53 = *(*p_frontier + v40 + 3);
    v54 = [(OrgApacheLuceneUtilIntsRefBuilder *)selfCopy->lastInput_ length];
    v55 = *(ref + 5);
    v56 = v91;
    if (v54 != v55 || v91 != v55)
    {
      if (!v53)
      {
        goto LABEL_106;
      }

      *(v53 + 40) = 1;
      JreStrongAssign((v53 + 32), selfCopy->NO_OUTPUT_);
      v56 = v91;
    }

    v89 = v53;
    if (v34 >= 2)
    {
      v58 = 0;
      v93 = v56;
      do
      {
        v59 = *p_frontier;
        v60 = *(*p_frontier + 2);
        if (v58 + 1 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v58 + 1));
        }

        v61 = *p_frontier;
        v62 = v59[v58 + 4];
        if (v58 + 1 > v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, v58);
        }

        v63 = v59[v58 + 3];
        if (!v63)
        {
          goto LABEL_106;
        }

        v64 = *(ref + 1);
        if (!v64)
        {
          goto LABEL_106;
        }

        v65 = v58 + *(ref + 4);
        v66 = *(v64 + 8);
        if (v65 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, v58 + *(ref + 4));
        }

        v67 = [v63 getLastOutputWithInt:*(v64 + 12 + 4 * v65)];
        v68 = selfCopy->NO_OUTPUT_;
        if (v67 != v68)
        {
          fst = selfCopy->fst_;
          if (!fst)
          {
            goto LABEL_106;
          }

          v70 = v67;
          outputs = fst->outputs_;
          if (!outputs)
          {
            goto LABEL_106;
          }

          v68 = [(OrgApacheLuceneUtilFstOutputs *)outputs commonWithId:v95 withId:v70];
          v72 = [(OrgApacheLuceneUtilFstOutputs *)selfCopy->fst_->outputs_ subtractWithId:v70 withId:v68];
          v73 = *(ref + 1);
          v74 = v58 + *(ref + 4);
          v75 = *(v73 + 8);
          if (v74 < 0 || v74 >= v75)
          {
            IOSArray_throwOutOfBoundsWithMsg(v75, v58 + *(ref + 4));
          }

          [v63 setLastOutputWithInt:*(v73 + 12 + 4 * v74) withId:v68];
          if (!v62)
          {
            goto LABEL_106;
          }

          [v62 prependOutputWithId:v72];
          selfCopy = v92;
        }

        v76 = selfCopy->fst_;
        if (!v76)
        {
          goto LABEL_106;
        }

        v77 = v76->outputs_;
        if (!v77)
        {
          goto LABEL_106;
        }

        v95 = [(OrgApacheLuceneUtilFstOutputs *)v77 subtractWithId:v95 withId:v68];
      }

      while (v93 != ++v58);
    }

    v78 = [(OrgApacheLuceneUtilIntsRefBuilder *)selfCopy->lastInput_ length];
    v79 = *(ref + 5);
    if (v78 == v79 && v91 == v79)
    {
      if (!v90)
      {
        goto LABEL_106;
      }

      v86 = selfCopy->fst_;
      if (!v86)
      {
        goto LABEL_106;
      }

      v87 = v86->outputs_;
      if (!v87)
      {
        goto LABEL_106;
      }

      JreStrongAssign((v90 + 32), [(OrgApacheLuceneUtilFstOutputs *)v87 mergeWithId:*(v90 + 32) withId:v95]);
    }

    else
    {
      v81 = *(*p_frontier + 2);
      if (v91 >= v81)
      {
        IOSArray_throwOutOfBoundsWithMsg(v81, v91);
      }

      v82 = *(*p_frontier + v17 + 3);
      if (!v82)
      {
        goto LABEL_106;
      }

      v83 = *(ref + 1);
      if (!v83)
      {
        goto LABEL_106;
      }

      v84 = *(v83 + 8);
      v85 = *(ref + 4) + v91;
      if (v85 < 0 || v85 >= v84)
      {
        IOSArray_throwOutOfBoundsWithMsg(v84, v85);
      }

      [v82 setLastOutputWithInt:*(v83 + 12 + 4 * v85) withId:v95];
      selfCopy = v92;
    }

    lastInput = selfCopy->lastInput_;

    [(OrgApacheLuceneUtilIntsRefBuilder *)lastInput copyIntsWithOrgApacheLuceneUtilIntsRef:ref];
  }

  else
  {
    v26 = selfCopy->frontier_;
    if (!v26)
    {
      goto LABEL_106;
    }

    size = v26->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    elementType = v26->elementType_;
    if (!elementType)
    {
      goto LABEL_106;
    }

    ++elementType[6].super.isa;
    v29 = v92->frontier_;
    v30 = v29->super.size_;
    if (v30 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v30, 0);
    }

    v31 = v29->elementType_;
    if (!v31)
    {
      goto LABEL_106;
    }

    LOBYTE(v31[5].super.isa) = 1;
    v32 = v92->fst_;
    if (!v32)
    {
      goto LABEL_106;
    }

    [(OrgApacheLuceneUtilFstFST *)v32 setEmptyOutputWithId:NO_OUTPUT];
  }
}

- (BOOL)validOutputWithId:(id)id
{
  NO_OUTPUT = self->NO_OUTPUT_;
  if (NO_OUTPUT == id)
  {
    return 1;
  }

  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id isEqual:NO_OUTPUT] ^ 1;
}

- (id)finish
{
  frontier = self->frontier_;
  if (!frontier)
  {
    goto LABEL_23;
  }

  size = frontier->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = frontier->elementType_;
  sub_100136CF0(self, 0);
  if (!elementType)
  {
    goto LABEL_23;
  }

  v6 = *(elementType + 48);
  minSuffixCount1 = self->minSuffixCount1_;
  if (v6 >= minSuffixCount1 && (minSuffixCount2 = self->minSuffixCount2_, v6 >= minSuffixCount2) && *(elementType + 16))
  {
    if (minSuffixCount2)
    {
      lastInput = self->lastInput_;
      if (!lastInput)
      {
        goto LABEL_23;
      }

      sub_100137B5C(self, elementType, [(OrgApacheLuceneUtilIntsRefBuilder *)lastInput length]);
    }
  }

  else
  {
    fst = self->fst_;
    if (!fst)
    {
      goto LABEL_23;
    }

    v11 = 0;
    if (minSuffixCount1 > 0 || !fst->emptyOutput_)
    {
      return v11;
    }

    if (self->minSuffixCount2_ > 0)
    {
      return 0;
    }
  }

  v12 = self->fst_;
  if (!v12 || (v13 = self->lastInput_) == 0 || (v14 = sub_100136BF0(self, elementType, [(OrgApacheLuceneUtilIntsRefBuilder *)v13 length])) == 0)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilFstFST *)v12 finishWithLong:v14->node_];
  v11 = self->fst_;
  if (!self->doPackFST_)
  {
    return v11;
  }

  v15 = JavaLangMath_maxWithInt_withInt_(10, [(OrgApacheLuceneUtilFstBuilder *)self getNodeCount]/ 4);
  *&v16 = self->acceptableOverheadRatio_;

  return [(OrgApacheLuceneUtilFstFST *)v11 packWithOrgApacheLuceneUtilFstBuilder:self withInt:3 withInt:v15 withFloat:v16];
}

- (int64_t)fstRamBytesUsed
{
  fst = self->fst_;
  if (!fst)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilFstFST *)fst ramBytesUsed];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBuilder;
  [(OrgApacheLuceneUtilFstBuilder *)&v3 dealloc];
}

@end