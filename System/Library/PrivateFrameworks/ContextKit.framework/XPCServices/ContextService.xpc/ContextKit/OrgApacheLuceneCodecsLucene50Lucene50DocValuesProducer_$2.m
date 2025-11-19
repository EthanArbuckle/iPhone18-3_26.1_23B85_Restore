@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2)initWithLong:(int64_t)a3 withOrgApacheLuceneUtilLongValues:(id)a4;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2

- (int64_t)getWithLong:(int64_t)a3
{
  if (!self->val$values_)
  {
    JreThrowNullPointerException();
  }

  v3 = self->val$delta_;
  return [(OrgApacheLuceneUtilLongValues *)self->val$values_ getWithLong:a3]+ v3;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2)initWithLong:(int64_t)a3 withOrgApacheLuceneUtilLongValues:(id)a4
{
  self->val$delta_ = a3;
  JreStrongAssign(&self->val$values_, a4);
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__2;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2 *)&v3 dealloc];
}

@end