@interface OrgApacheLuceneSearchExactPhraseScorer_$1
- (OrgApacheLuceneSearchExactPhraseScorer_$1)initWithOrgApacheLuceneSearchExactPhraseScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExactPhraseScorer_$1

- (OrgApacheLuceneSearchExactPhraseScorer_$1)initWithOrgApacheLuceneSearchExactPhraseScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  JreStrongAssign(&self->this$0_, scorer);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExactPhraseScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end