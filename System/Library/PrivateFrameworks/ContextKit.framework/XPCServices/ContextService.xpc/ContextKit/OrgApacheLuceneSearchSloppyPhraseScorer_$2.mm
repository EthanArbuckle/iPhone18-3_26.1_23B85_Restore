@interface OrgApacheLuceneSearchSloppyPhraseScorer_$2
- (OrgApacheLuceneSearchSloppyPhraseScorer_$2)initWithOrgApacheLuceneSearchSloppyPhraseScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchSloppyPhraseScorer_$2

- (OrgApacheLuceneSearchSloppyPhraseScorer_$2)initWithOrgApacheLuceneSearchSloppyPhraseScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  JreStrongAssign(&self->this$0_, scorer);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSloppyPhraseScorer__2;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end