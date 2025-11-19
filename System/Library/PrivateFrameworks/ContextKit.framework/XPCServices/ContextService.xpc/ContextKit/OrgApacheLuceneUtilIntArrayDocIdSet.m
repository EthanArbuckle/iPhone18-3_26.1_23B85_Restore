@interface OrgApacheLuceneUtilIntArrayDocIdSet
+ (void)initialize;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilIntArrayDocIdSet

- (id)iterator
{
  v2 = new_OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator_initWithIntArray_withInt_(self->docs_, self->length_);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilIntArrayDocIdSet;
  [(OrgApacheLuceneUtilIntArrayDocIdSet *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilIntArrayDocIdSet_class_();
    qword_100553DC0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilIntArrayDocIdSet__initialized);
  }
}

@end