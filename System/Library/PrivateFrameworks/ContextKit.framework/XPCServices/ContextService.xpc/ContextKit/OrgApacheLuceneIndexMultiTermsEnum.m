@interface OrgApacheLuceneIndexMultiTermsEnum
+ (void)initialize;
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)next;
- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4;
- (id)pullTop;
- (id)resetWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndexArray:(id)a3;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (int)docFreq;
- (int64_t)totalTermFreq;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum

- (id)resetWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndexArray:(id)a3
{
  v3 = self;
  self->numSubs_ = 0;
  self->numTop_ = 0;
  queue = self->queue_;
  if (!queue)
  {
    goto LABEL_21;
  }

  [(OrgApacheLuceneUtilPriorityQueue *)queue clear];
  if (*(a3 + 2) >= 1)
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = v7[3];
      if (!v8)
      {
        break;
      }

      v9 = *(v8 + 16);
      if (!v9)
      {
        break;
      }

      v10 = [v9 next];
      if (v10)
      {
        subs = v3->subs_;
        if (!subs)
        {
          break;
        }

        v12 = v10;
        v13 = *(v8 + 8);
        size = subs->super.size_;
        if (v13 < 0 || v13 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v13);
        }

        v15 = (&subs->elementType_)[v13];
        if (!v15)
        {
          break;
        }

        [(IOSClass *)v15 resetWithOrgApacheLuceneIndexTermsEnum:*(v8 + 16) withOrgApacheLuceneUtilBytesRef:v12];
        [(OrgApacheLuceneUtilPriorityQueue *)v3->queue_ addWithId:v15];
        currentSubs = v3->currentSubs_;
        if (!currentSubs)
        {
          break;
        }

        numSubs = v3->numSubs_;
        v3->numSubs_ = numSubs + 1;
        IOSObjectArray_Set(currentSubs, numSubs, v15);
      }

      ++v6;
      ++v7;
      if (v6 >= *(a3 + 2))
      {
        goto LABEL_16;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

LABEL_16:
  if (![(OrgApacheLuceneUtilPriorityQueue *)v3->queue_ size])
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005714C();
    }

    return OrgApacheLuceneIndexTermsEnum_EMPTY_;
  }

  return v3;
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  queue = self->queue_;
  if (!queue)
  {
LABEL_43:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPriorityQueue *)queue clear];
  self->numTop_ = 0;
  lastSeek = self->lastSeek_;
  if (lastSeek)
  {
    v7 = [(OrgApacheLuceneUtilBytesRef *)lastSeek compareToWithId:a3]< 1;
  }

  else
  {
    v7 = 0;
  }

  JreStrongAssign(&self->lastSeek_, 0);
  self->lastSeekExact_ = 1;
  if (self->numSubs_ >= 1)
  {
    v8 = 0;
    v33 = a3;
    do
    {
      currentSubs = self->currentSubs_;
      if (v7)
      {
        if (!currentSubs)
        {
          goto LABEL_43;
        }

        size = currentSubs->super.size_;
        if (v8 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v8);
        }

        v11 = (&currentSubs->elementType_)[v8];
        if (!v11)
        {
          goto LABEL_43;
        }

        if (v11[2].super.isa)
        {
          if (!a3)
          {
            goto LABEL_43;
          }

          v12 = [a3 compareToWithId:?];
          if (!v12)
          {
            goto LABEL_25;
          }

          if ((v12 & 0x80000000) == 0)
          {
            v13 = self->currentSubs_;
            v14 = v13->super.size_;
            if (v8 >= v14)
            {
              IOSArray_throwOutOfBoundsWithMsg(v14, v8);
            }

            v15 = (&v13->elementType_)[v8];
            if (!v15)
            {
              goto LABEL_43;
            }

            isa = v15[1].super.isa;
            if (!isa)
            {
              goto LABEL_43;
            }

            if ([(objc_class *)isa seekExactWithOrgApacheLuceneUtilBytesRef:a3])
            {
              goto LABEL_25;
            }
          }
        }
      }

      else
      {
        if (!currentSubs)
        {
          goto LABEL_43;
        }

        v17 = currentSubs->super.size_;
        if (v8 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v8);
        }

        v18 = (&currentSubs->elementType_)[v8];
        if (!v18)
        {
          goto LABEL_43;
        }

        v19 = v18[1].super.isa;
        if (!v19)
        {
          goto LABEL_43;
        }

        if (([(objc_class *)v19 seekExactWithOrgApacheLuceneUtilBytesRef:a3]& 1) != 0)
        {
LABEL_25:
          top = self->top_;
          if (!top)
          {
            goto LABEL_43;
          }

          numTop = self->numTop_;
          self->numTop_ = numTop + 1;
          v22 = self->currentSubs_;
          if (!v22)
          {
            goto LABEL_43;
          }

          v23 = v22->super.size_;
          if (v8 >= v23)
          {
            IOSArray_throwOutOfBoundsWithMsg(v23, v8);
          }

          IOSObjectArray_Set(top, numTop, (&v22->elementType_)[v8]);
          v24 = self->currentSubs_;
          v25 = v24->super.size_;
          if (v8 >= v25)
          {
            IOSArray_throwOutOfBoundsWithMsg(v25, v8);
          }

          v26 = (&v24->elementType_)[v8];
          if (!v26)
          {
            goto LABEL_43;
          }

          v27 = self->currentSubs_;
          v28 = v27->super.size_;
          if (v8 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, v8);
          }

          v29 = (&v27->elementType_)[v8];
          if (!v29)
          {
            goto LABEL_43;
          }

          v30 = v29[1].super.isa;
          if (!v30)
          {
            goto LABEL_43;
          }

          v31 = JreStrongAssign(&v26[2].super.isa, [(objc_class *)v30 term]);
          JreStrongAssign(&self->current_, v31);
          a3 = v33;
        }
      }

      ++v8;
    }

    while (v8 < self->numSubs_);
  }

  return self->numTop_ > 0;
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  queue = self->queue_;
  if (!queue || (([(OrgApacheLuceneUtilPriorityQueue *)queue clear], self->numTop_ = 0, self->lastSeekExact_ = 0, (lastSeek = self->lastSeek_) == 0) ? (v45 = 0) : (v45 = [(OrgApacheLuceneUtilBytesRef *)lastSeek compareToWithId:a3]< 1), (lastSeekScratch = self->lastSeekScratch_) == 0))
  {
LABEL_79:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)lastSeekScratch copyBytesWithOrgApacheLuceneUtilBytesRef:a3];
  JreStrongAssign(&self->lastSeek_, [(OrgApacheLuceneUtilBytesRefBuilder *)self->lastSeekScratch_ get]);
  if (self->numSubs_ >= 1)
  {
    v8 = 0;
    v44 = a3;
    do
    {
      currentSubs = self->currentSubs_;
      if (v45)
      {
        if (!currentSubs)
        {
          goto LABEL_79;
        }

        size = currentSubs->super.size_;
        if (v8 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v8);
        }

        v11 = (&currentSubs->elementType_)[v8];
        if (!v11)
        {
          goto LABEL_79;
        }

        if (!v11[2].super.isa)
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000169C0();
          }

          v16 = OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
          goto LABEL_31;
        }

        if (!a3)
        {
          goto LABEL_79;
        }

        v12 = [a3 compareToWithId:?];
        if (!v12)
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000169C0();
          }

          v16 = qword_100557A48;
          goto LABEL_31;
        }

        if ((v12 & 0x80000000) != 0)
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000169C0();
          }

          v16 = qword_100557A50;
          goto LABEL_31;
        }

        currentSubs = self->currentSubs_;
      }

      else if (!currentSubs)
      {
        goto LABEL_79;
      }

      v13 = currentSubs->super.size_;
      if (v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v8);
      }

      v14 = (&currentSubs->elementType_)[v8];
      if (!v14)
      {
        goto LABEL_79;
      }

      isa = v14[1].super.isa;
      if (!isa)
      {
        goto LABEL_79;
      }

      v16 = [(objc_class *)isa seekCeilWithOrgApacheLuceneUtilBytesRef:a3];
LABEL_31:
      if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000169C0();
      }

      if (v16 == qword_100557A48)
      {
        top = self->top_;
        if (!top)
        {
          goto LABEL_79;
        }

        numTop = self->numTop_;
        self->numTop_ = numTop + 1;
        v22 = self->currentSubs_;
        if (!v22)
        {
          goto LABEL_79;
        }

        v23 = v22->super.size_;
        if (v8 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v8);
        }

        IOSObjectArray_Set(top, numTop, (&v22->elementType_)[v8]);
        v24 = self->currentSubs_;
        v25 = v24->super.size_;
        if (v8 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v8);
        }

        v26 = (&v24->elementType_)[v8];
        if (!v26)
        {
          goto LABEL_79;
        }

        v27 = self->currentSubs_;
        v28 = v27->super.size_;
        if (v8 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v8);
        }

        v29 = (&v27->elementType_)[v8];
        if (!v29)
        {
          goto LABEL_79;
        }

        v30 = v29[1].super.isa;
        if (!v30)
        {
          goto LABEL_79;
        }

        v31 = JreStrongAssign(&v26[2].super.isa, [(objc_class *)v30 term]);
        JreStrongAssign(&self->current_, v31);
        v32 = self->currentSubs_;
        v33 = v32->super.size_;
        if (v8 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, v8);
        }

        [(OrgApacheLuceneUtilPriorityQueue *)self->queue_ addWithId:(&v32->elementType_)[v8]];
        a3 = v44;
      }

      else
      {
        if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000169C0();
        }

        v17 = self->currentSubs_;
        if (v16 == qword_100557A50)
        {
          if (!v17)
          {
            goto LABEL_79;
          }

          v34 = v17->super.size_;
          if (v8 >= v34)
          {
            IOSArray_throwOutOfBoundsWithMsg(v34, v8);
          }

          v35 = (&v17->elementType_)[v8];
          if (!v35)
          {
            goto LABEL_79;
          }

          v36 = self->currentSubs_;
          v37 = v36->super.size_;
          if (v8 >= v37)
          {
            IOSArray_throwOutOfBoundsWithMsg(v37, v8);
          }

          v38 = (&v36->elementType_)[v8];
          if (!v38)
          {
            goto LABEL_79;
          }

          v39 = v38[1].super.isa;
          if (!v39)
          {
            goto LABEL_79;
          }

          JreStrongAssign(&v35[2].super.isa, [(objc_class *)v39 term]);
          v40 = self->currentSubs_;
          v41 = v40->super.size_;
          if (v8 >= v41)
          {
            IOSArray_throwOutOfBoundsWithMsg(v41, v8);
          }

          [(OrgApacheLuceneUtilPriorityQueue *)self->queue_ addWithId:(&v40->elementType_)[v8]];
        }

        else
        {
          if (!v17)
          {
            goto LABEL_79;
          }

          v18 = v17->super.size_;
          if (v8 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v8);
          }

          v19 = (&v17->elementType_)[v8];
          if (!v19)
          {
            goto LABEL_79;
          }

          JreStrongAssign(&v19[2].super.isa, 0);
        }
      }

      ++v8;
    }

    while (v8 < self->numSubs_);
  }

  if (self->numTop_ <= 0)
  {
    if ([(OrgApacheLuceneUtilPriorityQueue *)self->queue_ size]< 1)
    {
      v42 = &OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v42;
      }
    }

    else
    {
      [OrgApacheLuceneIndexMultiTermsEnum pullTop]_0(self);
      v42 = &qword_100557A50;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v42;
      }
    }

LABEL_76:
    objc_opt_class();
    return *v42;
  }

  v42 = &qword_100557A48;
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_76;
  }

  return *v42;
}

- (id)pullTop
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_8;
  }

  *(a1 + 80) = [v2 fillTopWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSliceArray:*(a1 + 40)];
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v3 + 8);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 16);

  return JreStrongAssign((a1 + 88), v6);
}

- (id)next
{
  if (self->lastSeekExact_)
  {
    [(OrgApacheLuceneIndexMultiTermsEnum *)self seekCeilWithOrgApacheLuceneUtilBytesRef:self->current_];
    self->lastSeekExact_ = 0;
  }

  JreStrongAssign(&self->lastSeek_, 0);
  sub_1000562E4(self);
  queue = self->queue_;
  if (!queue)
  {
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneUtilPriorityQueue *)queue size]< 1)
  {
    JreStrongAssign(&self->current_, 0);
  }

  else
  {
    [OrgApacheLuceneIndexMultiTermsEnum pullTop]_0(self);
  }

  return self->current_;
}

- (int)docFreq
{
  if (self->numTop_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    top = self->top_;
    if (!top)
    {
      goto LABEL_12;
    }

    size = top->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    v7 = (&top->elementType_)[v3];
    if (!v7 || (isa = v7[1].super.isa) == 0)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    v4 += [(objc_class *)isa docFreq];
    ++v3;
  }

  while (v3 < self->numTop_);
  return v4;
}

- (int64_t)totalTermFreq
{
  if (self->numTop_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    top = self->top_;
    if (!top)
    {
      goto LABEL_14;
    }

    size = top->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    v7 = (&top->elementType_)[v3];
    if (!v7 || (isa = v7[1].super.isa) == 0)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    v9 = [(objc_class *)isa totalTermFreq];
    if (v9 == -1)
    {
      return -1;
    }

    v4 += v9;
    if (++v3 >= self->numTop_)
    {
      return v4;
    }
  }
}

- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    goto LABEL_5;
  }

  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (![(OrgApacheLuceneIndexMultiPostingsEnum *)v5 canReuseWithOrgApacheLuceneIndexMultiTermsEnum:self])
  {
LABEL_5:
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_30;
    }

    v5 = new_OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(self, subs->super.size_);
  }

  OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(self->top_, 0, self->numTop_, qword_100554040);
  if (self->numTop_ >= 1)
  {
    v7 = 0;
    while (1)
    {
      top = self->top_;
      if (!top)
      {
        break;
      }

      size = top->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v10 = (&top->elementType_)[v7];
      if (!v10[1].super.isa)
      {
        break;
      }

      subPostingsEnums = v5->subPostingsEnums_;
      isa = v10[3].super.isa;
      v13 = subPostingsEnums->super.size_;
      if (isa < 0 || isa >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, isa);
      }

      v14 = [(objc_class *)v10[1].super.isa postingsWithOrgApacheLuceneIndexPostingsEnum:(&subPostingsEnums->elementType_)[isa] withInt:a4];
      IOSObjectArray_Set(v5->subPostingsEnums_, SLODWORD(v10[3].super.isa), v14);
      subDocs = self->subDocs_;
      if (!subDocs)
      {
        break;
      }

      v16 = subDocs->super.size_;
      if (v7 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v7);
      }

      v17 = (&subDocs->elementType_)[v7];
      if (!v17)
      {
        break;
      }

      JreStrongAssign(&v17[1].super.isa, v14);
      v18 = self->subDocs_;
      v19 = v18->super.size_;
      if (v7 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v7);
      }

      v20 = (&v18->elementType_)[v7];
      if (!v20)
      {
        break;
      }

      JreStrongAssign(&v20[2].super.isa, v10[4].super.isa);
      if (++v7 >= self->numTop_)
      {
        goto LABEL_27;
      }
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = 0;
LABEL_27:
  v21 = self->subDocs_;

  return [(OrgApacheLuceneIndexMultiPostingsEnum *)v5 resetWithOrgApacheLuceneIndexMultiPostingsEnum_EnumWithSliceArray:v21 withInt:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554040, [OrgApacheLuceneIndexMultiTermsEnum__1 alloc]);
    atomic_store(1u, &OrgApacheLuceneIndexMultiTermsEnum__initialized);
  }
}

@end