@interface OrgApacheLuceneSearchScorer
- (OrgApacheLuceneSearchScorer)initWithOrgApacheLuceneSearchWeight:(id)weight;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchScorer

- (OrgApacheLuceneSearchScorer)initWithOrgApacheLuceneSearchWeight:(id)weight
{
  OrgApacheLuceneSearchDocIdSetIterator_init(self, a2);
  JreStrongAssign(&self->weight_, weight);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end