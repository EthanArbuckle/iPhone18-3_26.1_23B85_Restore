@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite
- (id)buildWithId:(id)id;
- (id)getTopLevelBuilder;
- (void)addClauseWithId:(id)id withOrgApacheLuceneIndexTerm:(id)term withInt:(int)int withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite

- (id)getTopLevelBuilder
{
  v2 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v2 setDisableCoordWithBoolean:1];
  return v2;
}

- (id)buildWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id build];
}

- (void)addClauseWithId:(id)id withOrgApacheLuceneIndexTerm:(id)term withInt:(int)int withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context
{
  v9 = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(term, context);
  v10 = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(v9);
  *&v11 = float;
  [(OrgApacheLuceneSearchQuery *)v10 setBoostWithFloat:v11];
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  v12 = qword_100557BA8;

  [id addWithOrgApacheLuceneSearchQuery:v10 withOrgApacheLuceneSearchBooleanClause_OccurEnum:v12];
}

@end