@interface OrgApacheLuceneIndexAutomatonTermsEnum
- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (uint64_t)nextString;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexAutomatonTermsEnum

- (id)acceptWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v5 = *(&self->runAutomaton_ + 1);
  if (v5 && !OrgApacheLuceneUtilStringHelper_endsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(a3, v5))
  {
    if (BYTE1(self->seekBytesRef_) != 1)
    {
      goto LABEL_16;
    }

    if (a3)
    {
LABEL_15:
      if (([a3 compareToWithId:*(&self->linear_ + 1)] & 0x80000000) != 0)
      {
        v10 = &qword_1005578E0;
        if (atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire))
        {
          return *v10;
        }

        goto LABEL_10;
      }

LABEL_16:
      v10 = &qword_1005578E8;
      if (atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire))
      {
        return *v10;
      }

      goto LABEL_10;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  v6 = *(&self->super.doSeek_ + 1);
  if (!v6 || !a3)
  {
    goto LABEL_20;
  }

  v7 = [v6 runWithByteArray:*(a3 + 1) withInt:*(a3 + 4) withInt:*(a3 + 5)];
  v8 = BYTE1(self->seekBytesRef_);
  if (!v7)
  {
    if (!BYTE1(self->seekBytesRef_))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  explicit = atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire);
  if (v8)
  {
    v10 = OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_;
  }

  else
  {
    v10 = &qword_1005578D8;
  }

  if ((explicit & 1) == 0)
  {
LABEL_10:
    objc_opt_class();
  }

  return *v10;
}

- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (a3)
  {
    v4 = *(&self->curGen_ + 1);
    if (!v4)
    {
      goto LABEL_13;
    }

    [v4 copyBytesWithOrgApacheLuceneUtilBytesRef:?];
  }

  else
  {
    v5 = *(&self->super.doSeek_ + 1);
    if (!v5)
    {
      goto LABEL_13;
    }

    if ([v5 isAcceptWithInt:{objc_msgSend(*(&self->super.doSeek_ + 1), "getInitialState")}])
    {
      v6 = *(&self->curGen_ + 1);
      goto LABEL_9;
    }
  }

  if (![OrgApacheLuceneIndexAutomatonTermsEnum nextString]_0(self))
  {
    return 0;
  }

  v6 = *(&self->curGen_ + 1);
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_9:

  return [v6 get];
}

- (uint64_t)nextString
{
  v1 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
  v2 = *(a1 + 121);
  if (!v2)
  {
    goto LABEL_30;
  }

  v4 = *(a1 + 89);
  if (!v4)
  {
    goto LABEL_30;
  }

  [v2 growWithInt:{objc_msgSend(v4, "length") + 1}];
  v5 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
  v6 = *(a1 + 41);
  if (!v6)
  {
    goto LABEL_30;
  }

  [*(a1 + 121) setIntAtWithInt:0 withInt:{objc_msgSend(v6, "getInitialState")}];
  v7 = 0;
  v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
  while (1)
  {
    ++*(a1 + 81);
    *(a1 + v8[283]) = 0;
    v9 = [*(a1 + v1[289]) intAtWithInt:v7];
    if (v7 < [*(a1 + 89) length])
    {
      while (1)
      {
        v10 = *(a1 + 73);
        if (!v10)
        {
          break;
        }

        v11 = *(v10 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v9);
        }

        *(v10 + 16 + 8 * v9) = *(a1 + 81);
        v12 = [*(a1 + v5[282]) stepWithInt:v9 withInt:{objc_msgSend(*(a1 + 89), "byteAtWithInt:", v7)}];
        if (v12 == -1)
        {
          goto LABEL_20;
        }

        v13 = v12;
        v9 = v12;
        v14 = (v7 + 1);
        [*(a1 + v1[289]) setIntAtWithInt:v14 withInt:v12];
        if ((*(a1 + 57) & 1) == 0 && (*(a1 + v8[283]) & 1) == 0)
        {
          v15 = v8;
          v16 = v5;
          v17 = v1;
          v18 = *(a1 + 73);
          v19 = *(v18 + 8);
          if ((v9 & 0x80000000) != 0 || v13 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v9);
          }

          v20 = *(v18 + 16 + 8 * v13);
          v1 = v17;
          v5 = v16;
          v8 = v15;
          if (v20 == *(a1 + 81))
          {
            sub_100103174(a1, v7);
          }
        }

        v7 = (v7 + 1);
        if (v14 >= [*(a1 + 89) length])
        {
          goto LABEL_21;
        }
      }

LABEL_30:
      JreThrowNullPointerException();
    }

LABEL_20:
    v14 = v7;
LABEL_21:
    if (sub_100103404(a1, v9, v14))
    {
      return 1;
    }

    v21 = sub_1001037A4(a1, v14);
    if ((v21 & 0x80000000) != 0)
    {
      return 0;
    }

    LODWORD(v7) = v21;
    v22 = [*(a1 + v5[282]) stepWithInt:objc_msgSend(*(a1 + v1[289]) withInt:{"intAtWithInt:", v21), objc_msgSend(*(a1 + 89), "byteAtWithInt:", v21)}];
    if (v22 & 0x80000000) == 0 && ([*(a1 + v5[282]) isAcceptWithInt:v22])
    {
      return 1;
    }

    if (*(a1 + 57))
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexAutomatonTermsEnum;
  [(OrgApacheLuceneIndexFilteredTermsEnum *)&v3 dealloc];
}

@end