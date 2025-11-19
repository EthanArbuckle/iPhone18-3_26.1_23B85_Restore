@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsBlendedFreqScoringRewrite
- (id)buildWithId:(id)a3;
- (id)getTopLevelBuilder;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsBlendedFreqScoringRewrite

- (id)getTopLevelBuilder
{
  v2 = new_OrgApacheLuceneSearchBlendedTermQuery_Builder_init();
  if ((atomic_load_explicit(OrgApacheLuceneSearchBlendedTermQuery__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000361F0();
  }

  [(OrgApacheLuceneSearchBlendedTermQuery_Builder *)v2 setRewriteMethodWithOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE_];
  return v2;
}

- (id)buildWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 build];
}

@end