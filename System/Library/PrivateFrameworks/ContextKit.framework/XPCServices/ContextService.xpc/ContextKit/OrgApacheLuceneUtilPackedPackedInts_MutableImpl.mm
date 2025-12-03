@interface OrgApacheLuceneUtilPackedPackedInts_MutableImpl
- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)int withInt:(int)withInt;
- (id)description;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_MutableImpl

- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)int withInt:(int)withInt
{
  OrgApacheLuceneIndexNumericDocValues_init(self, a2);
  self->valueCount_ = int;
  self->bitsPerValue_ = withInt;
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