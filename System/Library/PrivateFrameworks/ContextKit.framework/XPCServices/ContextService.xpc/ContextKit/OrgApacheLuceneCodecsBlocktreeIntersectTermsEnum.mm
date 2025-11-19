@interface OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum
+ (void)initialize;
- (BOOL)setSavedStartTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)termState;
- (int)docFreq;
- (int64_t)totalTermFreq;
- (uint64_t)_next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum

- (BOOL)setSavedStartTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (a3)
  {
    v4 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(a3);
  }

  else
  {
    v4 = 0;
  }

  JreStrongAssign(&self->savedStartTerm_, v4);
  return 1;
}

- (id)termState
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)currentFrame decodeMetaData], (termState = self->currentFrame_->termState_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermState *)termState clone];
}

- (int)docFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)currentFrame decodeMetaData], (termState = self->currentFrame_->termState_) == 0))
  {
    JreThrowNullPointerException();
  }

  return termState->docFreq_;
}

- (int64_t)totalTermFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *)currentFrame decodeMetaData], (termState = self->currentFrame_->termState_) == 0))
  {
    JreThrowNullPointerException();
  }

  return termState->totalTermFreq_;
}

- (uint64_t)_next
{
  if (*(a1 + 120) == 1)
  {
    v2 = sub_100134788(a1);
  }

  else
  {
    v2 = sub_1001345E0(a1);
  }

  v10 = v2;
  v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
LABEL_5:
  v12 = *(a1 + 72);
  if (!*(v12 + 212))
  {
    v30 = *(v12 + 48);
    v31 = *(v12 + 52);
    if (v10)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

  v13 = *(v12 + 64);
  if (!v13)
  {
    goto LABEL_108;
  }

  v14 = *(v12 + 208);
  v15 = v14;
  v16 = *(v13 + 8);
  if (v14 < 0 || v14 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v14);
  }

  v17 = *(a1 + v11[586]);
  if (!v17)
  {
    goto LABEL_108;
  }

  v18 = *(v13 + 12 + v15);
  v19 = *(v17 + 16);
  if (v19 > v18)
  {
    while (1)
    {
      v20 = *(a1 + 72);
      if (v20[30] >= v20[29])
      {
        goto LABEL_62;
      }

      v10 = [v20 next];
      v21 = *(*(a1 + 72) + 208);
      v22 = *(v13 + 8);
      if (v21 < 0 || v21 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v21);
      }

      if (v19 <= *(v13 + 12 + v21))
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    if (*(v17 + 20) >= v18)
    {
      v40 = *(a1 + 48);
      if (!((v40 == 0) | v10 & 1))
      {
        v57 = *(a1 + 72);
        if (!v57)
        {
          goto LABEL_108;
        }

        v58 = v57[28];
        v59 = v57[53];
        v60 = *(v40 + 20);
        if (v59 + v58 < v60)
        {
          goto LABEL_62;
        }

        v61 = *(v40 + 8);
        v62 = v60 - v59;
        if (v60 - v59 < 1)
        {
          LODWORD(v64) = 0;
          v86 = (v59 - v60 + v57[52]);
        }

        else
        {
          v63 = *(a1 + 88);
          if (!v63)
          {
            goto LABEL_108;
          }

          v64 = 0;
          v65 = *(v63 + 8);
          v66 = v58 - v62;
          while (v66 < v58)
          {
            if (!v65)
            {
              goto LABEL_108;
            }

            v67 = *(v65 + 8);
            if (v66 < 0 || v66 >= v67)
            {
              v72 = v57[28];
              IOSArray_throwOutOfBoundsWithMsg(v67, v66);
            }

            if (!v61)
            {
              goto LABEL_108;
            }

            v68 = *(v65 + 12 + v66);
            v69 = *(v61 + 8);
            if ((v64 & 0x80000000) != 0 || v64 >= v69)
            {
              v95 = v57[28];
              IOSArray_throwOutOfBoundsWithMsg(v69, v64);
            }

            v70 = *(v61 + 12 + v64);
            ++v66;
            v64 = (v64 + 1);
            v71 = v68 == v70;
            v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
            if (!v71)
            {
              goto LABEL_62;
            }
          }

          v86 = *(*(a1 + 72) + 208);
          v60 = *(*(a1 + 48) + 20);
        }

        v87 = v64;
        if (v64 > v60)
        {
          v60 = v64;
        }

        v88 = v60;
        while (v88 != v87)
        {
          v89 = *(v13 + 8);
          if ((v86 & 0x80000000) != 0 || v86 >= v89)
          {
            IOSArray_throwOutOfBoundsWithMsg(v89, v86);
          }

          if (!v61)
          {
            goto LABEL_108;
          }

          v90 = *(v13 + 12 + v86);
          v91 = *(v61 + 8);
          if (v87 < 0 || v87 >= v91)
          {
            IOSArray_throwOutOfBoundsWithMsg(v91, v87);
          }

          v92 = *(v61 + 12 + v87++);
          v86 = (v86 + 1);
          if (v90 != v92)
          {
LABEL_100:
            v10 = sub_1001345E0(a1);
            v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
            goto LABEL_5;
          }
        }

        v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
      }

      v41 = *(a1 + 72);
      if (!v41 || (v42 = *(a1 + v11[586])) == 0)
      {
LABEL_108:
        JreThrowNullPointerException();
      }

      v30 = *(v42 + 12);
      v43 = v41[52];
      v44 = v41[53];
      v45 = v44 + v43;
      v46 = v43 + 1;
      if (v46 < v45)
      {
        v47 = v46;
        v48 = v44 - 1;
        v49 = v13 + v46;
        while (1)
        {
          v31 = v30;
          if (!*(a1 + 32))
          {
            goto LABEL_108;
          }

          v50 = *(v13 + 8);
          if (v47 < 0 || v47 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v47);
          }

          v51 = [*(a1 + 32) stepWithInt:v30 withInt:*(v49 + 12)];
          if (v51 == -1)
          {
            goto LABEL_100;
          }

          v30 = v51;
          ++v47;
          ++v49;
          if (!--v48)
          {
            goto LABEL_66;
          }
        }
      }

      v31 = v41[12];
LABEL_66:
      if (v10)
      {
        v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
LABEL_29:
        sub_100135A9C(a1, v3, v4, v5, v6, v7, v8, v9);
        v38 = sub_100133B28(a1, v30, v32, v33, v34, v35, v36, v37);
        JreStrongAssign((a1 + 72), v38);
        v39 = *(a1 + 72);
        if (v39)
        {
          JreStrongAssign((a1 + v11[586]), *(v39 + 136));
          *(*(a1 + 72) + 52) = v31;
LABEL_62:
          v10 = sub_1001345E0(a1);
          goto LABEL_5;
        }

        goto LABEL_108;
      }

      v12 = *(a1 + 72);
      v11 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
      if (!v12)
      {
        goto LABEL_108;
      }

LABEL_69:
      if (*(v12 + 224) != 1)
      {
        v76 = *(a1 + 32);
        if (!v76)
        {
          goto LABEL_108;
        }

        if (![v76 isAcceptWithInt:v30])
        {
          goto LABEL_62;
        }

        sub_100135A9C(a1, v77, v78, v79, v80, v81, v82, v83);
        return *(a1 + 88);
      }

      if (*(a1 + 104) != 1)
      {
        goto LABEL_62;
      }

      v73 = *(v12 + 220);
      if (v73 == -1)
      {
        v75 = v30 == *(a1 + 108);
      }

      else
      {
        v74 = *(v12 + 216);
        if (v74 == -1)
        {
          v85 = *(a1 + 40);
          if (!v85)
          {
            goto LABEL_108;
          }

          v84 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
          if (![v85 isAcceptWithInt:v30])
          {
            goto LABEL_80;
          }

          v75 = sub_1001358BC(a1, v30, 0, *(*(a1 + 72) + 220));
LABEL_79:
          *(a1 + v84[592]) = v75;
LABEL_80:
          if (*(a1 + v84[592]) != 1)
          {
            goto LABEL_62;
          }

          sub_100135A9C(a1, v3, v4, v73, v6, v7, v8, v9);
          v94 = *(*(a1 + 72) + 168);
          if (!v94)
          {
            goto LABEL_108;
          }

          *(v94 + 48) = 0;
          return *(a1 + 88);
        }

        v75 = sub_1001358BC(a1, v31, v74, v73);
      }

      v84 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
      goto LABEL_79;
    }

    v23 = *(a1 + 72);
    v24 = v23[36];
    if (v24 >= v23[37] - 1)
    {
      break;
    }

    v23[36] = v24 + 1;
    v25 = *(a1 + 40);
    if (!v25)
    {
      goto LABEL_108;
    }

    [v25 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:*(a1 + v11[586])];
    v17 = *(a1 + v11[586]);
    if (!v17)
    {
      goto LABEL_108;
    }

    v26 = *(v17 + 16);
    if (v26 > v18)
    {
      while (1)
      {
        v27 = *(a1 + 72);
        if (v27[30] >= v27[29])
        {
          goto LABEL_62;
        }

        v10 = [v27 next];
        v28 = *(*(a1 + 72) + 208);
        v29 = *(v13 + 8);
        if (v28 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, v28);
        }

        if (v26 <= *(v13 + 12 + v28))
        {
          goto LABEL_5;
        }
      }
    }
  }

  v52 = v23[2];
  if (v52)
  {
    v53 = *(a1 + 24);
    if (v53)
    {
      v54 = *(v53 + 8);
      v55 = v52 - 1;
      if (v55 < 0 || v55 >= v54)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, v55);
      }

      JreStrongAssign((a1 + 72), *(v53 + 24 + 8 * v55));
      v56 = *(a1 + 72);
      if (v56)
      {
        JreStrongAssign((a1 + v11[586]), *(v56 + 136));
        goto LABEL_62;
      }
    }

    goto LABEL_108;
  }

  JreStrongAssign((a1 + 72), 0);
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    Singleton = OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
    JreStrongAssign(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_fstOutputs_, Singleton);
    atomic_store(1u, OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum__initialized);
  }
}

@end