@interface OrgApacheLuceneSearchFilteredQuery
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v4 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  v5 = *(&self->super.boost_ + 1);
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 addWithOrgApacheLuceneSearchQuery:v5 withOrgApacheLuceneSearchBooleanClause_OccurEnum:OrgApacheLuceneSearchBooleanClause_OccurEnum_values_];
  v6 = *(&self->filter_ + 4);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 rewriteWithOrgApacheLuceneSearchFilter:*(&self->query_ + 4)];
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 addWithOrgApacheLuceneSearchQuery:v7 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557BA0];
  v8 = [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 build];
  if (!v8)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = v8;
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [v9 setBoostWithFloat:?];
  return v9;
}

- (id)toStringWithNSString:(id)a3
{
  v5 = new_JavaLangStringBuilder_init();
  -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @"filtered(");
  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [v6 toStringWithNSString:a3]);
  [(JavaLangStringBuilder *)v5 appendWithNSString:@"->"]);
  [(JavaLangStringBuilder *)v5 appendWithId:*(&self->query_ + 4)];
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [(JavaLangStringBuilder *)v5 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v7)];

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchFilteredQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v10 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!a3)
    {
      goto LABEL_13;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v6 = *(a3 + 12);
    if (!v6)
    {
      goto LABEL_13;
    }

    v5 = [v6 isEqual:*(&self->super.boost_ + 1)];
    if (!v5)
    {
      return v5;
    }

    v7 = *(a3 + 20);
    if (!v7)
    {
      goto LABEL_13;
    }

    v5 = [v7 isEqual:*(&self->query_ + 4)];
    if (!v5)
    {
      return v5;
    }

    v8 = *(a3 + 28);
    if (!v8)
    {
LABEL_13:
      JreThrowNullPointerException();
    }

    LOBYTE(v5) = [v8 isEqual:*(&self->filter_ + 4)];
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = OrgApacheLuceneSearchFilteredQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v11 hash];
  v4 = *(&self->filter_ + 4);
  if (!v4 || (v5 = [v4 hash], (v6 = *(&self->super.boost_ + 1)) == 0) || (v7 = objc_msgSend(v6, "hash"), (v8 = *(&self->query_ + 4)) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = v7 - (v5 - v3 + 32 * v3) + 32 * (v5 - v3 + 32 * v3);
  return ([v8 hash] - v9 + 32 * v9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery;
  [(OrgApacheLuceneSearchFilteredQuery *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchFilteredQuery_RANDOM_ACCESS_FILTER_STRATEGY_, [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchFilteredQuery_LEAP_FROG_FILTER_FIRST_STRATEGY_, [OrgApacheLuceneSearchFilteredQuery__1 alloc]);
    JreStrongAssign(&OrgApacheLuceneSearchFilteredQuery_LEAP_FROG_QUERY_FIRST_STRATEGY_, OrgApacheLuceneSearchFilteredQuery_LEAP_FROG_FILTER_FIRST_STRATEGY_);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchFilteredQuery_QUERY_FIRST_FILTER_STRATEGY_, [OrgApacheLuceneSearchFilteredQuery__2 alloc]);
    atomic_store(1u, OrgApacheLuceneSearchFilteredQuery__initialized);
  }
}

@end