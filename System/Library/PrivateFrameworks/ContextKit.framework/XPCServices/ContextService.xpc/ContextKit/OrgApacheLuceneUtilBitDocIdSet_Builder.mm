@interface OrgApacheLuceneUtilBitDocIdSet_Builder
- (OrgApacheLuceneUtilBitDocIdSet_Builder)initWithInt:(int)a3;
- (id)build;
- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (void)dealloc;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
@end

@implementation OrgApacheLuceneUtilBitDocIdSet_Builder

- (OrgApacheLuceneUtilBitDocIdSet_Builder)initWithInt:(int)a3
{
  self->maxDoc_ = a3;
  self->threshold_ = a3 >> 10;
  return self;
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  p_denseSet = &self->denseSet_;
  denseSet = self->denseSet_;
  if (denseSet)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v7 = [a3 cost];
  v8 = v7 + self->costUpperBound_;
  self->costUpperBound_ = v8;
  threshold = self->threshold_;
  if (v8 < threshold || ((v10 = v7, (sparseSet = self->sparseSet_) == 0) ? (v12 = 0) : (v12 = [(OrgApacheLuceneUtilSparseFixedBitSet *)sparseSet approximateCardinality], threshold = self->threshold_), v13 = v10 + v12, self->costUpperBound_ = v13, v13 < threshold))
  {
    denseSet = self->sparseSet_;
    if (denseSet || (v14 = new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(self->maxDoc_), JreStrongAssignAndConsume(&self->sparseSet_, v14), (denseSet = self->sparseSet_) != 0))
    {
LABEL_10:
      v15 = a3;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v16 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(self->maxDoc_);
  JreStrongAssignAndConsume(p_denseSet, v16);
  [(OrgApacheLuceneUtilFixedBitSet *)self->denseSet_ or__WithOrgApacheLuceneSearchDocIdSetIterator:a3];
  v17 = self->sparseSet_;
  if (!v17)
  {
    return;
  }

  v18 = *p_denseSet;
  v15 = new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(v17, 0);
  denseSet = v18;
LABEL_11:

  [denseSet or__WithOrgApacheLuceneSearchDocIdSetIterator:v15];
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  denseSet = self->denseSet_;
  if (denseSet || (denseSet = self->sparseSet_) != 0)
  {
    [denseSet and__WithOrgApacheLuceneSearchDocIdSetIterator:a3];
  }
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  denseSet = self->denseSet_;
  if (denseSet || (denseSet = self->sparseSet_) != 0)
  {
    [denseSet andNotWithOrgApacheLuceneSearchDocIdSetIterator:a3];
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