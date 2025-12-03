@interface OrgApacheLuceneSearchFieldComparator_DocComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_DocComparator

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  *(self + 4) = *(context + 8);
  return self;
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [id intValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_DocComparator;
  [(OrgApacheLuceneSearchFieldComparator_DocComparator *)&v3 dealloc];
}

@end