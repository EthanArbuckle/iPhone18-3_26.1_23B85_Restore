@interface OrgApacheLuceneCodecsDocValuesConsumer_$10
- (OrgApacheLuceneCodecsDocValuesConsumer_$10)initWithJavaLangIterable:(id)a3 withJavaLangIterable:(id)a4 withNSNumber:(id)a5;
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

  v6 = [(JavaLangIterable *)v5 iterator];
  v7 = [OrgApacheLuceneCodecsDocValuesConsumer__10__1 alloc];
  JreStrongAssign(&v7->this$0_, self);
  JreStrongAssign(&v7->val$countIterator_, v4);
  JreStrongAssign(&v7->val$valuesIterator_, v6);

  return v7;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$10)initWithJavaLangIterable:(id)a3 withJavaLangIterable:(id)a4 withNSNumber:(id)a5
{
  JreStrongAssign(&self->val$docToValueCount_, a3);
  JreStrongAssign(&self->val$values_, a4);
  JreStrongAssign(&self->val$missingValue_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__10;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$10 *)&v3 dealloc];
}

@end