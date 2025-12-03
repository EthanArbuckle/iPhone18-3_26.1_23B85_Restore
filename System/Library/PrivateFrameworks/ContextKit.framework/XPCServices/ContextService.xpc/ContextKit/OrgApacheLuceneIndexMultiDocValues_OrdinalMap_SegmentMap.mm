@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap
+ (void)initialize;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap

- (int64_t)ramBytesUsed
{
  v3 = qword_1005548C8;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->newToOld_) + v3;
  return v4 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->oldToNew_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_class_();
    qword_1005548C8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__initialized);
  }
}

@end