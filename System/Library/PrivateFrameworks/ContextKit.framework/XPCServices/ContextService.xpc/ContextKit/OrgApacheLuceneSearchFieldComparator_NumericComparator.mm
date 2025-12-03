@interface OrgApacheLuceneSearchFieldComparator_NumericComparator
- (id)getDocsWithValueWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (void)dealloc;
- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
@end

@implementation OrgApacheLuceneSearchFieldComparator_NumericComparator

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  JreStrongAssign(&self->currentReaderValues_, [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)self getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  if (!self->missingValue_ || (JreStrongAssign(&self->docsWithField_, [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)self getDocsWithValueWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]), docsWithField = self->docsWithField_, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    JreStrongAssign(&self->docsWithField_, 0);
  }
}

- (id)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getDocsWithValueWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_NumericComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end