@interface OrgApacheLuceneUtilBitDocIdSet_Builder
- (OrgApacheLuceneUtilBitDocIdSet_Builder)initWithInt:(int)int;
- (id)build;
- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
@end

@implementation OrgApacheLuceneUtilBitDocIdSet_Builder

- (OrgApacheLuceneUtilBitDocIdSet_Builder)initWithInt:(int)int
{
  self->maxDoc_ = int;
  self->threshold_ = int >> 10;
  return self;
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  p_denseSet = &self->denseSet_;
  denseSet = self->denseSet_;
  if (denseSet)
  {
    goto LABEL_10;
  }

  if (!iterator)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  cost = [iterator cost];
  v8 = cost + self->costUpperBound_;
  self->costUpperBound_ = v8;
  threshold = self->threshold_;
  if (v8 < threshold || ((v10 = cost, (sparseSet = self->sparseSet_) == 0) ? (v12 = 0) : (v12 = [(OrgApacheLuceneUtilSparseFixedBitSet *)sparseSet approximateCardinality], threshold = self->threshold_), v13 = v10 + v12, self->costUpperBound_ = v13, v13 < threshold))
  {
    denseSet = self->sparseSet_;
    if (denseSet || (v14 = new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(self->maxDoc_), JreStrongAssignAndConsume(&self->sparseSet_, v14), (denseSet = self->sparseSet_) != 0))
    {
LABEL_10:
      iteratorCopy = iterator;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v16 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(self->maxDoc_);
  JreStrongAssignAndConsume(p_denseSet, v16);
  [(OrgApacheLuceneUtilFixedBitSet *)self->denseSet_ or__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  v17 = self->sparseSet_;
  if (!v17)
  {
    return;
  }

  v18 = *p_denseSet;
  iteratorCopy = new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(v17, 0);
  denseSet = v18;
LABEL_11:

  [denseSet or__WithOrgApacheLuceneSearchDocIdSetIterator:iteratorCopy];
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  denseSet = self->denseSet_;
  if (denseSet || (denseSet = self->sparseSet_) != 0)
  {
    [denseSet and__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  denseSet = self->denseSet_;
  if (denseSet || (denseSet = self->sparseSet_) != 0)
  {
    [denseSet andNotWithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }
}

- (id)build
{
  p_denseSet = &self->denseSet_;
  denseSet = self->denseSet_;
  if (denseSet || (denseSet = self->sparseSet_) != 0)
  {
    v5 = [OrgApacheLuceneUtilBitDocIdSet alloc];
    OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(v5, denseSet);
    denseSet = v5;
  }

  JreStrongAssign(p_denseSet, 0);
  JreStrongAssign(&self->sparseSet_, 0);
  self->costUpperBound_ = 0;
  return denseSet;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBitDocIdSet_Builder;
  [(OrgApacheLuceneUtilBitDocIdSet_Builder *)&v3 dealloc];
}

@end