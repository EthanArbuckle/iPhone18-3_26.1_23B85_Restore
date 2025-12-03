@interface OrgApacheLuceneSearchTopFieldDocs
- (OrgApacheLuceneSearchTopFieldDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array withOrgApacheLuceneSearchSortFieldArray:(id)fieldArray withFloat:(float)float;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldDocs

- (OrgApacheLuceneSearchTopFieldDocs)initWithInt:(int)int withOrgApacheLuceneSearchScoreDocArray:(id)array withOrgApacheLuceneSearchSortFieldArray:(id)fieldArray withFloat:(float)float
{
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self, int, array, float);
  JreStrongAssign((&self->super.maxScore_ + 1), fieldArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldDocs;
  [(OrgApacheLuceneSearchTopDocs *)&v3 dealloc];
}

@end