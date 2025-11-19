@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1
- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1)initWithOrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery:(id)a3 withOrgApacheLuceneSearchQuery:(id)a4;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  v4 = *(&self->this$0_->super.boost_ + 1);
  if (!v4)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v6 = [v4 getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:a3 withOrgApacheLuceneUtilBits:0];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 bits];
  if (!v8)
  {
    v13 = [v7 iterator];
    if (v13)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v9 = v8;
  v10 = *(&self->this$0_->filter_ + 4);
  if (!v10)
  {
    goto LABEL_18;
  }

  if ([v10 alwaysUseRandomAccess])
  {
    goto LABEL_9;
  }

  v11 = [v7 iterator];
  if (!v11)
  {
    return 0;
  }

  v12 = *(&self->this$0_->filter_ + 4);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v11;
  if (![v12 useRandomAccessWithOrgApacheLuceneUtilBits:v9 withLong:{objc_msgSend(v11, "cost")}])
  {
LABEL_13:
    v17 = new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, v13, 0.0);
    goto LABEL_14;
  }

LABEL_9:
  if (!a3)
  {
    goto LABEL_18;
  }

  v14 = [a3 reader];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = OrgApacheLuceneSearchDocIdSetIterator_allWithInt_([v14 maxDoc]);
  v16 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1__1 alloc];
  JreStrongAssign(&v16->val$bits_, v9);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v16, v15);
  v17 = new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(self, v16, 0.0);
LABEL_14:

  return v17;
}

- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1)initWithOrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery:(id)a3 withOrgApacheLuceneSearchQuery:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end