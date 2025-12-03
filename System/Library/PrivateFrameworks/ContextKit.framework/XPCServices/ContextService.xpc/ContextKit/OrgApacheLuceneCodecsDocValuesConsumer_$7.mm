@interface OrgApacheLuceneCodecsDocValuesConsumer_$7
- (OrgApacheLuceneCodecsDocValuesConsumer_$7)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)array;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$7

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__7__1 alloc];
  JreStrongAssign(&v3->this$0_, self);

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$7)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)map withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)array
{
  JreStrongAssign(&self->val$map_, map);
  JreStrongAssign(&self->val$dvs_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__7;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$7 *)&v3 dealloc];
}

@end