@interface OrgApacheLuceneUtilPackedPackedInts_Writer
- (OrgApacheLuceneUtilPackedPackedInts_Writer)initWithOrgApacheLuceneStoreDataOutput:(id)output withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)writeHeader;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Writer

- (OrgApacheLuceneUtilPackedPackedInts_Writer)initWithOrgApacheLuceneStoreDataOutput:(id)output withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->out_, output);
  self->valueCount_ = int;
  self->bitsPerValue_ = withInt;
  return self;
}

- (void)writeHeader
{
  OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(self->out_, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME_, 2);
  out = self->out_;
  if (!out || ([(OrgApacheLuceneStoreDataOutput *)out writeVIntWithInt:self->bitsPerValue_], [(OrgApacheLuceneStoreDataOutput *)self->out_ writeVIntWithInt:self->valueCount_], v4 = self->out_, (v5 = [(OrgApacheLuceneUtilPackedPackedInts_Writer *)self getFormat]) == 0))
  {
    JreThrowNullPointerException();
  }

  getId = [v5 getId];

  [(OrgApacheLuceneStoreDataOutput *)v4 writeVIntWithInt:getId];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedInts_Writer;
  [(OrgApacheLuceneUtilPackedPackedInts_Writer *)&v3 dealloc];
}

@end