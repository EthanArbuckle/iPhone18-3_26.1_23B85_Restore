@interface OrgApacheLuceneCodecsDocValuesConsumer_$2
- (OrgApacheLuceneCodecsDocValuesConsumer_$2)initWithJavaUtilList:(id)list withJavaUtilList:(id)utilList withOrgApacheLuceneIndexMergeState:(id)state;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$2

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsDocValuesConsumer__2__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$2)initWithJavaUtilList:(id)list withJavaUtilList:(id)utilList withOrgApacheLuceneIndexMergeState:(id)state
{
  JreStrongAssign(&self->val$toMerge_, list);
  JreStrongAssign(&self->val$docsWithField_, utilList);
  JreStrongAssign(&self->val$mergeState_, state);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__2;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$2 *)&v3 dealloc];
}

@end