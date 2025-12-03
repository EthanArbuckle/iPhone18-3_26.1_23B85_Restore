@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readByteWithLong:long >> 2]>> (~(2 * long) & 6)) & 3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *)&v3 dealloc];
}

@end