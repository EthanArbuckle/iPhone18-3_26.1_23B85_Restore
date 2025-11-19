@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9
- (int64_t)valueAtWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9

- (int64_t)valueAtWithInt:(int)a3
{
  v3 = self->val$table_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  startOffset = self->startOffset_;
  size = v3->super.size_;
  v6 = startOffset + a3;
  if (startOffset + a3 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (startOffset + a3));
  }

  return v3->buffer_[v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__9;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9 *)&v3 dealloc];
}

@end