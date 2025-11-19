@interface OrgApacheLuceneSearchTopFieldDocs
- (OrgApacheLuceneSearchTopFieldDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4 withOrgApacheLuceneSearchSortFieldArray:(id)a5 withFloat:(float)a6;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldDocs

- (OrgApacheLuceneSearchTopFieldDocs)initWithInt:(int)a3 withOrgApacheLuceneSearchScoreDocArray:(id)a4 withOrgApacheLuceneSearchSortFieldArray:(id)a5 withFloat:(float)a6
{
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self, a3, a4, a6);
  JreStrongAssign((&self->super.maxScore_ + 1), a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldDocs;
  [(OrgApacheLuceneSearchTopDocs *)&v3 dealloc];
}

@end