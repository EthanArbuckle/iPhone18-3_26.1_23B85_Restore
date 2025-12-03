@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
{
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, input);
  return self;
}

- (int64_t)getWithLong:(int64_t)long
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readIntWithLong:((5 * long) >> 1) & 0x1FFFFFFFFFFFFFFFLL]>> 8 >> (~(4 * long) & 4)) & 0xFFFFF;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *)&v3 dealloc];
}

@end