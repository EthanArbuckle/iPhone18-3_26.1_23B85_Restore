@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$2
- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$2)initWithOrgApacheLuceneUtilPackedPackedLongValues:(id)values;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$2

- (int64_t)getWithLong:(int64_t)long
{
  v3 = self->val$deltas_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedLongValues *)v3 getWithLong:?]+ long;
}

- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$2)initWithOrgApacheLuceneUtilPackedPackedLongValues:(id)values
{
  JreStrongAssign(&self->val$deltas_, values);
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap__2;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$2 *)&v3 dealloc];
}

@end