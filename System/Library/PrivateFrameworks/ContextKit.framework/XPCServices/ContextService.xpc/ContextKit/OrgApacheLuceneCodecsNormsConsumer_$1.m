@interface OrgApacheLuceneCodecsNormsConsumer_$1
- (OrgApacheLuceneCodecsNormsConsumer_$1)initWithJavaUtilList:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4;
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

- (OrgApacheLuceneCodecsNormsConsumer_$1)initWithJavaUtilList:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4
{
  JreStrongAssign(&self->val$toMerge_, a3);
  JreStrongAssign(&self->val$mergeState_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsNormsConsumer__1;
  [(OrgApacheLuceneCodecsNormsConsumer_$1 *)&v3 dealloc];
}

@end