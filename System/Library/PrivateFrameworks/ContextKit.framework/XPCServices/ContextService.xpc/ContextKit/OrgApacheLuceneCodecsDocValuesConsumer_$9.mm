@interface OrgApacheLuceneCodecsDocValuesConsumer_$9
- (OrgApacheLuceneCodecsDocValuesConsumer_$9)initWithInt:(int)int withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)array;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$9

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__9__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;
  JreStrongAssignAndConsume(&v3->ords_, [IOSLongArray newArrayWithLength:8]);

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$9)initWithInt:(int)int withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)array
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
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__9;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$9 *)&v3 dealloc];
}

@end