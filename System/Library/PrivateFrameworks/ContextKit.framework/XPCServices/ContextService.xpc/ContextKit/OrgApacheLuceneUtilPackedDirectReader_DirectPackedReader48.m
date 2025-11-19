@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readLongWithLong:6 * a3]>> 16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *)&v3 dealloc];
}

@end