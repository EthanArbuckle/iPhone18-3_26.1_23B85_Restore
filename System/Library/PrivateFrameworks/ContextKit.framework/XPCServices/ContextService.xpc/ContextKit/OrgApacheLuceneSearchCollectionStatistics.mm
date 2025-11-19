@interface OrgApacheLuceneSearchCollectionStatistics
- (OrgApacheLuceneSearchCollectionStatistics)initWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5 withLong:(int64_t)a6 withLong:(int64_t)a7;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchCollectionStatistics

- (OrgApacheLuceneSearchCollectionStatistics)initWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5 withLong:(int64_t)a6 withLong:(int64_t)a7
{
  JreStrongAssign(&self->field_, a3);
  self->maxDoc_ = a4;
  self->docCount_ = a5;
  self->sumTotalTermFreq_ = a6;
  self->sumDocFreq_ = a7;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchCollectionStatistics;
  [(OrgApacheLuceneSearchCollectionStatistics *)&v3 dealloc];
}

@end