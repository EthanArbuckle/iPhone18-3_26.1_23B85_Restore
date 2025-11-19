@interface OrgApacheLuceneIndexDocValues_$1
- (OrgApacheLuceneIndexDocValues_$1)initWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$1

- (OrgApacheLuceneIndexDocValues_$1)initWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  JreStrongAssign(&self->val$empty_, a3);
  OrgApacheLuceneIndexBinaryDocValues_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__1;
  [(OrgApacheLuceneIndexDocValues_$1 *)&v3 dealloc];
}

@end