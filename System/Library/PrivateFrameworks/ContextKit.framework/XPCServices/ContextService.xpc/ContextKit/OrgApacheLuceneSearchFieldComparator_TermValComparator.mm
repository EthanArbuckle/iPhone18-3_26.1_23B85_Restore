@interface OrgApacheLuceneSearchFieldComparator_TermValComparator
- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4;
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (int)compareValuesWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermValComparator

- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 reader];

  return OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(v5, a4);
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 reader];

  return OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(v5, a4);
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  JreStrongAssign(&self->docTerms_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:a3 withNSString:self->field_]);
  JreStrongAssign(&self->docsWithField_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:a3 withNSString:self->field_]);
  docsWithField = self->docsWithField_;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    JreStrongAssign(&self->docsWithField_, 0);
  }

  return self;
}

- (int)compareValuesWithId:(id)a3 withId:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      return [a3 compareToWithId:a4];
    }

    else
    {
      return -self->missingSortCmp_;
    }
  }

  else if (a4)
  {
    return self->missingSortCmp_;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_TermValComparator;
  [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)&v3 dealloc];
}

@end