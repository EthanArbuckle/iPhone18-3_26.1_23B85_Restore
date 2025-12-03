@interface OrgApacheLuceneIndexDocValues_$5
- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)values withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$5

- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)values withInt:(int)int
{
  JreStrongAssign(&self->val$dv_, values);
  self->val$maxDoc_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__5;
  [(OrgApacheLuceneIndexDocValues_$5 *)&v3 dealloc];
}

@end