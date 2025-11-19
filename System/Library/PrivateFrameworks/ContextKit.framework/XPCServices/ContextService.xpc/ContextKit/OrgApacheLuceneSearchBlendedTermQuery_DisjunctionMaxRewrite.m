@interface OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)rewriteWithOrgApacheLuceneSearchQueryArray:(id)a3;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite

- (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)rewriteWithOrgApacheLuceneSearchQueryArray:(id)a3
{
  v4 = JavaUtilArrays_asListWithNSObjectArray_(a3);
  initWithJavaUtilCollection_withFloat = new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(v4, self->tieBreakerMultiplier_);

  return initWithJavaUtilCollection_withFloat;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *)self getClass];
  if (v5 != [a3 getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->tieBreakerMultiplier_ == *(a3 + 2);
}

@end