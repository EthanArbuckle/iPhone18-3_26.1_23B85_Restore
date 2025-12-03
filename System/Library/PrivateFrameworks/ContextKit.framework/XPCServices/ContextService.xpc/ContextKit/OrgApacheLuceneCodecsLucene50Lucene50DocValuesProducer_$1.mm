@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1)initWithOrgApacheLuceneUtilBits:(id)bits withLong:(int64_t)long;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1

- (int64_t)getWithLong:(int64_t)long
{
  v4 = self->val$live_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneUtilBits *)v4 getWithInt:long])
  {
    return self->val$constant_;
  }

  else
  {
    return 0;
  }
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$1)initWithOrgApacheLuceneUtilBits:(id)bits withLong:(int64_t)long
{
  JreStrongAssign(&self->val$live_, bits);
  self->val$constant_ = long;
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