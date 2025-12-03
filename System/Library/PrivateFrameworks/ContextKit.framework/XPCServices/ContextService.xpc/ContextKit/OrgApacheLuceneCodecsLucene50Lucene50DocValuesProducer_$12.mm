@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12
- (BOOL)getWithInt:(int)int;
- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12

- (BOOL)getWithInt:(int)int
{
  v3 = self->val$in_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return ([(OrgApacheLuceneStoreRandomAccessInput *)v3 readByteWithLong:int >> 3]>> (int & 7)) & 1;
}

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input withInt:(int)int
{
  JreStrongAssign(&self->val$in_, input);
  self->val$count_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__12;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12 *)&v3 dealloc];
}

@end