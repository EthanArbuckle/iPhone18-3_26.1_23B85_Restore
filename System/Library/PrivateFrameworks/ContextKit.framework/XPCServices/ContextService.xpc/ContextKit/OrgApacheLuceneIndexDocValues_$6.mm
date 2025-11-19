@interface OrgApacheLuceneIndexDocValues_$6
- (OrgApacheLuceneIndexDocValues_$6)initWithOrgApacheLuceneIndexSortedNumericDocValues:(id)a3 withInt:(int)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$6

- (OrgApacheLuceneIndexDocValues_$6)initWithOrgApacheLuceneIndexSortedNumericDocValues:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->val$dv_, a3);
  self->val$maxDoc_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__6;
  [(OrgApacheLuceneIndexDocValues_$6 *)&v3 dealloc];
}

@end