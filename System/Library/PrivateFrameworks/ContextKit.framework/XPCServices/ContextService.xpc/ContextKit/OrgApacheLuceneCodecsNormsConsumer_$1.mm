@interface OrgApacheLuceneCodecsNormsConsumer_$1
- (OrgApacheLuceneCodecsNormsConsumer_$1)initWithJavaUtilList:(id)list withOrgApacheLuceneIndexMergeState:(id)state;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsNormsConsumer_$1

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsNormsConsumer__1__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->readerUpto_ = -1;

  return v3;
}

- (OrgApacheLuceneCodecsNormsConsumer_$1)initWithJavaUtilList:(id)list withOrgApacheLuceneIndexMergeState:(id)state
{
  JreStrongAssign(&self->val$toMerge_, list);
  JreStrongAssign(&self->val$mergeState_, state);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsNormsConsumer__1;
  [(OrgApacheLuceneCodecsNormsConsumer_$1 *)&v3 dealloc];
}

@end