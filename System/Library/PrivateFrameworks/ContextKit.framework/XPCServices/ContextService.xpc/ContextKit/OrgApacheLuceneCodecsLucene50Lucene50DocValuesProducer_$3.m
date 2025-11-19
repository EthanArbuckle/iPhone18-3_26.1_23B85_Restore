@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3)initWithLong:(int64_t)a3 withLong:(int64_t)a4 withOrgApacheLuceneUtilLongValues:(id)a5;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3

- (int64_t)getWithLong:(int64_t)a3
{
  if (!self->val$quotientReader_)
  {
    JreThrowNullPointerException();
  }

  v3 = self->val$mult_;
  v4 = self->val$min_;
  return v4 + [(OrgApacheLuceneUtilLongValues *)self->val$quotientReader_ getWithLong:a3]* v3;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$3)initWithLong:(int64_t)a3 withLong:(int64_t)a4 withOrgApacheLuceneUtilLongValues:(id)a5
{
  self->val$min_ = a3;
  self->val$mult_ = a4;
  JreStrongAssign(&self->val$quotientReader_, a5);
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