@interface OrgApacheLuceneSearchScorer_ChildScorer
- (OrgApacheLuceneSearchScorer_ChildScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchScorer_ChildScorer

- (OrgApacheLuceneSearchScorer_ChildScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withNSString:(id)a4
{
  JreStrongAssign(&self->child_, a3);
  JreStrongAssign(&self->relationship_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScorer_ChildScorer;
  [(OrgApacheLuceneSearchScorer_ChildScorer *)&v3 dealloc];
}

@end