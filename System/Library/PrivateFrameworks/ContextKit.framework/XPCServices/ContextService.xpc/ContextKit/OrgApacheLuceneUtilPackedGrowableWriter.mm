@interface OrgApacheLuceneUtilPackedGrowableWriter
- (int)getBitsPerValue;
- (int)size;
- (int64_t)ramBytesUsed;
- (void)clear;
- (void)dealloc;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
@end

@implementation OrgApacheLuceneUtilPackedGrowableWriter

- (int)size
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current size];
}

- (int)getBitsPerValue
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current getBitsPerValue];
}

- (void)clear
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current clear];
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 12);
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current ramBytesUsed]+ v4;
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current saveWithOrgApacheLuceneStoreDataOutput:output];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedGrowableWriter;
  [(OrgApacheLuceneUtilPackedGrowableWriter *)&v3 dealloc];
}

@end