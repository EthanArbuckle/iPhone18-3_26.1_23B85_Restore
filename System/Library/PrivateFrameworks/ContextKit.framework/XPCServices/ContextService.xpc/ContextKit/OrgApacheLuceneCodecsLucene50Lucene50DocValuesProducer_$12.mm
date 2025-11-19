@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12
- (BOOL)getWithInt:(int)a3;
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3 withInt:(int)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12

- (BOOL)getWithInt:(int)a3
{
  v3 = self->val$in_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return ([(OrgApacheLuceneStoreRandomAccessInput *)v3 readByteWithLong:a3 >> 3]>> (a3 & 7)) & 1;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->val$in_, a3);
  self->val$count_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__12;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12 *)&v3 dealloc];
}

@end