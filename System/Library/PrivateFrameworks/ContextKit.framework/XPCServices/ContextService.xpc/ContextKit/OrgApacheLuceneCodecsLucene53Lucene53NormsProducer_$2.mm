@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2
- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2

- (int64_t)getWithInt:(int)a3
{
  v3 = self->val$slice_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreRandomAccessInput *)v3 readByteWithLong:a3];
}

- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
{
  JreStrongAssign(&self->val$slice_, a3);
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