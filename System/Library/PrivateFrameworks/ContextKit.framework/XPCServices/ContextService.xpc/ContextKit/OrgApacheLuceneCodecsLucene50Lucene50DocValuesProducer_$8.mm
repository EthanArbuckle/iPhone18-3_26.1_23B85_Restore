@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$8
- (int64_t)valueAtWithInt:(int)a3;
- (void)dealloc;
- (void)setDocumentWithInt:(int)a3;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$8

- (void)setDocumentWithInt:(int)a3
{
  v4 = self->val$ordIndex_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  self->startOffset_ = [(OrgApacheLuceneUtilLongValues *)v4 getWithInt:?];
  self->endOffset_ = [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)self->val$ordIndex_ getWithLong:a3 + 1];
}

- (int64_t)valueAtWithInt:(int)a3
{
  if (!self->val$values_)
  {
    JreThrowNullPointerException();
  }

  v4 = self->startOffset_ + a3;
  v5 = self->val$values_;

  return [(OrgApacheLuceneUtilLongValues *)v5 getWithLong:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__8;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$8 *)&v3 dealloc];
}

@end