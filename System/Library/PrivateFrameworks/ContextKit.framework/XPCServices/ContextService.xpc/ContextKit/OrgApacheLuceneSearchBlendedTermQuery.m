@interface OrgApacheLuceneSearchBlendedTermQuery
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!a3)
    {
      goto LABEL_11;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(*(&self->super.boost_ + 1), *(a3 + 12));
    if (v5)
    {
      v5 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(*(&self->boosts_ + 4), *(a3 + 28));
      if (v5)
      {
        v5 = JavaUtilArrays_equalsWithFloatArray_withFloatArray_(*(&self->terms_ + 4), *(a3 + 20));
        if (v5)
        {
          v6 = *(&self->contexts_ + 4);
          if (v6)
          {
            LOBYTE(v5) = [v6 isEqual:*(a3 + 36)];
            return v5;
          }

LABEL_11:
          JreThrowNullPointerException();
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v9 hash];
  v4 = JavaUtilArrays_hashCodeWithNSObjectArray_(*(&self->super.boost_ + 1));
  v5 = JavaUtilArrays_hashCodeWithNSObjectArray_(*(&self->boosts_ + 4));
  v6 = JavaUtilArrays_hashCodeWithFloatArray_(*(&self->terms_ + 4));
  if (!*(&self->contexts_ + 4))
  {
    JreThrowNullPointerException();
  }

  v7 = v5 - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return ([*(&self->contexts_ + 4) hash] - (v6 - v7 + 32 * v7) + 32 * (v6 - v7 + 32 * v7));
}

- (id)toStringWithNSString:(id)a3
{
  v5 = objc_autorelease(new_JavaLangStringBuilder_initWithNSString_(@"Blended("));
  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = 0;
  while (1)
  {
    v9 = *(v6 + 8);
    if (v8 >= v9)
    {
      break;
    }

    if (v8)
    {
      [(JavaLangStringBuilder *)v7 appendWithNSString:@" "];
      v6 = *(&self->super.boost_ + 1);
      v9 = *(v6 + 8);
    }

    if (v8 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v8);
    }

    v10 = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(*(v6 + 24 + 8 * v8));
    v12 = *(&self->terms_ + 4);
    if (v12)
    {
      v13 = v10;
      v14 = *(v12 + 8);
      if (v8 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v8);
      }

      LODWORD(v11) = *(v12 + 12 + 4 * v8);
      [(OrgApacheLuceneSearchQuery *)v13 setBoostWithFloat:v11];
      [(JavaLangStringBuilder *)v7 appendWithNSString:[(OrgApacheLuceneSearchTermQuery *)v13 toStringWithNSString:a3]];
      ++v8;
      v6 = *(&self->super.boost_ + 1);
      if (v6)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:@""]);

  return [(JavaLangStringBuilder *)v7 description];
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v3 = self;
  v4 = *(&self->boosts_ + 4);
  if (!v4)
  {
    goto LABEL_62;
  }

  v6 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v4, v4[2]);
  if (!v6)
  {
    goto LABEL_62;
  }

  v7 = v6;
  size = v6->super.size_;
  v9 = &OBJC_IVAR___OrgApacheLuceneIndexTermContext_topReaderContext_;
  if (size >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v7 + 24 + 8 * v10);
      if (!v11)
      {
        break;
      }

      if (!a3)
      {
        goto LABEL_62;
      }

      v12 = *(v11 + 8);
      if (v12 != [a3 getContext])
      {
        goto LABEL_10;
      }

LABEL_13:
      ++v10;
      size = *(v7 + 8);
      if (v10 >= size)
      {
        v18 = size;
        goto LABEL_17;
      }
    }

    if (!a3)
    {
      goto LABEL_62;
    }

LABEL_10:
    v13 = [a3 getContext];
    v14 = *(&v3->super.boost_ + 1);
    if (!v14)
    {
      goto LABEL_62;
    }

    v15 = v13;
    v16 = *(v14 + 8);
    if (v10 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v10);
    }

    v17 = OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(v15, *(v14 + 24 + 8 * v10));
    IOSObjectArray_Set(v7, v10, v17);
    goto LABEL_13;
  }

  v18 = size;
LABEL_17:
  v19 = (v7 + 24);
  v20 = v7 + 24 + 8 * v18;
  if (v7 + 24 >= v20)
  {
    v22 = 0;
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v24 = *v19++;
      v23 = v24;
      if (!v24)
      {
        goto LABEL_62;
      }

      v21 = JavaLangMath_maxWithInt_withInt_(v21, [v23 docFreq]);
      if ([v23 totalTermFreq] == -1 || v22 == -1)
      {
        v22 = -1;
      }

      else
      {
        v22 += [v23 totalTermFreq];
      }
    }

    while (v19 < v20);
    size = *(v7 + 8);
  }

  if (size >= 1)
  {
    v26 = 0;
    v27 = v3;
    do
    {
      v28 = *(v7 + 24 + 8 * v26);
      if (atomic_load_explicit(OrgApacheLuceneSearchBlendedTermQuery__initialized, memory_order_acquire))
      {
        if (!v28)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_1000361F0();
        if (!v28)
        {
          goto LABEL_62;
        }
      }

      v29 = *&v28[*v9];
      if (!v29)
      {
        goto LABEL_62;
      }

      v30 = [v29 leaves];
      if (v30)
      {
        v31 = [v30 size];
      }

      else
      {
        v31 = 1;
      }

      v32 = v9;
      v33 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(*&v28[*v9]);
      if (v31 >= 1)
      {
        v34 = 0;
        do
        {
          v35 = [v28 getWithInt:v34];
          if (v35)
          {
            [(OrgApacheLuceneIndexTermContext *)v33 register__WithOrgApacheLuceneIndexTermState:v35 withInt:v34];
          }

          v34 = (v34 + 1);
        }

        while (v31 != v34);
      }

      [(OrgApacheLuceneIndexTermContext *)v33 accumulateStatisticsWithInt:v21 withLong:v22];
      IOSObjectArray_Set(v7, v26++, v33);
      v9 = v32;
    }

    while (v26 < *(v7 + 8));
    v3 = v27;
  }

  v36 = *(&v3->super.boost_ + 1);
  if (!v36)
  {
LABEL_62:
    JreThrowNullPointerException();
  }

  v37 = [IOSObjectArray arrayWithLength:*(v36 + 8) type:OrgApacheLuceneSearchTermQuery_class_()];
  v38 = *(&v3->super.boost_ + 1);
  if (*(v38 + 8) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = *(v7 + 8);
      if (v39 >= v40)
      {
        IOSArray_throwOutOfBoundsWithMsg(v40, v39);
      }

      initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(*(v38 + 24 + 8 * v39), *(v7 + 24 + 8 * v39));
      IOSObjectArray_SetAndConsume(v37, v39, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext);
      v43 = v37->super.size_;
      if (v39 >= v43)
      {
        IOSArray_throwOutOfBoundsWithMsg(v43, v39);
      }

      v44 = (&v37->elementType_)[v39];
      if (!v44)
      {
        goto LABEL_62;
      }

      v45 = *(&v3->terms_ + 4);
      if (!v45)
      {
        goto LABEL_62;
      }

      v46 = *(v45 + 8);
      if (v39 >= v46)
      {
        IOSArray_throwOutOfBoundsWithMsg(v46, v39);
      }

      LODWORD(v42) = *(v45 + 12 + 4 * v39);
      [(IOSClass *)v44 setBoostWithFloat:v42];
      ++v39;
      v38 = *(&v3->super.boost_ + 1);
    }

    while (v39 < *(v38 + 8));
  }

  v47 = *(&v3->contexts_ + 4);
  if (!v47)
  {
    goto LABEL_62;
  }

  v48 = [v47 rewriteWithOrgApacheLuceneSearchQueryArray:v37];
  if (!v48)
  {
    goto LABEL_62;
  }

  v49 = v48;
  [(OrgApacheLuceneSearchQuery *)v3 getBoost];
  [v49 setBoostWithFloat:?];
  return v49;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  [(OrgApacheLuceneSearchBlendedTermQuery *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE_, [OrgApacheLuceneSearchBlendedTermQuery__1 alloc]);
    v2 = [OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite alloc];
    v2->tieBreakerMultiplier_ = 0.01;
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE_, v2);
    atomic_store(1u, OrgApacheLuceneSearchBlendedTermQuery__initialized);
  }
}

@end