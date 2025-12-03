@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)initWithOrgApacheLuceneSearchDocIdSet:(id)set;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)initWithOrgApacheLuceneSearchDocIdSet:(id)set
{
  JreStrongAssign(&self->set_, set);
  JreStrongAssign(&self->weight_, 0);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet;
  [(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *)&v3 dealloc];
}

@end