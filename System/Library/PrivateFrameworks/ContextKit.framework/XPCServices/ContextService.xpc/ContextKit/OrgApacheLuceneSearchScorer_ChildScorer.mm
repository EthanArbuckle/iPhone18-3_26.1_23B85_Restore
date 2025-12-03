@interface OrgApacheLuceneSearchScorer_ChildScorer
- (OrgApacheLuceneSearchScorer_ChildScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchScorer_ChildScorer

- (OrgApacheLuceneSearchScorer_ChildScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withNSString:(id)string
{
  JreStrongAssign(&self->child_, scorer);
  JreStrongAssign(&self->relationship_, string);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScorer_ChildScorer;
  [(OrgApacheLuceneSearchScorer_ChildScorer *)&v3 dealloc];
}

@end