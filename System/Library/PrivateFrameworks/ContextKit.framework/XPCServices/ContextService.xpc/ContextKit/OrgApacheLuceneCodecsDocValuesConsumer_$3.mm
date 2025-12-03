@interface OrgApacheLuceneCodecsDocValuesConsumer_$3
- (OrgApacheLuceneCodecsDocValuesConsumer_$3)initWithInt:(int)int withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedNumericDocValuesArray:(id)array;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$3

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__3__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$3)initWithInt:(int)int withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedNumericDocValuesArray:(id)array
{
  self->val$numReaders_ = int;
  JreStrongAssign(&self->val$mergeState_, state);
  JreStrongAssign(&self->val$dvs_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__3;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$3 *)&v3 dealloc];
}

@end