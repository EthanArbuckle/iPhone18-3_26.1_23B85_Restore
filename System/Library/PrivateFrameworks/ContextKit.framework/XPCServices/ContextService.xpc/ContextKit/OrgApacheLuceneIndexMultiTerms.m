@interface OrgApacheLuceneIndexMultiTerms
- (id)getMax;
- (id)getMin;
- (id)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (id)iterator;
- (int)getDocCount;
- (int64_t)getSumDocFreq;
- (int64_t)getSumTotalTermFreq;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiTerms

- (id)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  v7 = new_JavaUtilArrayList_init();
  subs = self->subs_;
  if (!subs)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = 0;
  while (v10 < subs->super.size_)
  {
    v11 = (&subs->elementType_)[v10];
    if (v11)
    {
      v12 = [(IOSClass *)v11 intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:a3 withOrgApacheLuceneUtilBytesRef:a4];
      if (v12)
      {
        [(JavaUtilArrayList *)v9 addWithId:new_OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_initWithOrgApacheLuceneIndexTermsEnum_withInt_(v12, v10)];
      }

      ++v10;
      subs = self->subs_;
      if (subs)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  if ([(JavaUtilArrayList *)v9 size]<= 0)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005714C();
    }

    return OrgApacheLuceneIndexTermsEnum_EMPTY_;
  }

  else
  {
    v13 = new_OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(self->subSlices_);
    if ((atomic_load_explicit(OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100057158();
    }

    v14 = [(JavaUtilArrayList *)v9 toArrayWithNSObjectArray:OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_EMPTY_ARRAY_];

    return [(OrgApacheLuceneIndexMultiTermsEnum *)v13 resetWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndexArray:v14];
  }
}

- (id)getMin
{
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_13;
  }

  p_elementType = &subs->elementType_;
  v4 = &(&subs->elementType_)[subs->super.size_];
  if (&subs->elementType_ < v4)
  {
    v5 = 0;
    while (1)
    {
      v7 = *p_elementType++;
      v6 = v7;
      if (!v7)
      {
        break;
      }

      v8 = [v6 getMin];
      v9 = v8;
      if (!v5)
      {
        goto LABEL_8;
      }

      if (!v8)
      {
        break;
      }

      if (([v8 compareToWithId:v5] & 0x80000000) != 0)
      {
LABEL_8:
        v5 = v9;
      }

      if (p_elementType >= v4)
      {
        return v5;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)getMax
{
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_13;
  }

  p_elementType = &subs->elementType_;
  v4 = &(&subs->elementType_)[subs->super.size_];
  if (&subs->elementType_ < v4)
  {
    v5 = 0;
    while (1)
    {
      v7 = *p_elementType++;
      v6 = v7;
      if (!v7)
      {
        break;
      }

      v8 = [v6 getMax];
      v9 = v8;
      if (!v5)
      {
        goto LABEL_8;
      }

      if (!v8)
      {
        break;
      }

      if ([v8 compareToWithId:v5] >= 1)
      {
LABEL_8:
        v5 = v9;
      }

      if (p_elementType >= v4)
      {
        return v5;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)iterator
{
  v3 = new_JavaUtilArrayList_init();
  subs = self->subs_;
  if (!subs)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = 0;
  while (v6 < subs->super.size_)
  {
    v7 = (&subs->elementType_)[v6];
    if (v7)
    {
      v8 = [(IOSClass *)v7 iterator];
      if (v8)
      {
        [(JavaUtilArrayList *)v5 addWithId:new_OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_initWithOrgApacheLuceneIndexTermsEnum_withInt_(v8, v6)];
      }

      ++v6;
      subs = self->subs_;
      if (subs)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  if ([(JavaUtilArrayList *)v5 size]<= 0)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005714C();
    }

    return OrgApacheLuceneIndexTermsEnum_EMPTY_;
  }

  else
  {
    v9 = new_OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(self->subSlices_);
    if ((atomic_load_explicit(OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100057158();
    }

    v10 = [(JavaUtilArrayList *)v5 toArrayWithNSObjectArray:OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_EMPTY_ARRAY_];

    return [(OrgApacheLuceneIndexMultiTermsEnum *)v9 resetWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndexArray:v10];
  }
}

- (int64_t)getSumTotalTermFreq
{
  subs = self->subs_;
  if (!subs)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v3 = 0;
  p_elementType = &subs->elementType_;
  v5 = &(&subs->elementType_)[subs->super.size_];
  while (p_elementType < v5)
  {
    v6 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v7 = [v6 getSumTotalTermFreq];
    v3 += v7;
    if (v7 == -1)
    {
      return -1;
    }
  }

  return v3;
}

- (int64_t)getSumDocFreq
{
  subs = self->subs_;
  if (!subs)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v3 = 0;
  p_elementType = &subs->elementType_;
  v5 = &(&subs->elementType_)[subs->super.size_];
  while (p_elementType < v5)
  {
    v6 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v7 = [v6 getSumDocFreq];
    v3 += v7;
    if (v7 == -1)
    {
      return -1;
    }
  }

  return v3;
}

- (int)getDocCount
{
  subs = self->subs_;
  if (!subs)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v3 = 0;
  p_elementType = &subs->elementType_;
  v5 = &(&subs->elementType_)[subs->super.size_];
  while (p_elementType < v5)
  {
    v6 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v7 = [v6 getDocCount];
    v3 += v7;
    if (v7 == -1)
    {
      return -1;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiTerms;
  [(OrgApacheLuceneIndexMultiTerms *)&v3 dealloc];
}

@end