@interface OrgApacheLuceneIndexDocValues_$4
- (OrgApacheLuceneIndexDocValues_$4)initWithOrgApacheLuceneIndexSortedDocValues:(id)values withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$4

- (OrgApacheLuceneIndexDocValues_$4)initWithOrgApacheLuceneIndexSortedDocValues:(id)values withInt:(int)int
{
  JreStrongAssign(&self->val$dv_, values);
  self->val$maxDoc_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__4;
  [(OrgApacheLuceneIndexDocValues_$4 *)&v3 dealloc];
}

@end