@interface OrgApacheLuceneUtilPackedDeltaPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues

- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self, int, withInt, array, long, withLong);
  JreStrongAssign(&self->mins_, longArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues;
  [(OrgApacheLuceneUtilPackedPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedDeltaPackedLongValues_class_();
    qword_1005545A0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized);
  }
}

@end