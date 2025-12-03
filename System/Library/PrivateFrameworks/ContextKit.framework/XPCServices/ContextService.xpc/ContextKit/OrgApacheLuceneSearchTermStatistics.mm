@interface OrgApacheLuceneSearchTermStatistics
- (OrgApacheLuceneSearchTermStatistics)initWithOrgApacheLuceneUtilBytesRef:(id)ref withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermStatistics

- (OrgApacheLuceneSearchTermStatistics)initWithOrgApacheLuceneUtilBytesRef:(id)ref withLong:(int64_t)long withLong:(int64_t)withLong
{
  JreStrongAssign(&self->term_, ref);
  self->docFreq_ = long;
  self->totalTermFreq_ = withLong;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermStatistics;
  [(OrgApacheLuceneSearchTermStatistics *)&v3 dealloc];
}

@end