@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite
- (id)buildWithId:(id)a3;
- (id)getTopLevelBuilder;
- (void)addClauseWithId:(id)a3 withOrgApacheLuceneIndexTerm:(id)a4 withInt:(int)a5 withFloat:(float)a6 withOrgApacheLuceneIndexTermContext:(id)a7;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite

- (id)getTopLevelBuilder
{
  v2 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v2 setDisableCoordWithBoolean:1];
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

- (void)addClauseWithId:(id)a3 withOrgApacheLuceneIndexTerm:(id)a4 withInt:(int)a5 withFloat:(float)a6 withOrgApacheLuceneIndexTermContext:(id)a7
{
  v9 = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(a4, a7);
  *&v10 = a6;
  [(OrgApacheLuceneSearchQuery *)v9 setBoostWithFloat:v10];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  v11 = qword_100557BA8;

  [a3 addWithOrgApacheLuceneSearchQuery:v9 withOrgApacheLuceneSearchBooleanClause_OccurEnum:v11];
}

@end