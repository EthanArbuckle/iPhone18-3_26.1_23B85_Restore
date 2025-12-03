@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9
- (int64_t)valueAtWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9

- (int64_t)valueAtWithInt:(int)int
{
  v3 = self->val$table_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  startOffset = self->startOffset_;
  size = v3->super.size_;
  v6 = startOffset + int;
  if (startOffset + int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (startOffset + int));
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