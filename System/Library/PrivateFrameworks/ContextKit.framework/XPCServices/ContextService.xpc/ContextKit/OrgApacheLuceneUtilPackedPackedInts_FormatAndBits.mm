@interface OrgApacheLuceneUtilPackedPackedInts_FormatAndBits
- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)a3 withInt:(int)a4;
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatAndBits

- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->format_, a3);
  self->bitsPerValue_ = a4;
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