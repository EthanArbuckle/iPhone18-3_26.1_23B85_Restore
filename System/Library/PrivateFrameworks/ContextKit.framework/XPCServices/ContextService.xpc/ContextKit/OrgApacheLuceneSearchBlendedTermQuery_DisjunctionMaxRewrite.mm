@interface OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)rewriteWithOrgApacheLuceneSearchQueryArray:(id)array;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite

- (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)rewriteWithOrgApacheLuceneSearchQueryArray:(id)array
{
  v4 = JavaUtilArrays_asListWithNSObjectArray_(array);
  initWithJavaUtilCollection_withFloat = new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(v4, self->tieBreakerMultiplier_);

  return initWithJavaUtilCollection_withFloat;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  getClass = [(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->tieBreakerMultiplier_ == *(equal + 2);
}

@end