@interface OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)a3 withInt:(int)a4 withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)a5 withIntArray:(id)a6;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1

- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)a3 withInt:(int)a4 withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)a5 withIntArray:(id)a6
{
  JreStrongAssign(&self->this$0_, a3);
  self->val$afterDoc_ = a4;
  sub_100094EC0(self, a5, a6);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end