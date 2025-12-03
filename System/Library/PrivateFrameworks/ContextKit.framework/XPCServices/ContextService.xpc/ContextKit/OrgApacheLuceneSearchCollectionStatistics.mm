@interface OrgApacheLuceneSearchCollectionStatistics
- (OrgApacheLuceneSearchCollectionStatistics)initWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a6 withLong:(int64_t)a7;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchCollectionStatistics

- (OrgApacheLuceneSearchCollectionStatistics)initWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a6 withLong:(int64_t)a7
{
  JreStrongAssign(&self->field_, string);
  self->maxDoc_ = long;
  self->docCount_ = withLong;
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