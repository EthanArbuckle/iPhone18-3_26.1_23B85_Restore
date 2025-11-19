@interface OrgApacheLuceneSearchScorer
- (OrgApacheLuceneSearchScorer)initWithOrgApacheLuceneSearchWeight:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchScorer

- (OrgApacheLuceneSearchScorer)initWithOrgApacheLuceneSearchWeight:(id)a3
{
  OrgApacheLuceneSearchDocIdSetIterator_init(self, a2);
  JreStrongAssign(&self->weight_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end