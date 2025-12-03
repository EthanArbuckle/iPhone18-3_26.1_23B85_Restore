@interface OrgApacheLuceneCodecsDocValuesConsumer_$6
- (OrgApacheLuceneCodecsDocValuesConsumer_$6)initWithInt:(int)int withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedDocValuesArray:(id)array;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$6

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__6__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$6)initWithInt:(int)int withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedDocValuesArray:(id)array
{
  self->val$numReaders_ = int;
  JreStrongAssign(&self->val$map_, map);
  JreStrongAssign(&self->val$mergeState_, state);
  JreStrongAssign(&self->val$dvs_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__6;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$6 *)&v3 dealloc];
}

@end