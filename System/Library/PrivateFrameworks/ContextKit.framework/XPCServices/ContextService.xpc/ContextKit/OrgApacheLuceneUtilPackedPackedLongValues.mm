@interface OrgApacheLuceneUtilPackedPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues

- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilLongValues_init(self);
  self->pageShift_ = int;
  self->pageMask_ = withInt;
  JreStrongAssign(&self->values_, array);
  self->size_ = long;
  self->ramBytesUsed_ = withLong;
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
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedPackedLongValues_class_();
    qword_1005544B0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedPackedLongValues__initialized);
  }
}

@end