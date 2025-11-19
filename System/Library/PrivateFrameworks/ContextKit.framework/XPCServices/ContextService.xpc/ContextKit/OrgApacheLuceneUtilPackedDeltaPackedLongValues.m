@interface OrgApacheLuceneUtilPackedDeltaPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLongArray:(id)a6 withLong:(int64_t)a7 withLong:(int64_t)a8;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues

- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLongArray:(id)a6 withLong:(int64_t)a7 withLong:(int64_t)a8
{
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self, a3, a4, a5, a7, a8);
  JreStrongAssign(&self->mins_, a6);
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
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPackedDeltaPackedLongValues_class_();
    qword_1005545A0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized);
  }
}

@end