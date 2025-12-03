@interface OrgApacheLuceneUtilFrequencyTrackingRingBuffer
+ (void)initialize;
- (id)asFrequencyMap;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFrequencyTrackingRingBuffer

- (int64_t)ramBytesUsed
{
  frequencies = self->frequencies_;
  if (!frequencies)
  {
    JreThrowNullPointerException();
  }

  v4 = qword_100553F70;
  v5 = [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies ramBytesUsed]+ v4;
  return &v5[OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->buffer_)];
}

- (id)asFrequencyMap
{
  frequencies = self->frequencies_;
  if (!frequencies)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies asMap];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFrequencyTrackingRingBuffer;
  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilFrequencyTrackingRingBuffer_class_();
    qword_100553F70 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilFrequencyTrackingRingBuffer__initialized);
  }
}

@end