@interface OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder
+ (void)initialize;
- (id)build;
- (void)dealloc;
- (void)growWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder

- (id)build
{
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self finish];
  JreStrongAssign(&self->super.pending_, 0);
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->super.values_, self->super.valuesOff_);
  v4 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->mins_, self->super.valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E72BC();
  }

  v5 = qword_1005545A0;
  v6 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v3) + v5;
  v7 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v4);
  v8 = new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self->super.pageShift_, self->super.pageMask_, v3, v4, self->super.size_, v6 + v7);

  return v8;
}

- (void)growWithInt:(int)a3
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v6 growWithInt:?];
  self->super.ramBytesUsed_ -= OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->mins_);
  v5 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->mins_, a3);
  JreStrongAssign(&self->mins_, v5);
  self->super.ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->mins_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_class_();
    qword_1005545B8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder__initialized);
  }
}

@end