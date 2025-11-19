@interface OrgApacheLuceneUtilPackedPagedGrowableWriter
- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withFloat:(float)a6;
- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withFloat:(float)a6 withBoolean:(BOOL)a7;
- (id)newUnfilledCopyWithLong:(int64_t)a3;
- (int64_t)baseRamBytesUsed;
@end

@implementation OrgApacheLuceneUtilPackedPagedGrowableWriter

- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withFloat:(float)a6
{
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, a5, a3, a4);
  *(&self->super.bitsPerValue_ + 1) = a6;
  [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self fillPages];
  return self;
}

- (OrgApacheLuceneUtilPackedPagedGrowableWriter)initWithLong:(int64_t)a3 withInt:(int)a4 withInt:(int)a5 withFloat:(float)a6 withBoolean:(BOOL)a7
{
  v7 = a7;
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, a5, a3, a4);
  *(&self->super.bitsPerValue_ + 1) = a6;
  if (v7)
  {
    [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self fillPages];
  }

  return self;
}

- (id)newUnfilledCopyWithLong:(int64_t)a3
{
  v5 = [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self pageSize];
  bitsPerValue = self->super.bitsPerValue_;
  v7 = *(&self->super.bitsPerValue_ + 1);
  v8 = [OrgApacheLuceneUtilPackedPagedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(v8, bitsPerValue, a3, v5);
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