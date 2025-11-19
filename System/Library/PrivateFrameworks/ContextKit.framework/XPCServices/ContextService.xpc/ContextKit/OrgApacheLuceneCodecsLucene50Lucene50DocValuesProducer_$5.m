@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$5
- (id)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$5

- (id)getWithLong:(int64_t)a3
{
  v4 = self->val$data_;
  if (!v4 || ([(OrgApacheLuceneStoreIndexInput *)v4 seekWithLong:self->val$length_ * a3], (v5 = self->val$buffer_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)self->val$data_ readBytesWithByteArray:v5 withInt:0 withInt:v5->super.size_];
  return self->val$term_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__5;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$5 *)&v3 dealloc];
}

@end