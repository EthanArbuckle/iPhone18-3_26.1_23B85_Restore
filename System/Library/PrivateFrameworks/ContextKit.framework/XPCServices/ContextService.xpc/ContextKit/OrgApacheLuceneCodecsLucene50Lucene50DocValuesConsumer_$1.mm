@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1)initWithJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaUtilMap:(id)map;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1

- (id)iterator
{
  v3 = self->val$docToValueCount_;
  if (!v3 || (v4 = [(JavaLangIterable *)v3 iterator], (v5 = self->val$values_) == 0))
  {
    JreThrowNullPointerException();
  }

  iterator = [(JavaLangIterable *)v5 iterator];
  v7 = new_OrgApacheLuceneUtilLongsRef_initWithInt_(256);
  v8 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer__1__1 alloc];
  sub_1000B0CF4(&v8->super.isa, self, v4, v7, iterator);

  return v8;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1)initWithJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaUtilMap:(id)map
{
  JreStrongAssign(&self->val$docToValueCount_, iterable);
  JreStrongAssign(&self->val$values_, langIterable);
  JreStrongAssign(&self->val$setIds_, map);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer__1;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1 *)&v3 dealloc];
}

@end