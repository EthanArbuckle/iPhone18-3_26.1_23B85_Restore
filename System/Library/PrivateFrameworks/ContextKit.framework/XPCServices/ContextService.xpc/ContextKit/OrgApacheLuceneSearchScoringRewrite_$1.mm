@interface OrgApacheLuceneSearchScoringRewrite_$1
- (id)buildWithId:(id)id;
- (id)getTopLevelBuilder;
- (void)addClauseWithId:(id)id withOrgApacheLuceneIndexTerm:(id)term withInt:(int)int withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context;
- (void)checkMaxClauseCountWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchScoringRewrite_$1

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
  *&v10 = float;
  [(OrgApacheLuceneSearchQuery *)v9 setBoostWithFloat:v10];
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  v11 = qword_100557BA8;

  [id addWithOrgApacheLuceneSearchQuery:v9 withOrgApacheLuceneSearchBooleanClause_OccurEnum:v11];
}

- (void)checkMaxClauseCountWithInt:(int)int
{
  if (OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount() < int)
  {
    v3 = new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
    objc_exception_throw(v3);
  }
}

@end