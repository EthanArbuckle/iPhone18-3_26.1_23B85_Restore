@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2
- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2

- (int64_t)getWithInt:(int)int
{
  v3 = self->val$slice_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreRandomAccessInput *)v3 readByteWithLong:int];
}

- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
{
  JreStrongAssign(&self->val$slice_, input);
  OrgApacheLuceneIndexNumericDocValues_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__2;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *)&v3 dealloc];
}

@end