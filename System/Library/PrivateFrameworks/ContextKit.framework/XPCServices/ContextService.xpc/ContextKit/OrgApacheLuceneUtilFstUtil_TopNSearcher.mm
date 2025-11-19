@interface OrgApacheLuceneUtilFstUtil_TopNSearcher
- (BOOL)acceptResultWithOrgApacheLuceneUtilFstUtil_FSTPath:(id)a3;
- (id)search;
- (void)addIfCompetitiveWithOrgApacheLuceneUtilFstUtil_FSTPath:(id)a3;
- (void)addStartPathsWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withId:(id)a4 withBoolean:(BOOL)a5 withOrgApacheLuceneUtilIntsRefBuilder:(id)a6 withFloat:(float)a7 withJavaLangCharSequence:(id)a8;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_TopNSearcher

- (void)addIfCompetitiveWithOrgApacheLuceneUtilFstUtil_FSTPath:(id)a3
{
  fst = self->fst_;
  if (!fst)
  {
    goto LABEL_20;
  }

  outputs = fst->outputs_;
  if (!outputs)
  {
    goto LABEL_20;
  }

  if (!a3)
  {
    goto LABEL_20;
  }

  v7 = *(a3 + 1);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [(OrgApacheLuceneUtilFstOutputs *)outputs addWithId:*(a3 + 2) withId:*(v7 + 16)];
  queue = self->queue_;
  if (!queue)
  {
    goto LABEL_20;
  }

  if ([(JavaUtilTreeSet *)queue size]== self->maxQueueDepth_)
  {
    v10 = [(JavaUtilTreeSet *)self->queue_ last];
    pathComparator = self->pathComparator_;
    if (!pathComparator)
    {
      goto LABEL_20;
    }

    v12 = [(JavaUtilComparator *)pathComparator compareWithId:a3 withId:v10];
    if (v12 > 0)
    {
      return;
    }

    if (!v12)
    {
      v13 = *(a3 + 3);
      if (v13)
      {
        [v13 appendWithInt:*(*(a3 + 1) + 8)];
        if (v10)
        {
          v14 = [v10[3] get];
          if (v14)
          {
            v15 = [v14 compareToWithId:{objc_msgSend(*(a3 + 3), "get")}];
            [*(a3 + 3) setLengthWithInt:{objc_msgSend(*(a3 + 3), "length") - 1}];
            if ((v15 & 0x80000000) != 0)
            {
              return;
            }

            goto LABEL_14;
          }
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }
  }

LABEL_14:
  v16 = new_OrgApacheLuceneUtilIntsRefBuilder_init();
  v17 = *(a3 + 3);
  if (!v17)
  {
    goto LABEL_20;
  }

  -[OrgApacheLuceneUtilIntsRefBuilder copyIntsWithOrgApacheLuceneUtilIntsRef:](v16, "copyIntsWithOrgApacheLuceneUtilIntsRef:", [v17 get]);
  [(OrgApacheLuceneUtilIntsRefBuilder *)v16 appendWithInt:*(*(a3 + 1) + 8)];
  -[JavaUtilTreeSet addWithId:](self->queue_, "addWithId:", [a3 newPathWithId:v8 withOrgApacheLuceneUtilIntsRefBuilder:v16]);
  if ([(JavaUtilTreeSet *)self->queue_ size]== self->maxQueueDepth_ + 1)
  {
    v18 = self->queue_;

    [(JavaUtilTreeSet *)v18 pollLast];
  }
}

- (void)addStartPathsWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withId:(id)a4 withBoolean:(BOOL)a5 withOrgApacheLuceneUtilIntsRefBuilder:(id)a6 withFloat:(float)a7 withJavaLangCharSequence:(id)a8
{
  if (!a4)
  {
    goto LABEL_14;
  }

  fst = self->fst_;
  if (!fst)
  {
    goto LABEL_14;
  }

  outputs = fst->outputs_;
  if (!outputs)
  {
    goto LABEL_14;
  }

  v15 = a4;
  if ([a4 isEqual:{-[OrgApacheLuceneUtilFstOutputs getNoOutput](outputs, "getNoOutput")}])
  {
    v15 = [(OrgApacheLuceneUtilFstOutputs *)self->fst_->outputs_ getNoOutput];
  }

  v17 = [OrgApacheLuceneUtilFstUtil_FSTPath alloc];
  OrgApacheLuceneUtilFstUtil_FSTPath_initWithId_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilIntsRefBuilder_withFloat_withJavaLangCharSequence_(v17, v15, a3, a6, a8, a7);
  v18 = v17;
  [(OrgApacheLuceneUtilFstFST *)self->fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:a3 withOrgApacheLuceneUtilFstFST_Arc:v18->arc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->bytesReader_];
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_9:
  [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)self addIfCompetitiveWithOrgApacheLuceneUtilFstUtil_FSTPath:v18];
  arc = v18->arc_;
  if (!arc)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  while (![(OrgApacheLuceneUtilFstFST_Arc *)arc isLast])
  {
    [(OrgApacheLuceneUtilFstFST *)self->fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:v18->arc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->bytesReader_];
    if (a5)
    {
      goto LABEL_9;
    }

LABEL_7:
    arc = v18->arc_;
    if (!arc)
    {
      goto LABEL_14;
    }

    if (arc->label_ != -1)
    {
      goto LABEL_9;
    }
  }
}

- (id)search
{
  v3 = new_JavaUtilArrayList_init();
  fst = self->fst_;
  if (!fst)
  {
    goto LABEL_46;
  }

  v5 = [(OrgApacheLuceneUtilFstFST *)fst getBytesReader];
  outputs = self->fst_->outputs_;
  if (!outputs)
  {
    goto LABEL_46;
  }

  v7 = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  v8 = [(JavaUtilArrayList *)v3 size];
  topN = self->topN_;
  if (v8 >= topN || (p_queue = &self->queue_, (queue = self->queue_) == 0))
  {
    v32 = 0;
    goto LABEL_43;
  }

  v32 = 0;
  do
  {
    v12 = [(JavaUtilTreeSet *)queue pollFirst];
    if (!v12)
    {
      topN = self->topN_;
      break;
    }

    v13 = v12;
    v14 = v12[1];
    if (!v14)
    {
      goto LABEL_46;
    }

    if (v14[2] == -1)
    {
      v27 = v12[3];
      if (!v27)
      {
        goto LABEL_46;
      }

      [v27 setLengthWithInt:{objc_msgSend(v12[3], "length") - 1}];
      v25 = [v13[3] get];
      v26 = v13[2];
LABEL_37:
      [(JavaUtilArrayList *)v3 addWithId:new_OrgApacheLuceneUtilFstUtil_Result_initWithOrgApacheLuceneUtilIntsRef_withId_(v25, v26)];
      goto LABEL_39;
    }

    v15 = [(JavaUtilArrayList *)v3 size];
    v16 = self->topN_;
    if (v15 == v16 - 1 && self->maxQueueDepth_ == v16)
    {
      JreStrongAssign(&self->queue_, 0);
    }

    [(OrgApacheLuceneUtilFstFST *)self->fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:v13[1] withOrgApacheLuceneUtilFstFST_Arc:v13[1] withOrgApacheLuceneUtilFstFST_BytesReader:v5];
    comparator = self->comparator_;
    if (!comparator)
    {
      goto LABEL_46;
    }

    v18 = 0;
    while (1)
    {
      v19 = [(JavaUtilComparator *)comparator compareWithId:v7 withId:*(v13[1] + 2)];
      v20 = *p_queue;
      if (v19)
      {
        if (v20)
        {
          [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)self addIfCompetitiveWithOrgApacheLuceneUtilFstUtil_FSTPath:v13];
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_26;
        }

        if (v18)
        {
          [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)self addIfCompetitiveWithOrgApacheLuceneUtilFstUtil_FSTPath:v13];
        }

        else
        {
          scratchArc = self->scratchArc_;
          if (!scratchArc)
          {
            goto LABEL_46;
          }

          [(OrgApacheLuceneUtilFstFST_Arc *)scratchArc copyFromWithOrgApacheLuceneUtilFstFST_Arc:v13[1]];
        }

        v18 = 1;
      }

      if ([v13[1] isLast])
      {
        break;
      }

      [(OrgApacheLuceneUtilFstFST *)self->fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:v13[1] withOrgApacheLuceneUtilFstFST_BytesReader:v5];
LABEL_30:
      comparator = self->comparator_;
      if (!comparator)
      {
        goto LABEL_46;
      }
    }

    if (*p_queue)
    {
      [v13[1] copyFromWithOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_];
    }

LABEL_26:
    v22 = v13[1];
    if (v22[2] != -1)
    {
      v23 = v13[3];
      if (!v23)
      {
        goto LABEL_46;
      }

      [v23 appendWithInt:?];
      JreStrongAssign(v13 + 2, [(OrgApacheLuceneUtilFstOutputs *)self->fst_->outputs_ addWithId:v13[2] withId:*(v13[1] + 2)]);
      [(OrgApacheLuceneUtilFstFST *)self->fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:v13[1] withOrgApacheLuceneUtilFstFST_Arc:v13[1] withOrgApacheLuceneUtilFstFST_BytesReader:v5];
      v18 = 0;
      goto LABEL_30;
    }

    JreStrongAssign(v13 + 2, [(OrgApacheLuceneUtilFstOutputs *)self->fst_->outputs_ addWithId:v13[2] withId:*(v22 + 2)]);
    if ([(OrgApacheLuceneUtilFstUtil_TopNSearcher *)self acceptResultWithOrgApacheLuceneUtilFstUtil_FSTPath:v13])
    {
      v24 = v13[3];
      if (v24)
      {
        v25 = [v24 get];
        v26 = v13[2];
        goto LABEL_37;
      }

LABEL_46:
      JreThrowNullPointerException();
    }

    ++v32;
LABEL_39:
    v28 = [(JavaUtilArrayList *)v3 size];
    topN = self->topN_;
    if (v28 >= topN)
    {
      break;
    }

    queue = *p_queue;
  }

  while (*p_queue);
LABEL_43:
  v29 = topN + v32 <= self->maxQueueDepth_;
  v30 = [OrgApacheLuceneUtilFstUtil_TopResults alloc];
  JreStrongAssign(&v30->topN_, v3);
  v30->isComplete_ = v29;

  return v30;
}

- (BOOL)acceptResultWithOrgApacheLuceneUtilFstUtil_FSTPath:(id)a3
{
  if (!a3 || (v5 = *(a3 + 3)) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 get];
  v7 = *(a3 + 2);

  return [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)self acceptResultWithOrgApacheLuceneUtilIntsRef:v6 withId:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_TopNSearcher;
  [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)&v3 dealloc];
}

@end