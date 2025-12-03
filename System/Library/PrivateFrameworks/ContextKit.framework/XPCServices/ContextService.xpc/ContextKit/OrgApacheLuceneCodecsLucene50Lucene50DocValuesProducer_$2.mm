@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2)initWithLong:(int64_t)long withOrgApacheLuceneUtilLongValues:(id)values;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2

- (int64_t)getWithLong:(int64_t)long
{
  if (!self->val$values_)
  {
    JreThrowNullPointerException();
  }

  v3 = self->val$delta_;
  return [(OrgApacheLuceneUtilLongValues *)self->val$values_ getWithLong:long]+ v3;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$2)initWithLong:(int64_t)long withOrgApacheLuceneUtilLongValues:(id)values
{
  self->val$delta_ = long;
  JreStrongAssign(&self->val$values_, values);
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