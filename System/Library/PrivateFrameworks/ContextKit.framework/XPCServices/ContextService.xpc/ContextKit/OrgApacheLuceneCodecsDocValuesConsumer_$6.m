@interface OrgApacheLuceneCodecsDocValuesConsumer_$6
- (OrgApacheLuceneCodecsDocValuesConsumer_$6)initWithInt:(int)a3 withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)a4 withOrgApacheLuceneIndexMergeState:(id)a5 withOrgApacheLuceneIndexSortedDocValuesArray:(id)a6;
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$6)initWithInt:(int)a3 withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)a4 withOrgApacheLuceneIndexMergeState:(id)a5 withOrgApacheLuceneIndexSortedDocValuesArray:(id)a6
{
  self->val$numReaders_ = a3;
  JreStrongAssign(&self->val$map_, a4);
  JreStrongAssign(&self->val$mergeState_, a5);
  JreStrongAssign(&self->val$dvs_, a6);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__6;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$6 *)&v3 dealloc];
}

@end