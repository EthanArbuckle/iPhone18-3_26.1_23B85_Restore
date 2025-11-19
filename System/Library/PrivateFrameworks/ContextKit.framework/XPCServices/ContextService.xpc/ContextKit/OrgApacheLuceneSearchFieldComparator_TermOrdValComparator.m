@interface OrgApacheLuceneSearchFieldComparator_TermOrdValComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4;
- (int)compareValuesWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermOrdValComparator

- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)a3 withNSString:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 reader];

  return OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(v5, a4);
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  JreStrongAssign(&self->termsIndex_, [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)self getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:a3 withNSString:self->field_]);
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
  v3.super_class = OrgApacheLuceneSearchFieldComparator_TermOrdValComparator;
  [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)&v3 dealloc];
}

@end