@interface OrgApacheLuceneIndexDocValues_$5
- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)a3 withInt:(int)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$5

- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->val$dv_, a3);
  self->val$maxDoc_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__5;
  [(OrgApacheLuceneIndexDocValues_$5 *)&v3 dealloc];
}

@end