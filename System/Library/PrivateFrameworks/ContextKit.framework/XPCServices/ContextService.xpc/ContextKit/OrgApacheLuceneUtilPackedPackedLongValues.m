@interface OrgApacheLuceneUtilPackedPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLong:(int64_t)a6 withLong:(int64_t)a7;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues

- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)a5 withLong:(int64_t)a6 withLong:(int64_t)a7
{
  OrgApacheLuceneUtilLongValues_init(self);
  self->pageShift_ = a3;
  self->pageMask_ = a4;
  JreStrongAssign(&self->values_, a5);
  self->size_ = a6;
  self->ramBytesUsed_ = a7;
  return self;
}

- (id)iterator
{
  v3 = [OrgApacheLuceneUtilPackedPackedLongValues_Iterator alloc];
  OrgApacheLuceneUtilPackedPackedLongValues_Iterator_initWithOrgApacheLuceneUtilPackedPackedLongValues_(v3, self);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedLongValues;
  [(OrgApacheLuceneUtilPackedPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPackedPackedLongValues_class_();
    qword_1005544B0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedPackedLongValues__initialized);
  }
}

@end