@interface OrgApacheLuceneIndexDocValues_$3
- (OrgApacheLuceneIndexDocValues_$3)initWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$3

- (OrgApacheLuceneIndexDocValues_$3)initWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  JreStrongAssign(&self->val$empty_, a3);
  OrgApacheLuceneIndexSortedDocValues_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__3;
  [(OrgApacheLuceneIndexSortedDocValues *)&v3 dealloc];
}

@end