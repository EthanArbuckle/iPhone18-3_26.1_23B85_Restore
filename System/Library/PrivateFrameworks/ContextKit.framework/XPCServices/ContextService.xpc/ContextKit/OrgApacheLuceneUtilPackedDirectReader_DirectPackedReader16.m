@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16)initWithOrgApacheLuceneStoreRandomAccessInput:(id)a3
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

  return [(OrgApacheLuceneStoreRandomAccessInput *)in readShortWithLong:2 * a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *)&v3 dealloc];
}

@end