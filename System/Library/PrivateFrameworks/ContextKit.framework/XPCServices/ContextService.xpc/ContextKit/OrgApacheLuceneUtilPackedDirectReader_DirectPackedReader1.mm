@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
{
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, a3);
  return self;
}

- (int64_t)getWithLong:(int64_t)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readByteWithLong:a3 >> 3]>> (~a3 & 7)) & 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *)&v3 dealloc];
}

@end