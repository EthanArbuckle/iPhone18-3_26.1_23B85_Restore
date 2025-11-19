@interface OrgApacheLuceneSearchMultiTermQuery
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)a3;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery

- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)a3
{
  v5 = new_OrgApacheLuceneUtilAttributeSource_init();

  return [(OrgApacheLuceneSearchMultiTermQuery *)self getTermsEnumWithOrgApacheLuceneIndexTerms:a3 withOrgApacheLuceneUtilAttributeSource:v5];
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v5 = *(&self->field_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 rewriteWithOrgApacheLuceneIndexIndexReader:a3 withOrgApacheLuceneSearchMultiTermQuery:self];
}

- (unint64_t)hash
{
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  v4 = JavaLangFloat_floatToIntBitsWithFloat_(v3);
  v5 = *(&self->field_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 hash] - v4 + 32 * v4 + 961;
  v7 = *(&self->super.boost_ + 1);
  if (v7)
  {
    return ([v7 hash] - v6 + 32 * v6);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3 && (v5 = -[OrgApacheLuceneSearchMultiTermQuery getClass](self, "getClass"), v5 == [a3 getClass]))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v11.receiver = self;
    v11.super_class = OrgApacheLuceneSearchMultiTermQuery;
    v6 = [(OrgApacheLuceneSearchQuery *)&v11 isEqual:a3];
    if (v6)
    {
      v7 = *(&self->field_ + 4);
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      v6 = [v7 isEqual:*(a3 + 20)];
      if (v6)
      {
        v8 = *(a3 + 12);
        v9 = *(&self->super.boost_ + 1);
        if (v8)
        {
          LOBYTE(v6) = [v8 isEqual:v9];
        }

        else
        {
          LOBYTE(v6) = v9 == 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQuery;
  [(OrgApacheLuceneSearchMultiTermQuery *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_REWRITE_, [OrgApacheLuceneSearchMultiTermQuery__1 alloc]);
    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_FILTER_REWRITE_, OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_REWRITE_);
    if ((atomic_load_explicit(OrgApacheLuceneSearchScoringRewrite__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000637F0();
    }

    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_REWRITE_, OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_);
    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_QUERY_REWRITE_, OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_REWRITE_);
    if ((atomic_load_explicit(OrgApacheLuceneSearchScoringRewrite__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000637F0();
    }

    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_REWRITE_, OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_REWRITE_);
    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE_, OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_REWRITE_);
    atomic_store(1u, OrgApacheLuceneSearchMultiTermQuery__initialized);
  }
}

@end