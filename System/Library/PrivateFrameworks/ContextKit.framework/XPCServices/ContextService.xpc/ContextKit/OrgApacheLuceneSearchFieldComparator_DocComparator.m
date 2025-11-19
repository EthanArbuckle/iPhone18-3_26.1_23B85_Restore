@interface OrgApacheLuceneSearchFieldComparator_DocComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
- (void)setTopValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchFieldComparator_DocComparator

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  *(self + 4) = *(a3 + 8);
  return self;
}

- (void)setTopValueWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [a3 intValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_DocComparator;
  [(OrgApacheLuceneSearchFieldComparator_DocComparator *)&v3 dealloc];
}

@end