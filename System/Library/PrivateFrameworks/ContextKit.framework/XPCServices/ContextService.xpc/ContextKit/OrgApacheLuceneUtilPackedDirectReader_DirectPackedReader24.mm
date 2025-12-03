@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readIntWithLong:3 * long]>> 8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *)&v3 dealloc];
}

@end