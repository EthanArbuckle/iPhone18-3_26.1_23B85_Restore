@interface OrgApacheLuceneSearchConstantScoreQuery_$1_$1
- (OrgApacheLuceneSearchConstantScoreQuery_$1_$1)initWithFloat:(float)float withOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer;
- (id)getChildren;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_$1_$1

- (id)getChildren
{
  v2 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->val$innerScorer_, @"constant");

  return JavaUtilCollections_singletonWithId_(v2);
}

- (OrgApacheLuceneSearchConstantScoreQuery_$1_$1)initWithFloat:(float)float withOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer
{
  self->val$score_ = float;
  JreStrongAssign(&self->val$innerScorer_, scorer);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, searchScorer);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery__1__1;
  [(OrgApacheLuceneSearchFilterScorer *)&v3 dealloc];
}

@end