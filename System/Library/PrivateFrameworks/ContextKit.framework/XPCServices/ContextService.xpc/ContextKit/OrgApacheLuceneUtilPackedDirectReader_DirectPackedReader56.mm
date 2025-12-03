@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readLongWithLong:7 * long]>> 8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *)&v3 dealloc];
}

@end