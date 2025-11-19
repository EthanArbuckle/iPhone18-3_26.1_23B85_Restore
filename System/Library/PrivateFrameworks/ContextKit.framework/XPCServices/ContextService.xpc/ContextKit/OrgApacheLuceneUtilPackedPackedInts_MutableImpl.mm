@interface OrgApacheLuceneUtilPackedPackedInts_MutableImpl
- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)a3 withInt:(int)a4;
- (id)description;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_MutableImpl

- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)a3 withInt:(int)a4
{
  OrgApacheLuceneIndexNumericDocValues_init(self, a2);
  self->valueCount_ = a3;
  self->bitsPerValue_ = a4;
  return self;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilPackedPackedInts_MutableImpl getClass](self "getClass")];
  bitsPerValue = self->bitsPerValue_;
  valueCount = self->valueCount_;
  return JreStrcat("$$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end