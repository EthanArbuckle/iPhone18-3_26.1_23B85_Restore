@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withLong:(int64_t)a4;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1

- (int64_t)getWithLong:(int64_t)a3
{
  v4 = self->val$live_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneUtilBits *)v4 getWithInt:a3])
  {
    return self->val$constant_;
  }

  else
  {
    return 0;
  }
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withLong:(int64_t)a4
{
  JreStrongAssign(&self->val$live_, a3);
  self->val$constant_ = a4;
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__1;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1 *)&v3 dealloc];
}

@end