@interface OrgApacheLuceneSearchTwoPhaseIterator
- (OrgApacheLuceneSearchTwoPhaseIterator)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTwoPhaseIterator

- (OrgApacheLuceneSearchTwoPhaseIterator)initWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(iterator);
  JreStrongAssign(&self->approximation_, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTwoPhaseIterator;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end