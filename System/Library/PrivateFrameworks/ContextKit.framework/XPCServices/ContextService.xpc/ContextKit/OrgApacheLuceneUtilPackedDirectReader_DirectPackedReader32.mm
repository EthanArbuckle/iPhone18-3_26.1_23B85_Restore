@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readIntWithLong:4 * long];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *)&v3 dealloc];
}

@end