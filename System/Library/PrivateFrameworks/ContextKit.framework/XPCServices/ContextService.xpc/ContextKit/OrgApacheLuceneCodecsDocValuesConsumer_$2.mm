@interface OrgApacheLuceneCodecsDocValuesConsumer_$2
- (OrgApacheLuceneCodecsDocValuesConsumer_$2)initWithJavaUtilList:(id)a3 withJavaUtilList:(id)a4 withOrgApacheLuceneIndexMergeState:(id)a5;
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$2)initWithJavaUtilList:(id)a3 withJavaUtilList:(id)a4 withOrgApacheLuceneIndexMergeState:(id)a5
{
  JreStrongAssign(&self->val$toMerge_, a3);
  JreStrongAssign(&self->val$docsWithField_, a4);
  JreStrongAssign(&self->val$mergeState_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__2;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$2 *)&v3 dealloc];
}

@end