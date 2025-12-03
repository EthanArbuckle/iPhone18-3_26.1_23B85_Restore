@interface OrgApacheLuceneSearchFieldComparator_TermOrdValComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermOrdValComparator

- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  JreStrongAssign(&self->termsIndex_, [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)self getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  ++self->currentReaderGen_;
  if (self->topValue_)
  {
    termsIndex = self->termsIndex_;
    if (!termsIndex)
    {
      JreThrowNullPointerException();
    }

    v5 = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex lookupTermWithOrgApacheLuceneUtilBytesRef:?];
    if (v5 < 0)
    {
      self->topSameReader_ = 0;
      self->topOrd_ = -2 - v5;
    }

    else
    {
      self->topSameReader_ = 1;
      self->topOrd_ = v5;
    }
  }

  else
  {
    self->topOrd_ = self->missingOrd_;
    self->topSameReader_ = 1;
  }

  if (self->bottomSlot_ != -1)
  {
    [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)self setBottomWithInt:?];
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
  v3.super_class = OrgApacheLuceneSearchFieldComparator_TermOrdValComparator;
  [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)&v3 dealloc];
}

@end