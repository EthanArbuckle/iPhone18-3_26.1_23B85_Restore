@interface OrgApacheLuceneSearchSloppyPhraseScorer_$2
- (OrgApacheLuceneSearchSloppyPhraseScorer_$2)initWithOrgApacheLuceneSearchSloppyPhraseScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchSloppyPhraseScorer_$2

- (OrgApacheLuceneSearchSloppyPhraseScorer_$2)initWithOrgApacheLuceneSearchSloppyPhraseScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSloppyPhraseScorer__2;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end