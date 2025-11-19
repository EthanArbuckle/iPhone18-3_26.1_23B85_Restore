@interface OrgApacheLuceneCodecsDocValuesConsumer_$10_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$10_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$10:(id)a3 withJavaUtilIterator:(id)a4 withJavaUtilIterator:(id)a5;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$10_$1

- (BOOL)hasNext
{
  v3 = self->val$countIterator_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)v3 hasNext];
}

- (id)next
{
  v3 = self->val$countIterator_;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [(JavaUtilIterator *)v3 next];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (![v4 intValue])
  {
    return self->this$0_->val$missingValue_;
  }

  v5 = self->val$valuesIterator_;
  if (!v5)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)v5 next];
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$10_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$10:(id)a3 withJavaUtilIterator:(id)a4 withJavaUtilIterator:(id)a5
{
  JreStrongAssign(&self->this$0_, a3);
  JreStrongAssign(&self->val$countIterator_, a4);
  JreStrongAssign(&self->val$valuesIterator_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__10__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$10_$1 *)&v3 dealloc];
}

@end