@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readIntWithLong:3 * a3]>> 8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *)&v3 dealloc];
}

@end