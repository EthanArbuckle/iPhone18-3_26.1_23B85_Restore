@interface OrgApacheLuceneUtilPackedMonotonicLongValues_Builder
+ (void)initialize;
- (id)build;
- (void)dealloc;
- (void)growWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicLongValues_Builder

- (id)build
{
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self finish];
  JreStrongAssign(&self->super.super.pending_, 0);
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->super.super.values_, self->super.super.valuesOff_);
  v4 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->super.mins_, self->super.super.valuesOff_);
  v5 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->averages_, self->super.super.valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedMonotonicLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10002CC18();
  }

  v6 = qword_100553EC8;
  v7 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v3) + v6;
  v8 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v4);
  v9 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(v5);
  v10 = new_OrgApacheLuceneUtilPackedMonotonicLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withFloatArray_withLong_withLong_(self->super.super.pageShift_, self->super.super.pageMask_, v3, v4, v5, self->super.super.size_, v7 + v8 + v9);

  return v10;
}

- (void)growWithInt:(int)int
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *)&v6 growWithInt:?];
  self->super.super.ramBytesUsed_ -= OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(self->averages_);
  v5 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->averages_, int);
  JreStrongAssign(&self->averages_, v5);
  self->super.super.ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(self->averages_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_class_();
    qword_100553EE0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedMonotonicLongValues_Builder__initialized);
  }
}

@end