@interface OrgApacheLuceneSearchFieldComparator_TermValComparator
- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermValComparator

- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  JreStrongAssign(&self->docTerms_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  JreStrongAssign(&self->docsWithField_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  docsWithField = self->docsWithField_;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    JreStrongAssign(&self->docsWithField_, 0);
  }

  return self;
}

- (int)compareValuesWithId:(id)id withId:(id)withId
{
  if (id)
  {
    if (withId)
    {
      return [id compareToWithId:withId];
    }

    else
    {
      return -self->missingSortCmp_;
    }
  }

  else if (withId)
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