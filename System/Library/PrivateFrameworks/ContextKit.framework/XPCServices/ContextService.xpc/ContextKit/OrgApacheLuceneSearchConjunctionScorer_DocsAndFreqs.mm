@interface OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs
- (OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs

- (OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  self->doc_ = -1;
  JreStrongAssign(&self->iterator_, iterator);
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  self->cost_ = [iterator cost];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs;
  [(OrgApacheLuceneSearchConjunctionScorer_DocsAndFreqs *)&v3 dealloc];
}

@end