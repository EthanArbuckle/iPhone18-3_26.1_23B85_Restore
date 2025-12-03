@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3)initWithLong:(int64_t)long withLong:(int64_t)withLong withOrgApacheLuceneUtilLongValues:(id)values;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3

- (int64_t)getWithLong:(int64_t)long
{
  if (!self->val$quotientReader_)
  {
    JreThrowNullPointerException();
  }

  v3 = self->val$mult_;
  v4 = self->val$min_;
  return v4 + [(OrgApacheLuceneUtilLongValues *)self->val$quotientReader_ getWithLong:long]* v3;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3)initWithLong:(int64_t)long withLong:(int64_t)withLong withOrgApacheLuceneUtilLongValues:(id)values
{
  self->val$min_ = long;
  self->val$mult_ = withLong;
  JreStrongAssign(&self->val$quotientReader_, values);
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__3;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3 *)&v3 dealloc];
}

@end