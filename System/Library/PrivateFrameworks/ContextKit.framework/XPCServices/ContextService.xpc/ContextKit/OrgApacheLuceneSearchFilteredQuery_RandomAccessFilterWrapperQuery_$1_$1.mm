@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1_$1
- (BOOL)matches;
- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1_$1

- (BOOL)matches
{
  approximation = self->super.approximation_;
  if (!approximation || (v4 = [(OrgApacheLuceneSearchDocIdSetIterator *)approximation docID], (v5 = self->val$bits_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilBits *)v5 getWithInt:v4];
}

- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4
{
  JreStrongAssign(&self->val$bits_, a3);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end