@interface OrgApacheLuceneUtilPackedMonotonicLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withFloatArray:(id)floatArray withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicLongValues

- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withFloatArray:(id)floatArray withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self, int, withInt, array, longArray, long, withLong);
  JreStrongAssign(&self->averages_, floatArray);
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
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedMonotonicLongValues_class_();
    qword_100553EC8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedMonotonicLongValues__initialized);
  }
}

@end