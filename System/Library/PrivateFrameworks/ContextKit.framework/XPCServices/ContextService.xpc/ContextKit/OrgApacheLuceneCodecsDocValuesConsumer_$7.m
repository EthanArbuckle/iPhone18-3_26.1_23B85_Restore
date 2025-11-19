@interface OrgApacheLuceneCodecsDocValuesConsumer_$7
- (OrgApacheLuceneCodecsDocValuesConsumer_$7)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)a3 withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)a4;
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$7)initWithOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(id)a3 withOrgApacheLuceneIndexSortedSetDocValuesArray:(id)a4
{
  JreStrongAssign(&self->val$map_, a3);
  JreStrongAssign(&self->val$dvs_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__7;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$7 *)&v3 dealloc];
}

@end