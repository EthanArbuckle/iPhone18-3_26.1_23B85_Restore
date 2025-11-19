@interface OrgApacheLuceneSearchTermStatistics
- (OrgApacheLuceneSearchTermStatistics)initWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermStatistics

- (OrgApacheLuceneSearchTermStatistics)initWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  JreStrongAssign(&self->term_, a3);
  self->docFreq_ = a4;
  self->totalTermFreq_ = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermStatistics;
  [(OrgApacheLuceneSearchTermStatistics *)&v3 dealloc];
}

@end