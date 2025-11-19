@interface OrgApacheLuceneSearchExactPhraseScorer_$1
- (OrgApacheLuceneSearchExactPhraseScorer_$1)initWithOrgApacheLuceneSearchExactPhraseScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExactPhraseScorer_$1

- (OrgApacheLuceneSearchExactPhraseScorer_$1)initWithOrgApacheLuceneSearchExactPhraseScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExactPhraseScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end