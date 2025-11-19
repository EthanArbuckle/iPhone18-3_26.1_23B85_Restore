@interface OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs
- (OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs

- (OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  self->doc_ = -1;
  JreStrongAssign(&self->iterator_, a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->cost_ = [a3 cost];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs;
  [(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs *)&v3 dealloc];
}

@end