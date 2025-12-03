@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$4
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$4

- (int64_t)getWithLong:(int64_t)long
{
  v3 = self->val$table_;
  if (!v3 || (v4 = self->val$ords_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneUtilLongValues *)v4 getWithLong:long];
  size = v3->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return v3->buffer_[v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__4;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$4 *)&v3 dealloc];
}

@end