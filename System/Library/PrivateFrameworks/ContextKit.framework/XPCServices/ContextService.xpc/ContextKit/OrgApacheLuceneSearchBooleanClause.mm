@interface OrgApacheLuceneSearchBooleanClause
- (BOOL)isEqual:(id)equal;
- (BOOL)isProhibited;
- (BOOL)isRequired;
- (BOOL)isScoring;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setOccurWithOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum;
- (void)setQueryWithOrgApacheLuceneSearchQuery:(id)query;
@end

@implementation OrgApacheLuceneSearchBooleanClause

- (BOOL)isProhibited
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  return qword_100557BB0 == self->occur_;
}

- (BOOL)isRequired
{
  occur = self->occur_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  if (occur == OrgApacheLuceneSearchBooleanClause_OccurEnum_values_)
  {
    return 1;
  }

  v4 = self->occur_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  return v4 == qword_100557BA0;
}

- (BOOL)isScoring
{
  occur = self->occur_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  if (occur == OrgApacheLuceneSearchBooleanClause_OccurEnum_values_)
  {
    return 1;
  }

  v4 = self->occur_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  return v4 == qword_100557BA8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    query = self->query_;
    if (!query)
    {
      JreThrowNullPointerException();
    }

    v6 = [(OrgApacheLuceneSearchQuery *)query isEqual:*(equal + 1)];
    if (v6)
    {
      LOBYTE(v6) = self->occur_ == *(equal + 2);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  query = self->query_;
  if (!query || (v4 = [(OrgApacheLuceneSearchQuery *)query hash], (occur = self->occur_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([(JavaLangEnum *)occur hash]- v4 + 32 * v4);
}

- (id)description
{
  occur = self->occur_;
  if (!occur || (v4 = [(JavaLangEnum *)occur description], (query = self->query_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchQuery *)query description];
  return JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, v4);
}

- (void)setOccurWithOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(enum, @"Occur must not be null");

  JreStrongAssign(&self->occur_, v4);
}

- (void)setQueryWithOrgApacheLuceneSearchQuery:(id)query
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(query, @"Query must not be null");

  JreStrongAssign(&self->query_, v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanClause;
  [(OrgApacheLuceneSearchBooleanClause *)&v3 dealloc];
}

@end