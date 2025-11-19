@interface OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice
- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice)initWithInt:(int)a3 withOrgApacheLuceneIndexReaderSlice:(id)a4;
- (id)description;
- (void)dealloc;
- (void)resetWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice

- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice)initWithInt:(int)a3 withOrgApacheLuceneIndexReaderSlice:(id)a4
{
  JreStrongAssign(&self->subSlice_, a4);
  self->index_ = a3;
  return self;
}

- (void)resetWithOrgApacheLuceneIndexTermsEnum:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  JreStrongAssign(&self->terms_, a3);

  JreStrongAssign(&self->current_, a4);
}

- (id)description
{
  subSlice = self->subSlice_;
  if (!subSlice)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneIndexReaderSlice *)subSlice description];
  terms = self->terms_;
  return JreStrcat("$C@", v5, v6, v7, v8, v9, v10, v11, v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice;
  [(OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice *)&v3 dealloc];
}

@end