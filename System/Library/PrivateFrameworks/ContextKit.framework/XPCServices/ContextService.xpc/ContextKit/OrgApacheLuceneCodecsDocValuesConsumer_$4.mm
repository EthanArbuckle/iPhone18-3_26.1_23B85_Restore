@interface OrgApacheLuceneCodecsDocValuesConsumer_$4
- (OrgApacheLuceneCodecsDocValuesConsumer_$4)initWithInt:(int)int withOrgApacheLuceneIndexSortedNumericDocValuesArray:(id)array withOrgApacheLuceneIndexMergeState:(id)state;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$4

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__4__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$4)initWithInt:(int)int withOrgApacheLuceneIndexSortedNumericDocValuesArray:(id)array withOrgApacheLuceneIndexMergeState:(id)state
{
  self->val$numReaders_ = int;
  JreStrongAssign(&self->val$dvs_, array);
  JreStrongAssign(&self->val$mergeState_, state);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__4;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$4 *)&v3 dealloc];
}

@end