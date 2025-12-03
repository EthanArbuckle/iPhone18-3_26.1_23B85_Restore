@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readByteWithLong:long >> 3]>> (~long & 7)) & 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *)&v3 dealloc];
}

@end