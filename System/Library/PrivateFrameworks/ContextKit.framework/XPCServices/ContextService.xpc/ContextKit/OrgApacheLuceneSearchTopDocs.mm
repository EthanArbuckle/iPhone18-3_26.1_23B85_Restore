@interface OrgApacheLuceneSearchTopDocs
- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array;
- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array withFloat:(float)float;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopDocs

- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array
{
  self->totalHits_ = int;
  JreStrongAssign(&self->scoreDocs_, array);
  self->maxScore_ = NAN;
  return self;
}

- (OrgApacheLuceneSearchTopDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array withFloat:(float)float
{
  self->totalHits_ = int;
  JreStrongAssign(&self->scoreDocs_, array);
  self->maxScore_ = float;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocs;
  [(OrgApacheLuceneSearchTopDocs *)&v3 dealloc];
}

@end