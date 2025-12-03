@interface OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice
- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice)initWithInt:(int)int withOrgApacheLuceneIndexReaderSlice:(id)slice;
- (id)description;
- (void)dealloc;
- (void)resetWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice

- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice)initWithInt:(int)int withOrgApacheLuceneIndexReaderSlice:(id)slice
{
  JreStrongAssign(&self->subSlice_, slice);
  self->index_ = int;
  return self;
}

- (void)resetWithOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilBytesRef:(id)ref
{
  JreStrongAssign(&self->terms_, enum);

  JreStrongAssign(&self->current_, ref);
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