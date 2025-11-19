@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)initWithOrgApacheLuceneSearchDocIdSet:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)initWithOrgApacheLuceneSearchDocIdSet:(id)a3
{
  JreStrongAssign(&self->set_, a3);
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