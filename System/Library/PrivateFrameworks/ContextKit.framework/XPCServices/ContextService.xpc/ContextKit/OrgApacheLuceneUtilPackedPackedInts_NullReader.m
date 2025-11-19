@interface OrgApacheLuceneUtilPackedPackedInts_NullReader
- (OrgApacheLuceneUtilPackedPackedInts_NullReader)initWithInt:(int)a3;
- (int64_t)ramBytesUsed;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_NullReader

- (OrgApacheLuceneUtilPackedPackedInts_NullReader)initWithInt:(int)a3
{
  OrgApacheLuceneIndexNumericDocValues_init(self, a2);
  self->valueCount_ = a3;
  return self;
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ + 4;

  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3);
}

@end