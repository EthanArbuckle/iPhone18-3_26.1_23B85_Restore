@interface OrgApacheLuceneCodecsDocValuesConsumer_$5
- (OrgApacheLuceneCodecsDocValuesConsumer_$5)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexSortedDocValuesArray:(id)array;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$5

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__5__1 alloc];
  JreStrongAssign(&v3->this$0_, self);

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$5)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexSortedDocValuesArray:(id)array
{
  JreStrongAssign(&self->val$map_, map);
  JreStrongAssign(&self->val$dvs_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__5;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$5 *)&v3 dealloc];
}

@end