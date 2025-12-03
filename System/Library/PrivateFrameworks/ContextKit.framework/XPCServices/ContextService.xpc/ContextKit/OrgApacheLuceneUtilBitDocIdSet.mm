@interface OrgApacheLuceneUtilBitDocIdSet
+ (void)initialize;
- (OrgApacheLuceneUtilBitDocIdSet)initWithOrgApacheLuceneUtilBitSet:(id)set withLong:(int64_t)long;
- (id)description;
- (id)iterator;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBitDocIdSet

- (OrgApacheLuceneUtilBitDocIdSet)initWithOrgApacheLuceneUtilBitSet:(id)set withLong:(int64_t)long
{
  OrgApacheLuceneSearchDocIdSet_init(self, a2);
  JreStrongAssign(&self->set_, set);
  self->cost_ = long;
  return self;
}

- (id)iterator
{
  v2 = new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(self->set_, self->cost_);

  return v2;
}

- (int64_t)ramBytesUsed
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  v3 = qword_100554078;
  return [(OrgApacheLuceneUtilBitSet *)set ramBytesUsed]+ v3;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilBitDocIdSet getClass](self "getClass")];
  cost = self->cost_;
  set = self->set_;
  return JreStrcat("$$@$JC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBitDocIdSet;
  [(OrgApacheLuceneUtilBitDocIdSet *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilBitDocIdSet_class_();
    qword_100554078 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilBitDocIdSet__initialized);
  }
}

@end