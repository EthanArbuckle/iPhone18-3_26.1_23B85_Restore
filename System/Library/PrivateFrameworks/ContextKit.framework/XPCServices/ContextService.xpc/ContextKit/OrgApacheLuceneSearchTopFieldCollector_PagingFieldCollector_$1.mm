@interface OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)collector withInt:(int)int withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1

- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)collector withInt:(int)int withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  self->val$afterDoc_ = int;
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end