@interface OrgApacheLuceneUtilPackedMonotonicLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLongArray:(id)a6 withFloatArray:(id)a7 withLong:(int64_t)a8 withLong:(int64_t)a9;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicLongValues

- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLongArray:(id)a6 withFloatArray:(id)a7 withLong:(int64_t)a8 withLong:(int64_t)a9
{
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self, a3, a4, a5, a6, a8, a9);
  JreStrongAssign(&self->averages_, a7);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPackedMonotonicLongValues_class_();
    qword_100553EC8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedMonotonicLongValues__initialized);
  }
}

@end