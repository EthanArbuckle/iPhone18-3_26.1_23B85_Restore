@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3
- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3

- (int64_t)getWithInt:(int)int
{
  v3 = self->val$slice_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreRandomAccessInput *)v3 readShortWithLong:2 * int];
}

- (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
{
  JreStrongAssign(&self->val$slice_, input);
  OrgApacheLuceneIndexNumericDocValues_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__3;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *)&v3 dealloc];
}

@end