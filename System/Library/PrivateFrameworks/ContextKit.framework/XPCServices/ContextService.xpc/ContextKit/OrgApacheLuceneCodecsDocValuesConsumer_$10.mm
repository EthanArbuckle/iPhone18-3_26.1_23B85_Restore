@interface OrgApacheLuceneCodecsDocValuesConsumer_$10
- (OrgApacheLuceneCodecsDocValuesConsumer_$10)initWithJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withNSNumber:(id)number;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$10

- (id)iterator
{
  v3 = self->val$docToValueCount_;
  if (!v3 || (v4 = [(JavaLangIterable *)v3 iterator], (v5 = self->val$values_) == 0))
  {
    JreThrowNullPointerException();
  }

  iterator = [(JavaLangIterable *)v5 iterator];
  v7 = [OrgApacheLuceneCodecsDocValuesConsumer__10__1 alloc];
  JreStrongAssign(&v7->this$0_, self);
  JreStrongAssign(&v7->val$countIterator_, v4);
  JreStrongAssign(&v7->val$valuesIterator_, iterator);

  return v7;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$10)initWithJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withNSNumber:(id)number
{
  JreStrongAssign(&self->val$docToValueCount_, iterable);
  JreStrongAssign(&self->val$values_, langIterable);
  JreStrongAssign(&self->val$missingValue_, number);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__10;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$10 *)&v3 dealloc];
}

@end