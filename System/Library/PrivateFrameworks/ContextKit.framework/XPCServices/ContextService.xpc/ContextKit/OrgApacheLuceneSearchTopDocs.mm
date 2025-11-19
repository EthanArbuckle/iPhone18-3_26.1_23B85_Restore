@interface OrgApacheLuceneSearchTopDocs
- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4;
- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4 withFloat:(float)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopDocs

- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4
{
  self->totalHits_ = a3;
  JreStrongAssign(&self->scoreDocs_, a4);
  self->maxScore_ = NAN;
  return self;
}

- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4 withFloat:(float)a5
{
  self->totalHits_ = a3;
  JreStrongAssign(&self->scoreDocs_, a4);
  self->maxScore_ = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocs;
  [(OrgApacheLuceneSearchTopDocs *)&v3 dealloc];
}

@end