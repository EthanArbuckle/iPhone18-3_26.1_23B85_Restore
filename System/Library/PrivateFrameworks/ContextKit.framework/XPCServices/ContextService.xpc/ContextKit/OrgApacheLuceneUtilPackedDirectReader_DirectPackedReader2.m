@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
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

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readByteWithLong:a3 >> 2]>> (~(2 * a3) & 6)) & 3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *)&v3 dealloc];
}

@end