@interface OrgApacheLuceneIndexDocValues_$3
- (OrgApacheLuceneIndexDocValues_$3)initWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$3

- (OrgApacheLuceneIndexDocValues_$3)initWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  JreStrongAssign(&self->val$empty_, ref);
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