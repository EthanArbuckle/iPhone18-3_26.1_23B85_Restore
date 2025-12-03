@interface OrgApacheLuceneCodecsDocValuesConsumer_$10_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$10_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$10:(id)10 withJavaUtilIterator:(id)iterator withJavaUtilIterator:(id)utilIterator;
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

  next = [(JavaUtilIterator *)v3 next];
  if (!next)
  {
    goto LABEL_9;
  }

  if (![next intValue])
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$10_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$10:(id)10 withJavaUtilIterator:(id)iterator withJavaUtilIterator:(id)utilIterator
{
  JreStrongAssign(&self->this$0_, 10);
  JreStrongAssign(&self->val$countIterator_, iterator);
  JreStrongAssign(&self->val$valuesIterator_, utilIterator);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__10__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$10_$1 *)&v3 dealloc];
}

@end