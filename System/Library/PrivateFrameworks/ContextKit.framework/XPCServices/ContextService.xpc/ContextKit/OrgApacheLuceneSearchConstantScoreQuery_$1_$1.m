@interface OrgApacheLuceneSearchConstantScoreQuery_$1_$1
- (OrgApacheLuceneSearchConstantScoreQuery_$1_$1)initWithFloat:(float)a3 withOrgApacheLuceneSearchScorer:(id)a4 withOrgApacheLuceneSearchScorer:(id)a5;
- (id)getChildren;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_$1_$1

- (id)getChildren
{
  v2 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->val$innerScorer_, @"constant");

  return JavaUtilCollections_singletonWithId_(v2);
}

- (OrgApacheLuceneSearchConstantScoreQuery_$1_$1)initWithFloat:(float)a3 withOrgApacheLuceneSearchScorer:(id)a4 withOrgApacheLuceneSearchScorer:(id)a5
{
  self->val$score_ = a3;
  JreStrongAssign(&self->val$innerScorer_, a4);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery__1__1;
  [(OrgApacheLuceneSearchFilterScorer *)&v3 dealloc];
}

@end