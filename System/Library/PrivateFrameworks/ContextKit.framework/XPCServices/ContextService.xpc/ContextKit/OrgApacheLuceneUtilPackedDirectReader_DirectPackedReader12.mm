@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12
- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12

- (OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12)initWithOrgApacheLuceneStoreRandomAccessInput:(id)input
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

  return ([(OrgApacheLuceneStoreRandomAccessInput *)in readShortWithLong:((3 * long) >> 1) & 0x1FFFFFFFFFFFFFFFLL]>> (~(4 * long) & 4)) & 0xFFF;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12;
  [(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *)&v3 dealloc];
}

@end