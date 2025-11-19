@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$6
- (id)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$6

- (id)getWithLong:(int64_t)a3
{
  v4 = self->val$addresses_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)v4 getWithLong:?];
  v7 = [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)self->val$addresses_ getWithLong:a3 + 1];
  v8 = self->val$data_;
  if (!v8 || ([(OrgApacheLuceneStoreIndexInput *)v8 seekWithLong:v6], v9 = v7 - v6, [(OrgApacheLuceneStoreIndexInput *)self->val$data_ readBytesWithByteArray:self->val$buffer_ withInt:0 withInt:v9], (v10 = self->val$term_) == 0))
  {
    JreThrowNullPointerException();
  }

  v10->length_ = v9;
  return self->val$term_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__6;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$6 *)&v3 dealloc];
}

@end