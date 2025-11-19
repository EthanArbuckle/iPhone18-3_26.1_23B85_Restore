@interface OrgApacheLuceneCodecsDocValuesConsumer_$8
- (OrgApacheLuceneCodecsDocValuesConsumer_$8)initWithInt:(int)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)a5;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$8

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__8__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$8)initWithInt:(int)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)a5
{
  self->val$numReaders_ = a3;
  JreStrongAssign(&self->val$mergeState_, a4);
  JreStrongAssign(&self->val$dvs_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__8;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$8 *)&v3 dealloc];
}

@end