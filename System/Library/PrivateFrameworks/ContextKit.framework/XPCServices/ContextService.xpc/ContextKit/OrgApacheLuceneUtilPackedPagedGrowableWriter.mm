@interface OrgApacheLuceneUtilPackedPagedGrowableWriter
- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withFloat:(float)float;
- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withFloat:(float)float withBoolean:(BOOL)boolean;
- (id)newUnfilledCopyWithLong:(int64_t)long;
- (int64_t)baseRamBytesUsed;
@end

@implementation OrgApacheLuceneUtilPackedPagedGrowableWriter

- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, withInt, long, int);
  *(&self->super.bitsPerValue_ + 1) = float;
  [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self fillPages];
  return self;
}

- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withFloat:(float)float withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, withInt, long, int);
  *(&self->super.bitsPerValue_ + 1) = float;
  if (booleanCopy)
  {
    [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self fillPages];
  }

  return self;
}

- (id)newUnfilledCopyWithLong:(int64_t)long
{
  pageSize = [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self pageSize];
  bitsPerValue = self->super.bitsPerValue_;
  v7 = *(&self->super.bitsPerValue_ + 1);
  v8 = [OrgApacheLuceneUtilPackedPagedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(v8, bitsPerValue, long, pageSize);
  *(&v8->super.bitsPerValue_ + 1) = v7;

  return v8;
}

- (int64_t)baseRamBytesUsed
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPagedGrowableWriter;
  return [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)&v3 baseRamBytesUsed]+ 4;
}

@end