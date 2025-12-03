@interface OrgApacheLuceneUtilPackedPackedInts_FormatAndBits
- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int;
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatAndBits

- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int
{
  JreStrongAssign(&self->format_, enum);
  self->bitsPerValue_ = int;
  return self;
}

- (id)description
{
  bitsPerValue = self->bitsPerValue_;
  format = self->format_;
  return JreStrcat("$@$IC", a2, v2, v3, v4, v5, v6, v7, @"FormatAndBits(format=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedInts_FormatAndBits;
  [(OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *)&v3 dealloc];
}

@end